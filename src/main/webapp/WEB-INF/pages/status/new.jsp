<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
    	<div class="col-md-6 col-md-offset-3">
			<sf:form role="form" modelAttribute="status" method="POST" action="new">
				<div class="form-group">
					<sf:label path="id">Id</sf:label>
					<sf:input path="id" class="form-control" />
				    <sf:errors path="id"/>
				</div>
				<div class="form-group">
					<sf:label path="name">Name</sf:label>
					<sf:input path="name" class="form-control" />
				    <sf:errors path="name"/>
				</div>
				<div class="row">
                    <div class="col-md-6">
                        <a href="<c:url value="/status/" />" class="btn btn-default btn-block">Cancelar</a>
                    </div>
                    <div class="col-md-6">
                        <input type="submit" value="Salvar" class="btn btn-primary btn-block"/>
                    </div>
                </div>
				
			</sf:form>
		</div>
    </tiles:putAttribute>
</tiles:insertDefinition>