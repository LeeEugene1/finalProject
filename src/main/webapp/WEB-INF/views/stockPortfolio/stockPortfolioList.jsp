<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 부트스트랩 -->
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"> -->
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">

</head>
<body>
	<div class="wrap">
		<div class="headerSubandContent">
			<div class="header_shortcut">
				<h2 style="margin-top: 0px; margin-bottom: 0px;">전략공작소</h2>
			</div>
			<p>개미의집의 여러가지 포트폴리오를 구경하세요</p>
			<!-- TradingView Widget BEGIN -->
			<div class="tradingview-widget-container">
				<div id="tradingview_5a069"></div>

				<content>
				<div class="wraptable">
					<c:forEach items="${stockPortfolioList }" var="portfolioInfo">
						<div class="strategyText">
							<input type="hidden" name="portfolio_code"
								value="${portfolioInfo.portfolio_code}" />
							<p class="name">${portfolioInfo.portfolio_name }</p>
							<i class="title">${portfolioInfo.portfolio_title }</i>
							<p class="content">${portfolioInfo.portfolio_content }</p>
						</div>
						<div class="container mb-3 mt-3" style="justify-content: center; display: flex;margin: 20px;">
							<div class="overflow-auto" style="width: 900px;">
								<table class="table table-striped table-bordered mytable">
									<thead>
										<tr>
											<th scope="col">전략코드</th>
											<th scope="col">전략이름</th>
											<th scope="col">today</th>
											<th scope="col">수익률(1W)</th>
											<th scope="col">수익률(1M)</th>
											<th scope="col">수익률(3M)</th>
											<th scope="col">수익률(6M)</th>
											<th scope="col">수익률(1Y)</th>
											<th scope="col">수익률(3Y)</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>PRCMNG02M05N1</td>
											<td>세력주 5(2 months)2</td>
											<td>-3.3%</td>
											<td>+4.2%</td>
											<td>-5.3%</td>
											<td>+6.2%</td>
											<td>-7.3%</td>
											<td>+8.2%</td>
											<td>-10.3%</td>
										</tr>
										<tr>
											<td>PRCMNG02M05N3</td>
											<td>세력주 5(2 months)4</td>
											<td>-5.3%</td>
											<td>+9.2%</td>
											<td>-10.3%</td>
											<td>+11.2%</td>
											<td>-5.3%</td>
											<td>+3.2%</td>
											<td>-2.3%</td>
										</tr>
										<tr>
											<td>PRCMNG02M05N5</td>
											<td>세력주 5(2 months)6</td>
											<td>-7.3%</td>
											<td>+8.2%</td>
											<td>-4.3%</td>
											<td>+5.2%</td>
											<td>-3.3%</td>
											<td>+2.2%</td>
											<td>-9.3%</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="writeBtn" id="insertBtn">
							<input class="btn-simple" id="${portfolioInfo.portfolio_code}"
								type="button" name="insertMomentum" value="등록">
						</div>

                    <hr>

					</c:forEach>
					<div class="writeBtn" id="insertBtn">
						<input class="btn-simple" id="insertPortfolio" type="button"
							name="" value="포트폴리오 등록">
					</div>
				</div>

				</content>
			</div>

		</div>
	</div>
	<!-- 부트스트랩 -->
	<!--     <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> -->
	<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script> -->
	<!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script> -->
	<!-- 부트스트랩테이블 -->
	<script
		src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
	<script>
		$('.mytable').DataTable();
		$(function() {
			$('#insertPortfolio')
					.click(
							function() {
								location.href = '${pageContext.request.contextPath}/stockPortfolio/portfolioForm.do';
							});

			if ('${LOGIN_ADMININFO.admin_id}' == 'admin') {
				$(".strategyText")
						.click(
								function() {
									var portfolio_code = {}
									location.href = '${pageContext.request.contextPath}/stockPortfolio/portfolioViewUpdate.do?portfolio_code='
											+ portfolio_code;
								});
			}
			if ('${LOGIN_ADMININFO.admin_id}' == 'admin') {
				$('input[name=insertMomentum]')
						.click(
								function() {
									var portfolio_code = this
											.getAttribute("id");
									location.href = '${pageContext.request.contextPath}/stockPortfolio/PFSForm.do?portfolio_code='
											+ portfolio_code;
								});
			}
		});
	</script>
</body>
</html>