@extends('client.layout')
@section('pageTitle', 'Trang chủ')
@section('breadcrumb-first', 'Trang chủ')
@section('breadcrumb-second', 'Trang chủ')
@section('main')
<main>

{{--   
  <section>
  <div class="position-relative overflow-hidden home-slider">
    <div class="container">
      <div class="row">
          <div class="col-md-5  col-sm-12  my-5">
          <h1 class="display-4 my-3">Nhà thông minh</h1>
          <div>
            <img src="{{asset('images/client/logo.png')}}" alt="">
          </div>
          <p class="fw-normal  my-3">Hệ thống nhà thông minh thế hệ mới nhất trên thế giới, công nghệ vượt trội so với các sản phẩm của Mỹ và Châu Âu - theo tiêu chí xếp hạng của Gartner</p>
          <a class="btn btnprinary btn-outline-secondary my-3" href="#">Tìm hiểu thêm</a>
        </div>
        <div class="col-md-7  col-sm-12">
            <div class="home-slider-img">
                <img src="{{asset('images/client/hero.png')}}" alt="">
            </div>
        </div>
      </div>
    </div>
  </div>
  </section> --}}
  <section class="">
    <div class="banner-home">
        <div class=" background-banner">
        </div>
          <div class="content-banner2">
          <div class="left-banner">
              <h3 class="banner-heading">
                Nhà thông minh
              </h3>
              <img src={{asset('images/logo.png')}} alt="" class="img-banner2">
              <p class="des-banner-text">Hệ thống nhà thông minh thế hệ mới nhất trên thế giới, công nghệ vượt trội so với các sản phẩm của Mỹ và Châu Âu - theo tiêu chí xếp hạng của Gartner</p>
              <button class="button-banner">Tìm hiểu thêm</button>
          </div>
          <div class="right-banner">
            <img src={{asset('images/client/Hero.png')}} alt="" class="right-banner-img">
          </div>
        </div>
    </div>

  </section>
  <div class="arrow" id="arrow" onclick="scrollWin()">
    <i class="fa-solid fa-angles-down arrow-icon"></i>

  </div>
  <section class="container">
    <div class="wraper">
        <div class="contain-left">
          <div class="left">
            <div class="title-home">
                <h2 class="title-text">Nhà Thông Minh</h2>
                <img src={{asset('images/logo.png')}} alt="" class="title-img">
            </div>
            <div class="contain-card">
          <div class="card-home">
              <div class="image-card">
               <img src={{asset('images/3.png')}} alt="" class="img-incard">
              </div>
              <div class="middle">
              <div class="heading">
                    <h2 class="heading-text">Nhà thông minh</h2>
              </div>
              <div class="des">
                <p class="des-text">Hệ thống nhà thông minh thế hệ mới nhất trên thế giới, công nghệ vượt trội so với các sản phẩm của Mỹ và Châu Âu - theo tiêu chí xếp hạng của Gartner</p>
              </div>
              <div class="end -card">
                <a href="#" class="learn-more">Learn more</a>
                {{-- <a href="#"><i class="fa-thin fa-arrow-right-long"></i></a> --}}
              </div>
            </div>
          </div>
          {{-- cardhome-slide --}}
          <div class="card-home-slide">
              <div class="image-card">
               <img src={{asset('images/3.png')}} alt="" class="img-incard">
              </div>
              <div id="slider" class="slider">
                <div class="slider-content">
                  <div class="slider-content-wrapper">
                    <div class="slider-content__item image-1"><img src={{asset('images/gear.png')}} alt="">
                    <p class="price-slide">44.000.000 VND</p>
                    <p class="des-slide">Thiết bị điều khiển trung tâm SH-HC</p>
                    </div>
                    <div class="slider-content__item image-1">
                      <img src={{asset('images/gear.png')}} alt="">
                    <p class="price-slide">44.000.000 VND</p>
                    <p class="des-slide">Thiết bị điều khiển trung tâm SH-HC</p>
                    </div>
                    <div class="slider-content__item image-1"><img src={{asset('images/gear.png')}} alt="">
                      <p class="price-slide">44.000.000 VND</p>
                      <p class="des-slide">Thiết bị điều khiển trung tâm SH-HC</p></div>
                    <div class="slider-content__item image-1">
                      <img src={{asset('images/gear.png')}} alt="">
                    <p class="price-slide">44.000.000 VND</p>
                    <p class="des-slide">Thiết bị điều khiển trung tâm SH-HC</p>
                    </div>
                    <div class="slider-content__item image-1"><img src={{asset('images/gear.png')}} alt="">
                      <p class="price-slide">44.000.000 VND</p>
                      <p class="des-slide">Thiết bị điều khiển trung tâm SH-HC</p></div>
                    <div class="slider-content__item image-1"><img src={{asset('images/gear.png')}} alt="">
                      <p class="price-slide">44.000.000 VND</p>
                      <p class="des-slide">Thiết bị điều khiển trung tâm SH-HC</p></div>
                  </div>
                </div>
              </div>
              <div class="end -card">
                <a href="/sanpham/" class="learn-more">Learn more</a>
                {{-- <a href="#"><i class="fa-thin fa-arrow-right-long"></i></a> --}}
              </div>
          </div>
          {{-- endcardhome-silde --}}
        </div>
        </div>
      </div>
        <div class="contain-right">
       
            <div class="right">
              <div class="contain-card">
            <div class="card-home">
                <div class="image-card">
                 <img src={{asset('images/3.png')}} alt="" class="img-incard">
                </div>
                <div class="middle">
                <div class="heading">
                      <h2 class="heading-text">Nhà thông minh</h2>
                </div>
                <div class="des">
                  <p class="des-text">Hệ thống nhà thông minh thế hệ mới nhất trên thế giới, công nghệ vượt trội so với các sản phẩm của Mỹ và Châu Âu - theo tiêu chí xếp hạng của Gartner Hệ thống nhà thông minh thế hệ mới nhất trên thế giới, công nghệ vượt trội so với các sản phẩm của Mỹ và Châu Âu - theo tiêu chí xếp hạng của Gartner Hệ thống nhà thông minh thế hệ mới nhất trên thế giới, công nghệ vượt trội so với các sản phẩm của Mỹ và Châu Âu - theo tiêu chí xếp hạng của Gartner</p>
                </div>
                <div class="end -card">
                  <a href="#" class="learn-more">Learn more</a>
                  {{-- <a href="#"><i class="fa-thin fa-arrow-right-long"></i></a> --}}
                </div>
              </div>
            </div>
            <div class="card-home">
                <div class="image-card">
                 <img src={{asset('images/3.png')}} alt="" class="img-incard">
                </div>
                <div class="middle">
                <div class="heading">
                      <h2 class="heading-text">Nhà thông minh</h2>
                </div>
                <div class="des">
                  <p class="des-text">Hệ thống nhà thông minh thế hệ mới nhất trên thế giới, công nghệ vượt trội so với các sản phẩm của Mỹ và Châu Âu - theo tiêu chí xếp hạng của Gartner</p>
                </div>
                <div class="end -card">
                  <a href="#" class="learn-more">Learn more</a>
                  {{-- <a href="#"><i class="fa-thin fa-arrow-right-long"></i></a> --}}
                </div>
              </div>
            </div>
            <div class="card-home">
                <div class="image-card">
                 <img src={{asset('images/3.png')}} alt="" class="img-incard">
                </div>
                <div class="middle">
                <div class="heading">
                      <h2 class="heading-text">Nhà thông minh</h2>
                </div>
                <div class="des">
                  <p class="des-text">Hệ thống nhà thông minh thế hệ mới nhất trên thế giới, công nghệ vượt trội so với các sản phẩm của Mỹ và Châu Âu - theo tiêu chí xếp hạng của Gartner</p>
                </div>
                <div class="end -card">
                  <a href="#" class="learn-more">Learn more</a>
                  {{-- <a href="#"><i class="fa-thin fa-arrow-right-long"></i></a> --}}
                </div>
              </div>
            </div>

    </div>

  </section>
  <section class="device-neo">
    <div class="top-neo"> 
      <div class="device-heading container">

          <p class="neo-text">Bộ thiết bị an ninh</p>
          <h2 class="neo-heading">NeoSmart Security</h2>
        </div>
          <p class="neo-des">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>

    </div>
  </section>

  </main>

@endsection
