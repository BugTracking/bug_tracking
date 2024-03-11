import 'package:bug_tracking/core/widgets/custom_button.dart';
import 'package:bug_tracking/core/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
class TermsAndCondtionsDialog extends StatelessWidget {
  const TermsAndCondtionsDialog({Key? key}) : super(key: key);


    @override
    Widget build(BuildContext context) {
      return Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Terms and Conditions',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              SingleChildScrollView(
                child: Text(
                  '''
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac magna quam. Ut lacinia diam vel enim tristique hendrerit. In eu pharetra magna. Mauris eu justo dolor. Vivamus mattis commodo enim, sit amet tempus enim faucibus sed. Fusce nec odio ex. Quisque viverra nulla id nunc auctor molestie. Sed ac tempor libero. Integer non sem euismod, lacinia purus eget, tincidunt mauris. Donec auctor libero metus, et lobortis sem facilisis ac. Aliquam eget erat augue. Suspendisse nec odio vel nunc rutrum malesuada.

                Integer ut volutpat metus. Nam luctus justo vitae sem scelerisque, id ultrices velit fermentum. Morbi eu odio sed nulla lacinia consequat nec at arcu. Suspendisse potenti. Sed fermentum nulla sit amet est placerat, nec bibendum eros volutpat. Nulla facilisi. Vivamus eleifend sagittis libero, eu condimentum mi mattis vel. Cras finibus sed magna a rhoncus. Cras mattis ex nec ante blandit, eget semper quam auctor.

                Nulla facilisi. Aenean vehicula enim at tristique malesuada. Fusce eget neque sit amet elit sollicitudin rutrum non nec libero. Nam eu urna ut eros venenatis hendrerit. Fusce sollicitudin mauris vel diam eleifend, a cursus felis hendrerit. Fusce sed arcu tellus. Maecenas at elit ligula. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean auctor orci ut semper aliquam. Cras non scelerisque nunc. Donec ultrices non purus a euismod. Cras pharetra non tortor eu volutpat.
                ''',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  CustomButton(
                    onPressed: () {
                      // Do something when the user accepts terms
                      Navigator.pop(context);
                    },
                    text: 'Accept',

                  ),
                  SizedBox(width: 16.0),
                  CustomOutlinedButton(
                    onPressed: () {
                      // Do something when the user declines terms
                      // For example, you could exit the app or show a message
                      Navigator.pop(context);
                    },
                    text: 'Decline',

                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
  }