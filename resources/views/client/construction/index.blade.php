@extends('client.layout')
@section('pageTitle', 'Công trình')
@section('breadcrumb-first', 'Công trình')
@section('breadcrumb-second', 'Công trình')
@section('main')
<main>
  <div class="container-banner "> 
  <div class="banner">
    <img src="{{asset('images/client/bannerct.png')}}" alt="" class="banner-img">
  </div>
  <div class="content-banner">
      <h2 class="heading-banner">Công trình đã thực hiện</h2>
      <p class="des-banner">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
  </div>
</div>
  <section class="container my-5 container-pd ">


    
  

  @foreach($ListBlog as $row)
  <div class="col-12">
    <h1>{{$row->title}}</h1>
  </div>
  <div class="row  g-4 section-ct-body filtering">
    @foreach($row->Blog as $blog)
    
    <div class="col  ">
    <div class="card h-100 card-ct m-2">
      <img src="{{ asset('images/'.$blog->photo)}}" class="card-img-top shadow " alt="{{$row->title}}">
      <div class="card-body">
        <h2 class="card-ct-title">{{$blog->title}}</h2>
        <div class="card-ct-text">

          <p>
          {!!$blog->description!!}
          </p>
        </div>
      </div>
   
        <a class="card-ct-footer" href="congtrinh/{{$row->title}}" >
          <div class="card-ct-footer-text">Xem chi tiết&nbsp;&nbsp;&nbsp;&nbsp;<i class="bi bi-arrow-right"></i></div>
        </a>
    </div>
  </div>
     @endforeach
     </div>
  @endforeach



<div class="section-contact">
    <div class="row">
      <div class="section-contact-box col-xl-3 col-lg-6">
        <h2>Liên hệ với chúng tôi ngay!</h2>
      </div>
      <div class="section-contact-box col-xl-3 col-lg-6">
          <div>Điện Thoại : <span class="section-contact-phone">1900 6868</span></div>
          <div>Hotline : <span class="section-contact-phone">0909 099 888</span></div>
      </div> 

      <div class="section-contact-box col-xl-6 col-lg-12">
           <div>Email : <span class="section-contact-info">info@neosmart.vn</span></div>
          <div>Địa chỉ : <span class="section-contact-info">12 Hoa Sứ, P.12, Q. Phú Nhuận, TP. HCM</span></div>
      </div> 
    </div>
</div>
@include('client.hotproduct')
  </section>
  </main>
@endsection