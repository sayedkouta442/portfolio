class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  Project(this.name, this.description, this.image, this.link);
}

List<Project> projectList = [
  Project(
    'Movies App',
    "Presenting Movies App – a Flutter application that brings the world of cinema to your fingertips. Discover trending films, explore detailed information powered by the TMDb API, and create your own personalized watchlists. With a clean interface and smooth navigation, browsing movies, checking ratings, and managing favorites becomes an engaging and enjoyable experience.",
    'assets/images/Frame4.png',
    'https://www.linkedin.com/posts/elsayed-kouta-7183b8336_proud-to-share-a-project-ive-been-working-activity-7328858273585991680-22Jn?utm_source=share&utm_medium=member_desktop&rcm=ACoAAFRruQQBH4BDYhL_UCorCfYA9R_w_MKqTNM',
  ),
  Project(
    'Car Rental App',
    "A full-featured car rental app that lets users search, book, and pay for cars from nearby agencies with real-time availability and smart filters. Built with Flutter & Supabase using clean architecture and Cubit, with offline caching, Stripe & COD payments, and interactive maps.",
    'assets/images/Frame2.png',
    'https://www.linkedin.com/posts/elsayed-kouta-7183b8336_flutter-supabase-hive-activity-7350661315532619778-nTH_?utm_source=share&utm_medium=member_desktop&rcm=ACoAAFRruQQBH4BDYhL_UCorCfYA9R_w_MKqTNM',
  ),
  Project(
      'Attendance App',
      "A smart attendance app that streamlines check-ins, leave requests, and HR tracking with location verification and face recognition for secure, efficient workforce management. Built using Flutter and Supabase, offering real-time analytics, biometric validation, and seamless HR integration.",
      'assets/images/Frame3.png',
      'https://www.linkedin.com/posts/elsayed-kouta-7183b8336_hrtech-workforcemanagement-futureofwork-activity-7357692772495097857-aAra?utm_source=share&utm_medium=member_desktop&rcm=ACoAAFRruQQBH4BDYhL_UCorCfYA9R_w_MKqTNM'),

  Project(
      'marrahWaTallam(Educational)',
      'Fun & Learn is an interactive educational app for children that teaches Arabic letters, numbers, colors, animals, and more through engaging visuals and clear pronunciation. It includes simple games and activities to boost memory, logic, and creativity in a fun learning experience.',
      'assets/images/Frame5.png',
      ''),

  // Project(
  //   'Notes && ToDo',
  //   'Offline Notes & To-Do app in Flutter powered by Hive, ensuring lightweight, persistent, and fast task management',
  //   'assets/images/notes_frame.png',
  //   ''),
];
