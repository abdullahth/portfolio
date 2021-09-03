import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatefulWidget {
  String text;
  double width, height;
  Color? backgroundColor, textColor;
  BorderRadius? radius;
  void Function() onTap;
  BoxBorder? border;
  DefaultButton({
    required this.text,
    required this.width,
    required this.height,
    required this.onTap,
    this.backgroundColor,
    this.border,
    this.textColor,
    this.radius,
  });
  @override
  _DefaultButtonState createState() => _DefaultButtonState();
}

class _DefaultButtonState extends State<DefaultButton> {
  late bool hovered;
  @override
  void initState() {
    hovered = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final dims = DevicesDimsConfig(context);
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onHover: (h) {
          setState(() {
            hovered = h;
          });
        },
        onTap: () {},
        hoverColor: Colors.transparent,
        child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeOut,
            width: this.hovered
                ? widget.width + dims.configWidth(10)
                : widget.width,
            height: this.hovered
                ? widget.height + dims.configHeight(10)
                : widget.height,
            decoration: BoxDecoration(
              border: widget.border,
              borderRadius: widget.radius,
              color: widget.backgroundColor ?? theme.primaryColor,
            ),
            child: Center(
              child: ResponsivePadding(
                padding: SymetricPadding(
                    context: context, vertical: 6, horizontal: 4),
                child: AutoSizeText(
                  widget.text,
                  style: TextStyle(
                      fontSize: 16,
                      color: widget.textColor ?? Colors.white,
                      fontFamily: 'Quicksand'),
                  maxLines: 1,
                ),
              ),
            )),
      ),
    );
  }
}
