<?php

namespace App\Models;

class Post
{
  private static $blog_posts =  [
    [
        "title" => "Judul Blog Pertama",
        "slug" => "judul-blog-pertama",
        "author" => "Deva Rohman Prassetia.",
        "body" => " Lorem ipsum dolor, sit amet consectetur adipisicing elit. Neque perferendis tempore magni vel possimus debitis, repudiandae ut sit repellendus dolorem in quis eveniet iste. Minus, sunt. Facilis ratione, odit eveniet tempora voluptatibus deserunt maxime asperiores in ullam dolore, ipsum eos iste reiciendis architecto excepturi et vitae ipsa qui aspernatur sed. Possimus quae fugiat tenetur eius. Nostrum, praesentium culpa amet error eius est et dolores consequatur dicta voluptate incidunt temporibus corrupti reiciendis quasi, velit, quis officiis saepe. Sit fuga doloremque ea."
    ],
    [
            "title" => "Judul Blog Kedua",
            "slug" => "judul-blog-kedua",
            "author" => "Mas Gufron Franco.",
            "body" => " Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quae doloribus ipsa expedita laboriosam omnis ducimus delectus nostrum autem numquam molestiae mollitia natus tenetur aliquid rem assumenda soluta corrupti nam consectetur, beatae facere minus, iste dignissimos magni. Quam, tempora, veniam delectus asperiores impedit quidem dolore minus id nobis recusandae vel optio aut iste voluptas, cupiditate sint tempore quibusdam voluptatum. Commodi eos necessitatibus, hic officiis in, aperiam labore quas quos magnam expedita consequatur sit mollitia veniam unde voluptatem nesciunt quisquam eaque dolore doloremque, nam blanditiis vitae aut eum. Quam animi ipsa tempora aliquam! Mollitia labore soluta vitae eveniet eos, inventore harum ducimus corporis. Provident fugit hic ab, ullam eligendi perspiciatis adipisci nulla ut quae ad, architecto incidunt iure cupiditate nihil tenetur numquam?"
    ],
];
    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();
//         $post=[];
//         foreach($posts as $p){
//             if($p["slug"] === $slug){
//             $post=$p;
//     }
// }
    return $posts->firstWhere('slug', $slug);
    }
}
