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
      'Notes && ToDo',
      'Offline Notes & To-Do app in Flutter powered by Hive, ensuring lightweight, persistent, and fast task management',
      'assets/images/notes_frame.png',
      ''),
  // Project(
  //     'Flutter Music Streaming Application',
  //     'A Flutter music streaming application that allows users to play audio files from local storage. The app features a beautiful neumorphic UI design and provides a smooth user experience for browsing and playing music.',
  //     'assets/images/player.png',
  //     'https://github.com/Hamad-Anwar/Neumorphic-Music_Player-Flutter'),
  // Project(
  //     'Food Recipe App',
  //     'This repository contains a Flutter implementation of a Food Recipe app with a captivating introduction section and impressive animations. It also features a signup and signin page with animations, elegantly presented on a bottom sheet.',
  //     'assets/images/recipe.png',
  //     'https://github.com/Hamad-Anwar/Food-Recipe-App-Flutter'),
  // Project(
  //     'Task Sync Pro',
  //     'Welcome to the Beautiful Task Scheduler App repository! This Flutter-based task management application combines elegant design with a robust backend, ensuring a seamless and organized task management experience. From stunning UI to real-time synchronization, this app has you covered.',
  //     'assets/images/task.png',
  //     'https://github.com/Hamad-Anwar/Task-Sync-Pro-Flutter'),
  // Project(
  //     'Flutter Chat Application with Firebase',
  //     'Welcome to our innovative Flutter chat application! This feature-rich messaging platform allows users to connect and communicate seamlessly through text and images. The app is built using Flutter for the frontend and integrates with Firebase for backend services, including authentication, real-time database, and storage.',
  //     'assets/images/chat.png',
  //     'https://github.com/Hamad-Anwar/Messenger-App-Backend-Firebase'),
  // Project(
  //     'Doctor Appointment Application',
  //     'Introducing the extraordinary "Doctor Appointment System" - a state-of-the-art Flutter UI application that redefines healthcare accessibility and efficiency. Seamlessly crafted, this app empowers users to effortlessly select doctors based on categories, engage in smooth messaging, and access detailed profiles.',
  //     'assets/images/doctor.png',
  //     'https://github.com/Hamad-Anwar/Doctor-Appointment-Application-UI'),
];
