import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:momcare/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onPressed;
  final IconData? leadingIcon;

  const CustomAppBar({
    Key? key,
    this.onPressed,
    this.leadingIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leadingIcon != null
          ? IconButton(
              onPressed: onPressed,
              icon: Icon(leadingIcon, color: kTopicColor),
            )
          : null,
      backgroundColor: const Color(0xffDECBEC),
      centerTitle: true,
      toolbarHeight: 200,
      title: Container(
        height: 200,
        width: 100,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/logo.png'),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(90);
}
