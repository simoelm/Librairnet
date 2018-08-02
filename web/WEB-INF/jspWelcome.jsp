<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="FilesCss/welcome.css">
        <title>Menu</title>
        <style type="text/css">
            body{  

                background-image: url("pictures/lib4.jpg");
                background-size: cover;
            }
        </style>
    </head>
    <body>
        <div class="tete"><h1>Bonjour ${ client.cliNom } ${ client.cliPrenom }</h1></div>
        <div id="cont1" >



            <ul>
                <li><a href>Menu</a>
                    <ul>
                        <li>
                            <a href>Compte</a>
                        </li>
                        <li>Adresses</li>
                        <li>Commande</li>
                        <li><a href='Controller?section=login&deconnect'>Déconnecter</a></li>
                    </ul>

                </li>

            </ul>
        
        <div id="conteneur">
            <div class="element">
                <form action="Controller" id="register" method="POST">
                <label>Numero client :</label><br>
                <input type="text" name="num" value="<c:out value="${client.cliId}" />" disabled="disabled" /><c:set var="cliId" value="${client.cliId}" scope="session" /><br>
                <label>genre     :</label><br>
                <input type="text" name="genre" value="<c:out value="${client.cliGenre}" />" /><font color="red">&nbsp;<c:out value="${gender}"></c:out></font><br><br>
                <label>Nom       :</label><br>
                <input type="text" name="nom" value="<c:out value="${client.cliNom}" />" /><font color="red" >&nbsp;<c:out value="${Nom}"></c:out></font><br><br>
                <label>Prenom    :</label><br>
                <input type="text" name="prenom" value="<c:out value="${client.cliPrenom}" />" /><font color="red">&nbsp;<c:out value="${Prenom}"></c:out></font><br><br>
                <label>Naissance :</label><br>
                <input type="text" name="naissance" value="<c:out value="${client.cliNaissance}" />" /><font color="red">&nbsp;<c:out value="${bir}"></c:out></font><br><br>
                

                <label>Mail      :</label><br>
                <input type="email" name="mail" value="<c:out value="${client.cliMail}" />" /><font color="red">&nbsp;<c:out value="${email}"></c:out></font><br><br>
                <label>Login     :</label><br>
                <input type="text" name="login" value="<c:out value="${client.cliLogin}" />" disabled="disabled" /><c:set var="clilogin" value="${client.cliLogin}" scope="session" /><br><br>
                <label>password  :</label><br>
                <input type="password" name="pwd" value="<c:out value="${client.cliPwd}" />" /><font color="red">&nbsp;<c:out value="${Pwd}"></c:out><br><br>
                <input type="submit" value="Modifier" name="moddoIt" />&nbsp;<font color="red" style="text-align: center;size:40%">${ok}</font>&nbsp;<c:out value="${Erreur}"></c:out><br>
                
            </form>
                
                
                </div>
            <%--<div class="element">Elément 2</div>
            <div class="element">Elément 3</div>--%>
        </div>
            </div>

            

    </body>
</html>
