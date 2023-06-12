part of '../../pages.dart';

class CategoryListPage extends StatefulWidget {
  const CategoryListPage({super.key});

  @override
  State<CategoryListPage> createState() => _CategoryListPageState();
}

class _CategoryListPageState extends State<CategoryListPage> {
  @override
  void initState() {
    print("object");
    context.read<CategoryCubit>().getCategory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Category')),
      body: SafeArea(
          child: Container(
        child: BlocConsumer<CategoryCubit, CategoryState>(
          listener: (context, state) {},
          builder: (context, state) {
            log(state.categoryListStatus.toString());
            final data = state.categoryModel;
            if (state.categoryListStatus == CategoryListStatus.success) {
              ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(data[index].name.toString()),
                    );
                  });
            } else {
              return Container(
                child: Text('Gagal'),
              );
            }
            return Text("data");
          },
        ),
      )),
    );
  }
}
