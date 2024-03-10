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
        image: null,
        name: 'Nada Ahmed',
        body: 'nada12@gmail.com',
      ),
    );
  }
}
