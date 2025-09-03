
# cours_flutter_m2

Application Flutter de démonstration pour le cours M2

## Description

Cette application Flutter présente plusieurs exemples d'interfaces et de widgets courants, ainsi que des fonctionnalités de calcul simple. Elle est conçue pour illustrer les bases du développement Flutter dans le cadre d'un cours (Master 2).

## Fonctionnalités principales

- **Page 1 :**
	- Présente différents types de boutons Flutter (ElevatedButton, TextButton, OutlinedButton, CupertinoButton).
	- Affiche une icône favorite.
	- Inclut un menu déroulant (DropdownButton) pour sélectionner une option.

- **Page 2 :**
	- Deux champs de texte pour saisir des nombres.
	- Quatre boutons (addition, soustraction, multiplication, division) pour effectuer des opérations entre les deux nombres.
	- Affichage du résultat sous les boutons.

- **Page 3 :**
	- Deux champs de texte numériques avec placeholder et bordure inférieure.
	- Sélection de l'opération via quatre boutons radio alignés sur une ligne.
	- Bouton "Calculer" qui affiche le résultat de l'opération choisie.

## Structure du projet

- `lib/main.dart` : Point d'entrée de l'application, navigation entre les pages.
- `lib/page1.dart` : Widgets de démonstration (boutons, dropdown, icône).
- `lib/page2.dart` : Calculatrice simple avec boutons d'opérations.
- `lib/page3.dart` : Calculatrice avec sélection d'opération par radio.

## Installation et lancement

1. **Cloner le dépôt :**
	 ```bash
	 git clone https://github.com/SarahOtmane/cours_flutter_m2.git
	 cd cours_flutter_m2
	 ```
2. **Installer les dépendances :**
	 ```bash
	 flutter pub get
	 ```
3. **Lancer l'application :**
	 ```bash
	 flutter run
	 ```

## Prérequis

- Flutter SDK (https://docs.flutter.dev/get-started/install)
- Un simulateur ou un appareil physique (Android/iOS/Web/Desktop)

