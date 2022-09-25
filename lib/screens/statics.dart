import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview_a/widgets/CustomWidget.dart';
import 'package:interview_a/widgets/GraphIndicator.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class StatisicScreen extends StatelessWidget {
  const StatisicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/header2.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          "Create Rhpasave",
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            FeatherIcons.arrowLeft,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pushNamed(context, "/");
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30),
        child: SizedBox(
          height: height / 4,
          child: InkWell(
            onTap: () {
              showMaterialModalBottomSheet(
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) => SingleChildScrollView(
                  controller: ModalScrollController.of(context),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            topLeft: Radius.circular(20.0))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 50.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Awesome",
                            style: GoogleFonts.poppins(
                                fontSize: 28, fontWeight: FontWeight.w200),
                          ),
                          SizedBox(
                            width: width - 100,
                            child: Text(
                              "What percentage of your income would you like to save?",
                              style: GoogleFonts.poppins(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Wrap(
                            children: const [
                              CustomChip(label: "50"),
                              CustomChip(label: "60"),
                              CustomChip(label: "70"),
                              CustomChip(label: "80"),
                              CustomChip(label: "90"),
                              CustomChip(label: "100"),
                              CustomChip(label: "10"),
                              CustomChip(label: "20"),
                              CustomChip(label: "30"),
                              CustomChip(label: "40"),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 15),
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(12)),
                            // ignore: prefer_const_constructors
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              // ignore: prefer_const_constructors
                              child: TextField(
                                textAlign: TextAlign.center,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter Manually",
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: width,
                            height: 54,
                            decoration: BoxDecoration(
                                color: const Color(0XFFF64F00),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Center(
                                  child: Text(
                                "Create Rhapsave",
                                style: GoogleFonts.poppins(color: Colors.white),
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13.0)),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rhpasave",
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "N 1000,000",
                            style: GoogleFonts.poppins(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Save automatically towards a several goals",
                            style: GoogleFonts.poppins(
                                fontSize: 11,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        "assets/pie.svg",
                        width: 100,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: const [
                      GraphIndicator(color: 0XFFFFB531, label: "Cards Saving"),
                      SizedBox(width: 10.0),
                      GraphIndicator(
                          color: 0XFFFF9D78, label: "Mortage Saving"),
                      SizedBox(width: 10.0),
                      GraphIndicator(color: 0XFFF64F00, label: "School Fees"),
                      SizedBox(width: 10.0),
                      GraphIndicator(color: 0XFFFF9D78, label: "School Fees"),
                      SizedBox(width: 10.0),
                      GraphIndicator(color: 0XFFFF9D78, label: "School Fees"),
                      SizedBox(width: 10.0),
                      GraphIndicator(
                          color: 0XFFFF9D78, label: "Christmas Saving"),
                    ],
                  ),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
