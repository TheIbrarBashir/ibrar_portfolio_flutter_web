import 'package:flutter_portfolio/model/project_model.dart';

List<Project> myProjects = [
  Project(
    title: 'EurekaJo',
    subtitle: "Realestate, Buy,Sell, Properties",
    description:
        'EurekaJO is a real estate application targeted at the Jordanian market. It is designed to allow the freedom for individuals (buyers or sellers) to connect with each other on a platform solely dedicated for the listings of real estate in Jordan, whether it was an apartment, villa, home, house, land or a farm. We allow individuals to search for pieces of real estate to have a better and more realistic view of the property they are searching for, also giving them the feeling of actually being there as if in reality.',
    imageUrl: 'assets/images/EurekaJo.png',
    projectUrl: 'https://eurekajo.com/',
    downloads: "100K+ Downloads",
    technologies: [
      'Flutter',
      'Dart',
      'Firebase',
      'Push Notification',
      'Google Maps'
    ],
    iosUrl:
        "https://apps.apple.com/jo/app/eurekajo-properties-in-jordan/id1617968807",
    androidUrl:
        "https://play.google.com/store/apps/details?id=com.eurekajo.mobile&hl=en&gl=US",
  ),
  Project(
    title: 'The Dividend Tracker',
    subtitle: "Fintech,Dividend Tracker, Ticker",
    downloads: "10K+ Downloads",
    description:
        """The Dividend Tracker, now in a mobile app! It's the easiest way to track your Dividend Portfolio and Dividend Income on the go. Track and forecast your dividend income, see when and how much you'll be paid, and visualize your monthly and annual earnings.""",
    imageUrl: "assets/images/DividendTracker.png",
    projectUrl: 'https://thedividendtracker.com',
    technologies: [
      'Flutter',
      'Dart',
      'Firebase',
      "Apple Pay",
      "Google Pay",
      "Plaid"
    ],
    iosUrl: "https://apps.apple.com/pk/app/the-dividend-tracker/id6443490767",
    androidUrl:
        "https://play.google.com/store/apps/details?id=com.thedividendtracker.app&pcampaignid=web_share",
  ),
  Project(
    title: 'Yapp Sailing Course',
    subtitle: "Education,",
    downloads: "5K+ Downloads",
    description:
        """Learn to Sail, Engage with AI Chat, Access Nautical Glossary, Knot-Tying Handbook, and More!
       Perfect for beginners, Yapp Sailing Course offers step-by-step lessons that build a strong foundation before you set foot on a sailboat.""",
    imageUrl: "assets/images/mycygnal.png",
    projectUrl: 'https://yapp.pro/',
    technologies: <String>[
      'Flutter',
      'Dart',
      'Firebase',
      'Socket.io',
    ],
    iosUrl: "https://apps.apple.com/pk/app/yapp-sailing-course/id1576346097",
    androidUrl:
        "https://play.google.com/store/apps/details?id=com.yacht.yapp&hl=en&gl=US",
  ),
  Project(
    title: 'Omniya',
    subtitle: "Social",
    description:
        'A mobile app aimed to revolutionize financial planning experiences for users.',
    imageUrl: "assets/images/Omniya.png",
    projectUrl: 'https://Omniya.com',
    technologies: <String>[
      'Flutter',
      'Dart',
      'Socket.io',
    ],
    iosUrl: "https://apps.apple.com/ng/app/wealthsync/id6692627014",
    androidUrl:
        "https://play.google.com/store/apps/details?id=com.smartstewards.wealthsync",
  ),
];
