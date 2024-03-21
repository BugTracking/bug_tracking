import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class TermsAndCondtionsScreen extends StatelessWidget {
  const TermsAndCondtionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Terms and Conditions',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20.0.h,
            horizontal: 20.0.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '1. GREEMENT TO OUR LEGAL TERMS',
                style: AppTexts.text18OnBackgroundNunitoSansBold,
              ),
              SizedBox(height: 8.0.h),
              Text(
                'We are Bug Tracking Team as we operate this mobile application from A to Z , '
                'Bug Tracking mobile app is designed to streamline your bug tracking process, making it simple and effective, '
                'facilitates seamless collaboration among your team members, empowers you to identify, track, and resolve bugs seamlessly. ',
                style: AppTexts.text12OnBackgroundCairoBold,
              ),
              SizedBox(height: 16.0.h),
              Text(
                'By App Notifications',
                style: AppTexts.text16OnBackgroundNunitoSansBold,
              ),
              SizedBox(height: 8.0.h),
              Text(
                'The Services are likely intended for users who are working on technical projects. '
                'or in technical Company to track the bug easily .',
                style: AppTexts.text12OnBackgroundCairoBold,
              ),
              SizedBox(height: 16.0.h),
              Text(
                '2. INTELLECTUAL PROPERTY RIGHTS',
                style: AppTexts.text18OnBackgroundNunitoSansBold,
              ),
              SizedBox(height: 8.0.h),
              Text(
                'Our intellectual property '
                'We are the owner or the licensee of all intellectual property rights in our Services, '
                'including all source code, databases, functionality, software, website designs, audio, video, text, photographs, and graphics '
                'in the Services , as well as the trademarks, service marks, and logos contained there.'
                'Our Content and Marks are protected by copyright and trademark laws '
                'The Content and Marks are provided in or through the Services "AS IS" for your personal, non-commercial use or internal business purpose.',
                style: AppTexts.text12OnBackgroundCairoBold,
              ),
              SizedBox(height: 16.0.h),
              Text(
                '3.CONTACT US',
                style: AppTexts.text18OnBackgroundNunitoSansBold,
              ),
              SizedBox(height: 8.0.h),
              Text(
                '''In order to resolve a complaint regarding the Services or to receive further information regarding use of the Services, Please contact with Mail: to Bug Tracking Team Email''',
                style: AppTexts.text12OnBackgroundCairoBold,
              ),
              SizedBox(height: 8.0.h),
              GestureDetector(
                onTap: () => _launchEmail('team@backtraing.com'),
                child: Text(
                  'team@backtraing.com',
                  style: AppTexts.text14PrimaryNunitoSansBold,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 16.0.h),
            ],
          ),
        ),
      ),
    );
  }

  void _launchEmail(String email) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
    );

    try {
      await canLaunchUrl(emailLaunchUri);
    } catch (_) {}
  }
}
