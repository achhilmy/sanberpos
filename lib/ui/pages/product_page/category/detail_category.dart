part of '../../pages.dart';

class DetailCategory extends StatelessWidget {
  const DetailCategory({super.key, this.value});
  final value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Category'),
      ),
      body: SafeArea(
          child: ListTile(
        title: Text(value!['title'].toString()),
        subtitle: Text(value!['subtitle']),
        leading: Icon(Icons.category_rounded),
      )),
    );
  }
}
