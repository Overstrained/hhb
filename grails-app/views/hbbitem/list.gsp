
<%@ page import="de.hbb.item.HbbItem" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="hbbItem.list" default="HbbItem List" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="hbbItem.new" default="New HbbItem" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="hbbItem.list" default="HbbItem List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	    <g:sortableColumn property="id" title="Id" titleKey="hbbItem.id" />
                        
                   	    <g:sortableColumn property="name" title="Name" titleKey="hbbItem.name" />
                        
                   	    <g:sortableColumn property="amount" title="Amount" titleKey="hbbItem.amount" />
                        
                   	    <g:sortableColumn property="date" title="Date" titleKey="hbbItem.date" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${hbbItemInstanceList}" status="i" var="hbbItemInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${hbbItemInstance.id}">${fieldValue(bean: hbbItemInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: hbbItemInstance, field: "name")}</td>
                        
                            <td><g:formatNumber number="${hbbItemInstance.amount}" /></td>
                        
                            <td><g:formatDate date="${hbbItemInstance.date}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${hbbItemInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
