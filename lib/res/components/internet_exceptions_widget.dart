import 'package:flutter/material.dart';
import 'package:mvvmp1/res/colors/app_color.dart';
import 'package:get/get.dart';

class InternetExceptionWidget extends StatefulWidget {
  final VoidCallback onPress;
  const InternetExceptionWidget({Key? key, required this.onPress})
      : super(key: key);
  @override
  State<InternetExceptionWidget> createState() =>
      _InternetExceptionWidgetState();
}

class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.15,
            ),
            Icon(
              Icons.cloud_off,
              color: AppColor.blackColor,
              size: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(child: Text('internet_exception'.tr)),
            ),
            SizedBox(
              height: height * 0.15,
            ),
            InkWell(
              onTap: widget.onPress,
              child: Container(
                height: 44,
                width: 160,
                decoration: BoxDecoration(
                    color: AppColor.blackColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text("Retry",
                        style: TextStyle(color: AppColor.whiteColor))),
              ),
            )
          ],
        ));
  }
}
