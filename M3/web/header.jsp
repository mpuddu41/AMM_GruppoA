<div id="header">
    <!-- Predispongo la navbar per il collegamento con le altre pagine -->
    <nav>
        <a href="descrizione.html">HomePage</a>
        <a href="cliente.html">Cliente</a>
        <a href="venditore.html">Venditore</a>
        <c:if test="${empty loggedBuyer && empty loggedVendor}">
            <a href="login.html">Login</a>
        </c:if>
        <c:if test="${not empty loggedBuyer || not empty loggedVendor}">
            <a href="login.html?logout=true">Logout</a>
        </c:if>
    </nav>
                
    <h1>EasyBuy, il tuo e-commerce di fiducia. </h1>
</div>