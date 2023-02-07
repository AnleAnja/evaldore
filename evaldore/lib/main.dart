import 'package:evaldore/displaycategory.dart';
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
      title: 'evaldore',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CategoryOverview(title: 'Kategorien'),
    );
  }
}

class CategoryOverview extends StatefulWidget {
  const CategoryOverview({super.key, required this.title});

  final String title;

  @override
  State<CategoryOverview> createState() => _CategoryOverviewState();
}

class _CategoryOverviewState extends State<CategoryOverview> {
  var _category = Category(name: '', progress: false, criteria: []);
  var _showButton = true;
  final List<Category> _categories = [
    Category(name: 'Community und Support', progress: false, criteria: [
      Criteria(
          name: 'Größe der Community',
          description:
              'Dieses Kriterium sagt aus, wie viele Entwickelnde mit der Technologie arbeiten und sich damit auseinandersetzen.',
          weighted: false,
          value: -1),
      Criteria(
          name: 'Prominente Anwendungen',
          description:
              'Prominente Anwendungen sind das Werbeschild für einige Technologien. Namenhafte Firmen demonstrieren, dass die Technologien für große Anwendungen geeignet sind und mit großen Nutzergruppen umgehen können',
          weighted: false,
          value: -1),
      Criteria(
          name: 'Online Ressourcen',
          description:
              'Verfügbare Online Ressourcen sind die erste Anlaufstelle für Support bei Entwicklern, daher sind hier die Quantität und Qualität wichtig',
          weighted: false,
          value: -1),
    ]),
    Category(name: 'Kosten', progress: false, criteria: [
      Criteria(
          name: 'Entwicklungskosten',
          description:
              'Die Entwicklungskosten ergeben sich vor allem aus dem allgemeinen Aufwand, da sie sich in der Bezahlung von Entwickelnden widerspiegeln. Auch eventuelle Wartungskosten zählen hier dazu.',
          weighted: false,
          value: -1),
      Criteria(
          name: 'Supportkosten',
          description:
              'Die Supportkosten sind die Kosten, die für Hilfe bei der Verwendung des Frameworks aufgewendet werden müssen.',
          weighted: false,
          value: -1),
      Criteria(
          name: 'Bereitstellungskosten',
          description:
              'Die Bereitstellungskosten sind die Kosten, die für die Bereitstellung einer Anwendung aufgewendet werden müssen.',
          weighted: false,
          value: -1 - 1 - 1 - 1),
    ]),
    Category(name: 'Bereitstellung', progress: false, criteria: [
      Criteria(
          name: 'Native App Stores',
          description: '',
          weighted: false,
          value: -1),
      Criteria(
          name: 'Zeit bis zur Bereitstellung',
          description: '',
          weighted: false,
          value: -1),
    ]),
    Category(name: 'Langlebigkeit', progress: false, criteria: [
      Criteria(
          name: 'Modularisierbarkeit',
          description: '',
          weighted: false,
          value: -1 - 1 - 1 - 1),
      Criteria(
          name: 'Betriebssystem Versionsunterstützung',
          description: '',
          weighted: false,
          value: -1),
      Criteria(
          name: 'Kontinuierliche Weiterentwicklung',
          description: '',
          weighted: false,
          value: -1 - 1 - 1),
    ]),
    Category(name: 'Entwicklungsprozess', progress: false, criteria: [
      Criteria(
          name: 'Programmiersprache',
          description: '',
          weighted: false,
          value: -1 - 1 - 1),
      Criteria(
          name: 'Einfachheit',
          description: '',
          weighted: false,
          value: -1 - 1 - 1),
      Criteria(
          name: 'Einarbeitungszeit',
          description: '',
          weighted: false,
          value: -1 - 1 - 1),
    ]),
    Category(name: 'UI / UX', progress: false, criteria: [
      Criteria(
          name: 'Natives Look & Feel',
          description: '',
          weighted: false,
          value: -1 - 1 - 1),
      Criteria(
          name: 'Reichhaltige UI Elemente',
          description: '',
          weighted: false,
          value: -1 - 1 - 1),
      Criteria(
          name: 'Interaktionsdesign',
          description: '',
          weighted: false,
          value: -1 - 1 - 1),
      Criteria(
          name: 'Gesten', description: '', weighted: false, value: -1 - 1 - 1),
      Criteria(
          name: 'Navigation',
          description: '',
          weighted: false,
          value: -1 - 1 - 1),
      Criteria(
          name: 'Eingabemethoden',
          description: '',
          weighted: false,
          value: -1 - 1 - 1),
      Criteria(
          name: 'Multimedia',
          description: '',
          weighted: false,
          value: -1 - 1 - 1),
      Criteria(
          name: 'Animationen',
          description: '',
          weighted: false,
          value: -1 - 1 - 1),
      Criteria(
          name: '3D Grafiken',
          description: '',
          weighted: false,
          value: -1 - 1 - 1),
      Criteria(
          name: 'Offline Nutzung',
          description: '',
          weighted: false,
          value: -1 - 1 - 1),
      Criteria(
          name: 'Accessibility',
          description: '',
          weighted: false,
          value: -1 - 1 - 1),
    ]),
    Category(name: 'Framework', progress: false, criteria: [
      Criteria(
          name: 'Stabilität',
          description: '',
          weighted: false,
          value: -1 - 1 - 1),
      Criteria(
          name: 'Einfache Installation / Setup',
          description: '',
          weighted: false,
          value: -1 - 1 - 1),
      Criteria(
          name: 'Dokumentationsqualität',
          description: '',
          weighted: false,
          value: -1 - 1 - 1),
      Criteria(
          name: 'Lizensierung',
          description: '',
          weighted: false,
          value: -1 - 1 - 1),
      Criteria(
          name: 'IDE', description: '', weighted: false, value: -1 - 1 - 1),
      Criteria(name: 'Tooling', description: '', weighted: false, value: -1),
    ]),
    Category(name: 'Performance', progress: false, criteria: [
      Criteria(
          name: 'Startzeit', description: '', weighted: false, value: -1 - 1),
      Criteria(
          name: 'Reaktionszeit',
          description: '',
          weighted: false,
          value: -1 - 1),
      Criteria(
          name: 'Stromverbrauch',
          description: '',
          weighted: false,
          value: -1 - 1),
      Criteria(
          name: 'Größe der Anwendungsdatei',
          description: '',
          weighted: false,
          value: -1 - 1),
    ]),
    Category(name: 'Wartbarkeit', progress: false, criteria: [
      Criteria(
          name: 'Lines of Code',
          description: '',
          weighted: false,
          value: -1 - 1),
      Criteria(
          name: 'Erweiterungen',
          description: '',
          weighted: false,
          value: -1 - 1),
    ]),
    Category(name: 'Heterogenität', progress: false, criteria: [
      Criteria(
          name: 'Unterstützte Betriebssysteme',
          description: '',
          weighted: false,
          value: -1 - 1),
      Criteria(
          name: 'Unterstützungsqualität',
          description: '',
          weighted: false,
          value: -1 - 1),
      Criteria(
          name: 'Wiederverwendbarkeit',
          description: '',
          weighted: false,
          value: -1 - 1),
      Criteria(
          name: 'Formfaktoren / Pixeldichte',
          description: '',
          weighted: false,
          value: -1 - 1),
    ]),
    Category(name: 'Gerätespezifische Funktionen', progress: false, criteria: [
      Criteria(
          name: 'Native Funktionen',
          description: '',
          weighted: false,
          value: -1 - 1),
      Criteria(
          name: 'Hardwarefunktionen',
          description: '',
          weighted: false,
          value: -1 - 1),
      Criteria(name: 'Sensoren', description: '', weighted: false, value: -1),
    ]),
  ];

  @override
  Widget build(BuildContext context) {
    for (var category in _categories) {
      if (!category.progress) _showButton = false;
    }
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(children: <Widget>[
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: _categories.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () async {
                        _category = await Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DisplayCategory(category: _categories[index]);
                        }));
                        setState(() {
                          _categories[index] = _category;
                          if(_categories.every((element) => element.progress == true)) _showButton = true;
                        });
                      },
                      child: ListTile(
                        leading: (_categories[index].progress
                            ? const Icon(Icons.check_circle,
                                color: Colors.lightGreen)
                            : const Icon(Icons.pending)),
                        title: Text(_categories[index].name),
                        trailing: const Icon(Icons.keyboard_arrow_right),
                      ));
                },
              ),
              _showButton
                  ? ElevatedButton(
                      onPressed: () {},
                      child: const Text('Auswertung'),
                    )
                  : Container()
            ])));
  }
}

class Category {
  String name;
  bool progress;
  List<Criteria> criteria;

  Category(
      {required this.name, required this.progress, required this.criteria});
}

class Criteria {
  String name;
  String description;
  bool weighted;
  num value;

  Criteria(
      {required this.name,
      required this.description,
      required this.weighted,
      required this.value});
}
