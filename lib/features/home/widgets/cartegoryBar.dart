import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/core/constans/app_color.dart';
import 'package:foodapp/shared/customeText.dart';

class Cartegorybar extends StatefulWidget {
  
 final int slectedindex ;
 Cartegorybar({super.key, required this.slectedindex});

  @override
  State<Cartegorybar> createState() => _CartegorybarState();
}

class _CartegorybarState extends State<Cartegorybar> {
  List<String> Category = ["All", "combu", "slider", "classic"];
  late int selectindex;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectindex=widget.slectedindex;
    
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
                scrollDirection: Axis.horizontal,

                child: Row(
                  children: List.generate(
                    Category.length,
                    ((index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          selectindex = index;
                        });
                      },
                      child: Material(
                        elevation: selectindex==index ?5 :0,
                        shadowColor: Colors.blueGrey.shade300,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 15,
                          ),
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            
                            
                            color: selectindex == index
                                ? ColorApp.primyColor
                                : Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: CoustomeTexr(
                            data: Category[index],
                            color: selectindex == index
                                ? Colors.white
                                : Colors.black,
                            fontSize: selectindex ==index ? 20 :15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    )),
                  ),
                ),
              );
  }
}