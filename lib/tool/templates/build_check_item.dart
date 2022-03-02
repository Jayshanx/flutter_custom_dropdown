import 'package:flutter/material.dart';
import 'package:flutter_custom_dropdown/flutter_custom_dropdown.dart';

Widget buildCheckItem(BuildContext context, dynamic data, bool selected, String? valueKey) {
  return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Text(
            defaultGetItemLabel(data, valueKey),
            style: selected
                ? TextStyle(fontSize: 14.0, color: Theme.of(context).primaryColor, fontWeight: FontWeight.w400)
                : const TextStyle(fontSize: 14.0),
          ),
          Expanded(
              child: Align(
            alignment: Alignment.centerRight,
            child: selected
                ? Icon(
                    Icons.check,
                    color: Theme.of(context).primaryColor,
                  )
                : null,
          )),
        ],
      ));
}
