part of '../widget.dart';

class ButtonLoading extends StatelessWidget {
  const ButtonLoading(
      {super.key,
      this.loadingButton,
      this.onPressed,
      this.title,
      this.Icons,
      this.isValid});

  final bool? loadingButton;
  final VoidCallback? onPressed;
  final String? title;
  final IconData? Icons;
  final bool? isValid;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1,
      height: 45,
      decoration: BoxDecoration(
          color: isValid == true ? mainColor : cGrey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(5)),
      child: InkWell(
        onTap: () => onPressed!(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            loadingButton == true
                ? const SizedBox(
                    // ignore: sort_child_properties_last
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                    height: 20.0,
                    width: 20.0,
                  )
                : Row(
                    children: [
                      Icons == null
                          ? const Text('')
                          : Icon(
                              Icons,
                              color: Colors.black,
                              size: 20,
                            ),
                      const SizedBox(width: 10),
                      Text(
                        '$title',
                        style: titleText.copyWith(
                            color:
                                isValid == true ? Colors.white : Colors.black),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
