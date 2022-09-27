<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">

<input type="hidden" name="shAdminNy" value="<c:out value="${vo.shAdminNy}"/>"/>
<%-- <input type="hidden" name="shOptionDate" value="<c:out value="${vo.shOptionDate}"/>"/> --%>

<input type="hidden" name="startDate" value="<c:out value="${vo.startDate}"/>"/>
<input type="hidden" name="endDate" value="<c:out value="${vo.endDate}"/>"/>

<input type="hidden" name="shOption" value="<c:out value="${vo.shOption}"/>"/>
<input type="hidden" name="shValue" value="<c:out value="${vo.shValue}"/>"/>

<input type="hidden" name="shSeq" value="<c:out value="${vo.shSeq}"/>"/>
