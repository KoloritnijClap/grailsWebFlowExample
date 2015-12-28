
<%@ page import="net.realizeideas.blog.PurchasedProduct" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'purchasedProduct.label', default: 'PurchasedProduct')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-purchasedProduct" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-purchasedProduct" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="purchasedProduct.buyer.label" default="Buyer" /></th>
					
						<g:sortableColumn property="count" title="${message(code: 'purchasedProduct.count.label', default: 'Count')}" />
					
						<th><g:message code="purchasedProduct.product.label" default="Product" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${purchasedProductInstanceList}" status="i" var="purchasedProductInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${purchasedProductInstance.id}">${fieldValue(bean: purchasedProductInstance, field: "buyer")}</g:link></td>
					
						<td>${fieldValue(bean: purchasedProductInstance, field: "count")}</td>
					
						<td>${fieldValue(bean: purchasedProductInstance, field: "product")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${purchasedProductInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
