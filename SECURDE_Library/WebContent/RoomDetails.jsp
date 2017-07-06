<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>Jumbotron Template for Bootstrap</title>

<jsp:include page="components/headers.jsp" />
</head>
<style>
#borrow-books {
	margin-top: 2%;
	padding: 10px;
	border-radius: 10px;
	background-color: #e0e0e0;
}
</style>
<body>

	<jsp:include page="components/navbar.jsp" />

	<div class="card col-md-9 col-md-offset-2">
		<div class="card-block card-space">
			<div class="container">
				<div class="row">
					<div class="col-md-9">
						<div class="thumbnail">
							<div class="caption">
								<div class="btn-group cart pull-right margin card-space">
									<c:if test="${loggedin != -1}">

										<c:choose>
											<c:when test="${book.status==0}">
												<form action="book_reserve" method="post">
													<input type="text" class="invisible"
														value="${book.idBooks}" name="idBooks" />
													<button type="submit" class="btn btn-success">Reserve
													</button>

												</form>
											</c:when>
											<c:otherwise>
												<button type="button" class="btn btn-disabled">Unavailable
												</button>
											</c:otherwise>
										</c:choose>
										
										<c:if test="${editable != null}">
										<form action="edit_book" method="post">
													<input type="text" class="invisible"
														value="${book.idBooks}" name="idBooks" />
													<button type="submit" class="btn btn-default">Edit Book
													</button>

												</form>
										</c:if>
										
									</c:if>
									<br>
								</div>
								<h4>${book.title}</h4>
								<h5>Author: ${book.author}</h5>
								<h5>Publisher: ${book.publisher}</h5>
								<h6>Year Published: ${book.year}</h6>
								<h6>
									Type:
									<c:choose>
										<c:when test="${book.type==0}">
												Book
											</c:when>
										<c:when test="${book.type==1}">
												Magazine
											</c:when>
										<c:when test="${book.type==2}">
												Thesis
											</c:when>
										<c:otherwise>
												Unknown
											</c:otherwise>
									</c:choose>
								</h6>
							</div>
							<div class="caption">
								<p>
									Status:
									<c:choose>
										<c:when test="${book.status==0}">
												Available
											</c:when>
										<c:otherwise>
												Reserved
											</c:otherwise>
									</c:choose>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-md-9">
						<div class="thumbnail">
							<div class="caption">
								<div class="col-sm-6 form-group">
									<label><h4>Book Reviews</h4></label>


									<div id="review_container">

										<div class="card">
											<div class="card-block">
												<h4 class="card-title">Love It</h4>
												<h6 class="card-subtitle mb-2 text-muted">10/10</h6>
												<p class="card-text">Damn that book wow such good.</p>

											</div>
										</div>

									</div>


									<div id="new_review">

										<div class="card">
											<div class="card-block">
												<h4 class="card-title">Love It</h4>
												<h6 class="card-subtitle mb-2 text-muted">10/10</h6>
												<p class="card-text">
												<div class="form-group">
													<label for="comment">Review Now:</label>
													<textarea class="form-control" rows="5" id="comment"></textarea>
												</div>
												</p>


											</div>

											<button type="submit" class="btn btn-success margin-top">Submit</button>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
