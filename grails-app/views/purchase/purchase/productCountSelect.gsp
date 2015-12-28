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
  <h1><g:message code="pp.product.label" args="[purchasedProduct?.product?.title]"/></h1>
  <g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
  </g:if>
  <g:if test="${flash.error}">
    <div class="error" role="status">${flash.error}</div>
  </g:if>
  <g:form>
    <fieldset class="form">

      <div class="fieldcontain required">
        <label for="count">
          <g:message code="pp.count.label"/>
          <span class="required-indicator">*</span>
        </label>
        <g:textField name="count" required="" value="${purchasedProduct?.count ?: 1}"/>

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
