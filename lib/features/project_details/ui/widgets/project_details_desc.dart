import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ProjectDetailsDesc extends StatefulWidget {
  final String description;
  const ProjectDetailsDesc({super.key, required this.description});

  @override
  State<ProjectDetailsDesc> createState() => _ProjectDetailsDescState();
}

class _ProjectDetailsDescState extends State<ProjectDetailsDesc> {
  int? maxLines = 2;
  String finalText = '';
  bool isTextFull = false;
  @override
  void initState() {
    super.initState();

    if (widget.description.length > 70) {
      finalText = '${widget.description.substring(0, 70)}...';
    } else {
      finalText = widget.description;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      maxLines: maxLines,
      TextSpan(
        children: [
          TextSpan(
            text: finalText,
            style: AppTexts.text14GreyCairoSemiBold,
          ),
          if (widget.description.length > 70)
            TextSpan(
              text: isTextFull ? 'Less' : 'See more',
              style: AppTexts.text14PrimaryNunitoSansBold.copyWith(
                decoration: TextDecoration.underline,
                decorationColor: AppColor.bluish,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => setState(
                      () {
                        if (isTextFull) {
                          maxLines = 2;
                          if (widget.description.length > 70) {
                            finalText =
                                '${widget.description.substring(0, 70)}...';
                          }
                        } else {
                          maxLines = null;
                          finalText = widget.description;
                        }
                        isTextFull = !isTextFull;
                      },
                    ),
            ),
        ],
      ),
    );
  }
}
