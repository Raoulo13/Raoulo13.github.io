<!DOCTYPE html>
<html lang="ro">
    <head>
        <title>Anunturi gratuite</title>
        <link rel="stylesheet" href="http://localhost/resurse/style.css">
    </head>
    <body>
        <?php require_once('template-parts/header.html'); //Includ partea de header (logo site si meniu cu butoane) ?>
            
           

            <?php

            $url = $_GET['url']; //Preiau parametrul GET url, conform Rewrite htaccess
            $url_parts = explode("/",$url); //Sparg parametrul url in bucati dupa slash-uri
            $url_parts_count = count($url_parts); //Numar bucatile de url pentru a vedea adancimea paginii cerute

            if ($url == ''){
                //Suntem pe homepage (Adancime 1)
                echo '<div class="content">';
                require_once('template-parts/homepage-static-content.html');     
                require_once('template-parts/multi-anunt-content.php');
                echo '</div>';
                require_once('template-parts/footer.html');

            } else if($url_parts_count == 1) {
                //Suntem pe pagina de categorie anunt (Adancime 2)  
                echo '<div class="content">';         
                require_once('template-parts/multi-anunt-content.php');
                echo '</div>';
                require_once('template-parts/footer.html');

            } else if ($url_parts_count == 2){
                //Suntem pe pagina de tip anun (Adancime 3)  
                echo '<div class="content">'; 
                require_once('template-parts/multi-anunt-content.php');
                echo '</div>';
                require_once('template-parts/footer.html');


            } else if ($url_parts_count == 3){
                //Suntem pe pagina de anunt (Adancime 4)  
                echo '<div class="content">'; 
                require_once('template-parts/single-anunt-content.php');
                echo '</div>';
                require_once('template-parts/footer.html');


            }

            ?>
    </body>
</html>