<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
    <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>

<h2>タスク一覧</h2>
        <ul>
            <c:forEach var="task" items="${task}">
                <li>
                    <a href="${pageContext.request.contextPath}/show?id=${task.id}">
                        <c:out value="${task.id}" />
                    </a>
                    ：<c:out value="${task.content}" />
                </li>
            </c:forEach>
        </ul>


        <p><a href="${pageContext.request.contextPath}/new">新規タスクの追加</a></p>

    </c:param>
</c:import>

