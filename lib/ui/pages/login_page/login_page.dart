part of '../pages.dart';

class LoginPages extends StatelessWidget {
  LoginPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Text('Login Screen')),
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            headerTitle(context),
            SizedBox(
              height: 32,
            ),
            titleSignIn(context),
            formPhoneNumber(context),
            buttonCheckout(context),
          ],
        ),
      ),
    ));
  }

  headerTitle(BuildContext context) {
    return Container(
      height: 45,
      child:
          Row(children: [InkWell(onTap: () {}, child: Icon(Icons.arrow_back))]),
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
          child: const TextField(
            decoration: InputDecoration(
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
          child: const TextField(
            decoration: InputDecoration(
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
              'Login',
              style:
                  titleText.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            onPressed: () {
              Get.toNamed(RouteName.mainPages);
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
        SizedBox(height: 45),
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
