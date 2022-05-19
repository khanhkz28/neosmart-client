@extends('client.layout')
@section('pageTitle', 'Sản phẩm chi tiết')
@section('breadcrumb-first', 'Sản phẩm chi tiết')
@section('breadcrumb-second', 'Sản phẩm chi tiết')
@section('main')
<main>
  
  <section class="container">
        <div class="subHeading">
            Sản phẩm
        </div>
        <div class="Heading">
            <h1>{{ $row->title }}</h1>
        </div>
  </section>
  <div class="section-contact container">
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