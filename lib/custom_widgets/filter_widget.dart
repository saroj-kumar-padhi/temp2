import 'package:flutter/material.dart';
import 'package:temp1/common/color_constants.dart';

class FilterWidget extends StatelessWidget {
  final String filterTxt;
  const FilterWidget({
    super.key,
    required this.filterTxt,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          color: ColorConstant.kFilterBackColor,
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Text(
              filterTxt,
              // style: GoogleFonts.notoSans(
              //   fontSize: 18,
              //   fontWeight: FontWeight.w500,
              //   color: ColorConstant.kBlackColor,
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
