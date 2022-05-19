

<nav class="navbar navbar-expand-lg navbar-light bg-light postion-relative py-4 py-2 position-fixed w-100">
  <div class="container">
  <div class="brand-image d-flex flex-row flex-nowrap justify-content-between">
    {{-- <a class="navbar-brand" href="{{route('home')}}"><img class="img-home" src="{{asset('/images/client/logo.png')}}"
        alt="logo"></a> --}}
    <button class="navbar-toggler" type="button" aria-expanded="false" aria-label="Toggle navigation">
      <i class="bi bi-list"></i>
    </button>
  </div>
  <div class="container-fluid nav-menu">
    <div class="collapse navbar-collapse px-5 d-block" id="navbarTogglerDemo01">
      <ul class="navbar-nav mb-2 mb-lg-0 fw-normal">
        <li class="nav-item">
          <a class="nav-link {{ request()->is('/') ? 'active' : '' }}" aria-current="page" href="/">Trang chủ</a>
        </li>
        <li class="nav-item relative">
          <a class="nav-link {{ request()->is('cong-trinh', 'cong-trinh/*') ? 'active' : '' }}" href="/cong-trinh">Công trình <i class="bi bi-chevron-down"></i></a>
          <ul class="sub-navbar mb-2 mb-lg-0">
              <li class="nav-item bg-light pt-2">
                <a class="nav-link " aria-current="page" href="/cong-trinh/cong-trinh-chung-cu">Công trình Chung cư</a>
              </li>
              <li class="nav-item bg-light mb-2">
                <a class="nav-link " aria-current="page" href="/cong-trinh-homestay">Công trình HomeStay</a>
              </li>
          </ul>
        </li>
        <li class="nav-item relative">
          <a class="nav-link {{ request()->is('san-pham' , 'san-pham/*' ) ? 'active' : '' }}" href="/san-pham">Sản phẩm <i class="bi bi-chevron-down fw-bold"></i></a>
          <ul class="sub-navbar mb-2 mb-lg-0">
              <li class="nav-item bg-light pt-1">
                <a class="nav-link " aria-current="page" href="/san-pham/cong-trinh-biet-thu-lon-lau-dai">Công trình Biệt thự lớn - Lâu đài</a>
              </li>
              <li class="nav-item bg-light ">
                <a class="nav-link" aria-current="page" href="/san-pham/cong-trinh-chung-cu">Công trình Chung cư</a>
              </li>
              <li class="nav-item bg-light mb-2">
                <a class="nav-link" aria-current="page" href="/san-pham/thiet-bi-xu-ly-trung-tam">Thiết bị xử lý trung tâm</a>
              </li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link {{ request()->is('faq') ? 'active' : '' }}" href="/faq">Hỏi đáp</a>
        </li>
        <li class="nav-item">
          <a class="nav-link {{ request()->is('lien-he') ? 'active' : '' }}" href="lienhe">Liên hệ</a>
        </li>
      </ul>
      <div class="d-flex flex-row-reverse align-items-center position-relative">
        <!-- <select name="sl-lang" class="sl-lang px-2 text-center mx-2" id="lang">
          <option value="vi" selected>Vi</option>
          <option value="en">En</option>
        </select> -->
        <button class="btn-display-search border-0 p-2 rounded-circle shadow-sm"><i class="bi bi-search"></i></button>
        <form class="d-flex form-search position-absolute shadow-sm">
          <div class="d-flex flex-row flex-nowrap">
            <input type="text" name="keyword" class="px-2" id="keyword" placeholder="Search" />
            <button class="btn btn-search"><i class="bi bi-search"></i></button>
          </div>
        </form>
      </div>
    </div>
  </div>
</nav>
