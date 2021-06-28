import 'package:asadbekdev/myProjects/steppper/iamStepper.dart';
import 'package:flutter/material.dart';

class StepperWidgeti extends StatefulWidget {
  @override
  _StepperWidgetiState createState() => _StepperWidgetiState();
}

class _StepperWidgetiState extends State<StepperWidgeti> {
  int _activeStep = 0;
  List<Step>? allSteps;
  String? login, password, email;
  bool isError = false;
  var key0 = GlobalKey<FormFieldState>();
  var key1 = GlobalKey<FormFieldState>();
  var key2 = GlobalKey<FormFieldState>();

  @override
  void initState() {
    super.initState();
    allSteps = _stepShow();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Stepper(
            currentStep: _activeStep,
            onStepTapped: (tappedElement) {
              setState(
                () {
                  _activeStep = tappedElement;
                },
              );
            },
            onStepContinue: () {
              if (_activeStep < allSteps!.length - 1) {
                setState(() {
                  _activeStep += 1;
                });
              } else if (_activeStep == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IconStepperDemo(),
                  ),
                );
              }
            },
            onStepCancel: () {
              if (_activeStep > 0) {
                setState(() {
                  _activeStep -= 1;
                });
              }
            },
            steps: allSteps!,
          ),
        ),
      ),
    );
  }

  List<Step> _stepShow() {
    List<Step> steplar = [
      Step(
        title: Text("1-step"),
        content: TextFormField(
          autovalidateMode: AutovalidateMode.always,
          key: key0,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            labelText: "Login",
            hintText: "Login kiriting....",
          ),
          validator: (input) {
            if (input!.length < 6) {
              return "Login 6 harfdan kam bo'lmasin";
            }
          },
          onSaved: (input) {
            login = input;
          },
        ),
        subtitle: Text("1-Step Subtitle"),
        isActive: true,
      ),
      Step(
        title: Text("2-step"),
        content: TextFormField(
          autovalidateMode: AutovalidateMode.always,
          key: key1,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            labelText: "Password",
            hintText: "Password kiriting....",
          ),
          validator: (input) {
            if (input!.length < 6) {
              return "Password 6 harfdan kam bo'lmasin";
            }
          },
          onSaved: (input) {
            email = input;
          },
        ),
        subtitle: Text("2-Step Subtitle"),
        isActive: true,
      ),
      Step(
        title: Text("3-step"),
        content: TextFormField(
          autovalidateMode: AutovalidateMode.always,
          key: key2,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            labelText: "E-mail",
            hintText: "E-mail kiriting....",
          ),
          validator: (input) {
            if (input!.length < 6) {
              return "Login 6 harfdan kam bo'lmasin";
            }
          },
          onSaved: (input) {
            login = input;
          },
        ),
        subtitle: Text("1-Step Subtitle"),
        isActive: true,
      ),
    ];
    return steplar;
  }
}
