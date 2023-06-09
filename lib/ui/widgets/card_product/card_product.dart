part of '../widget.dart';

class CardProduct extends StatelessWidget {
  // ignore: non_constant_identifier_names
  CardProduct(
      {super.key, this.title, this.stock, this.image, this.type, this.price});
  String? title;
  String? stock;
  String? image;
  String? type;
  String? price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 0.1)),
      child: Column(
        children: [
          Row(
            children: [
              Image.network(
                image.toString(),
                // 'https://www.realmadrid.com/img/vertical_380px/cristiano_550x650.jpg',
                height: 120,
                width: 90,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 30,
                    width: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: cGrey.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      type.toString(),
                      style: titleText.copyWith(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(width: 200, child: Text(title.toString())),
                  const SizedBox(height: 10),
                  Container(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Stock : $stock',
                          style: titleText.copyWith(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Rp $price",
                          style: titleText.copyWith(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                OutlinedButton(onPressed: () {}, child: Text('Edit Stok')),
                SizedBox(width: 10),
                OutlinedButton(onPressed: () {}, child: Text('Edit Price')),
                SizedBox(width: 10),
                OutlinedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
