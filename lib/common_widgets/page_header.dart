import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height * 0.3,
      child: Image.asset('assets/images/login_top.webp', fit: BoxFit.cover,),
    );
  }
}
