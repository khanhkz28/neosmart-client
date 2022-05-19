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
  <div class="arrow-home" id="arrow-home" onclick="scrollWin()">
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
<div class="slide-neo category-slick">
  <div class="container ">

    <div id="wapper">
    <div class="row filtering">
        @foreach($data["hotcategory"] as $row )
        <div class=" container-card-neo ">
      <div class="card-neo-device">  
        <img src="images/{{$row->photo}}" alt="{{$row->title}}" class="card-title-neo-img boxshadow-img">
        <div class="card-bot ">
        <h2 class="card-title-neo">{{$row->title}}</h2>  
        <a href="/san-pham/chi-tiet/{{$row->slug}}" class=" more-neo">Xem chi tiết <i class="fa-solid fa-arrow-right-long arrow-detail"></i></a>
      </div>  
      </div>
    </div>
        @endforeach
        </div>
        </div>
</div>
</section>
<div class=" footer1 mt-1">
  <div class="background-footer">
    <div class="content-footer-1 container">
      <h3 class="title-footer-1">Thiết bị nhà thông minh</h3>
      <p class="text-footer-1">Bộ thiết bị an ninh NeoSmart Security gồm thiết bị an ninh trung tâm, hàng rào điện tử, các cảm biến, hệ thống camera ghi hình… dựng nên hàng rào nhiều lớp, giám sát ngôi nhà theo thời gian thực. Khi phát hiện chủ nhân quên đóng cửa nhà hoặc nguy cơ cháy nổ, xâm nhập trái phép, ...</p>
    </div>
    
  </div>
  <div class="under-background-footer">
    <div class="slide-neo translate-y-20">
      <div class="container ">
        <div id="wapper">
        <div class="row filtering">
            @foreach($data["hotproducts"] as $row )
            <div class=" container-card-neo ">
          <div class="card-neo-device slide-product">  
            <img src="images/{{$row->photo}}" alt="{{$row->title}}" class="card-title-neo-img-product">
            <div class="card-bot ">
              <h2 class="card-title-neo-product">{{$row->title}}</h2>
              <div>
                <p class="card-content-product">{{$row->content}}</p> 
                <hr>
                <div class="row card-price-neo">
                  <span class="col-3 card-title-price"> Giá: </span>
                  <strong class="col-9 card-price">{{ number_format($row->price, 0, ',', '.') }} VNĐ</strong>
                </div>
              </div>
            </div>  
          </div>
        </div>
            @endforeach
            </div>
            </div>
    </div>
  
    </div>
  
  </div>
  <div class="background-footer1">
    <div class="row container banner-title-blog"> 
      <div class="col-6 title-neosmart">
        <img  src="/images/neosmart-banner.png">
      </div>
      <div class="content-footer-1 col-6">
        <h3 class="title-footer-1">Công trình đã thực hiện</h3>
        <p class="text-footer-1">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
      </div>
    </div>
    
  </div>
  <div class="under-background-footer">
    <div class="slide-neo translate-y-20">
      <div class="container ">
        <div id="wapper">
        <div class="row filtering">
            @foreach($data["hotblog"] as $row )
            <div class=" container-card-neo ">
          <div class=" slide-blog">  
            <img src="images/{{$row->photo}}" alt="{{$row->title}}" class="card-title-neo-img-blog boxshadow-img">
            <div class="card-bot card-bot-blog">
              <h2 class="card-title-neo-product">{{$row->title}}</h2>
              <div class="border-blog">
                <a href="/san-pham/chi-tiet/{{$row->slug}}" class=" more-neo">Xem chi tiết <i class="fa-solid fa-arrow-right-long arrow-detail"></i></a>
              </div>
            </div>  
          </div>
        </div>
            @endforeach
            </div>
            </div>
    </div>
  
    </div>
  
  </div>
</div>


  </main>

@endsection
