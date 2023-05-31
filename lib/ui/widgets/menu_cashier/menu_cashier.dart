part of '../widget.dart';

class MenuCashier extends StatelessWidget {
  const MenuCashier({super.key, this.title, this.icons, this.onPressed});

  final String? title;
  final IconData? icons;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed!(),
      child: Container(
        margin: const EdgeInsets.only(top: 24),
        alignment: Alignment.center,
        child: Column(children: [
          Container(
            alignment: Alignment.center,
            height: 88,
            width: 88,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(width: 1, color: cGrey)),
            child: Icon(
              icons,
              color: cBlue,
              size: 40,
            ),
          ),
          const SizedBox(height: 0),
          Text(
            title.toString(),
            style:
                titleText.copyWith(fontSize: 14, fontWeight: FontWeight.w600),
          )
        ]),
      ),
    );
  }
}
