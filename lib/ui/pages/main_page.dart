part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget buildContent(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return TransactionPage();
      case 2:
        return WalletPage();
      case 3:
        return SettingsPage();
      default:
        return HomePage();
    }
  }

  Widget customNavigation() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 60,
        margin: EdgeInsets.only(
            bottom: 30, left: defaultMargin, right: defaultMargin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: kWhiteColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomBottomNavigation(
              imageUrl: 'assets/icon_home.png',
              index: 0,
            ),
            CustomBottomNavigation(
              imageUrl: 'assets/icon_booking.png',
              index: 1,
            ),
            CustomBottomNavigation(
              imageUrl: 'assets/icon_card.png',
              index: 2,
            ),
            CustomBottomNavigation(
              imageUrl: 'assets/icon_settings.png',
              index: 3,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              customNavigation(),
            ],
          ),
        );
      },
    );
  }
}
