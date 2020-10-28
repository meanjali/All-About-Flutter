## Using Forms in Flutter

Forms & Form fields in Flutter are a great way to **get information from users.**
This is a demonstration of Forms so that you can easily **validate information** that is entered.

### Typical components of a form
- Key
- FormFields
- Validation functions
- TextEditingControllers, etc.

**Key**: It is used as unique identifier for the form. It enables the user to reset the form, validate the form, disable the form and much more. [Learn more](https://api.flutter.dev/flutter/widgets/GlobalKey-class.html)

**Form Fields**: Are a set of input fields where user can input (not necessarily text). [Learn more](https://api.flutter.dev/flutter/widgets/FormField-class.html)

**Validation functions**: It is a simple validator function that allows you to write custom rules. These rules can decide if the given input is valid or not. For example, if a "First name" field can contain only one word (basically a String without a whitespace), the rule can be `if (value.split(' ').length>1) {return "First name can contain only one word"} `

You can always learn more about individual attributes of a Widget by hovering over it in Visual Studio Code

### Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
