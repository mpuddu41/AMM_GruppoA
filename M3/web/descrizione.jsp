<%-- 
    Document   : descrizione
    Created on : 2-mag-2016, 11.08.12
    Author     : mauro
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>HomePage</title>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta name="author" content="Mauro P">
            <meta name="keywords" content="scanner, lettura ottica, scansione, acquisizione">
            <link href="style.css" rel="stylesheet" type="text/css" media="screen" />   
    </head>
    
    <body>
        <div id="homepage">
            <%@ include file="header.jsp" %>
            <%@ include file="sidebar.jsp" %>  

            <div class="divcenter">

                    <h2 id="scanner">I nostri Prodotti</h2>
                    <p>
                       Benvenuto! Nel nostro Store troverai prezzi convenienti sugli scanner più richiesti. Sono disponibili scanner per formato A3, A4, A6, 35mm, scanner per documenti, film, diapositive, biglietti da visita. 
                       Trattiamo solo marche di qualit&agrave; come: Canon, HP, Epson, Fujitsu, Iris... 
                       Per acquistare i nostri scanner online a prezzo vantaggioso lasciati consigliare dai nostri esperti. Puoi trovare i migliori prodotti a prezzi competitivi: da quelli piani, a quelli per diapositive a quelli a rullo, ecc.
                    </p>

                    <h2 id="acquisto">Acquista</h2>
                        <p>
                            Scegliere uno scanner, soprattutto per i meno esperti, non è mai una faccenda di poco conto. Non bisogna orientarsi in base all'estetica o allo spazio che potrebbe occupare sul tavolo di lavoro ma occorre innanzitutto tener conto del tipo di utilizzo che si intende fare. 
                            E' infatti questo a determinarne le caratteristiche. Esistono cinque tipologie di scanner.
                        </p>    

                        <h3 id="differenze">Differenze tra tipologie</h3>
                        <p>
                            Attualmente sul mercato si può scegliere tra cinque tipi di scanner: Scanner piani, scanner a tamburo, scanner a inserimento di fogli,scanner per pellicola e scanner a mano. La differenza tra un tipo e l'altro è determinata essenzialmente da come il documento viene letto e acquisito dal dispositivo. 
                            Nella scelta di uno scanner occorre tenere presente altre due caratteristiche: la velocit&agrave; di scansione e il formato di immagini che si intende acquisire. Uno scanner di altissima qualit&agrave; ma lento è infatti poco indicato per chi ha necessit&agrave; di acquisire molte immagini. 
                            Inoltre, ogni apparecchio prevedere uno specifico formato di documenti.
                        </p>

                        <h3 id="software">I software degli scanner</h3>
                        <p>    
                            Solitamente gli scanner vengono venduti completi di software, dei programmi da installare sul vostro computer che vi permettono, una volta acquisito il documento, di modificarlo e migliorarlo in base alle vostre esigenze. 
                            Esistono due tipi di software: software di scansione, che intervengono in fase di acquisizione, e software di fotoritocco, i quali migliorano notevolmente la qualit&agrave; del documento. I più noti sono: Adobe Photoshop, Corel Photo Paint o Jasc Paint Shop Pro. 
                            Gli scanner in commercio dispongono inoltre di tecnologia Twain, ossia un dispositivo che permette all'apparecchio di rapportarsi in maniera ottimale al software e di tecnologia OCR (Optical Character Recognition), un dispositivo che trasforma il documento in formato digitale in modo da essere conservato nel computer.
                        </p>

                        <h3 id="hardware">Compatibilit&agrave; hardware dello scanner</h3>
                        <p>
                            Prima di acquistare uno scanner occorre chiedersi se l'apparecchio è compatibile con il proprio personal computer. La ram deve essere molto ampia se si vogliono modificare immagini molto grandi. Il processore del pc deve essere molto veloce e l'hard disk abbastanza capiente.
                        </p>

                    <h2 id="usato">Supervaluta il tuo usato</h2>
                    <p> 
                        Fino al 31 Aprile 2016 il tuo usato vale di più! Con il nostro programma di supervalutazione, a fronte dell'acquisto di un scanner a lettura ottica, il tuo vecchio scanner di qualunque marca e modello sar&agrave; supervalutato fino a 400 euro.
                        Inoltre, acquistando anche uno Scanner per etichette aumentiamo la tua supervalutazione fino ad ulteriori 150 euro.
                        La nostra promozione ti aiuta anche ad essere in regola con le normative sulla rottamazione delle apparecchiature informatiche, le quali secondo la legge italiana e la normativa europea in materia di tutela dell'ambiente devono essere portati nei centri dedicati al riciclo dei materiali tecnologici.
                        La nostra azienda, attenta sia ai problemi della natura che alle tue esigenze, ti rende tutto molto semplice: ritiriamo il tuo usato e ti offriamo in più un rimborso.
                    </p>
            </div>
            <%@ include file="footer.jsp" %>
        </div>
    </body>  
</html>