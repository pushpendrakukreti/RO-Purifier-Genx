<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="width860">
            <div class="main-content">
                <div class="bg-img">
                    <!-- <div class="row">
            <div class="col-sm-12 col-md-12 xs-12  text-center">
            <figure>
                    <img src="images/Christmas-banner.png" >
              </figure>
            
            </div>
        </div> -->

                    <script src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
                    <div class="bs-example">
                        <!-- Button HTML (to Trigger Modal) -->
                        <div id="myModal_video" class="modal fade">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-body">
                                        <span id='video' data-dismiss="modal" class="deleteMeetingClose">&times;
                                        </span>
                                        <iframe width="560" height="315" src="https://www.youtube.com/embed/plF7JvQC95M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    ﻿<script type="text/javascript" src="../cdnjs.cloudflare.com/ajax/libs/ouibounce/0.0.11/ouibounce.min.js"></script>
                    <div id="ouibounce-modal">
                        <div class="blackOut">
                            <div id="exitFormpopup" class="formCont"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div>
            <div class="container-fluid ccss" style="width: 130%; margin-left: -15%;">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1" class=""></li>
                <li data-target="#myCarousel" data-slide-to="2" class=""></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="images/slider/slider-1.jpg" alt="Los Angeles" style="width: 100%;">
                </div>

                <div class="item">
                    <img src="images/slider/slider-2.jpg" alt="Chicago" style="width: 100%;">
                </div>

                <div class="item">
                    <img src="images/slider/slider-3.jpg" alt="New york" style="width: 100%;">
                </div>
            </div>

            <!-- Left and right controls -->
            <a style="margin-left: 10%;" class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a style="margin-right: 10%;" class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <section class="width860">
        <div class="main-content">
            <div class="bg-img">
                <!-- <div class="row">
            <div class="col-sm-12 col-md-12 xs-12  text-center">
            <figure>
                    <img src="images/Christmas-banner.png" >
              </figure>
            
            </div>
        </div> -->


                <section class="sec-container">
                    <div class="row">
                        <div class="col-sm-12 col-md-5 text-right">
                            <div class="lite-blue img-box-lft">
                                <img alt="Large Variety of Healthcare Products" src="images/main-page-image-think-GenX-new.png" title="Large Variety of Healthcare Products">
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6 content-desc">
                            <h2><a class="h2color" href="waterpurifier.aspx">Yes Purity Matters, GenX With You</a></h2>
                            <p>
                                Being one of the most trusted brand in India, GenX offers a large variety of healthcare products such as water purifiers, air purifiers,
                <a href="cooking-appliances/index.aspx">cooking appliances
                </a>and
                <a href="vacuum-cleaner/index.aspx">vacuum cleaners
                </a>.
                            </p>
                            <p>With a wide range of healthcare appliances, GenX ensures that your family stays healthy and free of diseases.</p>
                            <h3>Drink Pure, Breathe Pure, Eat Pure </h3>
                        </div>
                    </div>
                </section>
                <section class="sec-container">
                    <div class="row">
                        <div class="col-sm-12 col-md-6 col-md-push-7 img-sec">
                            <div class="lite-blue img-box left-0">
                                <a href="water-purifiers/index.aspx">
                                    <img alt="GenX Water Purifiers" src="images/wall-mounted-ro-hpurifiers-3.png" title="GenX Water Purifiers"></a>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6 col-md-pull-5">
                            <div class="content-desc fr">
                                <h2><a class="h2color" href="waterpurifier.aspx">RO Water Purifiers</a></h2>
                                <p>
                                    Multiple purification by RO+UV+UF+TDS controller makes water 100% pure by removing dissolved impurities and microorganisms and at 
                the same time retains essential natural minerals in purified water. World's most trusted RO water purifiers!!
                                </p>
                                <div>
                                    <h3 class="small-bold-h3">Our Best Selling RO Water Purifiers</h3>
                                </div>
                                <div class="other-link lite-blue">
                                    <a href="waterpurifier.aspx" class="active link">GenX Prime Plus</a>
                                    <a href="waterpurifier.aspx" class="active link">GenX Grand Star</a>
                                    <a href="waterpurifier.aspx" class="active link">GenX Supreme Plus</a>
                                </div>
                                <div class="lite-blue prodt-button">
                                    <span class="active cool-button">
                                        <a href="Product.aspx" style="color:white !important;">Full Product Range</a>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="sec-container">
                    <div class="row">
                        <div class="col-sm-12 col-md-5 text-right">
                            <div class="img-box-lft red">
                                <div class="single_sercives_icon-big-bg blue-bg  ">
                                    <a href="waterpurifier.aspx">
                                        <img alt="UV &amp; Gravity Water Purifiers" src="images/GenX-maxx.png" title="UV &amp; Gravity Water Purifiers" style="margin-top: 30px;"></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6 content-desc">
                            <h2><a class="h2color" href="waterpurifier.aspx">UV</a> &amp; <a class="h2color" href="water-purifiers/ro/index.aspx">Gravity Water Purifiers</a>
                            </h2>
                            <p>
                                Range of GenX UV Purifiers having 11 watts UV lamp followed by UF membrane, removes bacteria and stores purified water in an inbuilt tank.
                            </p>
                            <p>GenX Gold range of gravity purifier work without electricity and are based on ultra filtration technology  to remove bacteria removes as well as cyst from drinking water. </p>
                            <div>
                                <h3 class="small-bold-h3">UV &amp; Gravity Water Purifiers</h3>
                            </div>
                            <div class="other-link lite-blue">
                                <a href="waterpurifier.aspx" class="active link">GenX Maxx</a>
                                <a href="waterpurifier.aspx" class="active link">GenX Ultra</a>
                                <a href="waterpurifier.aspx" class="active link">GenX Gold</a>
                                <a href="waterpurifier.aspx" class="active link">GenX Gold Cool</a>
                            </div>
                            <div class="lite-blue prodt-button">
                                <span class="active cool-button">
                                    <a href="Product.aspx" style="color:white !important;">Full Product Range
                                    </a>
                                </span>
                            </div>
                        </div>
                    </div>
                </section>
                <script src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
                <div class="bs-example">
                    <!-- Button HTML (to Trigger Modal) -->
                    <div id="myModal_video" class="modal fade">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-body">
                                    <span id="video" data-dismiss="modal" class="deleteMeetingClose">×
                                    </span>
                                    <iframe width="560" height="315" src="https://www.youtube.com/embed/plF7JvQC95M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen=""></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                ﻿<script type="text/javascript" src="../cdnjs.cloudflare.com/ajax/libs/ouibounce/0.0.11/ouibounce.min.js"></script>
                <div id="ouibounce-modal">
                    <div class="blackOut">
                        <div id="exitFormpopup" class="formCont"></div>
                    </div>
                </div>
                <section class="sec-container">
                    <div class="row" style="background: #dce7ec; padding: 40px;">
                        <div class="col-xs-12 col-md-6 ">
                            <h2>The Success Story of GenX Over the Years !!!</h2>
                            <p style="font-size: 20px; font-weight: normal; padding: 15px;">
                                GenX RO, a brainchild of Dr. XXXXXX, has revolutionized the water purifier industry.
Watch the astonishing journey of Dr. XXXXXX and GenX RO towards becoming a leading brand.
                            </p>
                        </div>
                        <div class="col-xs-12 col-md-6 text-right ">
                            <iframe width="380" height="262" src="https://www.youtube.com/embed/tgbNymZ7vqY"></iframe>
                        </div>
                    </div>
                </section>
                <section class="container-fluid bg-white">
                    <div class="width860 paddingTB4">
                        <div class="row">
                            <div class="col-xs-12 col-sm-4 loyalty-block ">
                                <a href="water-purifiers/ro/index.aspx#row_advantages">
                                    <div class="star ">
                                        <div class="block-text  ">
                                            <header>GenX ADVANTAGE</header>
                                            <div class="sub-text" style="min-width: 200px;">
                                                Premium Quality Products
                                with Large Sales and Service Network
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xs-12 col-sm-4 loyalty-block">
                                <a href="awards.aspx">
                                    <div class="awarded ">
                                        <div class="block-text">
                                            <header>MOST CERTIFIED &amp; AWARDED</header>
                                            <div class="sub-text">Honoured with Numerous Awards and Certifications</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xs-12 col-sm-4 loyalty-block">
                                <a href="certifications.aspx">
                                    <div class="trusted ">
                                        <div class="block-text">
                                            <header>TRUSTED BY MILLIONS</header>
                                            <div class="sub-text">Ranked #1 Most Trusted Brand in India</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </section>
</asp:Content>