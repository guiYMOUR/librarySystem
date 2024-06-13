<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<c:url value="/static/css/bootstrap.min.css"/>">
    <script type="text/javascript" src="<c:url value="/static/js/jquery-3.2.1.js"/>"></script>
    <script src="<c:url value="/static/js/bootstrap.min.js"/>" ></script>
</head>
<body background="<c:url value="/static/img/1583851799.jpg"/>" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">

<div class="panel panel-primary" style="width: 600px;position: relative;top: 30px;left: 300px">
    <div class="panel-heading">欢迎进行预约</div>
    <div class="panel-body">
        <form action="reader_appoint_do" method="POST" role="form">
            <div class="form-group">
                <label for="room">请选择自习室</label>
                <select class="form-control" multiple="multiple" id="room" name="room">
                    <c:forEach  var="roominfo"   items="${roominfos}" >
                        <option value="${roominfo.room}">${roominfo.room}</option>
                    </c:forEach>
                </select>
            </div>

            <div class="form-group">
                <label for="seatNum">请选择你的座位号</label>
                <select class="form-control" multiple="multiple" id="seatNum" name="seatNum">
                    <c:forEach  var="s"  begin="1" end="50" >
                        <option value="${s}">${s}</option>
                    </c:forEach>

                </select>
            </div>

            <div class="form-group">
                <label for="bookName">请选择需要订阅的书本</label>
                <select class="form-control" multiple="multiple" id="bookName" name="bookName">
                    <c:forEach  var="book"   items="${books}" >
                        <option value="${book.name}">${book.name}</option>
                    </c:forEach>
                </select>
            </div>
            <button type="submit" class="btn btn-success">预约</button>
        </form>

    </div>

</div>
</body>
</html>
