part of 'widget.dart';

class InterestRows extends StatelessWidget {
  final String textInterest;
  const InterestRows({Key? key, required this.textInterest}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/icon_check.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Text(
            textInterest,
            style: blackTextStyle,
          )
        ],
      ),
    );
  }
}
