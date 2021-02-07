import 'package:flutter/material.dart';

//ignore: must_be_immutable
class OptionButton extends StatefulWidget {
  var option;
  OptionButton(this.option);
  @override
  _OptionButtonState createState() => _OptionButtonState(option);
}

class _OptionButtonState extends State<OptionButton> {
  var option;
  _OptionButtonState(this.option);
  void validateanswer() {
    if (option['correct'] == 0) {
      //If the chosen answer is wrong
      //After this the code should be
      //printed here.
    } else {
      //use the increase method from _MyAppState
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: validateanswer,
      child: Text(
        option['option'],
        style: TextStyle(fontSize: 24.0),
      ),
      color: Colors.grey,
      minWidth: 400.0,
    );
  }
}
