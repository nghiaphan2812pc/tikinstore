<%--
    Document   : register
    Created on : Nov 23, 2019, 5:58:46 PM
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

    <section class="main-container">
      <div class="breadcrumbs">
        <div class="inner">
          <span></span><a href="<%=request.getContextPath()%>/productController/getAll.htm">Trang chủ</a>
          <span> &raquo; </span><a href="<%=request.getContextPath()%>/userController/initRegister.htm">Đăng kí</a>
        </div>
      </div>
      <article class="main-container-inner">
        <div id="content">
          <div class="login_page">
            <div class="page-title">
              <h2>Đăng kí tài khoản</h2>
            </div>

            <f:form action="register.htm" accept-charset='UTF-8' method="post" commandName="userRegister">
              <h2>Thông tin cá nhân</h2>
                <div class="content">
                        <ul class="form-list">
                            <li>
                              <label>Họ và tên:<span class="required"></span></label>
                              <br>
                              <f:input path="userName" class="input-text large-field"/>
                            </li>
                            <li>
                              <label>Mật khẩu:<span class="required"></span></label>
                              <br>
                              <f:password  path="pass"  class="input-text large-field"/>
                            </li>
                            <li>
                              <label>Mail:<span class="required"></span></label>
                              <br>
                              <f:input  path="mail"  class="input-text large-field"/>
                            </li>
                            <li>
                              <label>Số điện thoại:<span class="required"></span></label>
                              <br>
                              <f:input  path="phone"  class="input-text large-field"/>
                            </li>
                            <li>
                              <label>Địa chỉ:<span class="required"></span></label>
                              <br>
                              <f:input  path="address"  class="input-text large-field"/>
                            </li>
                            <li>
                              <button type="submit" class="button">Đăng kí</button>
                            </li>
                            
                        </ul>
                </div>
            </f:form>
          </div>
        </div>
      </article>
    </section>
    <script type="text/javascript">
      <!--
      var $ = jQuery.noConflict();
      $('input[name=\'customer_group_id\']:checked').live('change', function() {
        var customer_group = [];

        customer_group[1] = [];
        customer_group[1]['company_id_display'] = '1';
        customer_group[1]['company_id_required'] = '0';
        customer_group[1]['tax_id_display'] = '0';
        customer_group[1]['tax_id_required'] = '1';


        if (customer_group[this.value]) {
          if (customer_group[this.value]['company_id_display'] == '1') {
            $('#company-id-display').show();
          } else {
            $('#company-id-display').hide();
          }

          if (customer_group[this.value]['company_id_required'] == '1') {
            $('#company-id-required').show();
          } else {
            $('#company-id-required').hide();
          }

          if (customer_group[this.value]['tax_id_display'] == '1') {
            $('#tax-id-display').show();
          } else {
            $('#tax-id-display').hide();
          }

          if (customer_group[this.value]['tax_id_required'] == '1') {
            $('#tax-id-required').show();
          } else {
            $('#tax-id-required').hide();
          }
        }
      });

      $('input[name=\'customer_group_id\']:checked').trigger('change');
      //
      -->
    </script>
    <script type="text/javascript">
      <!--
      $('select[name=\'country_id\']').bind('change', function() {
        $.ajax({
          url: 'index.php?route=account/register/country&country_id=' + this.value,
          dataType: 'json',
          beforeSend: function() {
            $('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
          },
          complete: function() {
            $('.wait').remove();
          },
          success: function(json) {
            if (json['postcode_required'] == '1') {
              $('#postcode-required').show();
            } else {
              $('#postcode-required').hide();
            }

            html = '<option value=""> --- Please Select --- </option>';

            if (json['zone'] != '') {
              for (i = 0; i < json['zone'].length; i++) {
                html += '<option value="' + json['zone'][i]['zone_id'] + '"';

                if (json['zone'][i]['zone_id'] == '') {
                  html += ' selected="selected"';
                }

                html += '>' + json['zone'][i]['name'] + '</option>';
              }
            } else {
              html += '<option value="0" selected="selected"> --- None --- </option>';
            }

            $('select[name=\'zone_id\']').html(html);
          },
          error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
          }
        });
      });

      $('select[name=\'country_id\']').trigger('change');
      //
      -->
    </script>
    <script type="text/javascript">
      <!--
      $(document).ready(function() {
        $('.colorbox').colorbox({
          width: 640,
          height: 480
        });
      });
      //
      -->
    </script>

    <jsp:include page="footer.jsp"></jsp:include>
  </div>

  <a href="#" id="toTop" style="display: inline;"><span id="toTopHover" style="opacity: 0;"></span></a>

</body>

</html>
