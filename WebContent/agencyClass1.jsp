<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <base href="${basePath}/">
        <title></title>
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
        <link rel="stylesheet" href="css/swiper.min.css">
        <link rel="stylesheet" href="css/validate.css"/>
        <script src="js/swiper.min.js"></script>
        <script src="js/jquery-3.3.1.js"></script>
        <script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
        <script src="js/mvalidate.js"></script>
        <style type="text/css">
        .swiper-container {
        width: 100%;
        height: 100%;
        position: relative;
        overflow: hidden;
        }
        .swiper-slide img{
        width: 100%;
        height: 12rem;
        }
        .whjx{
        position: absolute;
        width: 100%;
        height: 3rem;
        bottom: 0rem;
        color: white;
        line-height: 3rem;
        font-size: 1.3rem;
        text-indent: 0.625rem;
        z-index: 999;}
        *{
        margin: 0;
        padding: 0;
        }

        .clearfix:after{
        content: "";
        display: table;
        clear: both;
        }
        .label{float:left ;width: 7rem;text-align: right;border-left: 3px solid #FDE979;}
        .input{float: left;}

        div.input input{width: 100%;padding-right:10px;padding-left: 10px;border: none;outline: none;}
        form div{

        }
        .name,.identy,.tel,.pname{
        padding-left: 1rem;
        margin-top: 0.5rem;
        margin-bottom: 0.5rem;
        }
        #btn_submit{text-align:center;display:block;width: 65%;height: 2.5rem;margin: 2rem auto 1rem;border:none;border-radius: 3px;background-color: #FFCC00;color: white;outline: none;}
        .fl{float: left;}
        .fr{float: right;}
        .line2{height: 2rem;line-height: 2rem;}
        .line1{height: 2rem;line-height: 2rem;color: #eee;}
        .red{color:red;margin-right: 3rem;}
        .yuanjia{margin-right: 2rem;text-decoration: line-through;font-size: 0.6rem;}
        .fapiao{margin-right: 1rem;font-size: 0.6rem;}
        .green{line-height: 1rem;color: green;border: 1px solid green;border-radius:0.4rem ;margin-right: 0.5rem;}
        .brown{line-height: 1rem;color: brown;border: 1px solid brown;border-radius:0.4rem ;}
        .content{padding: 0.5rem 0;background-color: #EEEEEE;}
        .ptb{height: 4rem;background-color: #fff;}
        .putong{background-color: #fff;padding: 0 0.625rem;}
        /*  ����չʾ  */
        .showdata{
        padding: 4rem;
        margin: 0 auto;
        text-align: center;
        }
        .show{font-size: 1rem;font-family:"Hiragino Sans GB", Arial, Verdana, Tahoma, "΢���ź�";}
        </style>
        </head>
        <body>
        <div class="allinfo">
        <div class="swiper-container swiper-container-horizontal relative">
        <div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(0px, 0px, 0px);">
        <div class="swiper-slide swiper-slide-active" ><a href=""><img src="${base}/upload/ytjx.png" alt="" /></a></div>
        </div>
        <div class="whjx">�ߺ�����̩��У</div>
        <!-- Add Pagination -->
        <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"><span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span></div>
        <!-- Add Arrows -->
        <!--  <div class="swiper-button-next"></div>
        <div class="swiper-button-prev swiper-button-disabled"></div>
        -->
        </div>

        <input type="hidden" id="Sourse" name="sourse" value="${sourse}" />
        <!--  ��ͨ��   -->
        <div class="content">
        <div class="putong">
        <div class="line2 clearfix">

        <div class="fl" id="test"></div><div class="fr red">
        <c:if test="${sourse==1}">1370Ԫ</c:if>
        <c:if test="${sourse==2}">1270Ԫ</c:if>
        <c:if test="${sourse==3}">1570Ԫ</c:if>

        </div></div>
        <div class="line1 clearfix"><div class="fl">һ�ѵ��� �޸��ӷ� ��������</div><div class="yuanjia fr">ԭ�ۣ�1670</div></div>
        <div class="line1 clearfix"><div class="fl">���¿��˿�</div><div class="fapiao fr clearfix"><div class="green fl">���·�Ʊ</div><div class="brown fr">ƽ̨����</div></div></div>
        </div>
        </div>
        <!--  ��   -->
        <form  class="form clearfix" id="form1">

                        <div class="name clearfix"><div class="label"> �� �� </div><div class="input"><input type="text" id="StuName" class="username" name="username" data-validate="username" data-describedby="username-description"/></div></div><hr />
                        <div class="identy clearfix"><div class="label"> �� �� ֤ �� </div><div class="input"><input type="text" id="Idcard" class="idnum" name="idnum" data-validate="idcard" data-describedby="idcard-description"/></div></div><hr />
                        <div class="tel clearfix"><div class="label"> �� �� �� �� </div><div class="input"><input type="text" id="Phone" name="tel" data-validate="phone" data-describedby="phone-description"/></div></div><hr />
                        <div class="pname clearfix"><div class="label"> �� �� �� �� �� </div><div class="input"><input type="text" id="IntroducerName" name="pname" data-required="true" data-descriptions="pname"/></div></div><hr />
                        <input type="submit" name="tijiao" id="btn_submit" value="�� ��" />

        </form>

        </div>



        <script>
        $(document).ready(function() {

        //ʹ�� Ajax �ķ�ʽ �жϵ�¼
        $("#btn_submit").click(function() {
        // var url = 'testAjax.html';
        //��ȡ��ֵ������json��������ʽ���浽params��
        /* 		var params = {
        StuName : $("#StuName").val(),
        Idcard : $("#Idcard").val(),
        Phone : $("#Phone").val(),
        IntroducerName : $("#IntroducerName").val(),

        }, */


        $.mvalidateExtend({
        username:{
        required : true,
        pattern : /^[\u4E00-\u9FA5]{2,4}$/,
        each:function(){

        },
        descriptions:{
        required : '<div class="field-invalidmsg">����Ϊ�����ֶ�</div>',
        pattern : '<div class="field-invalidmsg">����������ȷ��������ʽ</div>',
        valid : '<div class="field-validmsg">��ȷ</div>'
        }
        },
        phone:{
        required : true,
        pattern : /^0?1[3|4|5|8][0-9]\d{8}$/,
        each:function(){

        },
        descriptions:{
        required : '<div class="field-invalidmsg">�ֻ�����Ϊ�����ֶ�</div>',
        pattern : '<div class="field-invalidmsg">����������ȷ���ֻ������ʽ</div>',
        valid : '<div class="field-validmsg">��ȷ</div>'
        }
        },
        idcard:{
        required:true,
        pattern:/^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/,
        each:function(){

        },
        descriptions:{
        required:'<div class="field-invalidmsg">���֤Ϊ�����ֶ�</div>',
        pattern:'<div class="field-invalidmsg">����������ȷ�����֤�����ʽ</div>',
        valid:'<div class="field-validmsg">��ȷ</div>'
        }
        }

        });
        $("#form1").mvalidate({
        type:1,
        onKeyup:true,
        sendForm:true,
        firstInvalidFocus:true,
        valid:function(){

        },
        invalid:function(){

        },
        eachField:function(){

        },
        eachValidField:function(){

        },
        eachInvalidField:function(){

        },
        descriptions:{
        pname:{
        required:'���������������'
        }
        }
        })

        var Sourse = $("#Sourse").val();
        var StuName = $("#StuName").val();
        var Idcard = $("#Idcard").val();
        var Phone = $("#Phone").val();

        var CId;
        if(Sourse==1){
        CId="8636e82594a645d383ce0d4d816607df";
        }else if(Sourse==2){
        CId="e53b200b0e684e0d9ab52aad29ab71c3";
        }else if(Sourse==3){
        CId="8b4ed47c26f7412aa0b8151eac2fd710";
        }

        var IntroducerName = $("#IntroducerName").val();
        $.ajax({
        type : "post",
        url : "${base}/ytcx/order/addJXOrder",
        dataType : "json",
        data : {
        "SId":"09b77295c44941bbbcd73d69c0e02737",
        "CId":CId,
        /* "Sourse" : Sourse, */
        "StuName" : StuName,
        "Idcard" : Idcard,
        "Phone" : Phone,
        "IntroducerName" : IntroducerName
        },
        success : function(
        data1) {
        var code = data1.CODE;
        var data = data1.DATA;
        if (code == 200) {
        var source = data.source;
        var orderCode = data.orderCode;
        window.location.href = "${base}/inf/LyjsPayAction/wcPay?orderCode="
        + orderCode
        + "&source="
        + source;
        } else if (code == 300) {
        }
        }
        });

        });
        });

        if ($("#Sourse").val() == 1) {
        $("#test").html("�����1");
        } else if ($("#Sourse").val() == 2) {
        $("#test").html("�����2");
        }else if ($("#Sourse").val() == 3) {
        $("#test").html("ѧ����");
        }

        function validate_dataform() {
        var has = true;
        $("[required]").each(
        function() {
        if ($(this).val() == '') {
        var msg = $(this).attr("required-msg")
        || ("["
        + $(this).parent().parent().prev()
        .text() + "]����Ϊ��");
        top.$.messager.alert("����", msg);
        has = false;
        return false;
        }
        });
        return has;
        }
        </script>


<!--      �ֲ�ͼ    -->
        <script src="js/swiper.min.js"></script>
        <script>
        var swiper = new Swiper('.swiper-container', {
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: {
        delay: 2500,
        disableOnInteraction: false
        },
        pagination: {
        el: '.swiper-pagination',
        clickable: true
        }
        /*navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
        },*/
        });
        </script>
        </body>
        </html>
