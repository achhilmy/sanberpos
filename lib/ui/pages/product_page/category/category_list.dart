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
    context.read<CategoryCubit>().categoryListData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Category')),
      body: SafeArea(
          child: Container(
        child: BlocConsumer<CategoryCubit, CategoryState>(
          listener: (context, state) {
            print(state.deleteCategoryStatus);
            if (state.deleteCategoryStatus == DeleteCategoryStatus.loading) {
              CardLoading();
            } else if (state.deleteCategoryStatus ==
                DeleteCategoryStatus.success) {
              CardSuccess();
              context.read<CategoryCubit>().categoryListData();
            } else {
              return null;
            }
          },
          builder: (context, state) {
            // log(state.categoryListStat÷us.toString());
            final data = state.categoryModel;
            if (state.categoryListStatus == CategoryListStatus.loading) {
              return CardLoading();
            } else if (state.categoryListStatus == CategoryListStatus.success) {
              return ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: IconButton(
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.purple,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/add-category',
                              arguments: {
                                "id": data[index].id,
                                "isEdit": 1,
                              });
                        },
                      ),
                      title: InkWell(
                        onTap: () {
                          final name = " ${data[index].name.toString()}";
                          final createdAt =
                              " ${data[index].createdAt.toString()}";

                          Navigator.pushNamed(context, '/detail-category',
                              arguments: {
                                "title": name,
                                "subtitle": createdAt
                              });
                          // print('Hello world ${data[index].name.toString()}');
                        },
                        child: Text(
                          data[index].name.toString().toUpperCase(),
                          style: titleText.copyWith(fontSize: 16),
                        ),
                      ),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.remove_circle_outline,
                          color: Colors.red,
                        ),
                        onPressed: () {
                          print('id ${data[index].id.toString()}');
                          final id = " ${data[index].id.toString()}";
                          context
                              .read<CategoryCubit>()
                              .deleteCategoryData(id: id);
                        },
                      ),
                    );
                  });
            } else {
              return CardEmptyData();
            }
          },
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add-category');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
