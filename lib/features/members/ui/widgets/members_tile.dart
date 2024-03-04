import 'package:bug_tracking/core/widgets/custom_member.dart';
import 'package:flutter/material.dart';

class MembersTile extends StatelessWidget {
  const MembersTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffE9EAEC),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: const CustomMember(
        image:
            'https://media.istockphoto.com/id/1373692309/vector/portrait-of-beautiful-women-at-round-frame-avatar-of-female-character-isolated-on-white.jpg?s=612x612&w=0&k=20&c=OYp0Dj6KYinfyCut0cmFKYxBXb3uB9wVYBy9qMmZdhc=',
        name: 'Nada Ahmed',
        body: 'nada12@gmail.com',
      ),
    );
  }
}
