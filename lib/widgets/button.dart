import 'package:Flutter_Job_Portal/utils/colors.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final ButtonStyle? style;
  final FocusNode? focusNode;
  final bool? autofocus;
  final Clip? clipBehavior;
  final Widget? child;
  const ButtonWidget(
      {Key? key,
      required this.onPressed,
      this.onLongPress,
      this.style,
      this.focusNode,
      this.autofocus,
      this.clipBehavior,
      required this.child})
      : super(key: key);

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      child: widget.child,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 30),
        primary: colorButton,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // <-- Radius
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        textStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
