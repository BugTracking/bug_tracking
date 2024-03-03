import 'package:bug_tracking/features/notfications/ui/widgets/notfications_list.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/widgets/custom_buttom_Navigation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class NotficationsScreen extends StatelessWidget {
  const NotficationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notfications'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0.w,
          vertical: 20.0.h,
        ),
        child: const NotficationList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: const CustomButtomNavigation(),

    );
  }
}