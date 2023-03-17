import 'package:flutter/material.dart';
import 'package:temp1/common/color_constants.dart';
import 'package:temp1/models/data_model.dart';
import 'package:temp1/screens/item_detail_screen.dart';

class ImageWidget extends StatelessWidget {
  House house;
  int imgpath_index;
  List<String> imageList;

  ImageWidget(this.house, this.imgpath_index, this.imageList, {super.key});

  @override
  Widget build(BuildContext context) {
    // final oCcy = NumberFormat("##,##,###", "en_INR");
    var screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ItemDetailScreen(
                  house,
                  imgpath_index,
                  imageList,
                ),
              ),
            );
          },
          child: Container(
            height: 160,
            width: screenWidth,
            padding: const EdgeInsets.only(left: 12, right: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  imageList[imgpath_index],
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      color: ColorConstant.kWhiteColor,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Icon(
                      Icons.favorite_border,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            top: 15,
            bottom: 10,
          ),
          child: Row(
            children: <Widget>[
              // Text(
              //   "\$" + "${""}",
              //   //oCcy.format(house.amount)
              //   // style: GoogleFonts.notoSans(
              //   //   fontSize: 22,
              //   //   fontWeight: FontWeight.w600,
              //   // ),
              // ),
              const SizedBox(
                width: 10,
              ),
              Text(
                house.address,
                // style: GoogleFonts.notoSans(
                //   fontSize: 15,
                //   color: ColorConstant.kGreyColor,
                // ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            top: 0,
            bottom: 10,
          ),
          child: Text(
            "${house.bedrooms} bedrooms / ${house.bathrooms} bathrooms / ${house.squarefoot} ft\u00B2",
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
