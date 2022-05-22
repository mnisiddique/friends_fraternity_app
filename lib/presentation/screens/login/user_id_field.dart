import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:friends_fraternity_app/core/utills/res/resource.dart';

class UserIdField extends StatefulWidget {
  final String? label;
  final String? hintText;
  final IconData? prefixIcon;

  const UserIdField({
    Key? key,
    this.label,
    this.hintText,
    this.prefixIcon,
  }) : super(key: key);

  @override
  State<UserIdField> createState() => _UserIdFieldState();
}

class _UserIdFieldState extends State<UserIdField> {
  FocusNode _focusNode = FocusNode();
  Color _focusColor = Colors.grey;
  /**
   * decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 169, 192, 192),
            // color: Colors.grey.withAlpha(45),
            // color: Color(0xFFFFFFFF),
            blurRadius: 3.0,
            spreadRadius: 8.0,
          ),
        ],
      ),
   */

  @override
  void initState() {
    _focusNode.addListener(() {
      setState(() {
        _focusColor = _focusNode.hasFocus ? ColorRes.textColor : Colors.grey;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8.0,
      borderRadius: BorderRadius.all(Radius.circular(16.0)),
      child: Container(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 4.5),
              child: Text(
                widget.label ?? "",
                style: StyleRes.labelStyleUserId.copyWith(color: _focusColor),
              ),
            ),
            _textField(),
          ],
        ),
      ),
    );
  }

  Widget _textField() {
    return Row(
      children: [
        Icon(widget.prefixIcon, color: _focusColor),
        SizedBox(width: 8.0),
        Expanded(
          child: TextField(
            focusNode: _focusNode,
            keyboardType: TextInputType.phone,
            style: StyleRes.textStyleTextField,
            cursorColor: ColorRes.textColor,
            inputFormatters: [LengthLimitingTextInputFormatter(11)],
            decoration: InputDecoration(
              isCollapsed: true,
              border: InputBorder.none,
              hintText: widget.hintText,
            ),
          ),
        ),
      ],
    );
  }
}
