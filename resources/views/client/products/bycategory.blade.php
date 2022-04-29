@extends('client.layout')
@section('pageTitle', 'Sản phẩm')
@section('breadcrumb-first', 'Sản phẩm')
@section('breadcrumb-second', 'Sản phẩm')
@section('main')
<main>
<div class="container-banner "> 
  <div class="banner">
    <img src="{{asset('images/client/bannerct.png')}}" alt="" class="banner-img">
  </div>
  <div class="content-banner">
      <h2 class="heading-banner">Thiết bị nhà thông minh</h2>
      <p class="des-banner">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
  </div>
</div>
 <section class="container">
   <div class="product my-5">
      @foreach($row as $category)
       <p> {{$row->title}}
      </p>
       @endforeach
   </div>
 <div class="section-contact my-5">
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