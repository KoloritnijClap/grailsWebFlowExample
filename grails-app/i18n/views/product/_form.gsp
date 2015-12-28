<%@ page import="net.realizeideas.blog.Product" %>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="product.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${productInstance?.title}"/>

</div>


<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="product.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${productInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="product.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" type="number" value="${productInstance.price}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'currencyCode', 'error')} required">
	<label for="currencyCode">
		<g:message code="product.currencyCode.label" default="Currency Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="currencyCode" required="" value="${productInstance?.currencyCode}"/>

</div>
