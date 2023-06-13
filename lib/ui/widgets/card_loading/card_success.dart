part of '../widget.dart';

class CardSuccess extends StatelessWidget {
  const CardSuccess({super.key});

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
            Icon(
              Icons.check,
              size: 20,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Data berhasil di simpan',
              style: titleText.copyWith(fontSize: 20, color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
