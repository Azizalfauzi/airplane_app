part of 'widget.dart';

class PhotoItems extends StatelessWidget {
  final String imgUrl;
  const PhotoItems({Key? key, required this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imgUrl), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
    );
  }
}
