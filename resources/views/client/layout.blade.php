<!--
=========================================================
* Material Dashboard 2 - v3.0.0
=========================================================

* Product Page: https://www.creative-tim.com/product/material-dashboard
* Copyright 2021 Creative Tim (https://www.creative-tim.com)
* Licensed under MIT (https://www.creative-tim.com/license)
* Coded by Creative Tim

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>
        NeoSmart- @yield('pageTitle')
    </title>
    <link href="{{ asset('images/client/logo _ Neosmart - no BG 1.png') }}" rel="icon">
    <script src="https://kit.fontawesome.com/e9a54998f0.js" crossorigin="anonymous"></script>
    <!--     Fonts and icons     -->
    <!-- <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" /> -->
    <!-- CSS -->
    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <link href="{{ asset('css/clientstyle.css') }}" rel="stylesheet" />
    <link href="{{ asset('css/nhi.css') }}" rel="stylesheet" />
    <link href="{{ asset('css/tuan.css') }}" rel="stylesheet" />
    <link href="{{ asset('css/phong.css') }}" rel="stylesheet" />
    <!--Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,500;1,600;1,700;1,800&family=Roboto:wght@100&display=swap" rel="stylesheet">

    <link href="{{ asset('css/slick-theme.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('css/slick.min.css') }}" rel="stylesheet" />
    <style>
/* Center the loader */
          #loader {
            position: absolute;
            left: 50%;
            top: 50%;
            z-index: 1;
            width: 120px;
            height: 120px;
            margin: -76px 0 0 -76px;
            border: 16px solid #f3f3f3;
            border-radius: 50%;
            border-top: 16px solid #3498db;
            -webkit-animation: spin 2s linear infinite;
            animation: spin 2s linear infinite;
          }

          @-webkit-keyframes spin {
            0% { -webkit-transform: rotate(0deg); }
            100% { -webkit-transform: rotate(360deg); }
          }

          @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
          }



#myDivLoader {
  display: none;
}
</style>
</head>

<body >

<?= View::make('client.header') ?>
    @yield('main')

    @include('client.footer')

    
    <script src="{{asset('js/bootstrap.bundle.min.js')}}"></script>      
    <script src="{{asset('js/jquery.min.js')}}" ></script>
    <script src="{{asset('js/slick.min.js')}}" ></script>  
    <script src="{{asset('js/scripts.js')}}"></script>
    <script src="{{asset('js/scriptst.js')}}"></script>
</body>

</html>