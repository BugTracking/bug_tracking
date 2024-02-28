import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BugDetailsSummaryBody extends StatefulWidget {
  final String text;
  const BugDetailsSummaryBody({
    super.key,
    required this.text,
  });

  @override
  State<BugDetailsSummaryBody> createState() => _BugDetailsSummaryBodyState();
}

class _BugDetailsSummaryBodyState extends State<BugDetailsSummaryBody> {
  int? maxLines = 2;
  String finalText = '';
  bool isTextFull = false;
  @override
  void initState() {
    super.initState();

    if (widget.text.length > 70) {
      finalText = '${widget.text.substring(0, 70)}...';
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
          TextSpan(
            text: isTextFull ? 'Less' : 'See more',
            style: AppTexts.text14PrimaryNunitoSansBold.copyWith(
              decoration: TextDecoration.underline,
              decorationColor: AppColor.bluish,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => setState(() {
                    if (isTextFull) {
                      maxLines = 2;
                      if (widget.text.length > 70) {
                        finalText = '${widget.text.substring(0, 70)}...';
                      }
                    } else {
                      maxLines = null;
                      finalText = widget.text;
                    }
                    isTextFull = !isTextFull;
                  }),
          ),
        ],
      ),
    );
  }
}
