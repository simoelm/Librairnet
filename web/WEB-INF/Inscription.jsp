<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <style type="text/css">
             body{  
                
                background-image: url("pictures/lib3.jpg");
                background-size: cover;
            }
        </style>
        <title>Formulaire Inscription</title>
        <link rel="stylesheet" href="FilesCss/register.css">
    </head>
    <body>
        
        <div class="register">
            <h2>Enregistrement</h2>
            <form action="Controller" id="register" method="POST">

                
               
                
                <label>Nom       :</label><br>
                <input type="text" name="nom" value="<c:out value="${nom}" />" placeholder="Entrer votre Nom..."/><font color="red" >&nbsp;<c:out value="${Nom}"></c:out></font> <br><br>
                <label>Prenom    :</label><br>
                <input type="text" name="prenom" value="<c:out value="${prenom}" />" placeholder="Entrer votre Prenom..." /><font color="red">&nbsp;<c:out value="${Prenom}"></c:out></font><br><br>
                <label>Naissance :</label><br>
                <input type="text" name="naissance" value="<c:out value="${naissance}" />" placeholder="yyyy-mm-dd..." /><font color="red">&nbsp;<c:out value="${bir}"></c:out><br><br>
                <%--<label>Mobile :</label><br>
                <select id="ph">
                    <option>+33</option>
                    <option>+49</option>
                    <option>+39</option>
                </select>
                <input type="number" name="number" placeholder="Entrer votre numero..." /><br><br> --%>

                <label>Mail      :</label><br>
                <input type="email" name="mail" value="<c:out value="${mail}" />" placeholder="Entrer votre Email..." /><font color="red">&nbsp;<c:out value="${email}"></c:out><br><br>
                <label>Login     :</label><br>
                <input type="text" name="login" value="<c:out value="${login}" />" placeholder="Entrer votre Login..." /><font color="red">&nbsp;<c:out value="${user}"></c:out><br><br>
                <label>password  :</label><br>
                <input type="password" name="pwd" value="<c:out value="${pwd}" />" placeholder="Entrer votre Mot de passe..."  /><font color="red">&nbsp;<c:out value="${Pwd}"></c:out><br><br>
                <label>Confirmation  :</label><br>
                <input type="password" name="confirmation" placeholder="Confrimer votre password..." /><font color="red">&nbsp;<c:out value="${conf}"></c:out><br><br>
                
                <input type="radio" name="genre" id="male" value="m"/><span id="male">&nbsp;<font color="black"> Homme</font></span>&nbsp;&nbsp;
                <input type="radio" name="genre" id="femelle" value="f" /><span id="femelle">&nbsp; <font color="black">Femme</font></span>&nbsp;&nbsp;
                <input type="radio" name="genre" id="neuter" value="n"/><span id="neuter">&nbsp; <font color="black">Neutre</font></span><font color="red">&nbsp;<c:out value="${genre}"></c:out><br><br>
                <h4><c:out value="${Message}"></c:out></h4><br>
                <h4><c:out value="${Erreur}"></c:out></h4><br>
                <input type="submit" value="Enregistrer" name="regdoIt" />
                
            </form>

        </div>
               

</body>
</html>