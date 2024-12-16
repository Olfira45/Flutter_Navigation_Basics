

# Navigation Demo App
=======================

A basic Flutter app demonstrating navigation between screens.

## Overview
------------

This app showcases a simple navigation flow between two screens: `HomeScreen` and `SecondScreen`. The app uses Flutter's built-in `Navigator` class to push and pop screens.

### Features
------------

* Navigation from `HomeScreen` to `SecondScreen` using a button press
* Return navigation from `SecondScreen` to `HomeScreen` using a button press
* Demonstration of passing data back to the previous screen using `Navigator.pop`

### Screens
------------

#### HomeScreen

* Displays a logo image
* Contains a button to navigate to `SecondScreen`
* Has a bottom navigation bar with three items: Home, Cache, and Open Dialog

#### SecondScreen

* Displays a title bar with the text "Second Screen"
* Contains a button to return to `HomeScreen` with a message

### Code Structure
------------------

The app's code is organized into two main files:

* `lib/main.dart`: The main entry point of the app, containing the `MaterialApp` widget and the navigation flow.
* `lib/screens/home.dart`: Contains the `HomeScreen` and `SecondScreen` widgets.

### Running the App
--------------------

To run the app, simply open the project in your preferred IDE and run the `main.dart` file.

### Example Use Cases
----------------------

* Tap the "Go to Second Screen" button on `HomeScreen` to navigate to `SecondScreen`.
* Tap the "Go Back" button on `SecondScreen` to return to `HomeScreen` with a message.

### Notes
----------

This app is intended as a basic demonstration of navigation in Flutter and is not meant to be a production-ready app.