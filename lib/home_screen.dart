import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // List<Map<String,String>> listData = [
  //   {'الاسم':'القدس'},
  //   {'المساحة':'125 كم'},
  //   {'السكان':'358000 نسمة'},
  //   {'الدولة':'فلسطين'},
  //   {'اسم الطالب':'عمر أحمد علي'},
  // ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('عاصمة فلسطين'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/download.jpg',
              fit: BoxFit.cover,
              height: size.height * .3,
              width: size.width,
            ),
            const SizedBox(height: 10,),
            Text(
              'مدينة القدس',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: Colors.black45),
            ),
            const SizedBox(height: 10,),
            const _BoxText(
              textKey: 'الاسم',
              textValue: 'القدس',
            ),
            const SizedBox(height: 10,),
            const _BoxText(
              textKey: 'المساحة',
              textValue: '125 كم',
            ),
            const SizedBox(height: 10,),
            const _BoxText(
              textKey: 'السكان',
              textValue: '35800 نسمة',
            ),
            const SizedBox(height: 10,),
            const _BoxText(
              textKey: 'الدولة',
              textValue: 'فلسطين',
            ),
            const SizedBox(height: 10,),
            const _BoxText(
              textKey: 'اسم الطالب',
              textValue: 'عمر أحمد علي',
            ),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}

class _BoxText extends StatelessWidget {
  final String? textKey, textValue;

  const _BoxText({
    Key? key,
    this.textKey,
    this.textValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * .1,
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: size.width * .6,
            height: size.height * .1,
            child: Center(
              child: Text(
                textValue!,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.black38,
                    ),
              ),
            ),
            margin: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(color: Colors.black26),
            ),
          ),
          Container(
            width: size.width * .26,
            height: size.height * .1,
            child: Center(
              child: Text(
                textKey!,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.black38,
                    ),
              ),
            ),
            margin: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(color: Colors.black26),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: Colors.black26),
      ),
    );
  }
}
