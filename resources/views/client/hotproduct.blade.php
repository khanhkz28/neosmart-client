
    <div class="slide-neo ">
      <div class="container ">
      <p>&nbsp;</p>
        <div id="wapper">
        <div class="row filtering">
            @foreach($data["hotproducts"] as $row )
            <div class=" container-card-neo ">
          <div class="card-neo-device slide-product">  
            <img src="{{asset('images/')}}/{{$row->photo}}" alt="{{$row->title}}" class="card-title-neo-img-product">
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