<section class="container faq  my-5">
  <div class="row featurette">
     
      <div class="col-md-5 col-sm-12 featurette-img">
        <div class="featurette-heading"><a>FAQs</a></div>
        <img src="{{asset('images/client/Hfaq.png')}}" alt="">

      </div>
      <div class="col-md-7 col-sm-12">
      @foreach($data["faq"] as $faqs )
                    <div class="featurette-news">
                      <a href="/faq" ><h3  class="news-title">{{$faqs->title}}</h3></a>
                        <p>{{$faqs->content}}</p>
                    </div>          
            @endforeach
      </div>
    </div>
  </section>      
  <section class="container my-5">
  <footer class="row featurette">
  <div class="featurette-heading"><a href="/cong-trinh">Tin tức</a></div>
      <div class="col-md-7 col-sm-12 order-2 order-md-1">
      
          
            @foreach($data["blogs"] as $blog )
                    <div class="featurette-news">
                        <a href="/cong-trinh/{{$blog->slug}}" ><h3 class="news-title">{{$blog->title}}</h3></a>
                        <p>{!!$blog->description!!}</p>
                    </div>          
            @endforeach
      </div>
      <div class="col-md-5 featurette-img col-sm-12 order-1 order-md-2">
        <img src="{{asset('images/client/Hnews.png')}}" alt="">

      </div>
    </div>
  </section>
<div class="footer">
    <div class="container">
    <div class="row ">
        <div class="col">
            <img src="{{ asset('images/logofooter.png') }}" alt="" class="mb-3 footer-logo">
            <p><span>A.</span>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
            <p><span>T.</span>+62-812-7313-4321</p>
            <p><span>E.</span>neosmart@gmail.com</p>
        </div>
        <div class="col">
            <h4 class="mb-5">Trang chủ</h4>
            <ul>
                <li><a href="/congtrinh">Công trình</a></li>
                <li><a href="/sanpham">Sản phẩm</a></li>
                <li><a href="hoi-dap">Hỏi đáp</a></li>
                <li><a href="lien-he">Liên hệ</a></li>
            </ul>
        </div>
        <div class="col">
            <h4 class="mb-5">Follow US</h4>
            <ul>
                <li><a href="">Instagram</a></li>
                <li><a href="">Facebook</a></li>
                <li><a href="">LinkedIn</a></li>
                <li><a href="">Youtube</a></li>
            </ul>
        </div>
    </div>
    <h2 class="mt-5">2022 © NeoSmart. All rights reserved.</h2>
    </div>
</footer>
