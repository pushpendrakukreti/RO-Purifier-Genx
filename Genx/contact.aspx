<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

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
                        <div id="myModal_video1" class="modal fade">
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
    <style type="text/css">
        #bg-img11 {
            background: -webkit-linear-gradient(top, rgba(255, 255, 255, .8) 0%, rgba(0, 255, 255, 0.8) 100%) no-repeat;
            height: 262px;
            background-size: 100%;
        }

        .headspan {
            color: cyan;
            font-size: 72px;
            font-family: sans-serif;
            font-weight: bolder;
            float: left;
            margin-top: 10%;
            margin-left: 2%;
            -webkit-text-stroke: 1.5px white;
            text-shadow: 3px 3px white;
        }

        @media only screen and (max-width: 900px) {
            #bg-img11 {
                height: 130px !important;
                padding-left: 8%;
            }
        }

        @media only screen and (max-width:900px) {
            .headspan {
                color: cyan !important;
                font-size: 32px;
                font-family: sans-serif;
                font-weight: bolder;
                float: left;
                margin-top: 10%;
                margin-left: 2%;
                -webkit-text-stroke: 0.5px white !important;
                text-shadow: 1px 1px white;
            }
        }
    </style>
    <header>
        <div id="bg-img11" class="bg-img">
            <p class="headspan">CONTACT US</p>
        </div>

        <style type="text/css">
            @media only screen and (max-width: 900px) {
                #bg-img11 {
                    height: 130px !important;
                }
            }

            @media only screen and (min-width: 900px) {
                .width860 {
                    width: 100% !important;
                }

                #menuW {
                    float: right !important;
                    margin-right: 10% !important;
                }
            }

            a.gflag {
                vertical-align: middle;
                font-size: 16px;
                padding: 1px 0;
                background-repeat: no-repeat;
                background-image: url(../gtranslate.net/flags/16.png);
            }

                a.gflag img {
                    border: 0;
                }

                a.gflag:hover {
                    background-image: url(../gtranslate.net/flags/16a.png);
                }

            #goog-gt-tt {
                display: none !important;
            }

            .goog-te-banner-frame {
                display: none !important;
            }

            .goog-te-menu-value:hover {
                text-decoration: none !important;
            }

            body {
                top: 0 !important;
            }

            #google_translate_element2 {
                display: none !important;
            }


            .rght-arrow-bestseller {
                display: inline;
                height: 15px;
                width: 65px;
                position: absolute;
                top: 10px;
                right: 10px;
                background: url(images/Best-Seller-Button.png) no-repeat;
            }
        </style>
    </header>
    <style type="text/css">
        .dividerHeading {
            margin-bottom: 25px;
        }

            .dividerHeading h4 {
                font-size: 21px;
                font-weight: normal;
                padding: 0 0 10px;
                position: relative;
                text-transform: capitalize;
            }

        h4 {
            margin-top: 10px;
            margin-bottom: 10px;
            line-height: 30px;
        }

        input[type="text"], textarea {
            font-family: "Open Sans",Helvetica,Arial,sans-serif;
            font-size: 13px;
            line-height: 20px;
            color: #555;
        }

        .form-control {
            height: 46px;
            border-radius: 0;
            padding: 12px;
            margin-bottom: 10px;
        }

        .form-control {
            display: block;
            width: 100%;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        }

        .widget_social {
            list-style: none outside none;
            margin: 0 auto;
            overflow: hidden;
            padding: 0;
        }

            .widget_social li {
                float: left;
                background: none !important;
            }

                .widget_social li a {
                    color: #666;
                    display: block;
                    height: 46px;
                    text-align: center;
                    width: 46px;
                    -webkit-border-radius: 50%;
                    transition: 0.25s;
                }

        .widget_info_contact li i {
            float: left;
            margin: 1px 0 0 0;
        }

        .fa {
            display: inline-block;
            font: normal normal normal 14px/1 FontAwesome;
            font-size: inherit;
            text-rendering: auto;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            transform: translate(0, 0);
        }

        .widget_info_contact p {
            margin: 0 0 0 20px;
            line-height: 18px;
            overflow: hidden;
        }

        .widget_info_contact li {
            margin: 0 0 25px 0;
        }
    </style>
    <section class="width860">
        <div class="main-content">
            <div class="bg-img">
                <div class="container main-container marginTop">
                    <div class="row main-containe-wdth">
                        <h1 class="text-center bg-primary" style="padding: 1%;">Get Directions To Us !!</h1>
                        <br>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3500.434457869992!2d77.39049331460501!3d28.676647688834834!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cf065079263ab%3A0x12f9ffeaa4120982!2sGenx!5e0!3m2!1sen!2sin!4v1550559367854" width="600" height="450" frameborder="0" style="border: 0" allowfullscreen=""></iframe>
                    </div>
                    <div class="row sub_content" style="margin-top: 5%;">
                        <div class="col-lg-8 col-md-8 col-sm-8 bg-success" style="padding: 1%;">
                            <div class="dividerHeading">
                                <h4><span>Get in Touch</span></h4>
                            </div>
                            <p></p>

                            <div class="alert alert-success hidden alert-dismissable" id="contactSuccess">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                <strong>Success!</strong> Your message has been sent to us.
                            </div>

                            <div class="alert alert-error hidden" id="contactError">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                <strong>Error!</strong> There was an error sending your message.
                            </div>


                            <div class="row">
                                <div class="form-group">
                                    <div class="col-lg-6 ">
                                        <input type="text" id="name" name="name" class="form-control" maxlength="100" data-msg-required="Please enter your name." value="" placeholder="Your Name">
                                    </div>
                                    <div class="col-lg-6 ">
                                        <input type="email" id="email" name="email" class="form-control" maxlength="100" data-msg-email="Please enter a valid email address." data-msg-required="Please enter your email address." value="" placeholder="Your E-mail">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <input type="text" id="subject" name="subject" class="form-control" maxlength="100" data-msg-required="Please enter the subject." value="" placeholder="Subject">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <textarea id="message" class="form-control" name="message" rows="10" cols="50" data-msg-required="Please enter your message." maxlength="5000" placeholder="Message"></textarea>

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <input type="submit" data-loading-text="Loading..." class="btn btn-default btn-lg" value="Send Message">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 bg-danger" style="padding: 1.5%;">
                            <div class="sidebar">
                                <div class="widget_info">
                                    <div class="dividerHeading">
                                        <h4 class="text-primary bg-success" style="padding-top: 3%;">
                                            <center><span>Contact Info</span></center>
                                        </h4>
                                    </div>
                                    <p></p>
                                    <ul class="widget_info_contact text-center" style="padding-right: 10%;">
                                        <li><i class="fa fa-map-marker"></i>
                                            <p><strong>Address</strong>: A-11 First Floor, GT Road Katori Mill Ind. Area Mohan Nagar Ghaziabad 201007 (UP).</p>
                                        </li>
                                        <li><i class="fa fa-user"></i>
                                            <p>
                                                <strong>Phone</strong>: (+91) 9311-353053,
                                                <br>
                                                &nbsp;&nbsp;(+91) 9311-353053
                                            </p>
                                        </li>
                                        <li><i class="fa fa-envelope"></i>
                                            <p><strong>Email</strong>: <a href="#">mail@genxro.com</a></p>
                                        </li>
                                        <li><i class="fa fa-globe"></i>
                                            <p><strong>Web</strong>: <a href="#" data-placement="bottom" data-toggle="tooltip" title="" data-original-title="">www.genxro.com</a></p>
                                        </li>
                                    </ul>

                                </div>
                                <div class="widget_social" style="margin-top: 11%;">
                                    <div class="dividerHeading">
                                        <h4 class="text-primary bg-success" style="padding-top: 3%;">
                                            <center><span>Get Social</span></center>
                                        </h4>
                                    </div>
                                    <ul class="widget_social" style="padding-left: 12%">
                                        <li><a class="fb" href="#." data-placement="bottom" data-toggle="tooltip" title="Facbook"><i class="fa fa-facebook"></i></a></li>
                                        <li><a class="twtr" href="#." data-placement="bottom" data-toggle="tooltip" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                                        <li><a class="gmail" href="#." data-placement="bottom" data-toggle="tooltip" title="Google"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a class="instagram" href="#." data-placement="bottom" data-toggle="tooltip" title="" data-original-title="Instagram"><i class="fa fa-instagram"></i></a></li>
                                        <li><a class="youtube" href="#." data-placement="bottom" data-toggle="tooltip" title="" data-original-title="Youtube"><i class="fa fa-youtube"></i></a></li>
                                        <li><a class="rss" href="#." data-placement="bottom" data-toggle="tooltip" title="" data-original-title="RSS"><i class="fa fa-rss"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <script id="product-template" type="text/html">
                        <li class="item col-md-4 col-sm-6 col-xs-12" />
                        <input type="hidden" name="porducts[]" />
                        <div class="product">
                            <div class="product-head">
                                <h2><a href="https://www.kent.co.in/"></a></h2>
                                <p style="font-size: 12px;"></p>
                            </div>
                            <div class="image image-product-responsive ">
                                <a href="https://www.kent.co.in">
                                    <img src="https://www.kent.co.in/images" class="img-responsive"></a>
                            </div>

                            <div class="review-tag" style="margin-left: 10px; color: #3C83F5; text-transform: uppercase; font-weight: bold;">
                                <a href="#" class="btn btn-success" style="background: green; font-size: 10px; padding: 2px 6px; color: #fff">
                                    <span></span><span class="glyphicon glyphicon-star"></span>
                                </a>
                                <br>
                                <span class="price-tag" style="margin-left: 10px; color: #3C83F5; text-transform: uppercase; font-weight: bold;">MRP:  INR /-</span>
                            </div>
                            <div class="botBtn">
                                <a href="https://www.kent.co.in" class="prodBtn" rel="nofollow noopener">View Detail</a>
                            </div>
                        </div>
                        </li>
                    </script>
                    <script id="genre_template" type="text/html">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox">
                            </label>
                        </div>
                    </script>
                    <script id="genre1_template" type="text/html">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" />
                            </label>
                        </div>
                    </script>
                    <script id="genre2_template" type="text/html">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" />
                            </label>
                        </div>
                    </script>
                    <script id="genre3_template" type="text/html">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" />
                            </label>
                        </div>
                    </script>
                    <script id="genre4_template" type="text/html">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" />
                            </label>
                        </div>
                    </script>
                </div>
                <!-- <div class="col-md-9">
        <div class="row">
          <div class="col-md-1"></div>
        <div class="col-md-4" style="background-color: pink;">
          <div class="row text-center">
            <div class="col-md-12">
              KENT PRIME PLUS
            </div>
            <div class="col-md-12">
              asdandasd asd sa d as d as dsad sa dasdsad
            </div>
            <div class="col-md-12">
              <img src="images/slider/slider-1.jpg">
            </div>
            <div class="col-md-12">
              MRP: INR 20500/-
            </div>
            <div class="col-md-12">
              <button>BUTTON</button>
            </div>
          </div>
        </div>
        <div class="col-md-4" style="background-color: pink;">
          <div class="row text-center">
            <div class="col-md-12">
              KENT PRIME PLUS
            </div>
            <div class="col-md-12">
              asdandasd asd sa d as d as dsad sa dasdsad
            </div>
            <div class="col-md-12">
              <img src="images/slider/slider-2.jpg">
            </div>
            <div class="col-md-12">
              MRP: INR 20500/-
            </div>
            <div class="col-md-12">
              <button>BUTTON</button>
            </div>
          </div>
        </div>
        <div class="col-md-4" style="background-color: pink;">
          <div class="row text-center">
            <div class="col-md-12">
              KENT PRIME PLUS
            </div>
            <div class="col-md-12">
              asdandasd asd sa d as d as dsad sa dasdsad
            </div>
            <div class="col-md-12">
              <img src="images/slider/slider-3.jpg">
            </div>
            <div class="col-md-12">
              MRP: INR 20500/-
            </div>
            <div class="col-md-12">
              <button>BUTTON</button>
            </div>
          </div>
        </div>
        </div>
      </div> -->
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
</asp:Content>

