# README — Les trois méthodes de navigation en Flutter

# Application : Medicare

## Introduction

Dans ce projet, trois approches de navigation Flutter ont été étudiées et implémentées afin de comprendre leur fonctionnement, leurs avantages et leurs limites.

Les trois méthodes sont :

* Navigation 1.0 avec `Navigator.push()`
* Navigation 1.0 avec les routes nommées (`Navigator.pushNamed()`)
* Navigation 2.0 avec **GoRouter**

Chaque implémentation est isolée dans le projet afin de pouvoir être activée ou désactivée indépendamment lors des démonstrations.

---

# 1. Navigation 1.0 : Navigation directe

## Principe

La Navigation 1.0 est une navigation **impérative**.

Cela signifie que chaque écran décide explicitement vers quel autre écran il souhaite naviguer.

L'application fonctionne grâce à une **pile (Stack)** de pages.

Lorsqu'une nouvelle page est ouverte, elle est ajoutée au sommet de la pile.

Lorsque l'utilisateur revient en arrière, la dernière page est retirée de cette pile.

Schéma :

```
Home
```

↓

```
Navigator.push()
```

↓

```
Profile
---------
Home
```

Retour :

```
Navigator.pop()
```

↓

```
Home
```

---

## Exemple

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (_) => LoginScreen(),
  ),
);
```

Retour :

```dart
Navigator.pop(context);
```

---

## Avantages

* Très simple à comprendre
* Facile à mettre en place
* Adaptée aux petites applications
* Aucune configuration préalable

---

## Inconvénients

* La navigation est dispersée dans plusieurs fichiers
* Peu adaptée aux grandes applications
* Gestion difficile des URLs
* Pas adaptée au Flutter Web

---

# 2. Navigation 1.0 : Routes nommées

## Principe

Les routes nommées restent basées sur la Navigation 1.0.

La différence est que les routes sont déclarées une seule fois dans le `MaterialApp`.

Chaque écran navigue ensuite uniquement grâce au nom de la route.

---

## Déclaration

```dart
MaterialApp(

  initialRoute: '/',

  routes: {

    '/': (context) => OnboardingScreen(),

    '/login': (context) => LoginScreen(),

    '/signup': (context) => SignUpScreen(),

    '/home': (context) => HomePage(),

  },

);
```

---

## Navigation

```dart
Navigator.pushNamed(
  context,
  '/login',
);
```

Retour :

```dart
Navigator.pop(context);
```

---

## Avantages

* Les routes sont centralisées
* Le code est plus propre
* Navigation plus facile à maintenir
* Plus simple lorsque le projet grandit

---

## Inconvénients

* Toujours basée sur Navigator
* Les routes sont des chaînes de caractères (String)
* Sensible aux fautes de frappe
* Pas idéale pour Flutter Web
* Flutter ne la recommande plus pour les nouveaux projets

---

# 3. Navigation 2.0 : GoRouter

## Principe

GoRouter repose sur la Navigation 2.0.

Contrairement à Navigator, GoRouter raisonne en termes de **chemins (URL)**.

Exemple :

```
/
```

↓

```
/login
```

↓

```
/home
```

Chaque chemin correspond à une page.

---

## Déclaration

```dart
final router = GoRouter(

  initialLocation: '/',

  routes: [

    GoRoute(

      path: '/',

      builder: (context, state) => OnboardingScreen(),

    ),

    GoRoute(

      path: '/login',

      builder: (context, state) => LoginScreen(),

    ),

    GoRoute(

      path: '/home',

      builder: (context, state) => HomePage(),

    ),

  ],

);
```

Puis :

```dart
MaterialApp.router(

  routerConfig: router,

);
```

---

## Navigation

Changer complètement de page :

```dart
context.go('/login');
```

Ajouter une page sur la pile :

```dart
context.push('/login');
```

Retour :

```dart
context.pop();
```

---

## Différence entre go() et push()

### go()

Remplace la navigation actuelle.

```
Home

↓

Login
```

Retour impossible.

---

### push()

Ajoute une page.

```
Login
--------
Home
```

Retour possible avec :

```dart
context.pop();
```

---

## Avantages

* Basé sur Navigation 2.0
* Très adapté aux grandes applications
* Gestion automatique des URLs
* Compatible Flutter Web
* Support du Deep Linking
* Navigation centralisée
* Plus moderne
* Très utilisé en entreprise

---

## Inconvénients

* Plus difficile à apprendre
* Nécessite une configuration initiale
* Demande de comprendre Navigation 2.0


# Différence entre Navigation 1.0 et Navigation 2.0

## Navigation 1.0

On donne un ordre au Navigator.

Exemple :

```dart
Navigator.push(...)
```

ou

```dart
Navigator.pushNamed(...)
```

Le développeur dit explicitement :

> "Va vers cette page."

La navigation est **impérative**.

---

## Navigation 2.0

On ne demande plus directement au Navigator de changer de page.

On indique simplement l'état souhaité.

Exemple :

```dart
context.go('/home');
```

ou

```dart
context.push('/profile');
```

GoRouter met automatiquement à jour l'état de navigation.

La navigation est **déclarative**.

---

# Pourquoi GoRouter ?

GoRouter a été conçu pour résoudre les limites de la Navigation 1.0.

Il offre :

* une meilleure organisation du projet ;
* la gestion des URL sur Flutter Web ;
* le Deep Linking ;
* une navigation centralisée ;
* une meilleure évolutivité.

C'est aujourd'hui la solution recommandée pour les nouveaux projets Flutter.

---

# Conclusion

Au cours de ce sprint, les trois méthodes de navigation ont été implémentées afin de comprendre leur fonctionnement.

* **Navigator.push()** est la méthode la plus simple pour apprendre Flutter.
* **Les routes nommées** améliorent l'organisation en centralisant les routes, mais restent limitées.
* **GoRouter** est la solution moderne, basée sur la Navigation 2.0. Bien qu'un peu plus complexe à mettre en place, elle offre une architecture plus robuste, plus maintenable et adaptée aux applications professionnelles.

L'implémentation des trois approches dans ce projet permet de comparer leurs différences et de choisir la plus adaptée selon le contexte de développement.
