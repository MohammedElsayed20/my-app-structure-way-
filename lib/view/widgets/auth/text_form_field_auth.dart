import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatefulWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
  final bool isNumber;
  //I ve put ? since i need this var is not required / password var
  final bool? obscureText;
  final void Function()? onTapIcon;

  const CustomTextFormAuth({
    super.key,
    required this.hinttext,
    required this.labeltext,
    required this.iconData,
    required this.mycontroller,
    required this.valid,
    required this.isNumber,
    this.obscureText,
    this.onTapIcon,
  });

  @override
  State<CustomTextFormAuth> createState() => _CustomTextFormAuthState();
}

class _CustomTextFormAuthState extends State<CustomTextFormAuth> {
  @override
  void initState() {
    clearTextField();
    super.initState();
  }

  void clearTextField() {
    try {
      if (widget.mycontroller!.text.isNotEmpty) {
        widget.mycontroller!.clear();
      }
    } catch (exception) {
      print(exception);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: TextFormField(
        //password form active
        obscureText: widget.obscureText == null || widget.obscureText == false
            ? false
            : true,
        keyboardType: widget.isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator: widget.valid,
        controller: widget.mycontroller,
        decoration: InputDecoration(
          hintText: widget.hinttext,
          hintStyle: const TextStyle(fontSize: 14),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          label: Container(
            margin: const EdgeInsets.symmetric(horizontal: 9),
            child: Text(widget.labeltext),
          ),
          suffixIcon: InkWell(
            onTap: widget.onTapIcon,
            child: Icon(widget.iconData),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
