---
date: 2015-04-01
img: netspresso.jpg
thumb: netspresso-thumb.jpg
alt: nETSpresso
category: Embarqué
description: "Machine à espresso connectée à un calendrier web (IoT)"
projectDate: Printemps 2015

---

## nETSpresso

---

![nETSpresso, la machine a espresso intelligente!]({{site.baseurl}}/img/portfolio/netspresso.jpg)

Le projet nETSpresso a commencé lors de la présentation du projet CafETSière aux portes ouvertes de l'ÉTS, à l'hiver 2014. Jérémie Voix, titulaire de la chaire de recherche industrielle en technologies intra-auriculaire Sonomax-ÉTS, a démontré beaucoup d'intérêt pour l'idée d'une machine café connectée. Propriétaire d'une machine espresso Mokita Café-Crème, Jérémie nous a proposé de réaliser un projet qui consisterait à connecter sa machine à un calendrier web. Ainsi est né le projet nETSpresso.

Ce projet a pris un peu plus d'un an à réaliser. La conception de l'interface entre la machine et le web consiste en de multiples étapes de conception mécaniques, électroniques, et logicielles.

Tout d'abord, une interface de communication a été réalisée pour permettre au calendrier web _**GroupOffice**_ de communiquer avec le microcontrôleur Arduino de la partie électronique. L'interface est un plugin PHP créé sur mesure et ajouté au code source de GroupOffice. Cette interface envoie des données sur une machine virtuelle, qui a le rôle d'intermédiaire entre le calendrier et l'Arduino.

Ensuite, la partie électronique a été réalisée. Elle consiste en un microcontrôleur _**Arduino Ethernet**_ ainsi que deux capteurs de courant, une sonde de température, un afficheur à rétroéclairage RGB, deux relais et une carte de contrôle pour joindre l'ensemble des capteurs et relais aux entrées et sorties de l'Arduino. (Voir la figure suivante)

![Les composantes électroniques de nETSpresso]({{site.baseurl}}/img/portfolio/netspresso-composantes.jpg)

Finalement, un boîtier a été conçu et imprimé à l'aide d'une imprimante 3D. Le boîtier contient l'ensemble des composantes électroniques, et fait office de pont pour connecter les capteurs et relais implantés dans la machine. D'ailleurs, les circuits électriques d'origine de la Mokita ont été modifiés pour permettre le contrôle des circuits de chauffe de manière automatique, tout en conservant l'interrupteur manuel pour une utilisation traditionnelle.

Le code du projet nETSpresso est disponible sur [Github <i class="fa fa-github"></i>](https://github.com/ClubCedille/nETSpresso)
