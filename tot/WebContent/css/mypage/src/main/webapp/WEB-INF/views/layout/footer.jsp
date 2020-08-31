<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style type="text/css">
/*         #footer {border-top: 1px solid #dbdbdb; }  */

#footer {
   border-top: 1px solid #ddd;
}

.footerDiv {text-align: center; height: 190px;} 
.footerDiv li {position: relative; display: inline; padding: 0 7px 0 10px; white-space: nowrap;}
.footerDiv li:before {content: ''; width: 1px; height: 12px; background-color: #dbdbdb; position: absolute; left: 0; top: 2px;}
.footerDiv li:first-child:before {width: 0;}
.footerDiv address {padding-top: 15px;}

.fa:hover {color: #f15b2a;}
        
.footerImg { width: 210px; margin:25px; }
        
.ro {
   margin: 0 auto;
}
</style>
    <footer id="footer" style="background-color: #fff;">
        <div class="container" style="background-color: #fff;">
            <div class="ro">
                <div class="footerDiv">
                   <img alt="Brand" src="../../../../resources/image/footerLogo2.png" class="footerImg">
                   
                    <ul>
                        <li><a href="#" class="fa" style="color: #808080;">사이트 도움말</a></li>
                        <li><a href="#" class="fa" style="color: #808080;">사이트 이용약관</a></li>
                        <li><a href="#" class="fa" style="color: #808080;">사이트 운영원칙</a></li>
                        <li><a href="#" class="fa" style="color: #808080;">개인정보취급방침</a></li>
                        <li><a href="#" class="fa" style="color: #808080;">책임의 한계와 법적고지</a></li>
                        <li><a href="#" class="fa" style="color: #808080;">게시중단요청서비스</a></li>
                        <li><a href="#" class="fa" style="color: #808080;">고객센터</a></li>
                    </ul>
                    <address style="color: #808080;">
                        Copyright ©
                        <a href="#" class="fa" style="color: #f15b2a;"><strong> 바다속으로 </strong></a>All Rights Reserved.
                    </address>
                </div>
            </div>
        </div>
    </footer>
    <!-- //footer -->

</body>
</html>