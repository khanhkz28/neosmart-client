<div class="container">
        <p>&nbsp;</p>
        <div id="wapper">
        <div class="row filtering">
            @foreach($data["hotproducts"] as $row )
       
            <div class="col ">
          <div class="card shadow-sm m-2 hot-product">
         
    
            <div class="card-body">
           <a href="sanpham//{{$row->id}}" class="product-box-img">

           <img src="http://localhost:8000/images/{{$row->photo}}" alt="{{$row->title}}"></a>
           <a href="sanpham//{{$row->id}}" class="product-box-img">

           <h2 class="card-title hot-product-title py-1">{{$row->title}}</h2></a>
            
           
              <p class="card-text hot-product-description py-3">{{$row->description}}</p>
              <div class="d-flex justify-content-between align-items-center hot-product-price py-3">
                <span>Giá :</span>
                <small>{{$row->price}}VNĐ</small>
              </div>
            </div>
          </div>
        </div>
       
            @endforeach
            </div>
            </div>
    <p style="text-align:justify;">&nbsp;</p>
    </div>