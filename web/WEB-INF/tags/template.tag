<!DOCTYPE html>
<%@tag description="Simple Template" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@attribute name="title"%>
<%@attribute name="head_area" fragment="true" %>
<%@attribute name="body_area" fragment="true" %>
<%@attribute name="body_item" fragment="true" %>
<%@attribute name="body_shopingCart" fragment="true" %>
<%@attribute name="body_Title" fragment="true" %>
<%@attribute name="body_ViewProduct" fragment="true" %>





<html>
<head>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Emmanuel WatchShop - Responsive HTML CSS Template</title>
        <!--

        Template 2088 Big City

        http://www.tooplate.com/view/2088-big-city

        -->


        <link href="<c:url value='/ressources/css/myPage.css'/>" type="text/css" rel="stylesheet"/>
        <link href="<c:url value='/ressources/css/myPage2.css'/>" type="text/css" rel="stylesheet"/>
        <link href="<c:url value='/ressources/css/myPage3.css'/>" type="text/css" rel="stylesheet"/>
        <link href="<c:url value='/ressources/css/myPage4.css'/>" type="text/css" rel="stylesheet"/>

        <!-- Tooplate style -->

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="<c:url value='https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js'/>" type="text/javascript"></script>
        <script src="<c:url value='https://oss.maxcdn.com/respond/1.4.2/respond.min.js'/>" type="text/javascript"></script>

        <![endif]-->

    <jsp:invoke fragment="head_area"/>
</head>
<body>

<div class="cd-bg-video-wrapper" data-video="bangkok-city">
    <!-- video element will be loaded using jQuery -->
</div> <!-- .cd-bg-video-wrapper -->

<!-- Content -->
<div class="cd-hero">

    <!-- Navigation -->
    <div class="cd-slider-nav">
        <div class="container">
            <nav class="navbar">
                <div class="tm-navbar-bg">
                    <a class="navbar-brand text-uppercase" href="#">Emmanuel WatchShop</a>
                    <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#tmNavbar">
                        &#9776;
                    </button>
                    <div class="collapse navbar-toggleable-md text-xs-center text-uppercase tm-navbar" id="tmNavbar">
                        <ul class="nav navbar-nav">
                            <li class="nav-item active selected">
                                <a class="nav-link" href="#" data-no="1">Home </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#" data-no="2">My orders<span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#0" data-no="3">Shopping cart</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#0" data-no="4">Contact</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>

    <ul class="cd-hero-slider">  <!-- autoplay -->

        <!-- Page 1 Home -->
        <li class="selected">
            <jsp:invoke fragment="body_ViewProduct"/>
            <div cd-full-width>
                <div class="container js-tm-page-content tm-page-1 tm-section-margin-t-small" data-page-no="2">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="tm-home-container-outer">
                                <div class="tm-home-container" id="idHomeContainer">
                                        <jsp:invoke fragment="body_Title"/>
                                    <div class="tm-home-description-container tm-bg-dark-blue">
                                        <div class="text-xs-left tm-textbox">
                                            <div>
                                                <jsp:invoke fragment="body_area"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tm-home-container-bg"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- .cd-full-width -->
        </li>

        <!-- Page 2 About -->
        <li>
            <div class="cd-full-width">
                <div class="container js-tm-page-content tm-section-margin-t" data-page-no="1">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="tm-flex">
                                <div class="col-lg-6 tm-white-header-container-outer tm-margin-b tm-2-col-left">
                                    <div class="tm-bg-white tm-white-header-container">
                                        <h2 class="tm-text-title tm-text-title-small">List of Items</h2>
                                    </div>
                                    <div class="tm-bg-dark-blue text-xs-left tm-textbox tm-textbox-padding tm-white-header-body tm-white-border tm-2-col-equal-height">

                                        <div>
                                            <jsp:invoke fragment="body_item"/>

                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 tm-white-header-container-outer tm-margin-b tm-2-col-right">
                                    <div class="tm-bg-white tm-white-header-container">
                                        <h2 class="tm-text-title tm-text-title-small">Cart Items</h2>
                                    </div>
                                    <div class="tm-bg-dark-blue text-xs-left tm-textbox tm-textbox-padding tm-white-header-body tm-white-border tm-2-col-equal-height">
                                        <div><jsp:invoke fragment="body_shopingCart"/></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div> <!-- .cd-full-width -->

        </li>

        <!-- Page 3 Gallery -->
        <li>
            <div class="cd-full-width">
                <div class="container js-tm-page-content tm-section-margin-t" data-page-no="1">
                    Test
                </div>
            </div> <!-- .cd-full-width -->

        </li>

        <!-- Page 4 Contact -->
        <li>
            <div class="cd-full-width">
                <div class="container js-tm-page-content tm-section-margin-t-small" data-page-no="4">
                    <div class="tm-contact-page">
                        <div class="row tm-margin-b">
                            <div class="col-xs-12">
                                <div class="tm-bg-white tm-textbox-padding">
                                    <h2 class="tm-text-title tm-margin-b-0">Contact Us</h2>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-12">
                                <div class="tm-flex tm-contact-container tm-bg-dark-blue">
                                    <div class="text-xs-left tm-textbox tm-2-col-textbox-2 tm-textbox-padding tm-textbox-padding-contact">
                                        <p class="tm-text">Phasellus lacus mi, porta vel sodales nec, faucibus non eros. Nulla at quam vel risus laoreet tincidunt in in sem.</p>
                                        <p class="tm-text">88-99 Etiam mauris erat,<br>Vestibulum eu augue nec, 10890<br>Nam consequat<br></p>
                                        <p class="tm-text">Tel: 010-020-0340<br>Fax: 090-080-0980</p>
                                    </div>

                                    <div class="text-xs-left tm-textbox tm-2-col-textbox-2 tm-textbox-padding tm-textbox-padding-contact">
                                        <!-- contact form -->
                                        <form action="index.html" method="post" class="tm-contact-form">
                                            <div class="form-group">
                                                <input type="text" id="contact_name" name="contact_name" class="form-control" placeholder="Name"  required/>
                                            </div>
                                            <div class="form-group">
                                                <input type="email" id="contact_email" name="contact_email" class="form-control" placeholder="Email"  required/>
                                            </div>
                                            <div class="form-group">
                                                <textarea id="contact_message" name="contact_message" class="form-control" rows="5" placeholder="Your message" required></textarea>
                                            </div>
                                            <button type="submit" class="tm-submit-btn">Send</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- .cd-full-width -->
        </li>
    </ul> <!-- .cd-hero-slider -->

    <footer id="footerCadet">
        <p>Copyright &copy; <span class="tm-current-year">2017</span> Emmanuel Shop</p>
    </footer>
</div> <!-- .cd-hero -->

<!-- Preloader, https://ihatetomatoes.net/create-custom-preloading-screen/ -->
<div id="loader-wrapper">
    <div id="loader"></div>
    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
</div>

<!-- load JS files -->
<script src="<c:url value='/ressources/js/template/jquery-1.11.3.min.js'/>" type="text/javascript"></script>
<script src="<c:url value='/ressources/js/template/tether.min.js'/>" type="text/javascript"></script>
<script src="<c:url value='/ressources/js/template/isInViewport.min.js'/>" type="text/javascript"></script>
<script src="<c:url value='/ressources/js/template/bootstrap.min.js'/>" type="text/javascript"></script>
<script src="<c:url value='/ressources/js/template/hero-slider-main.js'/>" type="text/javascript"></script>
<script src="<c:url value='/ressources/js/template/jquery.magnific-popup.min.js'/>" type="text/javascript"></script>

<script>

    function adjustHeightOfPage(pageNo) {

        var offset = 80;
        var pageContentHeight = $(".cd-hero-slider li:nth-of-type(" + pageNo + ") .js-tm-page-content").height();

        if($(window).width() >= 992) { offset = 120; }
        else if($(window).width() < 480) { offset = 40; }

        // Get the page height
        var totalPageHeight = 335 + $('.cd-slider-nav').height()
            + pageContentHeight + offset
            + $('.tm-footer').height();

        // Adjust layout based on page height and window height
        if(totalPageHeight > $(window).height())
        {
            $('.cd-hero-slider').addClass('small-screen');
            $('.cd-hero-slider li:nth-of-type(' + pageNo + ')').css("min-height", totalPageHeight + "px");
        }
        else
        {
            $('.cd-hero-slider').removeClass('small-screen');
            $('.cd-hero-slider li:nth-of-type(' + pageNo + ')').css("min-height", "100%");
        }
    }

    function uploadVideo() {

        var videoWrapper = $('.cd-bg-video-wrapper');
        if( videoWrapper.is(':visible') ) {
            // if visible - we are not on a mobile device
            var videoUrl = videoWrapper.data('video'),

                video = $('<video autoplay loop><source src="'+videoUrl+'.mp4" type="video/mp4" /></video>');
            video.appendTo(videoWrapper);

            // play video if first slide
            if(videoWrapper.parent('.cd-bg-video.selected').length > 0) video.get(0).play();
        }
    }

    // Everything is loaded including images.
    $(window).load(function(){

        adjustHeightOfPage(1); // Adjust page height

        // Background Video
        if($( window ).width() > 800) {
            uploadVideo();
        }

        /* Gallery One pop up
        -----------------------------------------*/
        $('.gallery-first').magnificPopup({
            delegate: 'a', // child items selector, by clicking on it popup will open
            type: 'image',
            gallery:{enabled:true}
        });

        /* Gallery Two pop up
        -----------------------------------------*/
        $('.gallery-second').magnificPopup({
            delegate: 'a', // child items selector, by clicking on it popup will open
            type: 'image',
            gallery:{enabled:true}
        });

        /* Collapse menu after click
        -----------------------------------------*/
        $('#tmNavbar a').click(function(){
            $('#tmNavbar').collapse('hide');

            adjustHeightOfPage($("#tmNavbar").data("no")); // Adjust page height
        });

        /* Browser resized
        -----------------------------------------*/
        $( window ).resize(function() {
            var currentPageNo = $(".cd-hero-slider li.selected .js-tm-page-content").data("page-no");

            // wait 3 seconds
            setTimeout(function() {
                adjustHeightOfPage( currentPageNo );
            }, 3000);

            if($( window ).width() > 800) {
                uploadVideo();
            }

        });

        // Play video only when visible
        // https://stackoverflow.com/questions/21163756/html5-and-javascript-to-play-videos-only-when-visible
        $('video').each(function(){
            if ($(this).is(":in-viewport")) {
                $(this)[0].play();
            } else {
                $(this)[0].pause();
            }
        })

        // Remove preloader (https://ihatetomatoes.net/create-custom-preloading-screen/)
        $('body').addClass('loaded');
        $('.tm-current-year').text(new Date().getFullYear());

    });

</script>

</body>
</html>