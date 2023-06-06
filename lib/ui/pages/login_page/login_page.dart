part of '../pages.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  late bool _passwordVisible = false;

  final _formKey = GlobalKey<FormState>();

  final authcc = Get.put(AuthController());

  final logincc = Get.put(LoginController());

  bool? loadingVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Text('Login Screen')),
        body: Obx(
      () => LoadingOverlay(
        isLoading: authcc.isLoading.value,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  headerTitle(context),
                  const SizedBox(
                    height: 32,
                  ),
                  titleSignIn(context),
                  formPhoneNumber(context),
                  buttonCheckout(context),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }

  headerTitle(BuildContext context) {
    return SizedBox(
      height: 45,
      child: Row(children: [
        InkWell(onTap: () {}, child: const Icon(Icons.arrow_back))
      ]),
    );
  }

  Widget titleSignIn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Sign up POS account', style: w700s20.copyWith(fontSize: 24)),
        const GapWidget(
          height: 16,
        ),
        Text('Welcome! Please register your account.',
            style: w700s20.copyWith(
                fontSize: 16, fontWeight: FontWeight.w400, color: cGrey)),
      ],
    );
  }

  Widget formPhoneNumber(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const GapWidget(
          height: 32,
        ),
        Text(
          'Phone number or Email',
          style: titleText.copyWith(
            color: cBlack,
            fontSize: 14,
          ),
        ),
        const GapWidget(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(5)),
          child: TextField(
            controller: logincc.emailController,
            decoration: const InputDecoration(
                hintText: 'ex. yourname@gmail.com',
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                border: InputBorder.none),
          ),
        ),
        const GapWidget(
          height: 16,
        ),
        Text(
          'Password',
          style: titleText.copyWith(
            color: cBlack,
            fontSize: 14,
          ),
        ),
        const GapWidget(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(5)),
          child: TextField(
            controller: logincc.passwordController,
            obscureText: !_passwordVisible,
            decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.key,
                  color: Colors.grey,
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _passwordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                )),
          ),
        )
      ],
    );
  }

  Widget buttonCheckout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const GapWidget(
          height: 32,
        ),
        Container(
            width: MediaQuery.of(context).size.width / 1,
            decoration: BoxDecoration(
                color: cGrey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5)),
            child: ButtonLoading(
                title: 'Login',
                loadingButton: loadingVal,
                onPressed: () {
                  setState(() {
                    loadingVal = true;
                  });
                  // Get.toNamed(RouteName.mainPages);
                  return authcc.login(logincc.emailController.text,
                      logincc.passwordController.text);
                })),
        const GapWidget(
          height: 32,
        ),
        const Divider(
          color: Colors.black,
        ),
        const GapWidget(
          height: 32,
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1,
          decoration: BoxDecoration(
              border: Border.all(width: 0.1),
              color: Colors.white,
              borderRadius: BorderRadius.circular(5)),
          child: TextButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/logo/google.png'),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Sign up with Google',
                  style: titleText.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            onPressed: () {},
          ),
        ),
        const SizedBox(height: 45),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don’t have an account?',
              style: titleText,
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed(RouteName.registerPages);
                },
                child: Text(
                  'Sign Up',
                  style: titleText.copyWith(color: mainColor),
                ))
          ],
        )
      ],
    );
  }
}
