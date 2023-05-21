part of '../pages.dart';

class SplashPages extends StatefulWidget {
  const SplashPages({super.key});

  @override
  State<SplashPages> createState() => _SplashPagesState();
}

class _SplashPagesState extends State<SplashPages> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 2), () => Get.toNamed(RouteName.loginPages));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.asset('assets/logo/logo.png')),
              Text(
                "Sanber Pos",
                style: titleText,
              ),
              const GapWidget(height: 20),
              const SizedBox(
                child: CircularProgressIndicator(),
              )
            ]),
      ),
    );
  }
}
