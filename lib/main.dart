import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff8f68aa);
    const secondaryColor = Color(0xfff2f1f6);
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        leadingWidth: 200,
        leading: const Row(
          children: [
            Icon(
              Icons.chevron_left,
              color: Colors.white,
            ),
            Text(
              'App Store',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Image.asset('assets/image.png'),
          DraggableScrollableSheet(
            maxChildSize: .85,
            initialChildSize: .7,
            minChildSize: .4,
            builder: (BuildContext context, ScrollController scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(24),
                    topLeft: Radius.circular(24),
                  ),
                  child: ColoredBox(
                    color: secondaryColor,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // header
                        Stack(
                          children: [
                            ColoredBox(
                              color: const Color(0xff00C5D6),
                              child: Row(
                                children: [
                                  IconButton(
                                      onPressed: () =>
                                          debugPrint('close sheet'),
                                      icon: const Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      ))
                                ],
                              ),
                            ),
                            // handle
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 12, bottom: 20),
                                  height: 4,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Colors.blueGrey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 16),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                'Rechnungsinformationen eintragen',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                'Du kannst die Rechnung im Hintergrund vergrößern und bewegen',
                                style: TextStyle(color: primaryColor),
                              ),
                            ),
                            SizedBox(height: 16),
                          ],
                        ),
                        const ColoredBox(
                          color: Colors.white,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: primaryColor),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: primaryColor),
                                  ),
                                  contentPadding: EdgeInsets.all(16),
                                  suffixIcon: Icon(
                                    Icons.calendar_month_rounded,
                                    color: primaryColor,
                                  ),
                                  hintText: "Rechnungsdatum",
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                                keyboardType: TextInputType.datetime,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: primaryColor),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: primaryColor),
                                    ),
                                    contentPadding: EdgeInsets.all(16),
                                    hintText: "Kunde",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    suffixIcon: Icon(
                                      Icons.chevron_right,
                                      color: primaryColor,
                                    ) //icon at tail of input
                                    ),
                                textCapitalization: TextCapitalization.words,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: primaryColor),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: primaryColor),
                                    ),
                                    contentPadding: EdgeInsets.all(16),
                                    hintText: "Was wurde verrechnet?",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    suffixIcon: Icon(
                                      Icons.chevron_right,
                                      color: primaryColor,
                                    ) //icon at tail of input
                                    ),
                                keyboardType: TextInputType.multiline,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: primaryColor),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: primaryColor),
                                    ),
                                    contentPadding: EdgeInsets.all(16),
                                    hintText:
                                        "Wann wurde die Rechnung gestellt?",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    suffixIcon: Icon(
                                      Icons.diamond_outlined,
                                      color: primaryColor,
                                    ) //icon at tail of input
                                    ),
                                keyboardType: TextInputType.datetime,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: primaryColor),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: primaryColor),
                                    ),
                                    contentPadding: EdgeInsets.all(16),
                                    hintText: "Rechnung bearbeiten",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    suffixIcon: Icon(
                                      Icons.diamond_outlined,
                                      color: primaryColor,
                                    ) //icon at tail of input
                                    ),
                              ),
                              Divider(
                                height: 1,
                                color: primaryColor,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextButton(
                          onPressed: () => debugPrint('delete draft'),
                          child: const Text(
                            'ENTWURF LÖSCHEN',
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Divider(
                          height: 1,
                          color: primaryColor,
                        ),
                        const SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    debugPrint('CTA Clicked');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xffd5d4d9),
                                    elevation: 0,
                                  ),
                                  child: const Text(
                                    'Einnahme abschließen',
                                    style: TextStyle(color: Color(0xff89898d)),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 30),
                              Container(
                                padding: const EdgeInsets.all(4),
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: const Column(
                                  children: [
                                    Icon(Icons.question_mark),
                                    Text('Hilfe')
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 100),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
