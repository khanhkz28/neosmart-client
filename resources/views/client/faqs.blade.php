@extends('client.layout')
@section('pageTitle', 'Hỏi đáp')
@section('breadcrumb-first', 'Hỏi đáp')
@section('breadcrumb-second', 'Hỏi đáp')
@section('main')
<main>
  <div id="banner-faq" class="py-5">
    <div class="w-100 d-flex flex-row-reserve justify-content-between px-5 container-xxl" style="height: 100%;">
      <div class="caption col-lg-5 col-md-12 col-sm-12 mb-4">
        <h2 class="display-4 text-left fst-italic">FAQs</h2>
        <p class="text">Hệ thống nhà thông minh thế hệ mới nhất trên thế giới, công nghệ vượt trội so với các sản phẩm
          của
          Mỹ và Châu Âu - theo tiêu chí xếp hạng của Garther</p>
      </div>
      <img class="col-lg-5 col-md-12 col-sm-12 mb-4" src="/images/client/Hfaq.png" alt="Image Faq" />
    </div>
  </div>
  <div class="main-box container-xxl p-4">
    <div class="question-box row justify-content-between px-5 py-3">
          @foreach($Faqs as $Faq)
          <div class="col col-lg-6 col-sm-12 py-2 px-4">
              <div class="border-bottom" style="height: 100%;">
                <h3 class="display-4 fs-3 w-100 py-3"><i class="bi bi-question-circle"></i><span class="mx-3">{{$Faq->title}}</span></h3>
                <p class="py-3">{{$Faq->description  }}</p>
              </div>
            </div>
        @endforeach
    </div>
    <!-- <div class="question-box d-flex flex-row flex-nowrap justify-content-between px-5 py-4">
      <div class="col-lg-6 col-sm-12 px-3 py-2 border-bottom mx-2 mt-2">
        <h3 class="display-4 fs-3 w-100 mb-4"><i class="bi bi-question-circle"></i> Lorem ipsum dolor sit amet?</h3>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing
          elit. Magni unde delectus, optio molestias, tenetur enim ipsam sint magnam corrupti officiis omnis totam
          itaque
          fugiat explicabo, recusandae nobis! Expedita, pariatur non!.</p>
      </div>
      <div class="col-lg-6 col-sm-12 px-3 py-2 border-bottom mx-2 mt-2">
        <h3 class="display-4 fs-3 w-100 mb-4"><i class="bi bi-question-circle"></i> Lorem ipsum dolor sit amet?</h3>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing
          elit. Magni unde delectus, optio molestias, tenetur enim ipsam sint magnam corrupti officiis omnis totam
          itaque
          fugiat explicabo, recusandae nobis! Expedita, pariatur non!. Lorem ipsum dolor, sit amet consectetur
          adipisicing
          elit. Assumenda, corrupti veniam molestias quis architecto quam voluptatum neque voluptatem reprehenderit
          distinctio dolor voluptate quo laudantium illum unde, ab, a esse harum!</p>
      </div>
    </div> -->

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
  </div>
</main>
@endsection