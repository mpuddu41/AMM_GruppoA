<%-- 
    Document   : login
    Created on : 2-mag-2016, 12.21.51
    Author     : mauro
--%>




<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>
        <title>Login</title>
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
                <h2>
                    Benvenuto nella pagina di Login.<br> Per effettuare l'accesso inserisci le credenziali richieste.
                </h2>
                <c:choose>
                    <c:when test="${empty user}">
                    <div>
                        <form class="login_form" method="get" action="login.html">
                            <!-- Richiesta Username e Password -->
                            <label for="user">Username</label>
                            <input class="campoform" type="text" name ="user" id="user" value="Username"/>

                            <label for="psw">Password Utente</label>
                            <input class="campoform" type="Password" name ="psw" id="psw" value="nascosta"/>    

                            <c:if test="${not empty login_failed}">
                                <div class="errore">Verifica di aver inserito i dati correttamente.</div>
                            </c:if> 
                                
                            <!-- Pulsanti submit e reset -->
                            <input class="pulsanti" type="submit" name="Submit" value="Invia">
                            <input class="pulsanti" type="reset"  name="Reset" value="Cancella">
                        </form>
                    </div>
                    </c:when>
                    <c:otherwise>
                        <p>Benvenuto ${user.fname}</p>
                    </c:otherwise>
                </c:choose>
                        
              
            </div>
            <%@ include file="footer.jsp" %>
       </div>         
    </body>      
</html>