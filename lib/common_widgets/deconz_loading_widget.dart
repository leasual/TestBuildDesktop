import 'package:deconz_app/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeconzLoadingWidget extends StatelessWidget {
  const DeconzLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(128, 0, 0, 0)
      ),
      child: Center(
        child: Container(
          color: Colors.black26,
          width: size.width / 2,
          height: size.width / 2,
          decoration: BoxDecoration(
          ),
          child: const CircularProgressIndicator(
            color: yellowColor,
          ),
        ),
      ),
    );
  }
}
