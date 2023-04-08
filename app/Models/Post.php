<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use PharIo\Manifest\Author;
use Cviebrock\EloquentSluggable\Sluggable;

class Post extends Model
{
    use HasFactory, Sluggable;


    protected $guarded = ['id'];
    protected $with = ['category', 'author'];

    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'title'
            ]
        ];
    }

    public function scopeFilter($query, array $filters)
    {
        $query->when($filters['search'] ?? false, function($query, $search) {
            return $query->where(function($query) use ($search) {
                 $query->where('title', 'like', '%' . $search . '%')
                 ->orWhere('excerpt', 'like', '%' . $search . '%')
                    ->orWhere('body', 'like', '%' . $search . '%');
            });
        });

        $query->when($filters['category'] ?? false, function($query, $category) {
            return $query->whereHas('category', function($query) use ($category) {
                $query->where('slug', $category); 
            });
        });
        
        $query->when($filters['author'] ?? false, fn($query, $author) => 
          $query->whereHas('author', fn($query) => 
              $query->where('username', $author))
        );
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }
    public function author()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
    public function getRouteKeyName()
    {
        return('slug');
    }
    public function scopeFilter2($query, array $filters)
    {
        $query->when($filters['search'] ?? false, function($query, $search) {
            return $query->where(function($query) use ($search) {
                 $query->where('title', 'like', '%' . $search . '%')
                 ->orWhere('nm_perusahaan', 'like', '%' . $search . '%')
                 ->orWhere('pemilik', 'like', '%' . $search . '%')
                 ->orWhere('NIB', 'like', '%' . $search . '%')
                 ->orWhere('alamat', 'like', '%' . $search . '%')
                 ->orWhere('domisili', 'like', '%' . $search . '%')
                 ->orWhere('lokasi_bpspp', 'like', '%' . $search . '%')
                 ->orWhere('no_rekom', 'like', '%' . $search . '%')
                 ->orWhere('tgl_keluar_rekom', 'like', '%' . $search . '%')
                 ->orWhere('no_sertifikat_standard', 'like', '%' . $search . '%')
                 ->orWhere('bentuk_perusahaan', 'like', '%' . $search . '%')
                 ->orWhere('no_kbli', 'like', '%' . $search . '%')
                 ->orWhere('lokasi_rekom', 'like', '%' . $search . '%')
                 ->orWhere('tgl_permohonan', 'like', '%' . $search . '%')
                 ->orWhere('no_permohonan_regular', 'like', '%' . $search . '%')
                 ->orWhere('no_permohonan_ossrba', 'like', '%' . $search . '%')
                 ->orWhere('masa_berlaku_rekom', 'like', '%' . $search . '%');
            });
        });
        $query->when($filters['kabupaten'] ?? false, function($query, $kabupaten) {
            return $query->whereHas('kabupaten', function($query) use ($kabupaten) {
                $query->where('id', $kabupaten); 
            });
        });
    }

}
