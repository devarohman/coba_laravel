<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name' => 'Deva Rohman Prassetia',
            'username' => 'devarohmanp',
            'email' => 'devarohman@gmail.com',
            'password' => bcrypt('password')
        ]);
        
        User::factory(3)->create();
        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
        // User::create([
        //     'name' => 'Yesus Kristus',
        //     'email' => 'yesusthemesiah@gmail.com',
        //     'password' => bcrypt('mesiah123')
        // ]);
        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Post::factory(20)->create();    
//         Post::create([
//             'title' => 'Judul Pertama',
//             'slug' => 'judul-pertama',
//             'excerpt' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Atque consequuntur facere qui commodi, ducimus ad alias! Vitae, quas delectus? Quis, odit rem! Doloremque ipsam ut cumque quas dolor ullam perspiciatis nemo adipisci tempora ex impedit hic placeat ducimus fugiat itaque pariatur magni eligendi, veniam corrupti neque.',
//             'body'=>'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Atque consequuntur facere qui commodi, ducimus ad alias! Vitae, quas delectus? Quis, odit rem! Doloremque ipsam ut cumque quas dolor ullam perspiciatis nemo adipisci tempora ex impedit hic placeat ducimus fugiat itaque pariatur magni eligendi, veniam corrupti neque. Harum voluptatem tempore ad, rem, eaque quo, perferendis officiis asperiores voluptate amet eius animi explicabo maiores modi. Vero amet voluptatum earum magnam nobis veritatis, pariatur accusamus eaque nihil voluptas eveniet ut! Quisquam cum amet explicabo ullam consequuntur deleniti atque itaque in recusandae similique, nesciunt hic! In, odit aut voluptas fuga maxime quisquam quam voluptatum.',
//             'category_id' => 1,
//             'user_id' => 1
//         ]);
//         Post::create([
//             'title' => 'Judul Kedua',
//             'slug' => 'judul-kedua',
//             'excerpt' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Atque consequuntur facere qui commodi, ducimus ad alias! Vitae, quas delectus? Quis, odit rem! Doloremque ipsam ut cumque quas dolor ullam perspiciatis nemo adipisci tempora ex impedit hic placeat ducimus fugiat itaque pariatur magni eligendi, veniam corrupti neque.',
//             'body'=>'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Atque consequuntur facere qui commodi, ducimus ad alias! Vitae, quas delectus? Quis, odit rem! Doloremque ipsam ut cumque quas dolor ullam perspiciatis nemo adipisci tempora ex impedit hic placeat ducimus fugiat itaque pariatur magni eligendi, veniam corrupti neque. Harum voluptatem tempore ad, rem, eaque quo, perferendis officiis asperiores voluptate amet eius animi explicabo maiores modi. Vero amet voluptatum earum magnam nobis veritatis, pariatur accusamus eaque nihil voluptas eveniet ut! Quisquam cum amet explicabo ullam consequuntur deleniti atque itaque in recusandae similique, nesciunt hic! In, odit aut voluptas fuga maxime quisquam quam voluptatum.',
//             'category_id' => 1,
//             'user_id' => 2
//         ]);
//         Post::create([
//             'title' => 'Judul Ketiga',
//             'slug' => 'judul-ketiga',
//             'excerpt' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Atque consequuntur facere qui commodi, ducimus ad alias! Vitae, quas delectus? Quis, odit rem! Doloremque ipsam ut cumque quas dolor ullam perspiciatis nemo adipisci tempora ex impedit hic placeat ducimus fugiat itaque pariatur magni eligendi, veniam corrupti neque.',
//             'body'=>'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Atque consequuntur facere qui commodi, ducimus ad alias! Vitae, quas delectus? Quis, odit rem! Doloremque ipsam ut cumque quas dolor ullam perspiciatis nemo adipisci tempora ex impedit hic placeat ducimus fugiat itaque pariatur magni eligendi, veniam corrupti neque. Harum voluptatem tempore ad, rem, eaque quo, perferendis officiis asperiores voluptate amet eius animi explicabo maiores modi. Vero amet voluptatum earum magnam nobis veritatis, pariatur accusamus eaque nihil voluptas eveniet ut! Quisquam cum amet explicabo ullam consequuntur deleniti atque itaque in recusandae similique, nesciunt hic! In, odit aut voluptas fuga maxime quisquam quam voluptatum.',
//             'category_id' => 2,
//             'user_id' => 1
//         ]);
//         Post::create([
//             'title' => 'Judul Keempat',
//             'slug' => 'judul-keempat',
//             'excerpt' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Atque consequuntur facere qui commodi, ducimus ad alias! Vitae, quas delectus? Quis, odit rem! Doloremque ipsam ut cumque quas dolor ullam perspiciatis nemo adipisci tempora ex impedit hic placeat ducimus fugiat itaque pariatur magni eligendi, veniam corrupti neque.',
//             'body'=>'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Atque consequuntur facere qui commodi, ducimus ad alias! Vitae, quas delectus? Quis, odit rem! Doloremque ipsam ut cumque quas dolor ullam perspiciatis nemo adipisci tempora ex impedit hic placeat ducimus fugiat itaque pariatur magni eligendi, veniam corrupti neque. Harum voluptatem tempore ad, rem, eaque quo, perferendis officiis asperiores voluptate amet eius animi explicabo maiores modi. Vero amet voluptatum earum magnam nobis veritatis, pariatur accusamus eaque nihil voluptas eveniet ut! Quisquam cum amet explicabo ullam consequuntur deleniti atque itaque in recusandae similique, nesciunt hic! In, odit aut voluptas fuga maxime quisquam quam voluptatum.',
//             'category_id' => 2,
//             'user_id' => 2
//         ]);
        
    }
}
