import 'package:flutter/material.dart';

import 'custom_button.dart';

class CustomList extends StatelessWidget {
  const CustomList({Key key}) : super(key: key);

  static const _buttonCount = 500;

  Widget _buttonList() {
    return ListView.separated(
      // shrinkWrap: true,
      padding: EdgeInsets.symmetric(vertical: 8),
      itemCount: _buttonCount,
      itemBuilder: (BuildContext context, int index) => CustomButton(),
      separatorBuilder: (BuildContext context, int index) =>
          SizedBox(height: 8),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 200,
        width: 100,
        color: Colors.grey,
        // decoration: BoxDecoration(
        //   color: Colors.grey,
        //   borderRadius: BorderRadius.circular(10),
        // ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: _buttonList(),
        ),
      ),
    );
  }
}
