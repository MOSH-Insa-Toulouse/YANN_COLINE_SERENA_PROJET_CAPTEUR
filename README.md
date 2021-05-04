# YANN_COLINE_SERENA_PROJET_CAPTEUR

[![forthebadge](https://forthebadge.com/images/badges/made-with-crayons.svg)](https://forthebadge.com)

Ce projet s'inscrit dans l'UF "*Du capteur au banc de Test*" de l'INSA Toulouse, 4ème année Génie Physique. 
Du **design** jusqu'à la **conception** en passant par le **codage**, toutes les étapes nécessaires à l'élaboration d'un capteur de déformation / jauge de contrainte à base de graphite sont détaillées dans ce dossier.

## Récapitulatif ; qu'avons-nous fait dans les grandes lignes ?

Tout d'abord, nous avons effectué nos premiers branchements et testé notre code sur notre module Arduino, contenant un amplificateur transimpédance, un écran OLED ainsi qu'un module Bluetooth. Le capteur, préalablement "colorié" avec divers types de graphite (9B, HB, 6B, ect.), permet au module d'afficher sur l'écran une résistance variable en fonction de sa déformation.
Nous avons ensuite utilisé le logiciel *MIT App Inventor* afin de réaliser une application smartphone APK, capable de lire la résistance ressentie par le capteur et de l'afficher sur un graphique à l'aide d'un module Bluetooth.
Ensuite, nous avons réalisé le design de notre shield à l'aide du logiciel *KICAD* et l'avons construit (perçage, soudage des composants, etc.) nous-même en salle de TP.
Enfin, nous avons pu effectuer différents tests sur ce nouveau PCB et caractériser la résistance du capteur en fonction de sa déformation.


## Sommaire 

* [Protocole d'utilisation du capteur de contrainte](#PremiereSection) 
* [Code Arduino](#DeuxiemeSection)
* [Application smartphone APK](#TroisiemeSection)
* [Fabrication du shield](#QuatriemeSection)
  * [Composants designés : empreintes](#QuatriemeSection1)
  * [Schématique](#QuatriemeSection2)
  * [Placement des composants](#QuatriemeSection3)
  * [Visualisation 3D](#QuatriemeSection4)
  * [Réalisation du PCB](#QuatriemeSection5)
  * [Perçage et soudure](#QuatriemeSection6)
* [Banc de test](#SixiemeSection)
  * [Résultats obtenus](#SixiemeSection1)
  * [Pistes d'améliorations](#SixiemeSection2)
* [Datasheet](#CinquiemeSection)



## Protocole d'utilisation du capteur de contrainte <a id="PremiereSection"></a>

<img src="https://user-images.githubusercontent.com/78104030/116739955-9e6d2700-a9f4-11eb-8f4c-f089d9e5cb77.jpg" width="350" height="430">

Tout d'abord, il faut brancher le module Arduino au port USB d'un ordinateur afin de le mettre sous tension. Le module Bluetooth devrait afficher un voyant rouge, clignotant à une fréquence assez rapide.

Pour commencer, il faut télécharger l'application *"MIT AI2 Companion"*. 
Ensuite, pour télécharger l'application que nous avons codée, il suffit de cliquer sur "scan QR Code" après ouverture de cette première application et de scanner le QR Code suivant : *mettre le QR Code de téléchargement*.

Une fois notre application **Projet_Capteur** téléchargée, l'interface vue est la suivante : 

<img src="https://user-images.githubusercontent.com/78104030/112719428-46c13480-8ef9-11eb-9b36-b447899ebbba.jpg" width="220" height="430">

Voilà la procédure à suivre afin de commencer à relever les valeurs de la résistance du capteur :

* Cliquer sur **Appareils visibles**, en haut à gauche de l'écran
* Sélectionner le module Bluetooth suivant : 
> 98:D3:51:FE:21:CD: HC-05 
(une fois la connexion établie, le voyant du Bluetooth doit clignoter de manière moins fréquente)
* Cliquer sur le bouton **ON** pour commencer à acquérir des valeurs
* A tout moment, cliquez sur **OFF** pour stopper l'acquisition.


## Code Arduino <a id="DeuxiemeSection"></a>

Le code arduino permet : 

* De récupérer la valeur de tension renvoyée par le capteur de graphène

<img src="https://user-images.githubusercontent.com/78104030/116733569-8c878600-a9ec-11eb-8ad4-6e947fba7407.jpg" width="290" height="430">

* De l'afficher sur un écran OLED 

<img src="https://user-images.githubusercontent.com/78104030/116733682-ae810880-a9ec-11eb-8fca-40da23c3aa00.jpg" width="290" height="430">

* D'assurer la connexion bluetooth entre le module Arduino et l'application smartphone APK

<img src="https://user-images.githubusercontent.com/78104030/116733768-cbb5d700-a9ec-11eb-8f72-42d47b1c3d24.jpg" width="430" height="290">


## Application smartphone APK <a id="TroisiemeSection"></a>

Grâce au logiciel *MIT App Inventor*, nous avons pu coder une application très simple, permettant d'afficher les tension et résistance délivrées par le capteur, une fois la résistance convertie. Ensuite, cette dernière est affichée sur un graphique. Elle permet aussi d'assurer la connexion bluetooth entre le module Arduino et notre capteur.
(Pour voir comment connecter le module bluetooth à l'application, se référer à la partie _Protocole d'utilisation du capteur de contrainte_). 
L'application est codée de telle sorte à correspondre au code Arduino, afin que les valeurs que le code et l'application s'envoient mutuellement (via le module Bluetooth) corrèlent. 
En appuyant sur **ON**, l'acquisition démarre et le graphique correspondant à la valeur de la résistance mesurée par le capteur commence à se tracer. A tout moment, il est possible d'appuyer sur **OFF** pour stopper l'acquisition.

<img width="279" alt="APK_screen" src="https://user-images.githubusercontent.com/78104030/116856307-3c324300-abfb-11eb-8ec9-78d39b267cbd.png">

## Fabrication du PCB shield <a id="QuatriemeSection"></a>

Pour fabriquer notre PCB shield, nous avons d'abord dû le designer à l'aide du logiciel *KICAD*. 
Le PCB sera par la suite branché sur un microcontrôleur Arduino Uno, du même type que celui que nous avions utilisé avec notre BreadBord. Ce PCB contient également l'amplificateur transimpédance, le module Bluetooth, et l'écran OLED.

### Composants designés : empreintes <a id="QuatriemeSection1"></a>

* **Ecranc OLED**

<img src="https://user-images.githubusercontent.com/78104030/116734178-61e9fd00-a9ed-11eb-8a02-45e02be41358.png" width="450" height="290">

* **Module Bluetooth**

<img src="https://user-images.githubusercontent.com/78104030/116734487-9a89d680-a9ed-11eb-97f0-5b48eb89c6c6.png" width="450" height="290">

* **Amplificateur LT1050** (*empreinte présente par défaut dans le logiciel*)

<img src="https://user-images.githubusercontent.com/78104030/116734563-b1302d80-a9ed-11eb-83d0-72dc83b904a4.png" width="450" height="350"> 




### Schématique <a id="QuatriemeSection2"></a>

Une fois les empreintes créées, nous avons pu réaliser le Eeschema de notre shield. 
En haut à droite sont représentées les broches de la carte Arduino. Au centre du PCB, on trouve l'amplificateur transimpédance (permettant de traiter les données envoyées par le capteur, c'est-à-dire la variation de résistance), le module Bluetooth et l'écran OLED. 

<img src="https://user-images.githubusercontent.com/78104030/116734775-f18fab80-a9ed-11eb-9882-f38db9a10799.png" width="450" height="350">


### Placement des composants <a id="QuatriemeSection3"></a>

Ensuite, nous avons pu placer les composants sur notre PCB afin de les répartir au mieux et d'optimiser les branchements.

<img src="https://user-images.githubusercontent.com/78104030/116734858-0ec47a00-a9ee-11eb-881e-695a98af9c4d.png" width="450" height="350">


### Visualisation 3D <a id="QuatriemeSection4"></a>

<img src="https://user-images.githubusercontent.com/78104030/116734905-200d8680-a9ee-11eb-8326-817ea28abe00.png" width="450" height="320">


### Réalisation du PCB <a id="QuatriemeSection5"></a>

Le PCB a été réalisé au sein du génie physique, avec l'aide de Catherine Crouzet. Le PCB est réalisé sur une plaque d'epoxy possédant une fine couche de cuivre (environ 60µm).
La silouhette du PCB (pris depuis KICAD) est d'abord imprimée sur du papier calque. Ensuite, le PCB est insolé aux UV pendant 5 minutes, avec la silouhette par-dessus. Puis à l'aide d'un révélateur, on retire la partie non insolée. 
La plaquette d'epoxy est ensuite déposée dans un bain de perchlorure de fer pour la gravure, pendant environ 5 minutes également. Le cuivre non protégé par la résine a été retiré, ce qui permet d'obtenir le PCB modélisé. 
Enfin, on applique de l'acétone sur la plaquette afin d'ôter les dernières traces de résine résiduelle.

### Perçage et soudure <a id="QuatriemeSection6"></a>

Nous avons ensuite percé notre PCB aux endroits où des composants devaient être insérés. Le diamètre des trous est de 0.8mm pour l'AOP et autres composants (résistances et capacités) et de 1mm pour les connecteurs de l'Arduino et des headers des différents modules (bluetooth, oled, etc).

<img src="https://user-images.githubusercontent.com/78104030/116735098-5c40e700-a9ee-11eb-9ba0-b5eef3b30173.jpg" width="320" height="450">

<img src="https://user-images.githubusercontent.com/78104030/116735109-5ea34100-a9ee-11eb-8ac1-f25e8ea18096.jpg" width="320" height="450">

## Banc de test <a id="SixiemeSection"></a>

Pour réaliser notre banc de test, nous avons utilisé le banc de test fourni par le Génie Physique : 7 demi-cercles en plastique, dont les diamètres varient de 1 cm à 2,5cm.

<img width="252" alt="BancDeTest" src="https://user-images.githubusercontent.com/78104030/116738001-2dc50b00-a9f2-11eb-9315-dd29a9fe3ac9.png">

Pour différentes dureté de graphite (9B, 6B, 2H, etc), et donc pour différents capteurs, nous avons appuyé le capteur de graphène sur chacun des demi-cercles (afin qu'il en épouse la forme). Chaque rayon est donc associé à une déformation maximale applicable au capteur. Ensuite, dans les différents cas, nous avons relevé les valeurs de résistances affichées par l'application smartphone APK.

La déformation pouvant être réalisée en tension ou en compression, nous avons choisi de travailler sur une déformation en tension (le capteur est posé de telle sorte à ce que le graphène ne soit pas en contact avec le demi-cercle). 

### Résultats obtenus <a id="SixiemeSection1"></a>

<img width="1309" alt="Graphique jauge de contrainte" src="https://user-images.githubusercontent.com/78104030/116738534-dd9a7880-a9f2-11eb-9f43-509e2842b4fa.png">

Dans tous les cas, on peut noter que quand la déflection du capteur augmente, la variation relative de résistance augmente elle aussi. Cela parait cohérent avec notre capteur ; en effet, plus le capteur est déformé, plus les atomes de carbone qui le constituent sont éloignés les uns des autres. Ainsi, le courant trouve moins facilement son chemin dans le capteur, et cela implque une augmentation de la résistance. 

### Sources d'erreurs et pistes d'améliorations <a id="SixiemeSection2"></a>

Pour le graphène 6B, le premier point semble un peu aberrant ; plusieurs facteurs peuvent expliquer cela. 

1. Malgré une même dureté appliquée sur certains capteurs, les résultats observés variaient beaucoup ; chaque capteur, en fonction de la quantité de graphène appliquée (qui n'est jamais exactement la même), était unique. Cela ne facilitait donc pas la fiabilité des résultats.
2. Le banc de test utilisé était légèrement destructif pour le capteur. Un fois les 7 mesures effectuées, le capteur ne pouvait plus être utilisé correctement, c'est-à-dire qu'il ne pouvait pas afficher deux fois les mêmes valeurs. En considérant que l'on est capable d'appliquer exactement la même quantité de graphène sur chaque capteurs, nous pourrions envisager un protocole de mesure dans lequel nous utilisons une unique fois un capteur pour chaque mesure de résistance afin de venir supprimer ce défaut "destructif".
3. La variation de résistance n'est pas proportionnelle au type de crayon utilisé pour réaliser le capteur ; en effet, on pourrait s'attendre à ce que la variation de résistance devienne de plus en plus importante à mesure que la dureté du graphène augmente. Néanmoins, ça n'est pas le cas ici. Encore une fois, cela peut être dû à un effet rebond de la cause numéro 1 (nous n'avons pas appliqué exactement la même quantité de graphène sur chacun des capteurs). Il serait intéressant de tracer plusieurs fois la courbe de variation en fonction de la déformation d'un même type de crayon, mais en utilisant des quantité de graphène différentes sur chaque capteur. Ainsi, il serait possible de réaliser une moyenne des courbes, ce qui limiterait les erreurs dues aux variations des quantités de graphène utilisées d'un capteur à l'autre.


## Datasheet <a id="CinquiemeSection"></a>

- La datasheet est dispo [ici](https://github.com/MOSH-Insa-Toulouse/YANN_COLINE_SERENA_PROJET_CAPTEUR/blob/main/Datasheet_projet_capteur.pdf)
