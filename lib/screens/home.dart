import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interview_a/widgets/BottomNav.dart';
import 'package:interview_a/widgets/CardWithData.dart';
import 'package:interview_a/widgets/CustomNav.dart';
import 'package:interview_a/widgets/ProfileContainer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(138, 136, 148, 215),
    ));
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          Column(
            children: [
              Stack(clipBehavior: Clip.none, children: [
                CustomNavigation(width: width, height: height),
                ProfileContainer(width: width),
              ]),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 70.0, horizontal: 10.0),
                child: CardWithData(),
              )
            ],
          ),
        ]),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
