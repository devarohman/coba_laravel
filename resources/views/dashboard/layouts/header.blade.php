<header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
    <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-6" href="/home">DevBlog</a>
    <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <input class="form-control form-control-dark w-100 rounded-0 border-0" type="text" placeholder="Search" aria-label="Search">
    <div class="navbar-nav">
      <div class="nav-item text-nowrap">
          @csrf
          <ul class="navbar-nav">
            @auth
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Hii , {{ auth()->user()->name }}
                </a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="/blog"><i class="bi bi-layout-text-sidebar-reverse"></i> Blog Post</a></li>
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
        </li>
        </form>
      </div>
    </div>
  </header>


  