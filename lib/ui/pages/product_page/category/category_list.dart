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
          listener: (context, state) {},
          builder: (context, state) {
            log(state.categoryListStatus.toString());
            final data = state.categoryModel;
            if (state.categoryListStatus == CategoryListStatus.success) {
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
                        onPressed: () {},
                      ),
                      title: InkWell(
                        onTap: () {
                          print('Hello world ${data[index].name.toString()}');
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
                        onPressed: () {},
                      ),
                    );
                  });
            } else {
              return Container(
                child: Text('load Data'),
              );
            }
          },
        ),
      )),
    );
  }
}
