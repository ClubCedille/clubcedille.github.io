---
date: 2014-07-17
img: cafetsiere.jpg
thumb: cafetsiere-thumb.jpg
alt: CafETSiere
category: Embarqué
description: "Projet conceptuel: Une simple cafetière contrôlée par un serveur web installé sur un Raspberry-Pi"
projectDate: Automne 2013

---

## CafETSière

---

![La cafétière et sont interface]({{site.baseurl}}/img/portfolio/cafetsiere.jpg)

Suite à la fondation du club, nous avons réalisé un premier petit projet conceptuel pour démontrer les possibilités du logiciel libre.

Ce petit projet d'apparence simpliste nécessite la modification de l'alimentation électrique de la machine à café, l'intégration d'un relais de contrôle, la programmation de bas niveau du système de contrôle, une interface web, et un protocole de communication entre l'interface web et le système de contrôle.

L'interface web a été créé à l'aide de node.js, et le système de contrôle, programmé en python. 

Nous avons présenté le projet aux portes ouvertes de l'ÉTS à l'automne 2013. Contrairement aux attentes, les visiteurs ont démontré de l'intérêt non pas seulement pour l'odeur du café, mais pour notre prototype aussi. La simplicité d'un clic de souris pour déguster un café laisse place à l'inspiration et la créativité pour la réalisation d'un système de plus grande envergure.

D'ailleurs, le projet "cafETSiere" a donné place à un nouveau projet nommé "nETSpresso". Ce projet présente la conception et la réalisation d'un système de contrôle automatisé de la préchauffe d'une machine à espresso. La mise en marche de de la préchauffe est assuré par un calendrier web (GroupOffice). Le projet a nécessité la conception d'un boitier sur mesure (impression 3D), en passant par la conception électronique et du code de bas niveau à l'aide d'un Arduino Ethernet avec PoE, et la création d'un module PHP sous GroupOffice, pour la communication en réseau entre l'interface web et l'Arduino. Ce projet a été possible grace à Jérémie Voix, ing., Ph.D., titulaire de la chaire de recherche industrielle en technologies intra-auriculaires Sonomax – ÉTS (CRITIAS). Un grand merci de la part de toute l'équipe de Cedille!

Le code du projet cafETSière est disponible sur github, [visiter son Github <i class="fa fa-github"></i>](https://github.com/ClubCedille/cafetsiere)
