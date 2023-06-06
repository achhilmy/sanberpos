part of '../widget.dart';

class NormalInputWidget extends StatefulWidget {
  final String? title;
  final String? initialValue;
  final Function(String text)? onChangeText;
  final TextEditingController? textController;
  final String? hintText;
  final String? helperText;
  final String? errorText;
  final int maxLines;
  final TextInputType? keyboardType;
  final Widget? suffix;
  final int? maxLength;
  final bool isPassword;
  final bool isNumberOnly;
  final bool isEmail;
  final bool? isEnabled;
  final String? Function(String?)? validator;

  const NormalInputWidget(
      {Key? key,
      this.title,
      this.initialValue,
      this.onChangeText,
      this.textController,
      this.hintText,
      this.helperText,
      this.errorText,
      this.maxLines = 1,
      this.keyboardType,
      this.suffix,
      this.maxLength,
      this.isPassword = false,
      this.isNumberOnly = false,
      this.isEmail = false,
      this.validator,
      this.isEnabled})
      : super(key: key);

  @override
  State<NormalInputWidget> createState() => _NormalInputWidgetState();
}

class _NormalInputWidgetState extends State<NormalInputWidget> {
  bool isHidden = false;

  @override
  void initState() {
    super.initState();
    isHidden = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: widget.title != null,
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 4),
            child: Text(
              widget.title.toString(),
              style: titleText.copyWith(fontSize: 12),
            ),
          ),
        ),
        SizedBox(
          child: TextFormField(
            enabled: widget.isEnabled,
            initialValue: widget.initialValue,
            onChanged: widget.onChangeText,
            autocorrect: false,
            maxLength: widget.maxLength,
            obscureText: isHidden,
            validator: widget.validator,
            style:
                titleText.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
            controller: widget.textController,
            keyboardType: widget.keyboardType,
            // inputFormatters: widget.isNumberOnly
            //     ? [FilteringTextInputFormatter.digitsOnly]
            //     : null,
            decoration: InputDecoration(
              isDense: widget.suffix != null,
              contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              hintText: widget.hintText,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: cGrey)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: cGrey),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: cRed),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: cRed),
              ),
              helperText: widget.helperText,
              helperStyle: titleText.copyWith(color: cGrey),
              errorText: widget.errorText,
              errorStyle: titleText.copyWith(color: cRed),
              counter: const SizedBox.shrink(),
              suffixIcon: widget.isPassword
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          isHidden = !isHidden;
                        });
                      },
                      icon: isHidden
                          ? Icon(Icons.visibility_off, color: cBlack)
                          : Icon(Icons.visibility, color: cBlack),
                    )
                  : widget.suffix,
            ),
            maxLines: widget.maxLines,
          ),
        )
      ],
    );
  }
}
