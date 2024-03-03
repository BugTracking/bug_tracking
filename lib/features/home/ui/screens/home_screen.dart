import 'package:bug_tracking/core/helpers/show_bottom_sheet_function.dart';
import 'package:bug_tracking/core/widgets/custom_buttom_Navigation.dart';
import 'package:bug_tracking/features/home/ui/widgets/add_radio_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         showCustomBottomSheet(context,const[AddRadioList()]);
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: const CustomButtomNavigation(),
    );
  }
}
