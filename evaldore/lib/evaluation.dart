import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'main.dart';

class Evaluation extends StatelessWidget {
  Evaluation({Key? key, required this.categories}) : super(key: key);

  final List<Category> categories;
  final List<Framework> _frameworks = [
    Framework(
        name: 'Kotlin Multiplatform Mobile',
        description:
            'Kotlin Multiplatform hat die beste Nativität und leistet in Hinblick auf UI-Elemente und Performance ein Erlebnis, das der nativen Implementierung entspricht. Gleiches gilt für den Zugriff auf native Funktionalitäten, Sensoren und APIs. Es handelt sich um eine sehr junge Technologie, die gerade erst in die Beta-Phase eingetreten ist und daher kaum Community Support erfährt, keine hohe Stabilität aufweist und unzureichend dokumentiert ist. Der größte Nachteil ist der erhöhte Aufwand, der mit der nativen Implementierung der Bedienoberflächen einhergeht. Dies steigert nicht nur den Zeitaufwand, sondern auch die jeweilige Einarbeitungszeit und die Recherche zu den nativen Technologien, die auch bestimmt, welche Features umsetzbar sind',
        link: Uri.parse(
            'https://kotlinlang.org/docs/multiplatform-mobile-getting-started.html'),
        sum: 0,
        assessment: [
          Assessment(name: 'Größe der Community', value: 1),
          Assessment(name: 'Prominente Anwendungen', value: 3),
          Assessment(name: 'Online Ressourcen', value: 3),
          Assessment(name: 'Entwicklungskosten', value: 3),
          Assessment(name: 'Supportkosten', value: 5),
          Assessment(name: 'Bereitstellungskosten', value: 3),
          Assessment(name: 'Native App Stores', value: 5),
          Assessment(name: 'Zeit bis zur Bereitstellung', value: 4),
          Assessment(name: 'Modularisierbarkeit', value: 5),
          Assessment(name: 'Betriebssystem Versionsunterstützung', value: 5),
          Assessment(name: 'Kontinuierliche Weiterentwicklung', value: 5),
          Assessment(name: 'Programmiersprache', value: 4),
          Assessment(name: 'Einfachheit', value: 3),
          Assessment(name: 'Einarbeitungszeit', value: 3),
          Assessment(name: 'Natives Look & Feel', value: 5),
          Assessment(name: 'Reichhaltige UI Elemente', value: 5),
          Assessment(name: 'Interaktionsdesign', value: 4),
          Assessment(name: 'Gesten', value: 5),
          Assessment(name: 'Navigation', value: 5),
          Assessment(name: 'Eingabemethoden', value: 5),
          Assessment(name: 'Multimedia', value: 3),
          Assessment(name: 'Animationen', value: 4),
          Assessment(name: '3D Grafiken', value: 2),
          Assessment(name: 'Offline Nutzung', value: 4),
          Assessment(name: 'Accessibility', value: 5),
          Assessment(name: 'Stabilität', value: 2),
          Assessment(name: 'Einfache Installation / Setup', value: 4),
          Assessment(name: 'Dokumentationsqualität', value: 2),
          Assessment(name: 'Lizensierung', value: 5),
          Assessment(name: 'IDE', value: 3),
          Assessment(name: 'Tooling', value: 4),
          Assessment(name: 'Startzeit', value: 5),
          Assessment(name: 'Reaktionszeit', value: 5),
          Assessment(name: 'Stromverbrauch', value: 5),
          Assessment(name: 'Größe der Anwendungsdatei', value: 4),
          Assessment(name: 'Lines of Code', value: 5),
          Assessment(name: 'Erweiterungen', value: 5),
          Assessment(name: 'Unterstützte Betriebssysteme', value: 4),
          Assessment(name: 'Unterstützungsqualität', value: 5),
          Assessment(name: 'Wiederverwendbarkeit', value: 3),
          Assessment(name: 'Formfaktoren / Pixeldichte', value: 5),
          Assessment(name: 'Native Funktionen', value: 5),
          Assessment(name: 'Hardwarefunktionen', value: 4),
          Assessment(name: 'Sensoren', value: 5),
        ]),
    Framework(
        name: 'Flutter',
        description:
            'Flutter hat seine größte Stärken in der Dokumentationsqualität und der starken Community, die den gesamten Entwicklungsprozess vereinfachen, die Einarbeitungszeit verkürzen und dafür sorgen, dass alle Features und UI-Elemente schnell und einfach umsetzbar sind. Es gibt leichte Abstriche in der Performanz sowie bei der Programmiersprache, da Dart für viele Entwickler, die noch keine Flutter Vorerfahrung haben, neu ist.',
        link: Uri.parse('https://docs.flutter.dev/get-started/install'),
        sum: 0,
        assessment: [
          Assessment(name: 'Flutter', value: 0),
          Assessment(name: 'Größe der Community', value: 5),
          Assessment(name: 'Prominente Anwendungen', value: 4),
          Assessment(name: 'Online Ressourcen', value: 5),
          Assessment(name: 'Entwicklungskosten', value: 5),
          Assessment(name: 'Supportkosten', value: 5),
          Assessment(name: 'Bereitstellungskosten', value: 3),
          Assessment(name: 'Native App Stores', value: 5),
          Assessment(name: 'Zeit bis zur Bereitstellung', value: 4),
          Assessment(name: 'Modularisierbarkeit', value: 4),
          Assessment(name: 'Betriebssystem Versionsunterstützung', value: 4),
          Assessment(name: 'Kontinuierliche Weiterentwicklung', value: 5),
          Assessment(name: 'Programmiersprache', value: 3),
          Assessment(name: 'Einfachheit', value: 5),
          Assessment(name: 'Einarbeitungszeit', value: 4),
          Assessment(name: 'Natives Look & Feel', value: 4),
          Assessment(name: 'Reichhaltige UI Elemente', value: 5),
          Assessment(name: 'Interaktionsdesign', value: 4),
          Assessment(name: 'Gesten', value: 5),
          Assessment(name: 'Navigation', value: 5),
          Assessment(name: 'Eingabemethoden', value: 5),
          Assessment(name: 'Multimedia', value: 5),
          Assessment(name: 'Animationen', value: 5),
          Assessment(name: '3D Grafiken', value: 5),
          Assessment(name: 'Offline Nutzung', value: 4),
          Assessment(name: 'Accessibility', value: 4),
          Assessment(name: 'Stabilität', value: 5),
          Assessment(name: 'Einfache Installation / Setup', value: 5),
          Assessment(name: 'Dokumentationsqualität', value: 5),
          Assessment(name: 'Lizensierung', value: 4),
          Assessment(name: 'IDE', value: 5),
          Assessment(name: 'Tooling', value: 5),
          Assessment(name: 'Startzeit', value: 3),
          Assessment(name: 'Reaktionszeit', value: 5),
          Assessment(name: 'Stromverbrauch', value: 5),
          Assessment(name: 'Größe der Anwendungsdatei', value: 4),
          Assessment(name: 'Lines of Code', value: 4),
          Assessment(name: 'Erweiterungen', value: 4),
          Assessment(name: 'Unterstützte Betriebssysteme', value: 5),
          Assessment(name: 'Unterstützungsqualität', value: 5),
          Assessment(name: 'Wiederverwendbarkeit', value: 4),
          Assessment(name: 'Formfaktoren / Pixeldichte', value: 5),
          Assessment(name: 'Native Funktionen', value: 4),
          Assessment(name: 'Hardwarefunktionen', value: 5),
          Assessment(name: 'Sensoren', value: 5),
        ]),
    Framework(
        name: 'React Native',
        description:
            'React Native hat den größten Vorteil in seiner Funktionsweise, da sie eine komplette Wiederverwendbarkeit der Codebasis mit gleichzeitiger Gewährleistung eines nativen Benutzungserlebnisses ermöglicht. Auf der anderen Seite ist die Verfügbarkeit dieses Frameworks stark eingeschränkt, die Performance ist deutlich schlechter als bei anderen Frameworks, die Dokumentation ist fragmentiert und unintuitiv und somit gestaltet sich der gesamte Einarbeitungs- und Entwicklungsprozess schwierig. Für Entwickelnde mit entsprechenden Vorerfahrungen, bestenfalls mit dem Framework ReactJS, wird diese Hürde jedoch verringert.',
        link: Uri.parse('https://reactnative.dev/docs/getting-started'),
        sum: 0,
        assessment: [
          Assessment(name: 'React Native', value: 0),
          Assessment(name: 'Größe der Community', value: 4),
          Assessment(name: 'Prominente Anwendungen', value: 5),
          Assessment(name: 'Online Ressourcen', value: 2),
          Assessment(name: 'Entwicklungskosten', value: 5),
          Assessment(name: 'Supportkosten', value: 5),
          Assessment(name: 'Bereitstellungskosten', value: 3),
          Assessment(name: 'Native App Stores', value: 4),
          Assessment(name: 'Zeit bis zur Bereitstellung', value: 4),
          Assessment(name: 'Modularisierbarkeit', value: 2),
          Assessment(name: 'Betriebssystem Versionsunterstützung', value: 5),
          Assessment(name: 'Kontinuierliche Weiterentwicklung', value: 5),
          Assessment(name: 'Programmiersprache', value: 4),
          Assessment(name: 'Einfachheit', value: 2),
          Assessment(name: 'Einarbeitungszeit', value: 3),
          Assessment(name: 'Natives Look & Feel', value: 5),
          Assessment(name: 'Reichhaltige UI Elemente', value: 5),
          Assessment(name: 'Interaktionsdesign', value: 4),
          Assessment(name: 'Gesten', value: 5),
          Assessment(name: 'Navigation', value: 4),
          Assessment(name: 'Eingabemethoden', value: 5),
          Assessment(name: 'Multimedia', value: 5),
          Assessment(name: 'Animationen', value: 5),
          Assessment(name: '3D Grafiken', value: 5),
          Assessment(name: 'Offline Nutzung', value: 4),
          Assessment(name: 'Accessibility', value: 4),
          Assessment(name: 'Stabilität', value: 3),
          Assessment(name: 'Einfache Installation / Setup', value: 5),
          Assessment(name: 'Dokumentationsqualität', value: 3),
          Assessment(name: 'Lizensierung', value: 5),
          Assessment(name: 'IDE', value: 4),
          Assessment(name: 'Tooling', value: 5),
          Assessment(name: 'Startzeit', value: 2),
          Assessment(name: 'Reaktionszeit', value: 2),
          Assessment(name: 'Stromverbrauch', value: 4),
          Assessment(name: 'Größe der Anwendungsdatei', value: 3),
          Assessment(name: 'Lines of Code', value: 3),
          Assessment(name: 'Erweiterungen', value: 3),
          Assessment(name: 'Unterstützte Betriebssysteme', value: 2),
          Assessment(name: 'Unterstützungsqualität', value: 5),
          Assessment(name: 'Wiederverwendbarkeit', value: 5),
          Assessment(name: 'Formfaktoren / Pixeldichte', value: 5),
          Assessment(name: 'Native Funktionen', value: 4),
          Assessment(name: 'Hardwarefunktionen', value: 3),
          Assessment(name: 'Sensoren', value: 4),
        ]),
    Framework(
        name: 'Vue.js',
        description:
            'Vue.js als PWA hat den Vorteil der hohen Performanz sowie großen Verbreitung in der Community von Entwickelnden durch den Einsatz von Web Technologien. Es gibt aus diesem Grund gute Dokumentationen und reichhaltige Bibliotheken zur Umsetzung verschiedener Features. Dafür ist kaum Nativität gegeben, es ist sehr offensichtlich, dass es sich um eine Web Anwendung in einem artefaktfreien Browser handelt und somit ist auch der Zugriff auf gerätespezifische APIs teilweise eingeschränkt.',
        link: Uri.parse('https://vuejs.org/guide/quick-start.html'),
        sum: 0,
        assessment: [
          Assessment(name: 'Vue.js', value: 0),
          Assessment(name: 'Größe der Community', value: 5),
          Assessment(name: 'Prominente Anwendungen', value: 2),
          Assessment(name: 'Online Ressourcen', value: 4),
          Assessment(name: 'Entwicklungskosten', value: 5),
          Assessment(name: 'Supportkosten', value: 3),
          Assessment(name: 'Bereitstellungskosten', value: 4),
          Assessment(name: 'Native App Stores', value: 2),
          Assessment(name: 'Zeit bis zur Bereitstellung', value: 4),
          Assessment(name: 'Modularisierbarkeit', value: 5),
          Assessment(name: 'Betriebssystem Versionsunterstützung', value: 5),
          Assessment(name: 'Kontinuierliche Weiterentwicklung', value: 3),
          Assessment(name: 'Programmiersprache', value: 4),
          Assessment(name: 'Einfachheit', value: 4),
          Assessment(name: 'Einarbeitungszeit', value: 5),
          Assessment(name: 'Natives Look & Feel', value: 1),
          Assessment(name: 'Reichhaltige UI Elemente', value: 3),
          Assessment(name: 'Interaktionsdesign', value: 2),
          Assessment(name: 'Gesten', value: 5),
          Assessment(name: 'Navigation', value: 5),
          Assessment(name: 'Eingabemethoden', value: 5),
          Assessment(name: 'Multimedia', value: 5),
          Assessment(name: 'Animationen', value: 5),
          Assessment(name: '3D Grafiken', value: 5),
          Assessment(name: 'Offline Nutzung', value: 4),
          Assessment(name: 'Accessibility', value: 3),
          Assessment(name: 'Stabilität', value: 5),
          Assessment(name: 'Einfache Installation / Setup', value: 2),
          Assessment(name: 'Dokumentationsqualität', value: 4),
          Assessment(name: 'Lizensierung', value: 5),
          Assessment(name: 'IDE', value: 4),
          Assessment(name: 'Tooling', value: 5),
          Assessment(name: 'Startzeit', value: 4),
          Assessment(name: 'Reaktionszeit', value: 5),
          Assessment(name: 'Stromverbrauch', value: 4),
          Assessment(name: 'Größe der Anwendungsdatei', value: 5),
          Assessment(name: 'Lines of Code', value: 3),
          Assessment(name: 'Erweiterungen', value: 4),
          Assessment(name: 'Unterstützte Betriebssysteme', value: 5),
          Assessment(name: 'Unterstützungsqualität', value: 5),
          Assessment(name: 'Wiederverwendbarkeit', value: 5),
          Assessment(name: 'Formfaktoren / Pixeldichte', value: 4),
          Assessment(name: 'Native Funktionen', value: 3),
          Assessment(name: 'Hardwarefunktionen', value: 4),
          Assessment(name: 'Sensoren', value: 2),
        ])
  ];

  List<Text> getAlternatives() {
    List<Text> alternatives = [];
    var ordered = _frameworks.reversed.toList();
    List.generate(ordered.length - 1, (index) {
      alternatives.add(Text('${(index + 1).toString()}. ${ordered[index + 1].name} (${ordered[index + 1].sum.toString()} Punkte)'));
    });
    return alternatives;
  }


  @override
  Widget build(BuildContext context) {
    for (var category in categories) {
      for (var criteria in category.criteria) {
        for (var framework in _frameworks) {
          for (var assessment in framework.assessment) {
            if (criteria.name == assessment.name) {
              framework.sum += criteria.value * assessment.value;
            }
          }
        }
      }
    }
    _frameworks.sort((a, b) => a.sum.compareTo(b.sum));
    final orderedFrameworks = _frameworks.reversed;
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Evaluation')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(
              'Das am besten geeignete Framwork ist ${orderedFrameworks.first.name} mit ${orderedFrameworks.first.sum} Punkten',
              style: textTheme.headlineMedium),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                child: const Text('Getting Started', style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                )),
                onTap: () => launchUrl(orderedFrameworks.first.link)),
          ),
          Text(orderedFrameworks.first.description),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Divider(),
          ),
          Text('Die Alternativen sind:', style: textTheme.headlineSmall),
          Column(
            children: [...getAlternatives()],
          )
        ]),
      ),
    );
  }
}

class Framework {
  String name;
  String description;
  Uri link;
  num sum;
  List<Assessment> assessment;

  Framework(
      {required this.name,
      required this.description,
      required this.link,
      required this.sum,
      required this.assessment});
}

class Assessment {
  String name;
  num value;

  Assessment({required this.name, required this.value});
}
