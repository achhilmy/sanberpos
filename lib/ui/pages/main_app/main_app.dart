part of '../pages.dart';

class MainApp extends StatelessWidget {
  MainApp({super.key});

  // bool? loadingVal = false;
  RxBool? loadingValMain = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          Container(
            margin: const EdgeInsets.only(top: 16),
            // height: MediaQuery.of(context).size.height / 2,
            color: secondaryColor,
            padding: const EdgeInsets.all(24),
            child: nameAndNotif(context),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 3,
            color: Colors.white,
            child: menuCashier(),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Obx(
              () => ButtonLoading(
                loadingButton: loadingValMain?.value,
                title: 'Go to Cashier',
                onPressed: () async {
                  loadingValMain?.value = true;
                  SharedPreferences preferences =
                      await SharedPreferences.getInstance();
                  await preferences.clear();
                  Future.delayed(Duration(seconds: 2), () {
                    Get.toNamed(RouteName.loginPages);
                  });
                },
                Icons: Icons.grid_view,
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Widget nameAndNotif(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "David Sunandar",
          style: titleText.copyWith(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Businness owner',
              style: titleText.copyWith(
                  color: Colors.grey.withOpacity(0.5),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            const Icon(
              Icons.notifications,
              color: Colors.white,
            )
          ],
        ),
        const SizedBox(height: 48),
        Row(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 30,
                width: 96,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 0.1),
                    color: Colors.white),
                child: const Text('Transactions'),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onLongPress: () {},
              child: Container(
                height: 30,
                width: 114,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 0.1, color: cGrey),
                    color: secondaryColor.withOpacity(0.1)),
                child: Text(
                  'Product Sales',
                  style: titleText.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w400, color: cGrey),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          "This month transaction",
          style: titleText.copyWith(
              color: cGrey, fontSize: 14, fontWeight: FontWeight.w400),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '3599.00',
              style: titleText.copyWith(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w700),
            ),
            Container(
              height: 28,
              width: 69,
              padding: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                  color: cBlue, borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  const Icon(
                    Icons.arrow_upward,
                    color: Colors.white,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '20%',
                    style: titleText.copyWith(color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Image.asset('assets/logo/graph.png')
      ],
    );
  }

  Widget menuCashier() {
    return GridView.count(
      crossAxisCount: 3,
      children: <Widget>[
        MenuCashier(
          title: 'Dashboard',
          icons: Icons.pie_chart,
          onPressed: () {
            print('Dashboard');
          },
        ),
        MenuCashier(
          title: 'product',
          icons: Icons.inventory_2,
          onPressed: () {
            print('product');
            Get.toNamed(RouteName.choiceCategoryProduct);
          },
        ),
        MenuCashier(
          title: 'transaction',
          icons: Icons.assignment,
          onPressed: () {
            print('transaction');
          },
        ),
        MenuCashier(
          title: 'Payment',
          icons: Icons.credit_card,
          onPressed: () {
            print('payment');
          },
        ),
        MenuCashier(
          title: 'Customer',
          icons: Icons.group,
          onPressed: () {
            print('customer');
          },
        ),
        MenuCashier(
          title: 'Setting',
          icons: Icons.settings,
          onPressed: () {
            print('setting');
          },
        ),
      ],
    );
  }
}
