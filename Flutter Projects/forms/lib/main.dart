import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //k will hold form state which we can use for validation
GlobalKey<FormState> k=GlobalKey<FormState>();

void validate(){
  if(k.currentState.validate()){
    print("OK");
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forms"),
      ),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Center(
          child: Form(
            autovalidate: true,
            key: k,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder()
                  ),
                  validator: MultiValidator(
                      [
                    RequiredValidator(errorText: "Required"),
                    EmailValidator(errorText: "Invalid Email"),
                  ]
                  )
                  /*EmailValidator(errorText: "Invalid Email"),*/
                  /*(v){
                    if(v.isEmpty){
                      return "Required";
                    }else{
                      return null;
                    }
                  },*/
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder()
                    ),
                    validator: MinLengthValidator(6, errorText: "Atleast 6 char required")
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: RaisedButton(
                    onPressed: validate,
                    child: Text("Login"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}
