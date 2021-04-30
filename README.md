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
  * [Composants designés : symboles et empreintes](#QuatriemeSection1)
  * [Schématique](#QuatriemeSection2)
  * [Placement des composants](#QuatriemeSection3)
  * [Visualisation 3D](#QuatriemeSection4)
  * [Réalisation du PCB](#QuatriemeSection5)
  * [Perçage et soudure](#QuatriemeSection6)
* [Datasheet](#CinquiemeSection)


## Protocole d'utilisation du capteur de contrainte <a id="PremiereSection"></a>

*Mettre une photo du BreadBord (ou du PCB s'il fonctionne) montrant : le capteur, l'écran, le module BlueTooth*

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

Grâce au logiciel *MIT App Inventor*, nous avons pu coder une application très simple, permettant d'afficher les tension et résistance délivrées par le capteur sur un graphique. Elle permet aussi d'assurer la connexion bluetooth entre le module Arduino et notre capteur. Voilà un screen du code



## Fabrication du PCB shield <a id="QuatriemeSection"></a>

Pour fabriquer notre PCB shield, nous avons d'abord dû le designer à l'aide du logiciel *KICAD*. 
Le PCB sera par la suite branché sur un microcontrôleur Arduino Uno, du même type que celui que nous avions utilisé avec notre BreadBord. Ce PCB contient également l'amplificateur transimpédance, le module Bluetooth, et l'écran OLED.

### Composants designés : symboles et empreintes <a id="QuatriemeSection1"></a>

* **Ecranc OLED**
*ajouter image*

* **Module Bluetooth**
*ajouter image*

* **Amplificateur LT1050** (*empreinte présente par défaut dans le logiciel*)
*ajouter image*

### Schématique <a id="QuatriemeSection2"></a>

Une fois les empreintes créées, nous avons pu réaliser le Eeschema de notre shield. 
En haut à droite sont représentées les broches de la carte Arduino. Au centre du PCB, on trouve l'amplificateur transimpédance (permettant de traiter les données envoyées par le capteur, c'est-à-dire la variation de résistance), le module Bluetooth et l'écran OLED. 

*mettre image eeschema*

### Placement des composants <a id="QuatriemeSection3"></a>

Ensuite, nous avons pu placer les composants sur notre PCB afin de les répartir au mieux et d'optimiser les branchements.

*mettre image placement des composants (fond noir)*

### Visualisation 3D <a id="QuatriemeSection4"></a>

*mettre image visu 3D*

### Réalisation du PCB <a id="QuatriemeSection5"></a>

Le PCB a été réalisé au sein du génie physique, avec l'aide de Catherine Crouzet. Le PCB est réalisé sur une plaque d'epoxy possédant une fine couche de cuivre (environ 60µm).
La silouhette du PCB (pris depuis KICAD) est d'abord imprimée sur du papier calque. Ensuite, le PCB est insolé aux UV pendant 5 minutes, avec la silouhette par-dessus. Puis à l'aide d'un révélateur, on retire la partie non insolée. 
La plaquette d'epoxy est ensuite déposée dans un bain de perchlorure de fer pour la gravure, pendant environ 5 minutes également. Le cuivre non protégé par la résine a été retiré, ce qui permet d'obtenir le PCB modélisé. 
Enfin, on applique de l'acétone sur la plaquette afin d'ôter les dernières traces de résine résiduelle.

### Perçage et soudure <a id="QuatriemeSection6"></a>

Nous avons ensuite percé notre PCB aux endroits où des composants devaient être insérés. Le diamètre des trous est de 0.8mm pour l'AOP et autres composants (résistances et capacités) et de 1mm pour les connecteurs de l'Arduino et des headers des différents modules (bluetooth, oled, etc).

*mettre photo du PCB (dessus et dessous)*

## Datasheet <a id="CinquiemeSection"></a>
