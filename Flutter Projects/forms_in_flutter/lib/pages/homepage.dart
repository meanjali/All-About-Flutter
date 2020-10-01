import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  // String _selectedDate;

  final myFormKey = GlobalKey<FormState>();
  // Used as unique identifier for a form
  // And conveniently validating input

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Form Validation',
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.clear,
            ),
            onPressed: () {
              // myFormKey.currentState.reset();
              myFormKey.currentState.dispose();
            },
            tooltip: "Clear all",
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 25),
          child: Form(
            key: myFormKey,
            autovalidate: true,
            // Can be used to instantly validate once input is complete
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(12),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        labelText: 'First Name',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: Colors.deepPurple,
                            width: 2,
                          ),
                        ),
                      ),
                      textCapitalization: TextCapitalization.words,
                      validator: (val) {
                        List temp = val.split(' ');
                        if (temp.length > 1) {
                          return "No whitespace allowed in First name";
                        }
                        // return "";
                      },
                    ),
                  ),
                  // Container(
                  //   margin: EdgeInsets.all(10),
                  //   padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(25),
                  //     border: Border.all(
                  //       color: Theme.of(context).primaryColor,
                  //       width: 2,
                  //     ),
                  //   ),
                  //   child: InputDatePickerFormField(
                  //     firstDate: DateTime(2019, 1, 1),
                  //     lastDate: DateTime(2020, 12, 31),
                  //     fieldHintText: 'Choose Date (2019-20)',
                  //     onDateSaved: (val) {
                  //       if (val == null) {
                  //         print("Date input cancelled");
                  //       }
                  //     },
                  //   ),
                  // ),
                  Container(
                    margin: EdgeInsets.all(12),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        labelText: 'Last Name',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: Theme.of(context).primaryColor,
                            width: 2,
                          ),
                        ),
                      ),
                      textCapitalization: TextCapitalization.words,
                      validator: (val) {
                        if (val.contains(RegExp("[0-9]"))) {
                          return "No digits allowed";
                        }
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: MaterialButton(
                      color: Theme.of(context).primaryColor,
                      textColor: Theme.of(context).scaffoldBackgroundColor,
                      child: Text(
                        'Validate',
                        style: TextStyle(fontSize: 16),
                      ),
                      elevation: 4,
                      onPressed: validateForm,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: MaterialButton(
                      color: Colors.grey[300],
                      textColor: Colors.black,
                      child: Text(
                        'Clear',
                        style: TextStyle(fontSize: 16),
                      ),
                      elevation: 4,
                      onPressed: clearForm,
                    ),
                  ),
                  // Container(
                  //   margin: EdgeInsets.all(5),
                  //   child: MaterialButton(
                  //     minWidth: 75,
                  //     color: Colors.lightBlue[200],
                  //     child: Text(
                  //       _selectedDate == null
                  //           ? "Choose date"
                  //           : "Date selected: " + _selectedDate,
                  //     ),
                  //     onPressed: chooseDate,
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // void chooseDate() {
  //   showDatePicker(
  //           context: context,
  //           initialDate: DateTime.now(),
  //           firstDate: DateTime(2019, 1, 1),
  //           lastDate: DateTime(2020, 12, 31))
  //       .then((value) {
  //     // If user selects a Date as desired
  //     if (value != null) {
  //       setState(() {
  //         _selectedDate = value.toString().substring(0, 10);
  //       });
  //     }
  //     // If user taps Cancel after showind DateTime dialog box
  //     else {
  //       print('User cancelled the operation');
  //     }
  //   });
  // }

  // function called on pressing Submit button
  void validateForm() {
    if (myFormKey.currentState.validate()) {
      showDialog(
        context: context,
        child: AlertDialog(
          title: Text("Form validation successful!"),
          content: Text(
            "The onPressed function for this button" +
                " can be used to add data to your database" +
                " or further processing",
          ),
        ),
      );
    } else {
      showDialog(
        context: context,
        child: AlertDialog(
          title: Text("Form not validated!"),
          content: Text(
            "You can use the currentState " +
                "attribute of the myFormKey to " +
                "perform such checks and prohibit an action " +
                "or specifically perform some action.\nTry " +
                "again after entering valid information.",
          ),
        ),
      );
    }
    myFormKey.currentState.reset();
  }

  void clearForm() {
    myFormKey.currentState.reset();
  }
}
