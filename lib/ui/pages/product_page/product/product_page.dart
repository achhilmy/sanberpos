part of '../../pages.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  void initState() {
    context.read<ProductCubit>().productListData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product'),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, top: 20, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "List Product",
                  style: titleText.copyWith(
                      fontSize: 20, fontWeight: FontWeight.w700),
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: const Row(
                      children: [Icon(Icons.add), Text("Add")],
                    ))
              ],
            ),
            const SizedBox(height: 10),
            Container(
              height: MediaQuery.of(context).size.height / 1.5,
              child: BlocConsumer<ProductCubit, ProductCubitState>(
                listener: (context, state) {
                  // TODO: implement listener
                },
                builder: (context, state) {
                  if (state.productListStatus == ProductListStatus.loading) {
                    return const CardLoading();
                  } else if (state.productListStatus ==
                      ProductListStatus.success) {
                    final dataProduct = state.productModel;
                    return ListView.separated(
                        itemBuilder: (context, index) {
                          return CardProduct(
                              image: "${dataProduct[index].imageUrls?[0]}",
                              title: "${dataProduct[index].name}",
                              type: "${dataProduct[index].description}",
                              stock: "${dataProduct[index].stock}",
                              price: "${dataProduct[index].price}");
                        },
                        separatorBuilder: (context, index) {
                          return Divider();
                        },
                        itemCount: dataProduct.length);
                  } else if (state.productListStatus ==
                      ProductListStatus.failure) {
                    Navigator.pushNamed(context, '/login');
                  }
                  return const CardEmptyData();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}