<%-- 
    Document   : venditore
    Created on : 2-mag-2016, 12.04.26
    Author     : mauro
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Pagina Riservata - Venditore</title>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta name="author" content="Mauro P">
            <meta name="keywords" content="scanner, lettura ottica, scansione, acquisizione">            
            <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    
    <body>
        <div id="page">
            <!-- Predispongo la nav per il collegamento con la pagina Login e Descrizione -->
            <%@ include file="header.jsp" %>
            
            <div class="divsx"></div>
            
            <div class="divcenter">
                
                <c:choose>
                    <c:when test="${not empty itemPosted && not empty vendor}">
                        <h3>Annuncio postato!</h3>
                        <p>Immagine: </p>
                        <img src="${itemPosted.imgUrl}" alt="Foto Scanner" width="110" height="110"/>
                        <p>Nome: ${itemPosted.name}</p>
                        <p>Prezzo: ${itemPosted.price}</p>
                        <p>Quantità: ${itemPosted.quantity}</p>
                        <p>Descrizione: ${itemPosted.description}</p>
                    </c:when>
                    <c:when test="${not empty vendor && empty login_error}">
                
                    <h2>Inserisci un Nuovo Oggetto</h2>
                        
                    <div>    
                        <form class="login_form" method="get" action="venditore.html">
                            <!-- Campo per inserire Nome Oggetto -->
                            <label for="nome">Nome</label>
                            <input class="campoform" type="text" name="itemName" id="itemName" value="Nome Oggetto" />

                            <!-- Campo per inserire Url immagine -->
                            <label for="url">Url Immagine</label>
                            <input class="campoform" type="url" name="imgUrl" id="imgUrl"  value="Url Oggetto" />

                            <!-- Campo per inserire Descrizione Oggetto -->
                            <label for="descrizione">Descrizione</label>
                            <textarea class="campoform" rows="4" cols="20" name="descrizione" id="itemDesc" name="itemDesc">Descrizione dell’oggetto</textarea>

                            <!-- Campo per inserire Prezzo Oggetto -->
                            <label for="prezzo">Prezzo dell'oggetto</label>
                            <input class="campoform" type="number" id="itemPrice" name="itemPrice"/>

                            <!-- Campo per inserire Numero degli oggetti -->
                            <label for="numero">Numero oggetti</label>
                            <input class="campoform" type="number" id="itemQuantity" name="itemQuantity"/>

                            <c:if test="${not empty input_error}">
                                <div class="errore">Verifica di aver inserito i dati correttamente.</div>
                            </c:if>

                            <!-- Pulsanti per inviare o cancellare i dati -->
                            <input class="pulsanti" type="submit" name="SubmitItem" value="Invia">
                            <input class="pulsanti" type="reset"  name="ResetItem" value="Cancella">
                        </form> 
                    </div>
                    </c:when>
                    <c:when test="${not empty login_error}">
                        <div class="errore">Per visualizzare qusto contenuto, effettua il Login.</div>
                    </c:when>
                </c:choose>
            </div>
            
            <%@ include file="footer.jsp" %>
        </div> 
    </body>
</html>
