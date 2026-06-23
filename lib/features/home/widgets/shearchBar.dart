import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/shared/customeText.dart';

class Shearchbar extends StatelessWidget {
  const Shearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
                elevation: 10,
                shadowColor: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
                child: TextField(
                  decoration: InputDecoration(
                    hint: CoustomeTexr(
                      color: Colors.grey.shade500,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      data: "search .....",
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(CupertinoIcons.search),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                  ),
                ),
              );
  }
}