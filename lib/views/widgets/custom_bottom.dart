import 'package:flutter/material.dart';
import 'package:noteapp/constant/constant.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kPrimaryColor,
      ),
      child: const Center(
        child: Text('add'),
      ),
    );
  }
}
