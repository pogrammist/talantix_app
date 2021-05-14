import 'package:flutter/material.dart';
import 'widgets/custom_list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Talantix'),
        ),
        body: Center(
          child: CustomList(),
        ),
      ),
    );
  }
}
