part of '../widget.dart';

class CardEmptyData extends StatelessWidget {
  const CardEmptyData({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height / 5,
        width: MediaQuery.of(context).size.width / 1,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.blue, width: 0.5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.construction,
              size: 60,
              color: Colors.blue,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Data Kosong',
              style: titleText.copyWith(fontSize: 20, color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
