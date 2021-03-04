import 'package:flutter/material.dart';

import '../helpers/theme.dart';
import '../helpers/dummyList.dart';
import '../widgets/roundedContainers.dart';

class MainHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      padding: EdgeInsets.only(top: 20, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withOpacity(0.1),
      ),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              // Icon(Icons.arrow_back),
              Flexible(
                  child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppTheme.primaryForegroundColor,
                      size: 35,
                    ),
                    fillColor: AppTheme.transparent,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(50))),
                    hintText: "Search Anything",
                    hintStyle: TextStyle(
                        color: Colors.grey.withOpacity(0.7), fontSize: 20),
                  ),
                ),
              )),
              FlatButton(
                child: Text(
                  "Cancel",
                  style: TextStyle(
                      color: AppTheme.primaryForegroundColor, fontSize: 20),
                ),
                onPressed: () {},
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return index == 0
                    ? RoundedContainer(
                        dummyList[index],
                        selected: true,
                      )
                    : RoundedContainer(dummyList[index]);
              },
              itemCount: dummyList.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
