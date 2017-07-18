<!DOCTYPE html>
<head>

    <meta charset="utf-8">
    <title>Weather Demo</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">

    <style>

        #map {
            height:100%;
        }
        /* Optional: Makes the sample page fill the window. */
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }

    </style>

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet">

    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/normalize.min.css">
    <link rel="stylesheet" href="resources/css/font-awesome.min.css">
    <link rel="stylesheet" href="resources/css/animate.css">
    <link rel="stylesheet" href="resources/css/templatemo_misc.css">
    <link rel="stylesheet" href="resources/css/templatemo_style.css">

    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="resources/js/vendor/modernizr-2.6.2.min.js"></script>
    <!-- templatemo 410 circle -->

</head>
<body>

<div class="bg-overlay"></div>
<div class="container-fluid">
    <div class="row">

        <div class="col-md-4 col-sm-12">
            <div class="sidebar-menu">

                <div class="logo-wrapper">
                    <h1 class="logo">
                        <a href="#"><img src="resources/images/logo.png" alt="Circle Template">
                            <span>Responsive Weather Template</span></a>
                    </h1>
                </div> <!-- /.logo-wrapper -->

                <div class="menu-wrapper">
                    <ul class="menu">
                        <li><a class="homebutton" href="#">Home</a></li>
                        <li><a class="show-1" href="#">About</a></li>
                        <li><a class="show-2" href="#">Services</a></li>
                        <li><a class="show-3" href="#">Gallery</a></li>

                    </ul> <!-- /.menu -->
                    <a href="#" class="toggle-menu"><i class="fa fa-bars"></i></a>
                </div> <!-- /.menu-wrapper -->

                <!--Arrow Navigation-->
                <a id="prevslide" class="load-item"><i class="fa fa-angle-left"></i></a>
                <a id="nextslide" class="load-item"><i class="fa fa-angle-right"></i></a>

            </div> <!-- /.sidebar-menu -->
        </div> <!-- /.col-md-4 -->

        <div class="col-md-8 col-sm-12">

            <div id="menu-container">

                <div id="menu-1" class="about content">
                    <div class="row">
                        <ul class="tabs">
                            <li class="col-md-4 col-sm-4">
                                <a href="#tab1" class="icon-item">
                                    <i class="fa fa-umbrella"></i>
                                </a> <!-- /.icon-item -->
                            </li>
                            <li class="col-md-4 col-sm-4">
                                <a href="#tab2" class="icon-item">
                                    <i class="fa fa-camera"></i>
                                </a> <!-- /.icon-item -->
                            </li>
                            <li class="col-md-4 col-sm-4">
                                <a href="#tab3" class="icon-item">
                                    <i class="fa fa-coffee"></i>
                                </a> <!-- /.icon-item -->
                            </li>
                        </ul> <!-- /.tabs -->
                        <div class="col-md-12 col-sm-12">
                            <div class="toggle-content text-center" id="tab1">
                                <h3>Our History</h3>
                                Credit goes to for photos used in this template. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero, repellat, aspernatur nihil quasi commodi laboriosam cumque est minus minima sit dicta adipisci possimus magnam. Sit, repudiandae, ut, error, voluptates aspernatur inventore quo earum reiciendis dolorum amet perspiciatis adipisci itaque voluptatum iste laboriosam sapiente hic autem blanditiis doloribus nihil.</p>
                            </div>

                            <div class="toggle-content text-center" id="tab2">
                                <h3>What We Do</h3>
                                <br><br>Nunc dui elit, vulputate vitae nunc sed, accumsan condimentum nisl. Vestibulum a dui lectus. Vivamus in justo hendrerit est cursus semper sed id nibh. Donec ut dictum lorem, eu molestie nisi. Quisque vulputate quis leo lobortis fermentum. Ut sit amet consectetur dui, vitae porttitor lectus.</p>
                            </div>

                            <div class="toggle-content text-center" id="tab3">
                                <h3>Our Team</h3>
                                <br><br>Proin enim odio, eleifend eget euismod vitae, pharetra sed lacus. Donec at sapien nunc. Mauris vehicula quis diam nec dignissim. Nulla consequat nibh mattis metus sodales, at eleifend tortor tempor. Sed auctor lacus felis. </p>
                            </div>
                        </div>
                    </div> <!-- /.row -->

                </div> <!-- /.about -->

                <div id="menu-2" class="services content">
                    <div class="row">
                        <ul class="tabs">
                            <li class="col-md-4 col-sm-4">

                                <a href="#tab4" class="icon-item">
                                    <i class="fa fa-cogs"> Weather Service </i>
                                </a> <!-- /.icon-item -->
                            </li>
                            <li class="col-md-4 col-sm-4">
                                <a href="#tab5" class="icon-item">
                                    <i class="fa fa-leaf"> Location Service </i>
                                </a> <!-- /.icon-item -->
                            </li>

                        </ul> <!-- /.tabs -->

                        <div class="col-md-12 col-sm-12">
                            <div class="toggle-content text-center" id="tab4">
                                <h2 style="font-weight:bold;font-style:italic;color:rad;font-size:50px"> Current Weather IS: </h2>
                                <input type="text" style="font-weight:bold;font-style:italic;margin:10px;height:30px"  id="City_Name" placeholder="City_Name"/>
                                <button style="border:none;font-weight:bold;font-style:italic;margin:10px;width:150px;height:30px" onclick="ShowWeather()"> Show City Weather </button>

                                <br>
                                <div class="weather" style="font-weight:bold;font-style:italic;color:rad;font-size:20px;margin:30px"> </div>
                                <div class="Result">  </div>

                            </div>

                            <div class="toggle-content text-center " style="width:800px;height:600px" id="tab5">
                                <h3> Location Based Service </h3>
                                <div id="map"></div>


                            </div>

                        </div> <!-- /.row -->
                    </div> <!-- /.services -->

                    <div id="menu-3" class="gallery content">
                        <div class="row">

                            <div class="col-md-4 col-ms-6">
                                <div class="g-item">
                                    <img src="/resources/images/gallery/g1.jpg" alt="">
                                    <a data-rel="lightbox" class="overlay" href="resources/images/gallery/g1.jpg">
                                        <span>+</span>
                                    </a>
                                </div> <!-- /.g-item -->
                            </div> <!-- /.col-md-4 -->
                            <div class="col-md-4 col-ms-6">
                                <div class="g-item">
                                    <img src="resources/images/gallery/g2.jpg" alt="">
                                    <a data-rel="lightbox" class="overlay" href="resources/images/gallery/g2.jpg">
                                        <span>+</span>
                                    </a>
                                </div> <!-- /.g-item -->
                            </div> <!-- /.col-md-4 -->
                            <div class="col-md-4 col-ms-6">
                                <div class="g-item">
                                    <img src="resources/images/gallery/g3.jpg" alt="">
                                    <a data-rel="lightbox" class="overlay" href="resources/images/gallery/g3.jpg">
                                        <span>+</span>
                                    </a>
                                </div> <!-- /.g-item -->
                            </div> <!-- /.col-md-4 -->
                            <div class="col-md-4 col-ms-6">
                                <div class="g-item">
                                    <img src="resources/images/gallery/g4.jpg" alt="">
                                    <a data-rel="lightbox" class="overlay" href="resources/images/gallery/g4.jpg">
                                        <span>+</span>
                                    </a>
                                </div> <!-- /.g-item -->
                            </div> <!-- /.col-md-4 -->
                            <div class="col-md-4 col-ms-6">
                                <div class="g-item">
                                    <img src="resources/images/gallery/g5.jpg" alt="">
                                    <a data-rel="lightbox" class="overlay" href="resources/images/gallery/g5.jpg">
                                        <span>+</span>
                                    </a>
                                </div> <!-- /.g-item -->
                            </div> <!-- /.col-md-4 -->
                            <div class="col-md-4 col-ms-6">
                                <div class="g-item">
                                    <img src="resources/images/gallery/g6.jpg" alt="">
                                    <a data-rel="lightbox" class="overlay" href="resources/images/gallery/g6.jpg">
                                        <span>+</span>
                                    </a>
                                </div> <!-- /.g-item -->
                            </div> <!-- /.col-md-4 -->
                            <div class="col-md-4 col-ms-6">
                                <div class="g-item">
                                    <img src="resources/images/gallery/g7.jpg" alt="">
                                    <a data-rel="lightbox" class="overlay" href="/resources/images/gallery/g7.jpg">
                                        <span>+</span>
                                    </a>
                                </div> <!-- /.g-item -->
                            </div> <!-- /.col-md-4 -->
                            <div class="col-md-4 col-ms-6">
                                <div class="g-item">
                                    <img src="resources/images/gallery/g8.jpg" alt="">
                                    <a data-rel="lightbox" class="overlay" href="/resources/images/gallery/g8.jpg">
                                        <span>+</span>
                                    </a>
                                </div> <!-- /.g-item -->
                            </div> <!-- /.col-md-4 -->
                            <div class="col-md-4 col-ms-6">
                                <div class="g-item">
                                    <img src="resources/images/gallery/g9.jpg" alt="">
                                    <a data-rel="lightbox" class="overlay" href="/resources/images/gallery/g9.jpg">
                                        <span>+</span>
                                    </a>
                                </div> <!-- /.g-item -->
                            </div> <!-- /.col-md-4 -->

                        </div> <!-- /.row -->
                    </div> <!-- /.gallery -->


                </div> <!-- /#menu-container -->
            </div> <!-- /.col-md-8 -->

        </div> <!-- /.row -->
    </div> <!-- /.container-fluid -->


    <script>
        // Note: This example requires that you consent to location sharing when
        // prompted by your browser. If you see the error "The Geolocation service
        // failed.", it means you probably did not give permission for the browser to
        // locate you.
        function initMap() {
            var map = new google.maps.Map(document.getElementById('map'), {
                center: {lat: -34.397, lng: 150.644},
                zoom: 10
            });
            var infoWindow = new google.maps.InfoWindow({map: map});

            // Try HTML5 geolocation.
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function(position) {
                    var pos = {
                        lat: position.coords.latitude,
                        lng: position.coords.longitude
                    };

                    infoWindow.setPosition(pos);
                    infoWindow.setContent('Location found.');
                    map.setCenter(pos);
                }, function() {
                    handleLocationError(true, infoWindow, map.getCenter());
                });
            } else {
                // Browser doesn't support Geolocation
                handleLocationError(false, infoWindow, map.getCenter());
            }
        }

        function handleLocationError(browserHasGeolocation, infoWindow, pos) {
            infoWindow.setPosition(pos);
            infoWindow.setContent(browserHasGeolocation ?
                    'Error: The service failed.' :
                    'Error: Your browser doesn\'t support geolocation.');
        }

    </script>
    <script async defer	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCmYO5bQQyAO-vbVT_Z1O_nzI4tfSeiBF0&callback=initMap"></script>


    <script>
        function ShowWeather(){
            $('.weather').html('');
            $('.Result').html('');

            var CityName=$('#City_Name').val();

            var apiCall='http://api.openweathermap.org/data/2.5/weather?q='+CityName+'&appid=2313eee4884fcc7bb3d9092af78d26ec';
            $.getJSON(apiCall,weatherCallback);
            function weatherCallback(weatherData){

//console.log(weatherData);

                var Name = weatherData.name;
                var Temp = weatherData.main.temp;
                var Clouds =weatherData.clouds.all;
                var Country =weatherData.sys.country;
                var Winddeg =weatherData.wind.deg;
                var Windspeed =weatherData.wind.speed;
                var Description= weatherData.weather[0].description;


                if(Name !=weatherData)
                {
                    $('.weather').append("The Weather In City :"+Name+" <br> IN Country : "+Country +" <br>Description IS : "+ Description+"<br> Tempreture In Kelvin IS : "+Temp+" <br> Clouds Are :"+Clouds+"<br> Wind Degrees Are : "+Winddeg+"<br> Wind Speed IS : "+Windspeed+" ");

                }else{
                    $('.Result').append("Some Thing Went Wrong Please Try Again :)");

                }

            }
        }

    </script>

    <script src="resources/js/vendor/jquery-1.10.1.min.js"></script>
    <script>window.jQuery || document.write('<script src="resources/js/vendor/jquery-1.10.1.min.js"><\/script>')</script>
    <script src="resources/js/jquery.easing-1.3.js"></script>
    <script src="resources/js/bootstrap.js"></script>
    <script src="resources/js/plugins.js"></script>
    <script src="resources/js/main.js"></script>
    <script type="text/javascript">

        jQuery(function ($) {

            $.supersized({

                // Functionality
                slide_interval: 3000, // Length between transitions
                transition: 1, // 0-None, 1-Fade, 2-Slide Top, 3-Slide Right, 4-Slide Bottom, 5-Slide Left, 6-Carousel Right, 7-Carousel Left
                transition_speed: 700, // Speed of transition

                // Components
                slide_links: 'blank', // Individual links for each slide (Options: false, 'num', 'name', 'blank')
                slides: [ // Slideshow Images
                    {
                        image: '/resources/images/templatemo-slide-1.jpg'
                    }, {
                        image: '/resources/images/templatemo-slide-2.jpg'
                    }, {
                        image: '/resources/images/templatemo-slide-3.jpg'
                    }, {
                        image: '/resources/images/templatemo-slide-4.jpg'
                    }
                ]

            });
        });

    </script>

    <!-- Google Map -->
    <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script src="/resources/js/vendor/jquery.gmap3.min.js"></script>
    <!-- Google Map Init-->
    <script type="text/javascript"></script>


</body>
</html>