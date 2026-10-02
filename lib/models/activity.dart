import 'package:flutter/material.dart';

class Activity {
  final String name;
  final String schedule;
  final String description;
  final IconData icon;

  const Activity({
    required this.name,
    required this.schedule,
    required this.description,
    required this.icon,
  });
}

const List<Activity> activities = [
  Activity(name: "Robotika", 
  schedule: "Ponedjeljak 14:00, učionica 12", 
  description: "Sastavljamo i programiramo robote za školsko natjecanje", 
  icon: Icons.precision_manufacturing,
  ),
  Activity(name: "Zbor", 
  schedule: "Utorak 13:30, glazbena dvorana", 
  description: "Pripremamo pjesme za Dan škole i Božićni koncert", 
  icon: Icons.music_note,
  ),
  Activity(name: "Šah", 
  schedule: "Srijeda 14:00, Knjižnica", 
  description: "Učimo otvaranja i završnice, te igramo školski turnir.", 
  icon: Icons.extension,
  ),
  Activity(name: "Foto-grupa", 
  schedule: "Četvrtak 15:00, učionica 7", 
  description: "Snimamo školska događanja i uređjemo fotografije", 
  icon: Icons.photo_camera,
  ),
  Activity(name: "Košarka i priprema za međuškolsko natjecanje", 
  schedule: "Petak 14:30, sportska dvorana", 
  description: "Treniramo dva puta tjedno za nadolazeće natjecanje.", 
  icon: Icons.sports_basketball,
  )
];