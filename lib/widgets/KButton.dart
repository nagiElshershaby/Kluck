import 'package:flutter/material.dart';
import 'package:kluck/providers/pages.dart';
import 'package:provider/provider.dart';

class KButton extends StatefulWidget {
  final double height;
  final Icon icon;
  final double borderRadius;
  final int on;
  const KButton({Key? key, required this.height, required this.icon, required this.borderRadius,required this.on}) : super(key: key);

  @override
  State<KButton> createState() => _KButtonState();
}

class _KButtonState extends State<KButton> {
  @override
  Widget build(BuildContext context) {
    final pages = Provider.of<Pages>(context);
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      height: widget.height,
      width: widget.height,
      decoration: !pages.items[widget.on]
          ? BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(widget.borderRadius),
              boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade600,
                    blurRadius: 15,
                    offset: const Offset(5, 5),
                    spreadRadius: 1,
                  ),
                  const BoxShadow(
                    color: Colors.white,
                    blurRadius: 15,
                    offset: Offset(-5, -5),
                    spreadRadius: -1,
                  ),
                ])
          : BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(20),
            ),
      child: IconButton(
        onPressed: () {
          setState(() {
            pages.chooseAPage(widget.on);
          });
        },
        icon: widget.icon,
      ),
    );
  }
}
