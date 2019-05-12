<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ertosystem._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <br class="clear" />
    <div class="wrapper col3">
        <div id="intro">

            <asp:Image ID="Image1" runat="server" Height="240px" Width="920px" ImageUrl="~/Images_erto/car.jpg" />

            <br class="clear" />
        </div>
    </div>
    <div class="wrapper col4">
        <div id="services">
            <ul>
                <li>
                    <div class="fl_left">
                        <img src="images/demo/100x180.gif" alt="" />
                    </div>
                    <div class="fl_right">
                        <h2>Our Vision</h2>
                        <p>
                            To improve the quality of service delivery to the citizen and the quality of work environment of the RTOs.
                        </p>
                    </div>
                </li>
                <li>
                    <div class="fl_left">
                        <img src="images/demo/100x180.gif" alt="" />
                    </div>
                    <div class="fl_right">
                        <h2>Our Mission</h2>
                        <p>To automate all Vehicle Registration and Driving License related activities in transport authorities of country </p>

                    </div>
                </li>
                <li class="last">
                    <div class="fl_left">
                        <img src="images/demo/100x180.gif" alt="" />
                    </div>
                    <div class="fl_right">
                        <h2>Our Value</h2>
                        <p>We provide outstanding products and unsurpassed services that together deliver premium values to our customers</p>

                    </div>
                </li>
            </ul>
            <br class="clear" />
        </div>
    </div>
    <div class="wrapper col5">
        <div id="container">
            <div id="content">
                <h2>About Us</h2>
                <p>
                    E-RTO  - is the software developed under the requirement put forward by the Motor Vehicles Department The power of the software is that fees, tax, fine and application related to driving license, , transport & non-transport vehicles,licenses can be accepted at any counters provided in the Regional/Sub Regional Transport Offices. The citizen arriving office need not search for various counters for various services. Here all services required by vehicle owners/drivers rendered within a minute!
                </p>
                <p>
                    You can have a Learners License test through this site.
You can gather information about any vehicle registered..
Driving License details can be viewed and the status of the application submitted by you can be watched online.
Using the Tax Calculation you can find the amount due to your vehicle.
A  vehicle dealer can upload data of a new vehicle to concerned registering authorities where ever. 
                </p>
            </div>
            <div id="column">
                <div class="holder">
                    <h2>Road Signs</h2>
                    <div class="active">
                        <img height="240" width="300" src="Images_erto/roadsigns.jpg" />
                    </div>
                </div>
            </div>
            <br class="clear" />
        </div>
    </div>
    <div class="wrapper col6">
        <div id="footer">
            <div id="content">
                <h2>ROAD SAFETY WEEK</h2>
                The Road Safety Week is a national event that is celebrated from the 11th to the 17th of January, which is aimed at raising public awareness about traffic rules and to reduce the number of road accidents that occur on a daily basis.
Though the day is celebrated by the government, it is also celebrated by several educational and private institutions who organise and provide support for the Road Safety Week campaign.
Road Safety Week is promoted in Metropolitan cities such as Delhi, Bangalore, Mumbai and Chennai where citizens are encouraged to learn about road safety.
            </div>
            <div class="footbox">
                <h2>Our Links</h2>
                <ul>
                    <li><a runat="server" href="~/">Home</a></li>
                    <li><a runat="server" href="~/About">About Us</a></li>
                    <li><a runat="server" href="~/erto_userforms/user_reg">UserRegistration</a></li>
                    <li><a runat="server" href="~/Contact">Contact Us</a></li>
                </ul>
            </div>
            <br class="clear" />
        </div>
    </div>
    <div class="wrapper col7">
    </div>

</asp:Content>
