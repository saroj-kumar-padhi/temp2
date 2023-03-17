import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:temp1/common/constants.dart';

import 'package:temp1/custom_widgets/filter_widget.dart';
import 'package:temp1/custom_widgets/floating_widget.dart';
import 'package:temp1/custom_widgets/image_widget.dart';
import 'package:temp1/custom_widgets/menu_widget.dart';

import '../common/color_constants.dart';

class HomePageScreen extends StatelessWidget {
  final filterArray = [
    "<\$220.000",
    "For sale",
    "3-4 beds",
    "Kitchen",
  ];

  HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: ColorConstant.kWhiteColor,
      ),
    );
    return Scaffold(
      backgroundColor: ColorConstant.kWhiteColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const FloatingWidget(
        leadingIcon: Icons.explore,
        txt: "Map view",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
            top: 35,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MenuWidget(
                    iconImg: Icons.subject,
                    iconColor: ColorConstant.kBlackColor,
                    onbtnTap: () {},
                  ),
                  MenuWidget(
                    iconImg: Icons.repeat,
                    iconColor: ColorConstant.kBlackColor,
                    onbtnTap: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "City",
                // style: GoogleFonts.notoSans(
                //   fontSize: 12,
                //   color: ColorConstant.kGreyColor,
                // ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "San Francisco",
                // style: GoogleFonts.notoSans(
                //   fontSize: 36,
                //   color: ColorConstant.kBlackColor,
                //   fontWeight: FontWeight.w500,
                // ),
              ),
              const Divider(
                color: ColorConstant.kGreyColor,
                thickness: .2,
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: filterArray.length,
                  itemBuilder: (context, index) {
                    return FilterWidget(
                      filterTxt: filterArray[index],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: List.generate(
                  Constants.houseList.length,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: ImageWidget(
                        Constants.houseList[index],
                        index,
                        Constants.imageList,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
