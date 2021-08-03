part of 'pages.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: bold),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return CustomTextFormField(
            title: 'Fullname', hintText: 'Type your full name');
      }

      Widget emailInput() {
        return CustomTextFormField(
          title: "Email Address",
          hintText: "Type your email addres",
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
          title: "Password",
          hintText: "Type your password",
          obsecureText: true,
        );
      }

      Widget hobyInput() {
        return CustomTextFormField(title: 'Hobby', hintText: 'Type our hobby');
      }

      Widget submitButton() {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: CustomButton(
              title: 'Get Started',
              onPressed: () {
                Navigator.pushNamed(context, '/bonus-page');
              },
              width: double.infinity),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobyInput(),
            submitButton(),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 50, bottom: 73),
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
