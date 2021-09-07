part of 'widget.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obsecureText;
  final TextEditingController textEditingController;
  const CustomTextFormField(
      {Key? key,
      required this.title,
      required this.hintText,
      required this.textEditingController,
      this.obsecureText: false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          TextFormField(
            controller: textEditingController,
            obscureText: obsecureText,
            cursorColor: kBlackColor,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: blackTextStyle.copyWith(
                fontSize: 14,
                fontWeight: medium,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(color: kPrimaryColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
