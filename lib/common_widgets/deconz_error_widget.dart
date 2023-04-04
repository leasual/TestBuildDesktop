import 'package:flutter/material.dart';

class DeconzErrorWidget extends StatelessWidget {
  final VoidCallback onTap;
  const DeconzErrorWidget({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        color: Colors.white,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            const Text(
              'Oops!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black, fontSize: 20, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 20),
            const Text(
              'Something went wrong. Please try again.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: size.width / 2,
              height: 48,
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                backgroundColor: Colors.black
              ),
                onPressed: onTap, child: const Text('Retry', style: TextStyle(fontSize: 16),),),
            )
          ],
        ),
      ),
    );
  }
}