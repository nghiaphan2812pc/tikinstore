<%--
    Document   : login
    Created on : Nov 20, 2019, 4:05:07 PM
    Author     : ADMN
--%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />

<jsp:include page="head.jsp"></jsp:include>

<body class="cms-index-index cms-home-page">
  <div id="container">
    <jsp:include page="header.jsp"></jsp:include>
    <jsp:include page="menu.jsp"></jsp:include>

    <script type="text/javascript">
      $(window).scroll(function() {
        if ($(this).scrollTop() > 1) {
          $('nav').addClass("sticky");
        } else {
          $('nav').removeClass("sticky");
        }
      });
    </script>



    <div id="notification"></div>
    <style type="text/css">
      .miniimg_left {
        margin-right: 8px;
        vertical-align: text-top;
        margin-bottom: 12px;
      }

      #nav ul.level1>li a:before {
        color: #555;
        content: none !important;
        font-family: FontAwesome;
        font-size: 13px;
        padding-right: 6px;
      }
    </style>
    <section class="main-container">
      <div class="breadcrumbs">
        <div class="inner">
          <span></span><a href="index9328.html?route=common/home">Trang chủ</a>
          <span> &raquo; </span><a href="#">Đăng nhập</a>
        </div>
      </div>
      <article class="main-container-inner">
        <div id="content">
          <div class="login_page">
            <div class="page-title">
              <h2>Đăng nhập</h2>
            </div>

            <div class="login-content">
              <fieldset class="col2-set">

                <div class="col-1 new-users"><strong>Đăng kí tài khoản</strong>
                  <div class="content">
                    <p>Nếu chưa có tài khoản<br>Hãy đăng kí để mua hàng ngay lập tức</p>
                    <div class="buttons-set">
                      <button type="button" class="button create-account"><a href="<%=request.getContextPath()%>/userController/initRegister.htm"><span>Đăng kí</span></a></button>
                    </div>
                  </div>
                </div>

                <div class="col-2 registered-users">
                    <strong>Đăng nhập</strong>
                    <f:form action="login.htm" commandName="userLogin">
                        <div class="content">
                          <ul class="form-list">
                            <li>
                              <label>Số điện thoai:<span class="required"></span></label>
                              <br>
                              <f:input path="phone" class="input-text required-entry"/>
                            </li>
                            <li>
                              <label>Mật khẩu:<span class="required"></span></label>
                              <br>
                              <f:password  path="pass"  class="input-text required-entry"/>
                            </li>
                          </ul>
                          <div class="buttons-set">
                            <button class="button login" type="submit"><span>Đăng nhập</span></button>
                            <a href="index_quenmatkhau.html" class="forgot-word">Quên mật khẩu</a> 
                          </div>

                        </div>
                    </f:form>
                </div>
              </fieldset>
            </div>
          </div>
        </div>
      </article>
    </section>
    <script type="text/javascript">
      <!--
      $('#login input').keydown(function(e) {
        if (e.keyCode == 13) {
          $('#login').submit();
        }
      });
      //
      -->
    </script>




    <jsp:include page="footer.jsp"></jsp:include>

  </div><!-- container starts in header-->

  <a href="#" id="toTop" style="display: inline;"><span id="toTopHover" style="opacity: 0;"></span></a>

</body>

</html>
