<%-- 
    Document   : cliente
    Created on : 2-mag-2016, 10.53.53
    Author     : mauro
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Cliente</title>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta name="author" content="Mauro P">
            <meta name="keywords" content="scanner, lettura ottica, scansione, acquisizione">
            <link href="style.css" rel="stylesheet" type="text/css" media="screen" />    
    </head>
    
    <body>
        <div id="page">
            <%@ include file="header.jsp" %>
            
            <div class="divsx"></div>

            <div class="divcenter">
                    
                <c:choose>
                    <c:when test="${not empty buyer && not empty purchaseOk}">
                        <div class="completo">Acquisto concluso con successo!</div>
                    </c:when>
                    <c:when test="${not empty buyer && not empty purchaseFailed}">
                        <div class="errore">Fondi insufficienti! </div>
                    </c:when>
                    <c:when test="${empty itemDetails && not empty buyer}">
                        
                    <!-- Creo una tabella che conterrà gli oggetti in vendita -->        
                    <table class="prodotti">
                        <tr class="intestazione">
                            <th>Nome Oggetto</th>
                            <th>Foto</th>
                            <th>Quantit&agrave;</th>
                            <th>Prezzo</th>
                            <th>Link</th>
                        </tr>
                        <c:forEach var="item" items="${itemList}">

                            <tr class="sfondotab">
                                <td>${item.name}</td>
                                <td><img alt="Foto Scanner" src="${item.imgUrl}" width="110" height="110"></td>
                                <td>${item.quantity}</td>
                                <td>Euro ${item.price}€</td>
                                <td><a href="cliente.html?itemId=${item.id}">Acquista</a></td>
                            </tr>   
                        </c:forEach>
                    </table>
                    </c:when>
                    <c:when test="${not empty itemDetails && not empty buyer}">
                        <div id="acquisto">
                            <h3>Dettaglio Oggetto</h3>
                            <p>Immagine: </p>
                            <img src="${itemDetails.imgUrl}" alt="Foto Scanner" width="110" height="110"/>
                            <p>Nome: ${itemDetails.name}</p>
                            <p>Prezzo: ${itemDetails.price}€</p>
                            <p>Quantità: ${itemDetails.quantity}</p>
                            <p>Descrizione: ${itemDetails.description}</p>
                            <a href="cliente.html?itemPurchase=${itemDetails.id}">Conferma Acquisto</a>
                        </div>
                    </c:when>
                    <c:when test="${not empty login_error}">
                         <div class="errore">Per visualizzare questo contenuto, effettua il Login.</div>
                     </c:when>
                </c:choose>
            </div>
            <%@ include file="footer.jsp" %>
        </div>
    </body>
</html>