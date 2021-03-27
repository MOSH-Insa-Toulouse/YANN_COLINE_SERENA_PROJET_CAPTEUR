# YANN_COLINE_SERENA_PROJET_CAPTEUR
---

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
* [Code Arduino (sur la BreadBord)](#DeuxiemeSection)
* [Application APK](#TroisiemeSection)
* [Fabrication du shield](#QuatriemeSection)
* [Datasheet](#CinquiemeSection)


## Protocole d'utilisation du capteur de contrainte <a id="PremiereSection"></a>

*Mettre une photo du BreadBord (ou du PCB s'il fonctionne) montrant : le capteur, l'écran, le module BlueTooth*

Tout d'abord, il faut brancher le module Arduino au port USB d'un ordinateur afin de le mettre sous tension. Le module Bluetooth devrait afficher un voyant rouge, clignotant à une fréquence assez rapide.

Pour commencer, il faut télécharger l'application *"MIT AI2 Companion"*. 
Ensuite, pour télécharger l'application que nous avons codée, il suffit de cliquer sur "scan QR Code" après ouverture de cette première application et de scanner le QR Code suivant : *mettre le QR Code de téléchargement*.

Une fois notre application **Projet_Capteur** téléchargée, l'interface vue est la suivante : 

![Screen_ecran_appli](https://user-images.githubusercontent.com/78104030/112719365-f3e77d00-8ef8-11eb-9493-e8268b904ff3.jpg)

Voilà la procédure à suivre afin de commencer à relever les valeurs de la résistance du capteur :

* Cliquer sur **Appareils visibles**, en haut à gauche de l'écran
* Sélectionner le module Bluetooth suivant : 98:D3:51:FE:21:CD: HC-05 (une fois la connexion établie, le voyant du Bluetooth doit clignoter de manière moins fréquente)
* Cliquer sur le bouton **ON** pour commencer à acquérir des valeurs
* A tout moment, cliquez sur **OFF** pour stopper l'acquisition.


## Code Arduino (sur la BreadBord) <a id="DeuxiemeSection"></a>



## Application APK <a id="TroisiemeSection"></a>



## Fabrication du shield <a id="QuatriemeSection"></a>

Pour fabriquer notre shield, nous avons d'abord dû le designer à l'aide du logiciel *KICAD*. 


## Datasheet <a id="CinquiemeSection"></a>
