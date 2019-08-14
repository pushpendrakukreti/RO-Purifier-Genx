<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="about-us.aspx.cs" Inherits="about_us" %>

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
                </div>
            </div>
        </section>
    <div>
            
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
        p,h2 {
            color: black !important;
            font-weight: bolder !important;
        }
        h4{
            font-weight: bolder !important;
        }

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
    <style type="text/css">
        @media only screen and (max-width: 900px) {
            #bg-img11 {
                -webkit-text-stroke-width: 1px !important;
                -webkit-text-stroke-color: white !important;
                color: black;
                padding-top: 8%;
                padding-left: 5%;
                font-size: 40px !important;
                height: 100px;
            }
        }

        @media only screen and (min-width: 900px) {
            #bg-img11 {
                -webkit-text-stroke-width: 2px !important;
                -webkit-text-stroke-color: white !important;
                color: black;
                padding-top: 5%;
                padding-left: 5%;
                font-size: 60px !important;
                height: 200px !important;
            }

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
        .list_style > li{list-style-type: square !important;}
    </style>
    <header>
        <div id="bg-img11" class="bg-img" style="font-weight:bolder; background-size: 100% !important; background: -webkit-linear-gradient(top, rgba(255, 255, 255, .8) 0%, rgba(0, 255, 255, 0.8) 100%); color: cyan !important; -webkit-text-stroke: 1.5px white !important; text-shadow: 2px 2px white;">
            ABOUT US
        </div>


    </header>
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

                <div style="margin-top: 1% !important;"></div>
                <section class="sec-container">
                    <div class="row">
                        <div class="col-sm-12 col-md-1"></div>
                        <div class="col-sm-12 col-md-4 text-right">
                            <div class="lite-blue img-box-lft">
                                <img alt="Large Variety of Healthcare Products" src="images/main-page-image-think-GenX-new.png" title="Large Variety of Healthcare Products">
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6 content-desc">
                            <h2 class="text-center"><strong>Who We Are ?</strong></h2>
                            <p>Genx Water World (GWW) is premier high-tech health and environment friendly company for Purifiers, over 20 years of experience with an integrated research program our activities includes research, development, assembling, sales and after sales service. We are pure source of quality solution of Air Purifiers, Water Purifiers, Drinking Water Treatment Plants, Waste Water Treatment Plants and other Health Care Products. Now GENX is India’s top largest OEM purification product company.</p>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-1 content-desc"></div>
                    <div class="col-sm-12 col-md-10 text-right content-desc">
                        <p>We continue to develop new production methods and guarantee high quality products. We are able to meet strict customers demands and standards for health products. We endeavor to meet all Country specific packaging requirement and comply with international standards. We ship almost all the states of Country and can meet all the desired needs of treatment. We are also able to cater to specific customer needs and requests. We can guarantee custom solution to deliver the most suitable purifier.</p>
                    </div>
                    <div class="col-sm-12 col-md-7 content-desc">
                    </div>
                    <div class="col-sm-12 col-md-4 text-center content-desc">
                        <h2 class="bg-primary">Drink Pure, Breathe Pure !!</h2>
                    </div>
                </section>
                <section class="sec-container">
                    <div class="row">
                        <div class="col-sm-12 col-md-1 content-desc">
                        </div>
                        <div class="col-sm-12 col-md-6 text-center content-desc">
                            <h2 class="text-center"><strong>Why Choose Us ?</strong></h2>
                            <ul class="list_style text-left circle" style="padding-left: 18%;">
                                <li><a href="#" style="margin-left: 5%;">Top quality RO based water purifiers and softeners</a></li>
                                <li style="margin-top: 2%;"><a href="#" style="margin-left: 5%;">Low power consumption</a></li>
                                <li style="margin-top: 2%;"><a href="#" style="margin-left: 5%;">Timely delivery</a></li>
                                <li style="margin-top: 2%;"><a href="#" style="margin-left: 5%;">Free installation and demo facility</a></li>
                                <li style="margin-top: 2%;"><a href="#" style="margin-left: 5%;">One year warranty without any extra cost</a></li>
                                <li style="margin-top: 2%;"><a href="#" style="margin-left: 5%;">Large dealer network for prompt and easy service.</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-12 col-md-3 text-right">
                            <div class="lite-blue img-box-lft">
                                <img alt="Large Variety of Healthcare Products" src="images/main-page-image-think-GenX-new.png" title="Large Variety of Healthcare Products">
                            </div>
                        </div>
                    </div>
                </section>
                <section class="sec-container">
                    <div class="row">
                        <div class="col-sm-12 col-md-1"></div>
                        <div class="col-sm-12 col-md-4 text-right">
                            <div class="lite-blue img-box-lft">
                                <img alt="Large Variety of Healthcare Products" src="images/main-page-image-think-GenX-new.png" title="Large Variety of Healthcare Products">
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6 content-desc">
                            <h2 class="text-center"><strong>Strengths</strong></h2>
                            <ul class="list_style circle">
                                <li style="padding-left: 5%; color: black !important; font-weight: bolder !important;">Provides the commodities from Water Dispensers to little Components. Genx water dispenser team has invent environment protect, energy saving functions.</li>
                                <li style="padding-left: 5%; color: black !important; font-weight: bolder !important; margin-top: 2%;">Genx combines Plastic Inject factory - vertical integration, for create widely optional products. Genx RO has our professional industrial ro water systems which can provide the needs for factories or industrial use.</li>
                                <li style="padding-left: 5%; color: black !important; font-weight: bolder !important; margin-top: 2%;">Genx RO is the agencies of well-known, international brands.</li>
                            </ul>
                        </div>
                        <div class="col-sm-12 col-md-1 content-desc" style="margin-right: 50px !important;">
                        </div>
                        <div class="col-sm-12 col-md-10 content-desc">
                            <ul class="list_style circle">
                                <li style="padding-left: 5%; color: black !important; font-weight: bolder !important;">Provides the commodities from Water Dispensers to little Components. Genx water dispenser team has invent environment protect, energy saving functions.</li>
                                <li style="padding-left: 5%; color: black !important; font-weight: bolder !important; margin-top: 2%;">Genx combines Plastic Inject factory - vertical integration, for create widely optional products. Genx RO has our professional industrial ro water systems which can provide the needs for factories or industrial use.</li>
                                <li style="padding-left: 5%; color: black !important; font-weight: bolder !important; margin-top: 2%;">Genx RO is the agencies of well-known, international brands.</li>
                            </ul>
                        </div>
                        <!-- <li style="padding-left: 5%;">Genx RO provides customized products and connect DIY retail markets.</li>
                <li style="padding-left: 5%;">Genx RO commodities has been selling all other the world about 50 countries already.</li> -->

                    </div>
                </section>
                <section class="sec-container">
                    <div class="row">
                        <div class="col-sm-12 col-md-1 content-desc">
                        </div>
                        <div class="col-sm-12 col-md-6 text-center content-desc">
                            <h2 class="text-center"><strong>Equipments And Quality Controll</strong></h2>
                            <br>
                            <h4 class="text-primary">Our Company &amp; Factory is Verified by BV (GACB )</h4>
                            <p>We are very proud to announce that Genx Water World is Verified by Global Akkreditierungs Europe (GACB Europe) on-site checking &amp; inspection and to be qualified as a assessed supplier of Water Purifier, Water Filter, Water Dispenser (Water Cooler), Reverse Osmosis System (RO) System manufacturer.</p>
                            <br>
                        </div>
                        <div class="col-sm-12 col-md-3 text-right">
                            <div class="lite-blue img-box-lft">
                                <img alt="Large Variety of Healthcare Products" src="images/main-page-image-think-GenX-new.png" title="Large Variety of Healthcare Products">
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-5 content-desc" style="margin-left: 10%;">

                            <h4 class="text-center text-primary">Quality is our commitment</h4>
                            <p>From the first day of establishment Genx Water World has been aiming to manufacture high quality products. We realize the importance of quality control and believe only honesty and quality can ensure reliable and efficient service. Our commitment is to manufacture good quality and reliable products to fulfill meet customers' demand.</p>
                        </div>
                        <div class="col-sm-12 col-md-5 content-desc" style="">

                            <h4 class="text-center text-primary">In Process Quality Control (IPQC))</h4>
                            <p>By using High-Tech equipment and device we inspect products during every step in production process. Our QA staff do inspection at the beginning of production process and will do tour inspection in between. Then do the last inspection at the final process.</p>
                        </div>
                        <div class="col-md-12">
                            <div class="col-sm-12 col-md-5 content-desc" style="margin-left: 9%;">

                                <h4 class="text-center text-primary">Incoming Quality Control (IQC)</h4>
                                <p>All the law materials we purchase must be submitted with test report and our Quality Control inspectors always inspect and cross test every lot of raw materials to ensure high quality.</p>
                            </div>

                            <div class="col-sm-12 col-md-5 content-desc">

                                <h4 class="text-center text-primary">Out-Going Quality Control (OQC)</h4>
                                <ul class="list_style circle">
                                    <li style="padding-left: 10%; color: black !important; font-weight: bolder !important;">Product Function Test</li>
                                    <li style="padding-left: 10%; color: black !important; font-weight: bolder !important;">Product Packing Test: Inspect the packing is solid and firm to comply with shipment delivery requirements.</li>
                                </ul>
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
                            <h2>The Success Story of GenX Over the Years</h2>
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
                <!-- Mirrored from www.GenX.co.in/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 11 Feb 2019 09:09:50 GMT -->
            </div>
        </div>
    </section>

            <footer>
                <style type="text/css">
                    .visa-payment {
                        left: 0px;
                        width: 50px;
                    }

                    .master-payment {
                        left: 2px;
                        width: 50px;
                    }

                    .upi-payment {
                        left: 2px;
                        width: 50px;
                    }

                    .net-payment {
                        left: 2px;
                        width: 50px;
                    }

                    .wallet-payment {
                        left: 2px;
                        width: 50px;
                    }

                    .aaa {
                        color: white !important;
                    }

                        .aaa:hover {
                            color: cyan !important;
                        }

                    .logo {
                        background-color: white !important;
                    }

                        .logo:hover {
                            background-color: black !important;
                            color: white !important;
                        }

                    .sec-container {
                        margin-bottom: 30px !important;
                    }
                </style>
                <div class="container ">
                    <div class="row ">
                        <div class="col-sm-3 text-center">
                            <div class="f-menu ">
                                <h3>Products</h3>
                                <ul class=" ">
                                    <li><a class="aaa" href="water-purifiers/index.aspx">Water Purifiers</a></li>
                                    <li><a class="aaa" href="air-purifiers/index.aspx">Air Purifiers</a></li>
                                    <li><a class="aaa" href="water-softeners/index.aspx">Water Softeners</a></li>
                                    <li><a class="aaa" href="cooking-appliances/index.aspx">Cooking Appliances</a></li>
                                    <li><a class="aaa" href="vacuum-cleaner/index.aspx">Vacuum Cleaners</a></li>
                                </ul>
                                <nav class="nav icon-set" style="margin-top: 20px;">
                                    <ul class="nav ">
                                        <h3>PAYMENT MODES</h3>
                                        <li class="visa-payment">
                                            <img src="images/VISA.png" alt="visa Card"></li>
                                        <li class="master-payment">
                                            <img src="images/Master-Card.png" alt="Master card"></li>
                                        <li class="upi-payment ">
                                            <img src="images/UPI.png" alt="UPI"></li>
                                        <li class="net-payment">
                                            <img src="images/Netbanking.png" alt="Internet Banking">
                                        </li>
                                        <li class="wallet-payment">
                                            <img src="images/Wallet.png" alt="Wallet">
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-sm-3 text-center">
                            <div class="f-menu ">
                                <h3>Company</h3>
                                <ul class=" ">
                                    <li><a class="aaa" href="about-us.aspx">Overview</a></li>
                                    <li><a class="aaa" href="awards.aspx">Awards &amp; Recognitions</a></li>
                                    <li><a class="aaa" href="certifications.aspx">Certifications</a></li>
                                    <li><a class="aaa" href="become-trade-partner.aspx">Become a Trade Partner</a></li>
                                    <li><a class="aaa" href="http://www.GenXrosystems.com/" target="_blank" rel="nofollow">GenX International</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-3 ">
                            <div class="f-menu ">
                                <h3>Support</h3>
                                <ul class=" ">
                                    <li><a class="aaa" href="customer-care-service.aspx">Customer Service</a></li>
                                    <li><a class="aaa" href="dealer-locator.aspx">Where to buy</a></li>
                                    <li><a class="aaa" href="downloads-press-kit.aspx">Press Kit</a></li>
                                    <li><a class="aaa" href="office-locations.aspx">Offices</a></li>
                                    <li><a class="aaa" href="http://careers.GenX.co.in/jobs/" rel="nofollow" target="_blank">Careers</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-3 ">
                            <div class="f-menu ">
                                <h3>Buy Now</h3>
                                <ul class=" ">
                                    <!--li><a href="https://shop.GenX.co.in/" target="_blank" rel="nofollow noopener">Online Store</a></li-->
                                    <li><a class="aaa" href="terms-conditions.aspx">Terms &amp; Conditions</a></li>
                                    <li><a class="aaa" href="return-refund-policy.aspx">Return &amp; Refund Policy</a></li>
                                    <li><a class="aaa" href="billing-shipping-policy.aspx">Billing &amp; Shipping Policy</a></li>
                                    <li><a class="aaa" href="cookie-policy.aspx">Cookie Policy</a></li>
                                </ul>
                                <nav class="nav icon-set" style="margin-top: 20px;">
                                    <h3>FOLLOW US</h3>
                                    <ul class="nav ">
                                        <li class="facebook"><a class="logo" href="https://www.facebook.com/GenXROSystemsLtd/" data-toggle="tooltip" title="Facebook" rel="nofollow"><i class="fa fa-facebook-official "></i></a></li>
                                        <li class="twitter "><a class="logo" href="https://twitter.com/GenXrosystems" data-toggle="tooltip" title="Twitter" rel="nofollow"><i class="fa fa-twitter "></i></a></li>
                                        <li class="linkedin "><a class="logo" href="https://in.linkedin.com/company/GenX-ro-systems-ltd-/" data-toggle="tooltip" title="LinkedIn" rel="nofollow"><i class="fa fa-linkedin "></i></a></li>
                                        <li class="youtube"><a class="logo" href="https://www.youtube.com/user/GenXROSystemsLtd" data-toggle="tooltip" title="Youtube" rel="nofollow"><i class="fa fa-youtube"></i></a></li>
                                        <li class="instagram"><a class="logo" href="https://www.instagram.com/GenXrosystems/" data-toggle="tooltip" title="instagram" rel="nofollow"><i class="fa fa-instagram"></i></a></li>



                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                    <div class="bot-foot ">
                        <div class="row ">
                            <div class="col-xs-12 col-sm-6 ">
                                <div class="copyright " style="font-size: 15px;">Copyright © 2019 <a href="https://www.rssindia.com/" style="font-size: 15px; color: cyan!important;">RSS Infotech Pvt. Ltd.</a></div>
                            </div>
                            <div class="col-xs-12 col-sm-6 ">
                                <ul class="policy">
                                    <li><a class="aaa" href="disclaimer.aspx">Disclaimer</a> / </li>
                                    <li><a class="aaa" href="privacy-policy.aspx">Privacy Policy</a> / </li>
                                    <li><a class="aaa" href="blog/index.aspx">Blog</a> / </li>
                                    <li><a class="aaa" href="sitemap.aspx">Site Map</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
</asp:Content>