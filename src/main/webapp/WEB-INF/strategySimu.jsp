<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="wrap">
       
     <div class="headerSubandContent">
           <div class="header_shortcut">
               <h2 style="margin-top: 0px;margin-bottom: 0px;">전략시뮬레이터</h2>
           </div>
           <p>세상에서 제일 간단한 포트폴리오 성과 추출기</p>
           <content>
               
               <div class="wrap2">
                   <!-- <div class="portfolioWrap" style="width: 100%;"> -->
                       <!-- <div class="portfolioInput" style="padding:10px; margin-right: 10px;"> -->
                           <strong>포트폴리오 입력
                               <img id="myBtn" src="img/questioin.png" alt="" style="z-index: 10; cursor: pointer;">
                           </strong>
                           <form action="">
                               <textarea style="width:100%; border-radius: 5px;" name="message" rows="10" cols="30" placeholder="날짜(YYYYMMDD) | 종목코드 | 비중 | 진입가격(1:전일종가,2:시가)"></textarea>
                               <div class="padding"></div>
                               <div class="mail">
                                   <label for="u_name"><p>벤치마크 & 초기투자금액(원)</p></label>
                                   <ul class="mailList">
                                       <li>
                                           <div class="search_categories">
                                               <div class="select2">
                                                   <select name="search_categories" id="search_categories" style="z-index: 1;">
                                                       <option value="1" selected="selected">KOSPI</option>
                                                       <option value="2">KOSPI200</option>
                                                   </select>
                                               </div>
                                           </div>
                                       </li>
                                       <li>
                                           <input class="box-simple-w100" id="u_name" type="text" name="" value="100000000">원
                                       </li>
                                   </ul>
                               </div>
                           </form>
                           
                           <!-- </div> -->
                           <div id="modalPortfolio" class="modal">
                               <div class="modal-content">
                                   <span class="close" id="modalClose">&times;</span>
                                   <strong>사용법</strong>
                                   <div class="modalPortfolioContent">
                                       <div>
                                           <div>
                                               <p>입력칸에 시점(YYYYMMDD)|종목코드(A000000)|상대적비중|진입시점(1,2); 형식으로 입력하세요.</p>
                                               <div class="padding"></div>
                                               <p>- 진입시점 1 : 전일종가</p>
                                               <p>- 진입시점 2 : 당일시가</p>
                                               <p>- 각 라인의 마지막에는 반드시 ; 를 넣어주세요.</p>
                                               <p>- 현금비중은 CASH 코드와 상대적 비중을 입력하세요.</p>
                                               <div class="padding"></div>
                                           </div>
                                           <!-- <p>개미의집이 자체 개발한 포트폴리오 백테스팅 및 성과분석 엔진입니다.</p> -->
                                           <div style="border:1px solid lightgrey; border-radius: 10px;">
                                               <p>예시 1</p>
                                               <div class="greycolor">
                                                   <p>2015/01/02 시점에 삼성전자와 현대차를 1:1 비율로 전일종가 가격으로 포트폴리오를 세팅한다면</p>
                                                   <p>20150102|A005930|50|1;</p>
                                                   <p>20150102|A005830|50|1;</p>
                                               </div>
                                           </div>
                                       </div>
                                       
                                       <div style="border:1px solid lightgrey; margin:10px; border-radius: 10px;">
                                           
                                           <p>예시 2</p> 
                                           <div class="greycolor">
                                               <p>2015/01/02 위 종목에 현금을 50% 세팅하려면</p>
                                               <p>20150102|A005930|25|1;</p>
                                               <p>20150102|A005830|25|1;</p>
                                               <p>20150102|CASH|50|1;</p>
                                               <p>여러 리벨런싱 시점에 대해서 모두 입력하세요</p>
                                               <hr>
                                           </div>
                                           <p>예시 3</p>
                                           <div class="greycolor">
                                               <p>위 포트폴리오를 2015/04/02에 다음카카오(50%), 셀트리온(50%)를 시가로 리밸런싱</p>
                                               <p>20150102|A005930|25|1;</p>
                                               <p>20150102|A005830|25|1;</p>
                                               <p>20150102|CASH|50|1;</p>
                                               <p>20150402|A005930|50|2;</p>
                                               <p>20150402|A005830|50|2;</p>
                                               <p>2010년 이후 데이터만 가능합니다.</p>
                                               <p>특정 리벨런싱 시점의 모든 종목들은 진입시점이 동일해야 합니다.</p>
                                           </div> 
                                       </div>
                                   </div>
                               </div>
                           </div>    
                           <!-- </div> -->
           </div>
           
           </content>
           <div class="writeBtn">
               <input class="btn-simple" type="button" name="" value="결과보기">
           </div>
       </div>

</div>
<script>
    var modal = document.getElementById("modalPortfolio");
    var btn = document.getElementById("myBtn");
    var span = document.getElementById("modalClose");

    btn.onclick = function(){
        modal.style.display="block";
    }

    span.onclick = function(){
        modal.style.display="none";
    }

    window.onclick = function(event){
        if(event.target == modal){
            modal.style.display = "none";
        }
    }
</script>	   
</body>
</html>