part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController(text: '');

  TextEditingController emailController = TextEditingController(text: '');

  TextEditingController passController = TextEditingController(text: '');

  TextEditingController hobbyController = TextEditingController(text: '');

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
          title: 'Fullname',
          hintText: 'Type your full name',
          textEditingController: nameController,
        );
      }

      Widget emailInput() {
        return CustomTextFormField(
          title: "Email Address",
          hintText: "Type your email addres",
          textEditingController: emailController,
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
            title: "Password",
            hintText: "Type your password",
            obsecureText: true,
            textEditingController: passController);
      }

      Widget hobyInput() {
        return CustomTextFormField(
          title: 'Hobby',
          hintText: 'Type our hobby',
          textEditingController: hobbyController,
        );
      }

      Widget submitButton() {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: BlocConsumer<AuthCubit, AuthState>(
            listener: (context, state) {
              if (state is AuthSuccess) {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/bonus-page', (route) => false);
              } else if (state is AuthFailed) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: kRedColor,
                    content: Text(state.error),
                  ),
                );
              }
            },
            builder: (context, state) {
              if (state is AuthLoading) {
                return Center(
                  child: SpinKitFadingCircle(
                    color: kPrimaryColor,
                    size: 50,
                  ),
                );
              }
              return CustomButton(
                  title: 'Get Started',
                  onPressed: () {
                    context.read<AuthCubit>().signUp(
                        email: emailController.text,
                        password: passController.text,
                        name: nameController.text,
                        hobby: hobbyController.text);
                  },
                  width: double.infinity);
            },
          ),
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
