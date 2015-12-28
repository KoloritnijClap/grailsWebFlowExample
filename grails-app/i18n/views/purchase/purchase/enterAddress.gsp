<!DOCTYPE html>
<html>
<head>
  <meta name="layout" content="main">
  <title>Enter address</title>
</head>

<body>
<a href="#create-product" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
  <ul>
    <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
    <li><g:link class="list" controller="product" action="index"><g:message code="back.to.products"/></g:link></li>
  </ul>
</div>

<div id="create-product" class="content scaffold-create" role="main">
  <h1>Fill address</h1>
  <g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
  </g:if>
  <g:if test="${flash.error}">
    <div class="error" role="status">${flash.error}</div>
  </g:if>
  <g:form>
    <fieldset class="form">

      <div class="fieldcontain required">
        <label for="firstName">
          <g:message code="buyer.firstName.label"/>
          <span class="required-indicator">*</span>
        </label>
        <g:textField name="firstName" required="" value="${purchasedProduct.buyer.firstName}"/>

      </div>

      <div class="fieldcontain">
        <label for="lastName">
          <g:message code="buyer.lastName.label"/>
        </label>
        <g:textField name="lastName" value="${purchasedProduct.buyer.lastName}"/>

      </div>

      <div class="fieldcontain required">
        <label for="country">
          <g:message code="buyer.country.label"/>
          <span class="required-indicator">*</span>
        </label>
        <g:textField name="country" required="" value="${purchasedProduct.buyer.country}"/>

      </div>

      <div class="fieldcontain required">
        <label for="city">
          <g:message code="buyer.city.label"/>
          <span class="required-indicator">*</span>
        </label>
        <g:textField name="city" required="" value="${purchasedProduct.buyer.city}"/>

      </div>

      <div class="fieldcontain required">
        <label for="address1">
          <g:message code="buyer.address1.label"/>
          <span class="required-indicator">*</span>
        </label>
        <g:textField name="address1" required="" value="${purchasedProduct.buyer.address1}"/>

      </div>

      <div class="fieldcontain">
        <label for="address2">
          <g:message code="buyer.address2.label"/>
        </label>
        <g:textField name="address2" value="${purchasedProduct.buyer.address2}"/>

      </div>

      <div class="fieldcontain required">
        <label for="postalCode">
          <g:message code="buyer.postalCode.label"/>
          <span class="required-indicator">*</span>
        </label>
        <g:textField name="postalCode" required="" value="${purchasedProduct.buyer.postalCode}"/>

      </div>

      <div class="fieldcontain required">
        <label for="phoneNumber">
          <g:message code="buyer.phoneNumber.label"/>
          <span class="required-indicator">*</span>
        </label>
        <g:textField name="phoneNumber" required="" value="${purchasedProduct.buyer.phoneNumber}"/>

      </div>

    </fieldset>
    <fieldset class="buttons">
      <g:link event="back" class="delete">Back</g:link>

      <g:submitButton name="next" class="save"
                      value="${message(code: 'next', default: 'Next')}"/>
    </fieldset>
  </g:form>
</div>
</body>
</html>
