# [Flutter for Android Devs](https://docs.flutter.dev/get-started/flutter-for/android-devs)

## Bullet Points:

- Flutter uses a reactive and composable architecture called the Flutter Widget tree, which differs
  from the Android architecture based on activities, fragments, and views.
  
- Flutter provides a rich set of widgets for building UIs

- Flutter provides its own set of APIs for handling networking, storage, and other common tasks,
  which differ from the APIs used in Android development.
  
### Flutter Widget tree

- The widget tree starts at the root widget and expands down to the leaf widgets.
  At the top of this tree is the MaterialApp widget, which serves as the entry point for the application.
  Underneath the MaterialApp widget are various other widgets such as Scaffold, which provides the basic layout structure
  for the application, and AppBar, which creates a styled navigation bar.
  Developers can then add their own custom widgets as children of these pre-existing widgets to build the desired layout.
  The widget tree structure allows for easy modification and customization of the application's UI,
  as changes to parent widgets affect all of their child widgets.

# [Architectural-overview](https://docs.flutter.dev/resources/architectural-overview##architectural-layers)

- Flutter is a cross-platform UI toolkit that allows developers to reuse code across different operating systems. 
  It runs in a VM with stateful hot reload during development and is compiled to machine code or JavaScript for release. 
  The architecture of Flutter is designed as an extensible, layered system, with an underlying Flutter engine mostly written in C++.
  The Flutter framework is composed of basic foundational classes, a rendering layer, a widgets layer, and the Material and Cupertino libraries.
  Higher-level features are implemented as packages. 
  Flutter applications are packaged in the same way as any other native application, and a platform-specific embedder provides an entry point.

# [Flutter for Android Devs Views](https://docs.flutter.dev/get-started/flutter-for/android-devs#views)  
  
- Flutter is a powerful programming framework that makes use of widgets 
  to create visually stunning user interfaces. These widgets are essentially the building blocks
  of the app and serve as the foundation on which everything else is built. 
  
  Stateful widgets are perfect for situations where you need to update the UI based on user interaction.
  Stateless widgets are ideal when you only need to describe a UI element that doesn't change, like a button or a label. 
  Material Components library includes a wide variety of widgets that follow Material Design guidelines,
  allows to create apps that look like an Android app.
  Cupertino widgets produce an interface which resembles Apple's iOS design language. 
  
  Compared to Android, where you write layouts in XML, Flutter allows to create layouts with a widget tree.
  Which makes it easy to add or remove components, as all you need to do is modify the widget tree by adding or removing widgets.