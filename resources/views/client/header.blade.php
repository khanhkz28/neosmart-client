<nav class="navbar navbar-expand-lg navbar-light bg-light postion-relative pt-5 pb-4 position-absolute w-100">
  <div class="container-fluid nav-menu">
    <div class="brand-image d-flex flex-row flex-nowrap justify-content-between">
      <a class="navbar-brand mx-5" href="{{route('home')}}"><img src="{{asset('/images/client/logo.png')}}"
          alt="logo"></a>
      <button class="navbar-toggler" type="button" aria-expanded="false" aria-label="Toggle navigation">
        <i class="bi bi-list"></i>
      </button>
    </div>
    <div class="collapse navbar-collapse px-5 d-block" id="navbarTogglerDemo01">
      <ul class="navbar-nav mb-2 mb-lg-0 fw-normal">
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="#">Trang chủ</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/congtrinh">Công trình <i class="bi bi-chevron-down"></i></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/sanpham">Sản phẩm <i class="bi bi-chevron-down fw-bold"></i></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/faq">Hỏi đáp</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="lienhe">Liên hệ</a>
        </li>
      </ul>
      <div class="d-flex flex-column-reverse position-relative">
        <select name="sl-lang" class="sl-lang px-2 text-center id=" lang">
          <option value="vi" selected>Vi</option>
          <option value="en">En</option>
        </select>
        <form class="d-flex form-search position-absolute">
          <div class="d-flex flex-row flex-nowrap">
            <input type="text" name="keyword" class="px-2" id="keyword" placeholder="Search" />
            <button class="btn btn-search"><i class="bi bi-search"></i></button>
          </div>
        </form>
      </div>
    </div>
</nav>