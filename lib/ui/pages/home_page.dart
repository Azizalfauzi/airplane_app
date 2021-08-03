part of 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nAziz Alfauzi',
                    style: blackTextStyle.copyWith(
                        fontSize: 24, fontWeight: semiBold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Where to fly today',
                    style:
                        greyTextStyle.copyWith(fontWeight: light, fontSize: 16),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image_profile.png'),
                  ),
                  shape: BoxShape.circle),
            )
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                title: 'Like Ciliwung',
                city: 'Tangerang',
                imageUrl: 'assets/image_destination1.png',
                rate: 4.6,
              ),
              DestinationCard(
                title: 'White House',
                city: 'Spain',
                imageUrl: 'assets/image_destination2.png',
                rate: 4.8,
              ),
              DestinationCard(
                title: 'Hill Heyo',
                city: 'Monaco',
                imageUrl: 'assets/image_destination3.png',
                rate: 4.5,
              ),
              DestinationCard(
                title: 'Menaare',
                city: 'Japan',
                imageUrl: 'assets/image_destination4.png',
                rate: 4.9,
              ),
              DestinationCard(
                title: 'Street Payung',
                city: 'Singapore',
                imageUrl: 'assets/image_destination5.png',
                rate: 4.7,
              ),
              // DestinationCard(),
              // DestinationCard(),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(fontSize: 18, fontWeight: bold),
            ),
            DestinationTile(
              title: 'Danau Beratan',
              city: 'Singaraja',
              imageUrl: 'assets/image_destination6.png',
              rate: 4.0,
            ),
            DestinationTile(
              title: 'Sydney Opera',
              city: 'Australia',
              imageUrl: 'assets/image_destination7.png',
              rate: 4.2,
            ),
            DestinationTile(
              title: 'Roma',
              city: 'Italia',
              imageUrl: 'assets/image_destination8.png',
              rate: 4.4,
            ),
            DestinationTile(
              title: 'Street Payung',
              city: 'Sinagpore',
              imageUrl: 'assets/image_destination5.png',
              rate: 4.7,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
        newDestination(),
      ],
    );
  }
}
