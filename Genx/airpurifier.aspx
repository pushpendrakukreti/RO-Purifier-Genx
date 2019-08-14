<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="airpurifier.aspx.cs" Inherits="airpurifier" %>

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
    <header>
        <div id="bg-img11" class="bg-img">
            <p class="headspan">AIR PURIFIERS</p>
        </div>
    </header>
    <section class="our-projects style-2 padd-5" style="background-image: url(images/background/bg8.png)">
            <div class="container">
                <div class="row">

                    <h3><asp:Label ID="lblMessage" runat="server"></asp:Label></h3>
                    <asp:Repeater ID="rpProductList" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <li class="item col-md-4 col-sm-6 col-xs-12 fjs_item" data-position="1" data-price="20500" id="fjs_1" style="display: block;">
                                        <input type="hidden" name="porducts[]" id="prod_1" value="1">
                                        <div class="product">
                                            <div class="product-head" style="margin-bottom:0px;">
                                                <h2><a href="description.aspx"><%# Eval("Name") %></a></h2>
                                                <p style="font-size: 15px; margin-top:8px;"><%# Eval("Description") %></p>
                                            </div>
                                            <div class="image image-product-responsive" style="background-color:azure; padding-top:6%; margin-bottom:10%;">
                                                <a href="description.aspx">
                                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Thumbnail","../Upload/thumbnails/{0}") %>' Height="200" Width="200"/>
                                            </div>
                                            <div class="review-tag" style="margin-left: 10px; font-size:14pt; color: #3C83F5; text-transform: uppercase; font-weight: bold;">
                                                <span class="price-tag buy-ro-price">MRP:  INR  <%# Eval("Price","{0:0}") %>/- </span>
                                            </div>
                                            <div class="botBtn" style="margin-top:-1%;">
                                                <a href="description.aspx" class="prodBtn" rel="nofollow noopener">View Detail
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                    </ItemTemplate>
                    </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="Select distinct a.ProductId, a.Name, a.Price, a.Thumbnail, a.Description,  v.SubCategoryId, v.CategoryId from t_Product a, t_ProductCategory v where a.Productid = v.Productid and v.CategoryId=2 order by a.Name"></asp:SqlDataSource>
                </div>
            </div>
        </section>   
        </div>
</asp:Content>