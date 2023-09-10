<%-- 
    Document   : addCate
    Created on : Jul 29, 2023, 10:17:26 AM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="se" uri="http://www.springframework.org/security/tags" %>

<c:url value="/addCate" var="action" />

<form:form cssClass="container " modelAttribute="addCates" action="${action}" method="post" enctype="multipart/form-data">
    <form:errors path="*" element="div" cssClass="alert alert-danger" />
    <form:hidden path="id" />

    <div class="card nen frm ">
        <article class="card-body mx-auto" style="width: 50%;">
            
            <h2 class="card-title  text-center text-white">QUẢN LÝ NGÀNH NGHỀ</h2>
           <div class="form-floating mb-3 mt-3">
                <form:input type="text" class="form-control" path="name" id="name" placeholder="Tên Ngành Nghề" name="name" />
                <label for="name">Tên Ngành Nghề </label>
            </div>

            <div class="form-floating mb-3 mt-3">
                <form:input type="text" class="form-control" path="description" id="description" 
                            placeholder="Mô Tả" name="description" />
                <label for="name">Mô Tả</label>
            </div>

            <div class="form-floating mb-3 mt-3">
                <button type="submit" class="btn btn-info">
                    <c:choose>
                        <c:when test="${addCates.id != null}">Cập nhật ngành nghề</c:when>
                        <c:otherwise>Thêm ngành nghề</c:otherwise>
                    </c:choose>
                </button>
            </div>
            <p class="text-center"><a href="<c:url value="/" />">Trang chủ</a> 
            </p>

        </article>
    </div>
</form:form>

