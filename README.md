# Bloc Example

Example of how to implement Bloc pattern and why we would use it.
This is a variation of flutter's default example (increment) when we start a new project.

## Slidy
This project was made utilizing
 - [Slidy](https://github.com/Flutterando/slidy) for project structure.
 - [RxDart](https://pub.dev/packages/rxdart) to implement bloc using Reactive Programming.

## How it works
We have two buttons which each one increment a label in a different way: SetState and BLOC.
A print function is called in Home's build function.

Notice that everytime you click in SetState button, the widget was built again and the print is called.
On the otherhand, when using the BLOC button it doesn't occurs. 

## Conclusion
That's why most (not all) of the times, BLOC should be used, so our Widgets won't be rebuilding everytime an state is changed.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
