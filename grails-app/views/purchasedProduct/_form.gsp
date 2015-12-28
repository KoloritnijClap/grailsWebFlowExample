<%@ page import="net.realizeideas.blog.PurchasedProduct" %>



<div class="fieldcontain ${hasErrors(bean: purchasedProductInstance, field: 'buyer', 'error')} required">
	<label for="buyer">
		<g:message code="purchasedProduct.buyer.label" default="Buyer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="buyer" name="buyer.id" from="${net.realizeideas.blog.Buyer.list()}" optionKey="id" required="" value="${purchasedProductInstance?.buyer?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: purchasedProductInstance, field: 'count', 'error')} required">
	<label for="count">
		<g:message code="purchasedProduct.count.label" default="Count" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="count" type="number" value="${purchasedProductInstance.count}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: purchasedProductInstance, field: 'product', 'error')} required">
	<label for="product">
		<g:message code="purchasedProduct.product.label" default="Product" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="product" name="product.id" from="${net.realizeideas.blog.Product.list()}" optionKey="id" required="" value="${purchasedProductInstance?.product?.id}" class="many-to-one"/>

</div>

