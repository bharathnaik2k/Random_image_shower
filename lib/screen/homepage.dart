import 'package:rand_img_shower/export.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List image = [
  "assets/jpg_image/img1.jpg",
  "assets/jpg_image/img2.jpg",
  "assets/jpg_image/img3.jpg",
  "assets/jpg_image/img4.jpg",
  "assets/jpg_image/img5.jpg",
  "assets/jpg_image/img6.jpg",
];
Random random = Random();

randomchange() {
  var randomimg = image[random.nextInt(image.length)];
  return randomimg;
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Random Image",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(),
                height: 88.5,
                // width:  // Set the height of the GridView
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: image.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, // Number of rows
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(image[index])));
                  },
                ),
              ),
              Container(
                height: 350,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade300,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    randomchange(),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {});
          },
          child: const Icon(Icons.replay),
        ),
      ),
    );
  }
}
