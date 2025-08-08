import 'package:bankit_agent/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/app_text_style.dart';

class AppField extends StatefulWidget {
  final String? hint;
  final String labelText;
  final Icon? suffix;
  final bool isPassword;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;

  const AppField(
      {super.key, this.hint, required this.labelText, this.suffix, required this.controller, this.isPassword = false, this.validator, this.keyboardType});

  @override
  State<AppField> createState() => _AppFieldState();
}

class _AppFieldState extends State<AppField> {

  late bool _obscure;

  @override
  void initState() {
    super.initState();
    _obscure = widget.isPassword;
  }

  void _toggleObscure() {
    setState(() {
      _obscure = !_obscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      child: SizedBox(
        height: MediaQuery.of(context).size.height*0.1,
        child: TextFormField(
          keyboardType: widget.keyboardType,
          validator: widget.validator,
          obscureText: _obscure,
          controller: widget.controller,
          decoration:InputDecoration(
            suffixIcon:widget.isPassword
                ? IconButton(
              icon: Icon(
                _obscure ? Icons.visibility : Icons.visibility_off,
                color: AppColors.lightBlue,
              ),
              onPressed: _toggleObscure,
            )
                : null,
            labelStyle: AppStyle.h44.copyWith(color: AppColors.lBlack),
            prefixIcon:widget.suffix,
            labelText: widget.labelText,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.lBlack),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.redAccent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.lBlack),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.lBlack),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.black54),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.red),
          ),
        ),
        ),
      ),
    );
  }
}
