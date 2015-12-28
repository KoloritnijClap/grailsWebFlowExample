
<%@ page import="net.realizeideas.blog.PurchasedProduct" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'purchasedProduct.label', default: 'PurchasedProduct')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-purchasedProduct" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-purchasedProduct" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list purchasedProduct">
			
				<g:if test="${purchasedProductInstance?.buyer}">
				<li class="fieldcontain">
					<span id="buyer-label" class="property-label"><g:message code="purchasedProduct.buyer.label" default="Buyer" /></span>
					
						<span class="property-value" aria-labelledby="buyer-label"><g:link controller="buyer" action="show" id="${purchasedProductInstance?.buyer?.id}">${purchasedProductInstance?.buyer?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${purchasedProductInstance?.count}">
				<li class="fieldcontain">
					<span id="count-label" class="property-label"><g:message code="purchasedProduct.count.label" default="Count" /></span>
					
						<span class="property-value" aria-labelledby="count-label"><g:fieldValue bean="${purchasedProductInstance}" field="count"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${purchasedProductInstance?.product}">
				<li class="fieldcontain">
					<span id="product-label" class="property-label"><g:message code="purchasedProduct.product.label" default="Product" /></span>
					
						<span class="property-value" aria-labelledby="product-label"><g:link controller="product" action="show" id="${purchasedProductInstance?.product?.id}">${purchasedProductInstance?.product?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:purchasedProductInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${purchasedProductInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
