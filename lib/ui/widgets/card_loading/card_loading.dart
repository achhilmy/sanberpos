part of '../widget.dart';

class CardLoading extends StatelessWidget {
  const CardLoading({super.key});

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
            const CircularProgressIndicator(),
            SizedBox(
              height: 10,
            ),
            Text(
              'Load data . . . ',
              style: titleText.copyWith(fontSize: 20, color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
