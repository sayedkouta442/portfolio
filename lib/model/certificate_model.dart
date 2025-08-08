class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Complete Flutter & Dart Development Course',
    organization: 'Udemy',
    date: 'June 2024',
    skills: 'Dart, Flutter',
    credential:
        'https://www.udemy.com/certificate/UC-79c4103c-5136-4519-bb12-0225c6dd31b5/',
  ),
  CertificateModel(
    name: 'Flutter Advanced Course Bloc and MVVM Pattern',
    organization: 'Udemy',
    date: 'Aug 2024',
    skills: 'Flutter, MVVM, Bloc',
    credential:
        'https://www.udemy.com/certificate/UC-796587ed-76d9-4b39-9c56-8e65e2ea02cf/',
  ),
  CertificateModel(
    name: 'Data Analysis: Skills for the Freelance Professional',
    organization: 'NTI',
    date: 'Jan 2025',
    skills: 'Data Analysis, SQL, Excel, Power BI',
    credential:
        'https://drive.google.com/file/d/1MHblCunoEZfDfMEa-mMwYQsdbC_S5J5j/view?usp=sharing',
  ),
  CertificateModel(
    name: 'Mastering Flutter: Responsive & Adaptive UI Design',
    organization: 'Udemy',
    date: 'Nov 2024',
    skills: 'Flutter, Clean Architecture',
    credential:
        'https://www.udemy.com/certificate/UC-92628a91-2052-427c-9a2f-62f3356ed0b2/',
  ),

  CertificateModel(
    name: 'Flutter Track Traning Program',
    organization: 'Mindset',
    date: 'Sep 2024',
    skills: 'Dart, Flutter, OOP, API, State Management',
    credential:
        'https://drive.google.com/file/d/1addt3Ge6jAAWhmbvEmwgpK2b4WcSkBRo/view?usp=sharing',
  ),
  // CertificateModel(
  //   name: 'Powering Your App with Live Web Data',
  //   organization: 'LinkedIn',
  //   date: 'JUL 2023',
  //   skills: 'Flutter . Dart . Firebase . API\'s',
  //   credential:  'https://www.linkedin.com/learning/certificates/643f05463ae529f24bd9ea66a6ead9a20469bdb875a9ddda048c698eda3ee7c1',
  // ),
  // CertificateModel(
  //   name: 'Firebase Cloud Firestore',
  //   organization: 'LinkedIn',
  //   date: 'JUL 2023',
  //   skills: 'Flutter . Dart . Firebase . FireStore',
  //   credential:  'https://www.linkedin.com/learning/certificates/8f8be25531d2bcdbab1972482150277f9a239a13ba4d314c0574638bf28d07d2',
  // ),
  // CertificateModel(
  //   name: 'Android App Security',
  //   organization: 'LinkedIn',
  //   date: 'JUL 2023',
  //   skills: 'Pentesting . Android App',
  //   credential:  'https://www.linkedin.com/learning/certificates/1c6581b35d06edfbd6275d09e84b068e813880bf7d217b703716962d7aca3518',
  // ),
  // CertificateModel(
  //   name: 'Foundations of Cybersecurity',
  //   organization: 'Grow with Google on Coursera',
  //   date: 'JUL 2023',
  //   skills: 'Ethical Hacking . Linux . Cyber Security ',
  //   credential:  'https://coursera.org/share/67e5cb0dd7c478f1d7ec81079c3a40b8',
  // ),
  // CertificateModel(
  //   name: 'HTML, CSS, and Javascript for Web Developers',
  //   organization: 'JUL Coursera',
  //   date: 'JUL 2023',
  //   skills: 'HTML . CSS . JS . Web Development',
  //   credential:  'https://coursera.org/share/67e5cb0dd7c478f1d7ec81079c3a40b8',
  // ),
  // CertificateModel(
  //   name: 'Network Defense Essentials (NDE)',
  //   organization: 'EC-Council',
  //   date: 'JUL 2023',
  //   skills: 'Cyber Security . Networking ',
  //   credential:  'https://codered.eccouncil.org/certificate/43a2d2a7-40ed-4230-9e65-a9aa0935e651?logged=false',
  // ),
];
