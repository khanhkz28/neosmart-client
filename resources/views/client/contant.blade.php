@extends('client.layout')
@section('pageTitle', 'Liên hệ')
@section('breadcrumb-first', 'Liên hệ')
@section('breadcrumb-second', 'Liên hệ')
@section('main')
<main>
  <div class="title position-relative text-center">
    <img class="w-100" src="./images/client/bgContact.png" alt="contact background">
    <div class="contact position-absolute d-flex flex-column">
      <h2 class="contact-heading fw-lighter fst-italic text-white">Liên hệ</h2>
      <p class="contact-text fs-lighter m-4">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Fugit, harum
        quibusdam molestias, officia
        laboriosam repellendus architecto eveniet iusto illum commodi amet sapiente rerum quos! Enim sed voluptatem amet
        doloribus officiis.</p>
    </div>
  </div>
  @if(session('alert'))
     <div class="my-5 alert alert-success d-flex align-items-center alert-dismissible fade show container" role="alert">
  <strong>{{session('alert')}}</strong> 
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
     @endif
     @if(session()->has('message'))
                        <div class="alert alert-success">
                            {{ session()->get('message') }}
                        </div>
                        @endif
  <div class="container">

    <div class="d-flex m-5 justify-content-center pt-5">
   
      <div class="detail-contact col-lg-6 col-sm-12 col-md-12 d-flex flex-column p-4 mt-4 order-lg-1  order-2">
        <img class="w-100" src="./images/client/imgContact.png" atl="image contact">

        <h2 class="dt-title my-4 fw-400">ADDRESS</h2>
        <p class="text-dt fw-400 fst-italic">12 Hoa Sứ, P.12, Q. Phú Nhuận, TP.HCM, Việt Nam</p>

        <h2 class="dt-title my-4 fw-400">PHONE</h2>
        <p class="text-dt fw-400">
          <i class="bi bi-telephone-fill"></i> +84 1900 6868 <br>
          <i class="bi bi-telephone-fill"></i> +84 909 09 09 90</p>

        <h2 class="dt-title my-4 fw-400">ONLINE SERVICE</h2>
        <p class="text-dt fw-400">
          <i class="bi bi-globe"></i> www.neosmart.vn <br>
          <i class="bi bi-envelope-fill"></i> info@neosmart.vn</p>
      </div>
      <div class="form-contact col-lg-6 col-sm-12 col-md-12 d-flex flex-column p-5 bg-white mt-4  order-lg-2  order-1">  
      <h2 class="title-form fw-400 lh-30 w-100 text-left">GỬI TIN NHẮN CHO CHÚNG TÔI</h2>
        <form action="{{ route('send.email') }}" method="post" class="my-5 ">
          @csrf
          <div class="form-group mb-3">
            <label for="" class="lh-30">Tên</label>
            <input class="field-name form-control p-2 lh-30" type="text" name="fullname" placeholder="Your Name"   value="{{old('fullname')}}"/>
            @error('fullname')
                <div class="alert alert-danger">{{ $message }}</div>
            @enderror
          </div>
          <div class="form-group my-4">
            <label for="" class="lh-30">Email</label>
            <input class="field-email form-control p-2 lh-30" type="text" name="email" placeholder="Your Email"  value="{{old('email')}}"/>
            @error('email')
                <div class="alert alert-danger">{{ $message }}</div>
            @enderror
          </div>
          <div class="form-group my-4">
            <label for="" class="lh-30">Số điện thoại</label>
            <input class="field-phone form-control p-2 lh-30" type="text" name="phone_number" placeholder="Your phone number" value="{{old('phone_number')}}"/>
            @error('phone_number')
                <div class="alert alert-danger">{{ $message }}</div>
            @enderror
          </div>
          <div class="form-group my-4">
            <label for="message" class="form-label">Tin nhắn</label>
            <textarea class="field-message form-control p-4 lh-30" name="message"  id="message" rows="7" placeholder="Your Message" value="{{old('message')}}"></textarea>
            @error('message')
                <div class="alert alert-danger">{{ $message }}</div>
            @enderror 
          </div>
          <button class="btn btn-submit w-100 text-white p-3 text-center mt-4" type="submit" name="btn_submit">Gửi liên hệ </button>
        </form>
      </div>
    </div>


    <div class="col-12 text-center">
      <iframe class="map-embed m-4"
        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d269.51637408008725!2d106.68795436217326!3d10.796875691560409!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175295011527d6b%3A0x772f366c692e4b78!2zTeG6uXQgMiBNaeG7gW4!5e0!3m2!1svi!2s!4v1649919662673!5m2!1svi!2s"
        allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
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
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/socket.io/4.5.0/socket.io.js"></script>
  <script>
    var eee = 'chao ban';
    console.log(eee);
    var socket = io('http://localhost:6001', {
      transports: ["websocket", "polling", "flashsocket"],
    });
    var elementSubmit = document.querySelector('.btn-submit')
    // var fullName = document.querySelector('.field-name')
    // var email = document.querySelector('.field-email')
    // var phone = document.querySelector('.field-phone')
    // var message = document.querySelector('.field-message')
    elementSubmit.addEventListener('click', function() {
      socket.emit('message', 'noti')
      // socket.emit('message', {'name': fullName.value, 'email': email.value, 'phone': phone.value, 'message': message.value})
    })

  </script>
</main>
@endsection