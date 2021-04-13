<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Commerce Website</title>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>
<body>
    {{View::make('header')}}
    @yield('content')
   
</body>
<style>
    .custom-login{
        height: 500px;
        padding-top: 100px;
    }

    .slider-img{
        height:400px !important
    }

    .custom-product{
        height: 600px;
    }

    .slider-text{
        color: #333;
        margin: 70px;
        background-color: #eef3f7 !important
    }

    .trending-img{
        height:100px;
    }

    .trending-item{
        float:left;
        width: 25%;
    }

    .trending-wrapper{
        margin:30px;
    }

    .detail-img{
        height:200px;
    }

    .search-box{
        width: 500px !important;
    }

    .cart-list-devider
    {
        border-bottom:1px solid #ccc;
    }
    
    .form-horizontal{
        margin:100px;
        padding: 20px;
    }

    .logo-image{
        max-width: 1%;
        height: auto;
        
    }

}
</style>
</html>