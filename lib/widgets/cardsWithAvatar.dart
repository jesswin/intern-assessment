import 'package:flutter/material.dart';
import '../helpers/theme.dart';

class CardsWithAvatar extends StatelessWidget {
  final bool withAvatar;
  final myLists;

  CardsWithAvatar(this.withAvatar, this.myLists);
  @override
  Widget build(BuildContext context) {
    print(myLists);
    return Container(
      height: withAvatar
          ? 250
          : 150, //checking if there is only txt of an image also
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            constraints: (BoxConstraints(
                minWidth: 170, maxWidth: 270)), //to keep uniformity
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppTheme.transparent,
            ),
            margin: const EdgeInsets.only(top: 10, right: 15, bottom: 10),
            padding: withAvatar //conditional spacing
                ? const EdgeInsets.symmetric(horizontal: 20, vertical: 35)
                : const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              children: [
                withAvatar //checking for avatar
                    ? (myLists[index].dpUrl != null &&
                            myLists[index].dpUrl !=
                                "") //checking if the image url is null?
                        ? CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(myLists[index].dpUrl),
                          )
                        : CircleAvatar(
                            radius: 40,
                            backgroundColor: AppTheme.primaryForegroundColor,
                          ) //showing colored avatar
                    : Container(),
                SizedBox(
                  height: 15,
                ), //spacing
                Text(
                  withAvatar ? myLists[index].heading : myLists[index],
                  overflow: !withAvatar
                      ? myLists[index].length >=
                              35 //checking text overflows then show ellipsis
                          ? TextOverflow.ellipsis
                          : TextOverflow.visible
                      : TextOverflow.visible,
                  style: TextStyle(color: AppTheme.white, fontSize: 25),
                ),
                Flexible(
                  child: Text(
                    withAvatar ? myLists[index].subHeading : "",
                    style: TextStyle(color: AppTheme.white, fontSize: 20),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: myLists.length,
        scrollDirection: Axis.horizontal, //keeping horizontal scroll
      ),
    );
  }
}
