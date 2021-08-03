part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget buildContent() {
    return HomePage();
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
              isSelected: true,
            ),
            CustomBottomNavigation(
              imageUrl: 'assets/icon_booking.png',
            ),
            CustomBottomNavigation(
              imageUrl: 'assets/icon_card.png',
            ),
            CustomBottomNavigation(
              imageUrl: 'assets/icon_settings.png',
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),
          customNavigation(),
        ],
      ),
    );
  }
}
