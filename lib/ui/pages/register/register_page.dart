part of '../pages.dart';

class RegisterPages extends StatefulWidget {
  const RegisterPages({super.key});

  @override
  State<RegisterPages> createState() => _RegisterPagesState();
}

class _RegisterPagesState extends State<RegisterPages> {
  // final cc = Get.find<LoginController>();
  final _passwordVisible = false;
  final _formKeyReg = GlobalKey<FormState>();
  //GlobalKey<FormState> _formKeyReg = GlobalKey<FormState>();
  final authc = Get.put(AuthController());
  final registerc = Get.put(RegisterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Text('Login Screen')),
        body: Obx(
      () => LoadingOverlay(
        isLoading: authc.isLoadingReg.value,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
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
                formPhoneNumberAndPassword(context),
                buttonCheckout(context),
              ],
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

  Widget formPhoneNumberAndPassword(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const GapWidget(
          height: 32,
        ),
        Text(
          'Email',
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
            controller: registerc.emailController,
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
          'Phone',
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
            controller: registerc.nameController,
            decoration: const InputDecoration(
                hintText: 'name',
                prefixIcon: Icon(
                  Icons.call,
                  color: Colors.grey,
                ),
                border: InputBorder.none),
          ),
        ),
        const GapWidget(
          height: 16,
        ),
        const SizedBox(
          height: 10,
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
            controller: registerc.passwordController,
            decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.key,
                  color: Colors.grey,
                ),
                hintText: 'Type your password here',
                suffixIcon: Align(
                  widthFactor: 1.0,
                  heightFactor: 1.0,
                  child: Icon(
                    Icons.remove_red_eye,
                  ),
                ),
                border: InputBorder.none),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Confirm Password',
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
            controller: registerc.confirmPasswordController,
            decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.key,
                  color: Colors.grey,
                ),
                hintText: 'Type your password here',
                suffixIcon: Align(
                  widthFactor: 1.0,
                  heightFactor: 1.0,
                  child: Icon(
                    Icons.remove_red_eye,
                  ),
                ),
                border: InputBorder.none),
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
          child: TextButton(
            child: Text(
              'Register',
              style:
                  titleText.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            onPressed: () {
              return authc.registerTest(
                  registerc.emailController.text,
                  registerc.nameController.text,
                  registerc.confirmPasswordController.text,
                  registerc.passwordController.text);
              // Get.toNamed(RouteName.statusPages);
            },
          ),
        ),
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
                onPressed: () {},
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
