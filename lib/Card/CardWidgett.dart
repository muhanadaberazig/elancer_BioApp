import 'package:flutter/material.dart';

class BioCard extends StatelessWidget {
  final String email;
  final String subemail;
  final IconData leading;
  final IconData trailing;
  final double marginBottom;



  BioCard({
    required this.email,
    required this.subemail,
    required this.leading,
    required this.trailing,
    this.marginBottom=0,});



  @override
  Widget build(BuildContext context) {
    return Card(
      elevation:10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      margin: EdgeInsets.only(bottom: marginBottom),
      child: ListTile(
        leading: Icon(leading),
        title: Text(email),
        subtitle: Text(subemail),
        trailing: Icon(trailing),
      ),
    );
    // elevation: 10,
    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    // margin: EdgeInsets.only(bottom: marginBottom),
    // child: ListTile(
    // leading: Icon(leadingIcon),
    // title: Text(title),
    // subtitle: Text(subtitle),
    // trailing: Icon(trailingIcon),
    // ),

  }
}
