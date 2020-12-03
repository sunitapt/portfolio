class RecentProjects {
  final String image, category, title;
  final int id;
  final String url;

  RecentProjects( {this.id, this.image, this.category, this.title,this.url,});
}

// Demo List of my works
// List<RecentProjects> recentProject = [
//   RecentProjects(
//     id: 1,
//     title: "Real Time Chat App (MERN stack, Socket.io)",
//     category: "Coding",
//     image: "images/work_1.png",
//     url: 'https://github.com/nikhilbghodke/Chat-application',
//   ),
//   RecentProjects(
//     id: 2,
//     title: "Gradle Plugin-Development For Build Automation (Java,Groovy,Gradle)",
//     category: "GSoC 2019",
//     image: "images/work_2.png",
//     url: 'https://github.com/nikhilbghodke/Insilico-BuildSystem',
//   ),
//   RecentProjects(
//     id: 3,
//     title: "State Police Department Portal for Quarter Allocation (PHP, MySQL )",
//     category: "Sponsored Portal",
//     image: "images/work_3.png",
//     url: 'https://github.com/nikhilbghodke/',
//   ),
//   RecentProjects(
//     id: 4,
//     title: "Solution to Github MazeBot Racemode API ( Java,Gradle )",
//     category: "API Solution",
//     image: "images/work_4.png",
//     url: 'https://github.com/nikhilbghodke/mazebot'
//   ),
//   RecentProjects(
//       id: 5,
//       title: "Website for The Robotics Forum ( PHP, MySQL)",
//       category: "TRF website",
//       image: "images/work_1.png",
//       url: 'https://github.com/nikhilbghodke/TRF-Website'
//   ),
// ];
List<RecentProjects> recentProject = [
  RecentProjects(
    id: 1,
    title: "Chat App (Flutter, Firebase)",
    category: "Coding",
    image: "images/work_1.png",
    url: 'https://github.com/sunitapt/chat_app',
  ),
  RecentProjects(
    id: 2,
    title: "K-Means Clustering ,performance efficient algorithm approach",
    category: "K-Means Algo",
    image: "images/work_2.png",
    url: 'https://github.com/sunitapt/',
  ),
  RecentProjects(
    id: 3,
    title: "DBMS for online shopping e-commerce system(MySQL )",
    category: "DBMS",
    image: "images/work_3.png",
    url: 'https://github.com/sunitapt/dbms_online_shopping_ecommerce_system/',
  ),
  RecentProjects(
      id: 4,
      title: "Solution to Github MazeBot Racemode API ( Java,Gradle )",
      category: "API Solution",
      image: "images/work_4.png",
      url: 'https://github.com/sunitapt/mazebot1'
  ),
  RecentProjects(
      id: 5,
      title: "Climate app (Flutter, API)",
      category: "Coding ",
      image: "images/work_1.png",
      url: 'https://github.com/sunitapt/climate_app'
  ),
];