---
layout: post
title: "Nouveau site"
author: riku
modified:
excerpt: Toute bonne histoire commence dans une taverne...
categories:
  - fr
tags: []
---

_Bonjour everybody_

Comme vous auriez pu le constater (tel qu'en lisant cet article durant votre jeu rechauffé de mahjong), le Club CEDILLE est arrivé en possession d'un site web! Génial!

> _Mais Riku, comment as-t-on réussis à installer tous ces machins trucs de serveur, de PHP et de CMS sans avoir à maîtriser les secrets arcanes de l'univers?_

Ah, mais c'est simple, cher Georges. _Je n'ai pas installé de serveur spécialisé._ Un de mes contraintes sur lequel je me suis basé pour construire le site s'agit de le rendre _agnostique_ aux serveurs, c'est à dire que peut importe notre _"machin truc arcane"_ que nous utilisons pour rouler notre _[Interblag](http://xkcd.com/181/)_ personnel, notre site web serait toujours bienvenue sans avoir à nous sacrifier un bras ou deux.

Pour les gens intéressés, je vais entrer dans les détails du site.

Le site du Club CEDILLE est généré par **Jekyll**, un générateur de sites statiques en Ruby. Cet outil est aussi utilisé par Github pour générer les pages de projet. Vu que nous n'avons pas de fonctionnement "dynamique" autre que certains posts de blogue occasionnel, on n'as pas besoin d'aller aussi loin que Drupal ou Wordpress. 

À la place, on peut simplement avoir un site avec un squelette qui resemble à

{% assign leftcurly = '{' %}
{% assign rightcurly = '}' %}
{% highlight HTML %}
<div class="row">
    {{ leftcurly }}% for hash in site.data.[page.lang].members.people %{{ rightcurly }}
    {{ leftcurly }}% assign member = hash[1] %{{ rightcurly }}
    <div class="{{ leftcurly }}% if forloop.length < 3 %{{ rightcurly }}col-sm-{{ leftcurly }}{{ leftcurly }}12 | divided_by: forloop.length{{ rightcurly }}{{ rightcurly }} {{ leftcurly }}% else %{{ rightcurly }}col-sm-4{{ leftcurly }}% endif %{{ rightcurly }}">
        <div class="team-member">
        {{ leftcurly }}% if member.pic %{{ rightcurly }}
            <img src="{{ leftcurly }}{{ leftcurly }}site.baseurl{{ rightcurly }}{{ rightcurly }}/img/team/{{ leftcurly }}{{ leftcurly }} member.pic {{ rightcurly }}{{ rightcurly }}.jpg" class="img-responsive img-circle" alt="{{ leftcurly }}{{ leftcurly }}member.nam{{ rightcurly }}{{ rightcurly }}">
        {{ leftcurly }}% else %{{ rightcurly }}
            <img src="{{ leftcurly }}{{ leftcurly }}member.email | to_gravatar{{ rightcurly }}{{ rightcurly }}?s=225&d=mm" alt="{{ leftcurly }}{{ leftcurly }}member.name{{ rightcurly }}{{ rightcurly }}">
        {{ leftcurly }}% endif %{{ rightcurly }}
            <h4>{{ leftcurly }}{{ leftcurly }} member.name {{ rightcurly }}{{ rightcurly }}</h4>
            <p class="text-muted">{{ leftcurly }}{{ leftcurly }} member.position {{ rightcurly }}{{ rightcurly }}</p>
            <ul class="list-inline social-buttons">
                {{ leftcurly }}% for network in member.social %{{ rightcurly }}
                <li><a href="{{ leftcurly }}{{ leftcurly }} network.url {{ rightcurly }}{{ rightcurly }}"><i class="fa fa-{{ leftcurly }}{{ leftcurly }} network.title {{ rightcurly }}{{ rightcurly }}"></i></a>
                {{ leftcurly }}% endfor %{{ rightcurly }}

            </ul>
        </div>
    </div>
    {{ leftcurly }}% endfor %{{ rightcurly }}
</div>
{% endhighlight %}

avec des données qui resemblent à

{% highlight yaml %}
people:
  mosieurlaurin:
    name: Patrick Laurin
    email: patrick.laurin.3@ens.etsmtl.ca
    position: Capitaine
    pic: mosieurlaurin
    social:
      - title: facebook
        url: #

  samuel:
    name: Samuel Cardinal
    email: samdidos@gmail.com
    position: Chef d'équipe systèmes embarqués
    pic: samuel
    social:
      - title: google-plus
        url: https://plus.google.com/u/0/116303569391574948806
{% endhighlight %}

---

Long story short, le site est finalement prêt pour les yeux du public. Si jamais vous êtes intéressé à voir le code source, vous pouvez y accéder ici: [https://github.com/ClubCedille/clubcedille.github.io](https://github.com/ClubCedille/clubcedille.github.io)
