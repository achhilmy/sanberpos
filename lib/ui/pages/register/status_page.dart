part of '../pages.dart';

class StatusPages extends StatelessWidget {
  const StatusPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width / 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo/image_register.png'),
            Text(
              'Successfully registered',
              style:
                  titleText.copyWith(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 10),
            Text(
              'You have successfully registered. Click button bellow to continue using the apps',
              style:
                  titleText.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonLoading(
                loadingButton: true,
                onPressed: () {
                  Get.toNamed(RouteName.mainPages);
                })
          ],
        ),
      )),
    );
  }
}
