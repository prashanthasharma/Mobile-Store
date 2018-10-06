<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
$primary-light-blue: #8DB9ED;
$primary-line-color: #ccc;
*, *::after, *::before {
  box-sizing: border-box
}


ul {
  list-style: none
}
a {
  text-decoration: none
}
.generic-anchor {
	color: $primary-light-blue;
	&:visited {
		color: $primary-light-blue
	}
	&:hover {
		color: $primary-line-color
	}
}
.flex-rw {
  display: flex;
  flex-flow: row wrap;
}
//This main is mostly to push the footer to the bottom.
main {
  flex: 1 1 auto; //For IE11
  display: flex;
  align-items: center;
  justify-content: center;
  font: 10em "Oswald", sans-serif;
  color: rgb(155,155,155);
  line-height: 1
}
footer {
  justify-content: center;
  background: rgb(55,55,55);
  margin-top: auto;
}
.footer-list-top {
  width: 33.333%
}
.footer-list-top > li {
  text-align: center;
  padding-bottom: 10px
}
.footer-list-header {
  padding: 10px 0 5px 0;
  color: #fff;
  font: 2.3vw "Oswald", sans-serif
}
.footer-list-anchor {
  font: 1.3em "Open Sans", sans-serif
}
.footer-social-section {
  width: 100%;
  align-items: center;
  justify-content: space-around;
  position: relative;
  margin-top: 5px;
}
.footer-social-section::after {
  content: "";
  position: absolute;
  z-index: 1;
  top: 50%;
  left: 10px;
  border-top: 1px solid $primary-line-color;
  width: calc(100% - 20px)
}
.footer-social-overlap {
  position: relative;
  z-index: 2;
  background: rgb(55,55,55);
  padding: 0 20px
}
.footer-social-connect {
  display: flex;
  align-items: center;
  font: 3.5em "Oswald", sans-serif;
  color: #fff;
}
.footer-social-small {
  font-size: 0.6em;
  padding: 0px 20px;
}
.footer-social-overlap > a {
  font-size: 3em
}
.footer-social-overlap > a:not(:first-child) {
  margin-left: 0.38em
}
.footer-bottom-section {
  width: 100%;
  padding: 10px;
  border-top: 1px solid $primary-line-color;
  margin-top: 10px
}
.footer-bottom-section > div:first-child {
  margin-right: auto
}
.footer-bottom-wrapper {
  font-size: 1.5em;
  color: #fff;
}
.footer-address {
  display: inline;
  font-style: normal
}
@media only screen and (max-width: 768px) {
  .footer-list-header {
    font-size: 2em
  }
  .footer-list-anchor {
    font-size: 1.1em
  }
  .footer-social-connect {
    font-size: 2.5em
  }
  .footer-social-overlap > a {
    font-size: 2.24em
  }
  .footer-bottom-wrapper {
    font-size: 1.3em
  }
}
@media only screen and (max-width: 568px) {
  main {
    font-size: 5em
  }
  .footer-list-top {
    width: 100%
  }
  .footer-list-header {
    font-size: 3em;
  }
  .footer-list-anchor {
    font-size: 1.5em
  }
  .footer-social-section {
    justify-content: center
  }
  .footer-social-section::after {
    top: 25%
  }
  .footer-social-connect {
    margin-bottom: 10px;
    padding: 0 10px
  }
  .footer-social-overlap {
    display: flex;
    justify-content: center;
  }
  .footer-social-icons-wrapper {
    width: 100%;
    padding: 0
  }
  .footer-social-overlap > a:not(:first-child) {
    margin-left: 20px;
  }
  .footer-bottom-section {
    padding: 0 5px 10px 5px
  }
  .footer-bottom-wrapper {
    text-align: center;
    width: 100%;
    margin-top: 10px
  }
}
@media only screen and (max-width: 480px) {
  .footer-social-overlap > a {
    margin: auto
  }
  .footer-social-overlap > a:not(:first-child) {
    margin-left: 0;
  }
  .footer-bottom-rights {
    display: block
  }
}
@media only screen and (max-width: 320px) {
  .footer-list-header {
    font-size: 2.2em
  }
  .footer-list-anchor {
    font-size: 1.2em
  }
  .footer-social-connect {
    font-size: 2.4em
  }
  .footer-social-overlap > a {
    font-size: 2.24em
  }
  .footer-bottom-wrapper {
    font-size: 1.3em
  }
}




</style>
</head>


<body>
<footer class="flex-rw">
  
  <ul class="footer-list-top">
    <li>
      <h4 class="footer-list-header">About</h4></li>
    <li><a href="<c:url value="/ContactUs"/>" class="generic-anchor footer-list-anchor" itemprop="significantLink">GET TO KNOW US</a></li>
    <li><a  class="generic-anchor footer-list-anchor" itemprop="significantLink">PROMOS</a></li>
    <li><a  class="generic-anchor footer-list-anchor" itemprop="significantLink">BECOME A RETAILER</a></li>

    <li><a  itemprop="significantLink" class="generic-anchor footer-list-anchor">JOB OPENINGS</a></li>

    <li><a  class="generic-anchor footer-list-anchor" itemprop="significantLink">EVENTS</a></li>
  </ul>
  <ul class="footer-list-top">
    <li>
      <h4 class="footer-list-header">POLICY</h4></li>


    <li><a  class="generic-anchor footer-list-anchor">Return Policy</a></li>
    <li><a  class="generic-anchor footer-list-anchor">Terms Of Use</a></li>
    <li><a  class="generic-anchor footer-list-anchor">Sitemap</a></li>
    <li><a  class="generic-anchor footer-list-anchor">Privacy</a></li>
    <li><a  class="generic-anchor footer-list-anchor" target="_blank">Security</a></li>
  </ul>
  <ul class="footer-list-top">
    <li id='help'>
      <h4 class="footer-list-header">Please Help Me</h4></li>
    <li><a href="<c:url value="/ContactUs"/>" class="generic-anchor footer-list-anchor" itemprop="significantLink">CONTACT</a></li>
    <li><a  class="generic-anchor footer-list-anchor" itemprop="significantLink">FAQ</a></li>
    <li id='find-a-store'><a  class="generic-anchor footer-list-anchor" itemprop="significantLink">STORE LOCATOR</a></li>
    <li id='user-registration'><a  class="generic-anchor footer-list-anchor" itemprop="significantLink">NEW USERS</a></li>
    <li id='order-tracking'><a  itemprop="significantLink" class="generic-anchor footer-list-anchor">ORDER STATUS</a></li>
  </ul>
  <section class="footer-social-section flex-rw">
      <span class="footer-social-overlap footer-social-connect">
      CONNECT <span class="footer-social-small">with</span> US
      </span>
      <span class="footer-social-overlap footer-social-icons-wrapper">
      
      <a href="http://www.pinterest.com/" class="generic-anchor" target="_blank" title="Pinterest" itemprop="significantLink"><i class="fa fa-pinterest"></i></a>
      <a href="https://www.facebook.com/" class="generic-anchor" target="_blank" title="Facebook" itemprop="significantLink"><i class="fa fa-facebook"></i></a>
      <a href="https://twitter.com/" class="generic-anchor" target="_blank" title="Twitter" itemprop="significantLink"><i class="fa fa-twitter"></i></a>
      <a href="http://instagram.com/" class="generic-anchor" target="_blank" title="Instagram" itemprop="significantLink"><i class="fa fa-instagram"></i></a>
      <a href="https://www.youtube.com/" class="generic-anchor" target="_blank" title="Youtube" itemprop="significantLink"><i class="fa fa-youtube"></i></a>
      <a href="https://plus.google.com/" class="generic-anchor" target="_blank" title="Google Plus" itemprop="significantLink"><i class="fa fa-google-plus"></i></a>
      </span>
  </section>
  <section class="footer-bottom-section flex-rw">
<div class="footer-bottom-wrapper">   
<i class="fa fa-copyright" role="copyright">
 
</i> 2018-<address class="footer-address" role="company address">prashanthasharma@gmail.com</address><span class="footer-bottom-rights"> - All Rights Reserved - </span>
    </div>
    <div class="footer-bottom-wrapper">
    <a  class="generic-anchor" rel="nofollow">Terms</a> | <a  class="generic-anchor" rel="nofollow">Privacy</a>
      </div>
  </section>
</footer>
</body>
</html>