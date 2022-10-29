<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Luggage delivery</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">


    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/carousel/">
</head>
<header>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/Luggage-delivery">Luggage delivery</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
                aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="${pageContext.request.contextPath}/Luggage-delivery">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link"
                       href="${pageContext.request.contextPath}/Luggage-delivery?cmd=make-order">Make order</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">View my orders</a>
                </li>
            </ul>
            <form class="form-inline mt-2 mt-md-0" action="Luggage-delivery"
                  style="position: relative; left: 1050px">
                <c:choose>
                    <c:when test="${sessionScope.user eq null}">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Sign in</button>
                        <input type="hidden" name="cmd" value="authorize"><br>
                    </c:when>
                    <c:when test="${sessionScope.user ne null}">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Sign out</button>
                    </c:when>
                </c:choose>
            </form>
        </div>
    </nav>
</header>
<body>
<div class="container">
    <br>
    <br>
    <br>
    <h3 style="text-align: center">Tariffs on luggage delivery:</h3>
    <div class="row" style="background-color: lightblue; text-align: center">
        <div style="font-size: 20px" class="col-6">
            <a href="Luggage-delivery?tariffDir=${requestScope.tariffDir}&row=type"
                style="color: black">NAME</a></div>
        <div style="font-size: 20px" class="col-6">
            <a href="Luggage-delivery?tariffDir=${requestScope.tariffDir}&row=price"
               style="color: black">MULTIPLICATION FACTOR</a></div>
    </div>
    <c:forEach items="${requestScope.allTariffs}" var="tariff">
        <div class="row" style="background-color: darkkhaki; border: 1px solid black; text-align: center">
            <div style="font-size: 20px" class="col-6">${tariff.type}</div>
            <div style="font-size: 20px" class="col-6">${tariff.price}x</div>
        </div>
        <br>
    </c:forEach>

    <h3 style="text-align: center">All available routes:</h3>
    <div class="row" style="background-color: lightcoral; text-align: center">
        <div style="font-size: 20px" class="col-6">
            <a href="Luggage-delivery?routeDir=${requestScope.routeDir}&col=startPoint"
               style="color: black">FROM</a></div>
        <div style="font-size: 20px" class="col-6">
            <a href="Luggage-delivery?routeDir=${requestScope.routeDir}&col=destinationPoint"
               style="color: black">TO</a></div>
    </div>
    <c:forEach items="${requestScope.allRoutes}" var="route">
        <div class="row" style="background-color: lightsalmon; border: 1px solid black; text-align: center">
            <div style="font-size: 20px" class="col-6">${route.startPoint}</div>
            <div style="font-size: 20px" class="col-6">${route.destinationPoint}</div>
        </div>
        <br>
    </c:forEach>

    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
            <li class="page-item disabled">
                <a class="page-link" href="#" tabindex="-1">Previous</a>
            </li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item">
                <a class="page-link" href="#">Next</a>
            </li>
        </ul>
    </nav>
</div>
</body>

</html>