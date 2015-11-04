<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>MineToolz</title>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <link href="css/desktop.css" rel="stylesheet" type="text/css"/>
    <meta name="viewport" content="width=device-width, maximum-scale=1.0, minimum-scale=1.0, initial-scale=1.0"/>
    <link href="css/tablet.css" rel="stylesheet" type="text/css" media="only screen and (max-width:980px)"/>
    <link href="css/mobile.css" rel="stylesheet" type="text/css" media="only screen and (max-width:480px)"/>
    <script type="text/javascript" src="js/script.js"></script>
    <script type="text/javascript" src="js/cookie.js"></script>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,800' rel='stylesheet' type='text/css'/>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'/>
    <script src="js/easing.js" type="text/javascript"></script>
    <script type="text/javascript">
    setTimeout(function(){var a=document.createElement("script");
      var b=document.getElementsByTagName("script")[0];
      a.src=document.location.protocol+"//script.crazyegg.com/pages/scripts/0040/0683.js?"+Math.floor(new Date().getTime()/3600000);
      a.async=true;a.type="text/javascript";b.parentNode.insertBefore(a,b)}, 1);

    </script>
    <script type="text/javascript">
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
              (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-67750985-1', 'auto');
    ga('send', 'pageview');

    </script>
    <script type="text/javascript">
    $(document).ready(function(){
      if ($.cookie('alert')) {
        $( ".cookies-info" ).css("display","none");
      }
      $("#accept").click(function() {
        $( ".cookies-info" ).slideUp( "slow" );
        // set the cookie for 24 hours
        var date = new Date();
        date.setTime(date.getTime() + 30 *24 * 60 * 60 * 1000);
        $.cookie('alert', true, { expires: date });
      });
    })

    </script>
</head>
<body>
<div id="wrapper">
    <div id="header">
        <div id="header-left">
            <div id="logo">
                <img src="images/magic.png" width="" height="36" alt="logo" id="image-logo"/>
            </div>
        </div>
        <div id="header-right">
            <div id="category">
                <img src="images/category.png" width="20" height="18" alt="category" id="image-category"/>
            </div>
            <div id="login">
                <img src="images/login.png" width="11" height="18" alt="login" id="image-login"/>
            </div>
            <div id="register">
                <img src="images/register.png" width="18" height="18" alt="register" id="image-register"/>
            </div>
        </div>
    </div>
    <div style="clear:both"></div>
    <div id="page-wrapper">
        <div id="page-1">
            <div id="left-block">
                <div class="banner-text" id="banner-1">Baby steps with us now, Giant</div>
                <div class="banner-text">leaps on your own tomorrow.</div>
                <div id="email-send">
                    <input type="text" id="email-txt" value="Leave your email for updates at minetoolz.com"/>
                </div>
                <div id="mail">
                    <img src="images/mail.png" id="image-mail" alt="mail"/>
                </div>
            </div>
            <div id="right-block">
                <div id="image-front-page">
                    <img src="images/toolbox.png" alt="toolbox" id="image-toolbox"/>
                </div>
            </div>
        </div>
        <div id="page">
            <div id="start-click">
                <div id="skip-1">
                    <img src="images/skip.png" width="30px" height="15px" alt="skip" id="image-skip-1"/>
                </div>
                <div id="startnow">
                    Start now
                </div>
            </div>
            <div style="clear:both"></div>
            <div id="dotted">
                <div class="heightfix-1"></div>
                <div id="page-2">
                    <div id="seven-tool">
                        <img src="images/number_circle.png" width="52px" height="52px" alt="seven" id="seven-image"/>
                    </div>
                    <div id="para-1">
                        <div id="text-1-1">
                            Tools to ignite your business idea
                        </div>
                        <div id="text-1-2">
                            into Startup.
                        </div>
                    </div>
                    <div id="plane-newbie">
                        <img src="images/paper-plane.png" alt="paper-plane" id="image-paper-plane"/>
                    </div>
                </div>
                <div style="clear:both"></div>
                <div id="skip-2">
                    <img src="images/skip.png" width="30px" height="15px" alt="skip" id="image-skip-2"/>
                </div>
                <div id="next-set">
                    Next set of tools to steer
                </div>
                <div style="clear:both"></div>
                <div class="heightfix-2"></div>
                <div id="second-tool">
                    <div id="page-3">
                        <div id="dotted-tool">
                            <img src="images/seven-plus.jpg" alt="seven-plus" width="52px" height="52px"
                                 id="image-seven-plus"/>
                        </div>
                        <div id="para-2">
                            <div id="text-2-1">
                                Tools to pilot your Startup
                            </div>
                        </div>
                        <div id="wing-plane">
                            <img src="images/wing-plane.png" alt="wing-plane" id="image-wing-plane"/>
                        </div>
                    </div>
                </div>
                <div style="clear:both"></div>
                <div id="skip-3">
                    <img src="images/skip.png" width="30px" height="15px" alt="skip" id="image-skip-3"/>
                </div>
                <div id="accelerate">
                    Next set of tools to accelerate
                </div>
                <div style="clear:both"></div>
                <div class="heightfix-3"></div>
                <div id="final-tool">
                    <div id="page-4">
                        <div id="dotted-tool-2">
                            <img src="images/seven-plus.jpg" alt="seven-plus" width="52px" height="52px"
                                 id="image-seven-plus-2"/>
                        </div>
                        <div id="para-3">
                            <div id="text-3-1">
                                Tools to speed-up your Startup
                            </div>
                        </div>
                        <div id="glider">
                            <img src="images/glider.png" alt="glider" id="image-glider"/>
                        </div>
                    </div>
                </div>
                <div style="clear:both"></div>
                <div id="skip-4">
                    <img src="images/skip.png" width="30px" height="15px" alt="skip" id="image-skip-4"/>
                </div>
                <div id="see-category">
                    See category
                </div>
                <div style="clear:both"></div>
                <div id="category-list">
                    <div class="heightfix-4"></div>
                    <div id="page-5">
                        <div class="block-1">
                            <div class="rotating-dashed">
                                <div class="image1">
                                    <img src="images/p.png" alt="p" id="p" width="52" height="52"/>
                                </div>
                                <div class="text-header"></div>
                                <div class="more-text">Tools to support prototype and validation of innovation products
                                    and services
                                </div>
                            </div>
                        </div>
                        <div class="block-1">
                            <div class="image1">
                                <img src="images/t.png" alt="t" id="t" width="52" height="52"/>
                            </div>
                            <div class="text-header"></div>
                            <div class="more-text">Tools to support teamwork of highly dynamic and motivated
                                entrepreneur
                            </div>
                        </div>
                        <div style="clear:both"></div>
                        <div class="block-1">
                            <div class="image1">
                                <img src="images/m.png" alt="m" id="m" width="52" height="52"/>
                            </div>
                            <div class="text-header"></div>
                            <div class="more-text">Tools to support customer discovery and market research</div>
                        </div>
                        <div class="block-1">
                            <div class="image1">
                                <img src="images/f.png" alt="f" id="f" width="52" height="52"/>
                            </div>
                            <div class="text-header"></div>
                            <div class="more-text">Tools to support search for investment and financial management</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div style="clear:both"></div>
    <div class="cookies-info">
        We are using cookies to give you the best experience on our site. Cookies are files stored in your browser and
        are used by most websites to help personalise your web experience. By continuing to use our website without
        changing the settings, you are agreeing to our use of cookies.

        <div id="accept">OK</div>
        <div id="more-info">
            <a href="http://www.cookielaw.org/how-we-use-cookies/" id="more-link" target="_blank">More info</a>
        </div>
    </div>
    <div id="footer">

        <div id="footer-left">
            <div id="footer-left-section">
                <div id="unibz">
                    <img src="images/unibz.png" alt="unibz" id="image-unibz"/>
                </div>
                <div id="copyright">
                    &copy;Minetoolz.com&nbsp;&nbsp;2015&nbsp;&nbsp;&nbsp;&nbsp;Bozen-Bolzano
                </div>
            </div>
        </div>
        <div id="footer-right">
            <div id="footer-section-right">
                <div id="email">
                    <a href="mailto:info@minetoolz.com" id="outlook">info@minetoolz.com</a>
                </div>
                <div class="sepa"></div>
                <div id="submit-resource">Submit a resource</div>
                <div class="sepa"></div>
                <div id="share">Share
                    <div id="button">
                        <div id="facebook-button">
                            <a href="https://www.facebook.com/mine.toolz" target="_blank">
                                <img src="images/facebook.png" width="20px" height="20px" alt="facebook"
                                     id="image-facebook"/>
                            </a>
                        </div>
                        <div id="twitter-button">
                            <a href="https://twitter.com/minetoolz" target="_blank">
                                <img src="images/twitter.png" width="20px" height="20px" alt="facebook"
                                     id="image-twitter"/>
                            </a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
</body>
</html>
