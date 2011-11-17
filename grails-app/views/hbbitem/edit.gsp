
<%@ page import="de.hbb.item.HbbItem" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="hbbItem.edit" default="Edit HbbItem" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="hbbItem.list" default="HbbItem List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="hbbItem.new" default="New HbbItem" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="hbbItem.edit" default="Edit HbbItem" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:hasErrors bean="${hbbItemInstance}">
            <div class="errors">
                <g:renderErrors bean="${hbbItemInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${hbbItemInstance?.id}" />
                <g:hiddenField name="version" value="${hbbItemInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="hbbItem.name" default="Name" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hbbItemInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${fieldValue(bean: hbbItemInstance, field: 'name')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="amount"><g:message code="hbbItem.amount" default="Amount" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hbbItemInstance, field: 'amount', 'errors')}">
                                    <g:textField name="amount" value="${fieldValue(bean: hbbItemInstance, field: 'amount')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="date"><g:message code="hbbItem.date" default="Date" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: hbbItemInstance, field: 'date', 'errors')}">
                                    <g:datePicker name="date" value="${hbbItemInstance?.date}"  />

                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'update', 'default': 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'delete', 'default': 'Delete')}" onclick="return confirm('${message(code: 'delete.confirm', 'default': 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
