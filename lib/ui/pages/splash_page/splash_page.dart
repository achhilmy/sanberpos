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
    onSplash();
  }

  void onSplash() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    print(pref.getString("user"));
    var token = pref.getString("user-token");
    print(token);
    token == null
        ? Timer(const Duration(seconds: 3), () {
            // Get.toNamed(RmouteName.loginPages);
            Navigator.pushNamed(context, '/login');
          })
        : Timer(const Duration(seconds: 3), () {
            // Get.toNamed(RouteName.mainPages);ss
            Navigator.pushNamed(context, '/main-app');
          });
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
