import 'package:rand_img_shower/export.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatorroute();
  }

  _navigatorroute() async {
    await Future.delayed(
      const Duration(seconds: 3),
      () {},
    );
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) =>
            const HomePage(), //navigate splashscreen to homepage
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade400,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            svgwidget(
              SvgPicture.asset("assets/svg_image/sunrise.svg"), // asset image
              // SvgPicture.network(
              //     "https://www.svgrepo.com/show/398420/sunrise-over-mountains.svg"),   // network image
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                textwidget("Random Image"),
                textwidget("Shower"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
