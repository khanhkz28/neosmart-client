@extends('client.layout')
@section('pageTitle', 'Công trình chi tiết')
@section('breadcrumb-first', 'Công trình chi tiết')
@section('breadcrumb-second', 'Công trình chi tiết')
@section('main')
<main>
<div class="container-banner"> 
  <div class="banner">
    <img src="{{asset('images/client/bannerct.png')}}" alt="{{ $row->title }}" class="banner-img">
  </div>
  <div class="content-banner">
      <h2 class="heading-banner">{{ $row->title }}</h2>
      <p class="des-banner">{{ $row->description }}</p>
  </div>
</div>
{{ $row->title }}
{{ $row->description }}
{{ $row->content }}
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
  </main>
@endsection