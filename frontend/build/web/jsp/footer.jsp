<%-- 
    Document   : footer
    Created on : Nov 19, 2019, 11:42:57 PM
    Author     : ADMN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<footer>

      <div class="newsletter-wrap">
        <div class="inner">
          <div class="social">
            <ul class="link">
              <li class="fb"><a href="https://www.facebook.com/tikinstore/" target="_blank"></a></li>
              <li class="tw"><a href="Twitter.html" target="_blank"></a></li>
              <li class="googleplus"><a href="Google.html" target="_blank"></a></li>
              <li class="rss"><a href="RSS.html" target="_blank"></a></li>
              <li class="pintrest"><a href="Pinterest.html" target="_blank"></a></li>
              <li class="linkedin"><a href="Linkedin.html" target="_blank"></a></li>
              <li class="youtube"><a href="Youtube.html" target="_blank"></a></li>
            </ul>
          </div>
          <div class="newsletter">
            <!-- Begin MailChimp Signup Form -->
            <div id="mc_embed_signup">
              <form action="" class="validate" id="mc-embedded-subscribe-form" method="post" name="mc-embedded-subscribe-form" novalidate="" target="_blank">
                <div id="mc_embed_signup_scroll"><label for="mce-EMAIL">Gửi EMAIL</label> <input class="email" id="mce-EMAIL" name="EMAIL" placeholder="Địa chỉ email" required="" type="email" value="" />
                  <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
                  <div style="position: absolute; left: -5000px;"><input name="b_7f031d02c763ab0580cf07af5_bee10e0bf7" tabindex="-1" type="text" value="" /></div>

                  <div class="clear"><input class="button" id="mc-embedded-subscribe" name="subscribe" type="submit" value="Gửi" /></div>
                </div>
              </form>
            </div>
            <!--End mc_embed_signup-->
          </div>
        </div>
      </div>


      <div class="inner">
        <div class="footer-column-1">

          <div class="footer-logo"><a href="#" title="Logo"><img alt="logo1" src="/Thietkegiaodien/jsp/image/logo4.png" /></a></div>

          <p>SHOP GIÀY THỂ THAO UY TÍN</p>
        </div>


        <div class="footer-column">
          <h4>Hỗ trợ</h4>
          <ul class="links">
            <li><a href="<%=request.getContextPath()%>/userController/initLogin.htm">Đăng nhập</a></li>
            <li><a href="<%=request.getContextPath()%>/userController/initRegister.htm">Đăng kí</a></li>
          </ul>
        </div>

        <div class="footer-column">
          <h4>Địa Chỉ</h4>
          <ul class="links">
            <address>
              <i class="add-icon">&nbsp;</i>Trần Phú, Hà Đông, Hà Nội </address>
          </ul>
        </div>

        <div class="footer-column-last">
          <h4>Liên Hệ Ngay</h4>

          <div class="phone-footer"><i class="phone-icon">&nbsp;</i>+84 383 541 823</div>
          <div class="email-footer"><i class="email-icon">&nbsp;</i>
            <a href="mailto:nghiaphan2812pc@gmail.com">nghiaphan2812pc@gmail.com</a></div>
        </div>

      </div><!-- inner-->
    </footer>