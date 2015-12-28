<%@ page import="net.realizeideas.blog.Product" %>
<!DOCTYPE html>
<html>
<head>
  <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}"/>
  <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-product" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                              default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
  <ul>
    <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
    <li><g:link class="list" controller="product" action="index"><g:message code="back.to.products"/></g:link></li>
  </ul>
</div>


<div id="show-product" class="content scaffold-show" role="main">
  <h1>Preview</h1>
  <g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
  </g:if>
  <ol class="property-list product">
    <li class="fieldcontain"><h1>Address</h1></li>
    <g:if test="${purchasedProduct.buyer?.country}">
      <li class="fieldcontain">
        <span id="country-label" class="property-label"><g:message code="buyer.country.label"/></span>

        <span class="property-value" aria-labelledby="currencyCode-label"><g:fieldValue bean="${purchasedProduct.buyer}"
                                                                                        field="country"/></span>

      </li>
    </g:if>
    <g:if test="${purchasedProduct.buyer?.city}">
      <li class="fieldcontain">
        <span id="city-label" class="property-label"><g:message code="buyer.city.label"/></span>

        <span class="property-value" aria-labelledby="currencyCode-label"><g:fieldValue bean="${purchasedProduct.buyer}"
                                                                                        field="city"/></span>

      </li>
    </g:if>
    <g:if test="${purchasedProduct.buyer?.address1}">
      <li class="fieldcontain">
        <span id="address1-label" class="property-label"><g:message code="buyer.address1.label"/></span>

        <span class="property-value" aria-labelledby="currencyCode-label"><g:fieldValue bean="${purchasedProduct.buyer}"
                                                                                        field="address1"/></span>

      </li>
    </g:if>
    <g:if test="${purchasedProduct.buyer?.address2}">
      <li class="fieldcontain">
        <span id="address2-label" class="property-label"><g:message code="buyer.address2.label"/></span>

        <span class="property-value" aria-labelledby="currencyCode-label"><g:fieldValue bean="${purchasedProduct.buyer}"
                                                                                        field="address2"/></span>

      </li>
    </g:if>
    <g:if test="${purchasedProduct.buyer?.phoneNumber}">
      <li class="fieldcontain">
        <span id="phoneNumber-label" class="property-label"><g:message code="buyer.phoneNumber.label"/></span>

        <span class="property-value" aria-labelledby="currencyCode-label"><g:fieldValue bean="${purchasedProduct.buyer}"
                                                                                        field="phoneNumber"/></span>

      </li>
    </g:if>
    <g:if test="${purchasedProduct.buyer?.postalCode}">
      <li class="fieldcontain">
        <span id="postalCode-label" class="property-label"><g:message code="buyer.postalCode.label"/></span>

        <span class="property-value" aria-labelledby="currencyCode-label"><g:fieldValue bean="${purchasedProduct.buyer}"
                                                                                        field="postalCode"/></span>

      </li>
    </g:if>
    <li class="fieldcontain"><h1>Purchase info</h1></li>
    <g:if test="${purchasedProduct.product?.title}">
      <li class="fieldcontain">
        <span id="product-label" class="property-label">Product</span>

        <span class="property-value" aria-labelledby="currencyCode-label"><g:fieldValue
            bean="${purchasedProduct.product}"
            field="title"/></span>
      </li>
    </g:if>
    <g:if test="${purchasedProduct.product?.title}">
      <li class="fieldcontain">
        <span id="total-label" class="property-label">Total</span>

        <span class="property-value"
              aria-labelledby="currencyCode-label">${purchasedProduct.product.currencyCode} ${purchasedProduct.product.price} x ${purchasedProduct.count} = ${purchasedProduct.product.currencyCode} ${purchasedProduct.product.price * purchasedProduct.count}</span>
      </li>
    </g:if>

  </ol>
  <fieldset class="buttons">
    <g:link class="delete" event="back"><g:message code="back"/></g:link>
    <g:link class="save" event="save"><g:message code="default.button.save.label"/></g:link>
  </fieldset>
</div>
</body>
</html>
