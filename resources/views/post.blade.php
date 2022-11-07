
@extends('layouts.main')
@section('container')

<div class="container">
    <div class="row justify-content-center mb-5">
        <div class="col-md-8">
            <h1 class="mb-3">{{ $post->title }}</h1>

            <h5><p>By.<a href="/blog?author={{ $post->author->username }}"class="text-decoration-none">{{ $post->author->name }}</a> in <a href="/blog?category={{ $post->category->slug }}"class="text-decoration-none">{{ $post->category->name }}</a></h5></p>
                @if ($post->image)
                    <img src="{{ asset('storage/' . $post->image ) }}"{{ $post->category->name }}" alt="{{ $post->category->slug }}" class="img-fluid">
                @else
                    <img src="http://source.unsplash.com/1200x350?{{ $post->category->name }}" alt="{{ $post->category->slug }}" class="img-fluid">
                @endif
            <article class="my-3 fs-5"> 
                {!! $post->body !!}
            </article>
        
            <a href="/blog" class="d-block mt-3">Kembali ke Blog Utama</a>
        </div>
    </div>
</div>

@endsection