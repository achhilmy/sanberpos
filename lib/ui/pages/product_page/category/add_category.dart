import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sanber_pos/blocs/category_cubit/category_cubit.dart';
import 'package:sanber_pos/ui/widgets/widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddCategory extends StatefulWidget {
  AddCategory({super.key, this.isEdit});

  final isEdit;

  @override
  State<AddCategory> createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  final TextEditingController categoryController = TextEditingController();
  @override
  void initState() {
    print(widget.isEdit);
    super.initState();
  }

  void submit() {
    widget.isEdit['isEdit'] == 1
        ? context.read<CategoryCubit>().editCategoryData(
            name: categoryController.text.toString(),
            id: widget.isEdit['id'].toString())
        : context
            .read<CategoryCubit>()
            .addCategoryData(name: categoryController.text.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.isEdit['isEdit'] == 1
            ? const Text('Edit Category')
            : const Text(
                "Tambah Data",
              ),
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
              widget.isEdit['isEdit'] == 1
                  ? BlocListener<CategoryCubit, CategoryState>(
                      listener: (context, state) async {
                        print(state.addCategoryStatus);
                        if (state.editCategoryStatus ==
                            EditCategoryStatus.loading) {
                          const CardLoading();
                        } else if (state.editCategoryStatus ==
                            EditCategoryStatus.success) {
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
                        } else if (state.editCategoryStatus ==
                            EditCategoryStatus.failure) {
                          SharedPreferences preferences =
                              await SharedPreferences.getInstance();
                          await preferences.clear();
                          Future.delayed(Duration(seconds: 2), () {
                            Navigator.pushReplacement(
                                context, '/login' as Route<Object?>);
                          });
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
                        title: 'Edit',
                        onPressed: () {
                          submit();
                        },
                      ),
                    )
                  : BlocListener<CategoryCubit, CategoryState>(
                      listener: (context, state) async {
                        print(state.addCategoryStatus);
                        if (state.addCategoryStatus ==
                            AddCategoryStatus.loading) {
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
                          Future.delayed(Duration(seconds: 2), () {
                            Navigator.pushReplacement(
                                context, '/login' as Route<Object?>);
                          });
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
                        title: "Submit",
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
