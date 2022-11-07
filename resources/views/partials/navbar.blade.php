<nav class="navbar navbar-expand-lg navbar-dark bg-black">
   
  <div class="container">
    <a class="navbar-brand" href="/home">DevBlog</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> 
          <span class="navbar-toggler-icon"></span>
        </button>

           <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
 
                <li class="nav-item">
                  <a class="nav-link {{ Request::is('home') ? 'active' : '' }}" href="/home">Home</a>
                </li>
            
                <li class="nav-item">
                  <a class="nav-link {{ Request::is('about') ? 'active' : '' }}" href="/about">About</a>
                </li>

                <li class="nav-item">
                  <a class="nav-link {{ Request::is('authors') ? 'active' : '' }}" href="/authors">Author</a>
                </li>
            
                <li class="nav-item">
                  <a class="nav-link {{ Request::is('blog') ? 'active' : '' }}" href="/blog">Blog</a>
                </li>
            
                <li class="nav-item">
                  <a class="nav-link {{ Request::is('categories') ? 'active' : '' }}" href="/categories">Categories</a>
                </li>
              </ul>
                <form class="d-flex" role="search">
                  <input class="form-control me-2" type="text" placeholder="Search.." aria-label="Search" name="search" value="{{ request('search') }}">
                  <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
                
                <ul class="navbar-nav">
                    @auth

                      <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                          Hii , {{ auth()->user()->name }}
                        </a>
                        <ul class="dropdown-menu">
                          <li><a class="dropdown-item" href="/dashboard"><i class="bi bi-layout-text-sidebar-reverse"></i> My Dashboard</a></li>
                          <li><hr class="dropdown-divider"></li>
                          <li>
                            <form action="/logout" method="post">
                              @csrf
                              <button type="submit" class="dropdown-item"><i class="bi bi-box-arrow-right"></i> Logout</a>
                              </li></button>
                            </form>
                          </li>
                        </ul>
                      </li>
                    @else
                      <li class="nav-item">
                        <a href="/login" class="nav-link {{ Request::is('login') ? 'active' : '' }}"><i class="bi bi-box-arrow-in-right"></i>
                          Login</a>
                      </li>

                    @endauth
                </ul>
           </div>
  </div>
</nav>