<%-- 
    Document   : personas
    Created on : 17 ago 2024, 3:31:56 p.m.
    Author     : grenn
--%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><s:text name="form.titulo"/></title>
        <s:head/>
    </head>
    <body>
        <h1><s:text name="form.titulo"/></h1>
        <s:form><%--  --%>
            <s:textfield key="form.nombre" name="persona.nombre"/><%-- Almacena el nombre en el atributo del objeto persona--%>
            <s:textfield key="form.calle" name="persona.domicilio.calle"/><%-- Almacena la calle en el atributo del objeto persona--%>
            <s:textfield key="form.no.calle" name="persona.domicilio.numeroCalle"/><%--Almacena numero de calle en el atributo del objeto persona --%>
            <s:textfield key="form.pais" name="persona.domicilio.pais"/><%--Almacena el pais en el atributo del objeto persona --%> 
            <s:submit  key="form.enviar"/><%--Boton comun con texto Enviar --%>
        </s:form>
        <h2><s:text name="form.resultado"/></h2>
        <s:text name="form.nombre"/><s:property value="persona.nombre"/><br><%-- Lee el nombre en el atributo del objeto persona--%>
        <s:text name="form.calle"/><s:property value="persona.domicilio.calle"/><br><%-- Lee la calle en el atributo del objeto persona--%>
        <s:text name="form.no.calle"/><s:property value="persona.domicilio.numeroCalle"/><br><%--Lee el numero de calle en el atributo del objeto persona --%>
        <s:text name="form.pais"/><s:property value="persona.domicilio.pais"/><br>  <%--Lee el pais en el atributo del objeto persona --%>
        <br>
        <s:url var="localeES" action="personas">
            <s:param name="request_locale">es</s:param>
        </s:url>
        <s:url var="localeEN" action="personas">
            <s:param name="request_locale">en</s:param>
        </s:url>

        <s:a href="%{localeES}"><s:text name="form.idioma.espaniol"/></s:a>    
        <s:a href="%{localeEN}"><s:text name="form.idioma.ingles"/></s:a>    
    </body>
</html>
