import 'package:flutter/material.dart';
import 'package:flutter_training/slicing/theme.dart';

class ChatTile extends StatelessWidget {
  // variable dart unutk chattile
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  const ChatTile(
      {Key? key,
      required this.imageUrl,
      required this.name,
      required this.text,
      required this.time,
      required this.unread})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
      ),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 55,
            height: 55,
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: titleTextStyle,
              ),
              Text(
                text,
                style: unread
                    ? subTitleTextStyle.copyWith(
                        color: greenColor,
                      )
                    : subTitleTextStyle,
              ),
            ],
          ),
          const Spacer(),
          Text(
            time,
            style: unread
                ? subTitleTextStyle.copyWith(
                    color: greenColor,
                  )
                : subTitleTextStyle,
          ),
        ],
      ),
    );
    ;
  }
}
