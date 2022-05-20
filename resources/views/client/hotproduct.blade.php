{{-- <div class="container">
        <p>&nbsp;</p>
        <div id="wapper">
        <div class="row filtering">
            @foreach($data["hotproducts"] as $row )
       
            <div class="col ">
          <div class="card shadow-sm m-2 hot-product">
         
    
            <div class="card-body">
           <a class="product-box-img">

           <img src="{{asset('images/')}}/{{$row->photo}}" alt="{{$row->title}}"></a>
           <a  class="product-box-img">

           <h2 class="card-title hot-product-title py-1">{{$row->title}}</h2></a>
            
           
              <p class="card-text hot-product-description py-3">{{$row->description}}</p>
              <div class="d-flex justify-content-between align-items-center hot-product-price py-3">
                <span>Giá :</span>
                <small>{{ number_format($row->price, 0, ',', '.') }} VNĐ</small>
              </div>
            </div>
          </div>
        </div>
       
            @endforeach
            </div>
            </div>
    <p style="text-align:justify;">&nbsp;</p>
    </div> --}}

    <div class="slide-neo ">
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