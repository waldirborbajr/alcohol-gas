import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'input.widget.dart';
import 'loading-button.widget.dart';

class SubmitForm extends StatelessWidget {
  var gasCtrl = new MoneyMaskedTextController();
  var alcCtrl = new MoneyMaskedTextController();
  var busy = false;
  Function submitFunc;

  SubmitForm({
    required this.gasCtrl,
    required this.alcCtrl,
    required this.busy,
    required this.submitFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            label: "Alcohol",
            ctrl: alcCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            label: "Gas",
            ctrl: gasCtrl,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        LoadingButton(
          busy: busy,
          func: submitFunc,
          text: "Calculate",
          invert: false,
        ),
      ],
    );
  }
}
