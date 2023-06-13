import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sanber_pos/blocs/category_cubit/category_cubit.dart';
import 'package:sanber_pos/ui/widgets/widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddCategory extends StatefulWidget {
  AddCategory({super.key});

  @override
  State<AddCategory> createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  final TextEditingController categoryController = TextEditingController();

  void submit() {
    context
        .read<CategoryCubit>()
        .addCategoryData(name: categoryController.text.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Category'),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NormalInputWidget(
                title: "Input Category",
                hintText: "Input Category",
                textController: categoryController,
                // onChangeText: (value) {
                //   Get.find<ButtonController>().changeColor(value);
                // },
              ),
              BlocListener<CategoryCubit, CategoryState>(
                listener: (context, state) async {
                  print(state.addCategoryStatus);
                  if (state.addCategoryStatus == AddCategoryStatus.loading) {
                    const CardLoading();
                  } else if (state.addCategoryStatus ==
                      AddCategoryStatus.success) {
                    const CardSuccess();
                    setState(() {
                      context.read<CategoryCubit>().categoryListData();
                    });
                    final snackBar = SnackBar(
                      // ignore: unnecessary_string_interpolations
                      content: Text('Data Berhasil di tambahkan'),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    Future.delayed(Duration(seconds: 2), () {
                      Navigator.pop(context);
                    });
                  } else if (state.addCategoryStatus ==
                      AddCategoryStatus.failure) {
                    SharedPreferences preferences =
                        await SharedPreferences.getInstance();
                    await preferences.clear();
                    Navigator.pushNamed(context, '/login');
                    final snackBar = SnackBar(
                      // ignore: unnecessary_string_interpolations
                      content: Text('${state.message.toString()}'),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                child: ButtonLoading(
                  title: 'submit',
                  onPressed: () {
                    submit();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
