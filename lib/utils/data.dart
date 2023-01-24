import 'package:movie_app/model/movie.dart';

import '../model/actor_model.dart';

List<Movie> movieListPosters = [
  Movie(
      name: "Naruto Kid",
      image: "assets/images/poster1.jpg",
      type: "Action",
      rating: 4.863,
      vote: 582,
      duration: "4hr 13min",
      description:
          "Naruto is a Japanese manga series written and illustrated by Masashi Kishimoto. It tells the story of Naruto Uzumaki, a young ninja who seeks recognition from his peers and dreams of becoming the Hokage, the leader of his village",
      url: ""),
  Movie(
      name: "My Hero Academia",
      image: "assets/images/poster2.jpg",
      type: "Superhero",
      rating: 3.932,
      vote: 139,
      duration: "3hr 3min",
      description:
          "What's My Hero Academia about? In a world where most people have superpowers, middle school student Izuku Midoriya is part of 20 percent of the population born without them. But his dream is to become a superhero and to attend the premier Japanese school for aspiring superheroes, UA High.",
      url: ""),
  Movie(
      name: "Attack on Titan",
      image: "assets/images/poster3.png",
      type: "Horror",
      rating: 4.406,
      vote: 399,
      duration: "4hr 1min",
      description:
          "It is set in a world where humanity is forced to live in cities surrounded by three enormous walls that protect them from gigantic man-eating humanoids referred to as Titans; the story follows Eren Yeager, who vows to exterminate the Titans after they bring about the destruction of his hometown and the death of his mother.",
      url: ""),
  Movie(
      name: "One Piece",
      image: "assets/images/poster4.jpg",
      type: "Adventure",
      rating: 5.0,
      vote: 1270,
      duration: "6hr 30min",
      description:
          "The series focuses on Monkey D. Luffy, a young man made of rubber, who, inspired by his childhood idol, the powerful pirate Red-Haired Shanks, sets off on a journey from the East Blue Sea to find the mythical treasure, the One Piece, and proclaim himself the King of the Pirates.",
      url: ""),
  Movie(
      name: "Haikyuu",
      image: "assets/images/poster5.jpg",
      type: "Sport",
      rating: 5.0,
      vote: 981,
      duration: "3hr 45min",
      description:
          "It was serialized in Shueisha's shōnen manga magazine Weekly Shōnen Jump from February 2012 to July 2020, with its chapters collected in 45 tankōbon volumes. The story follows Shoyo Hinata, a boy determined to become a great volleyball player despite his small stature.",
      url: ""),
  Movie(
      name: "One Piece(Red Flim)",
      image: "assets/images/poster6.jpg",
      type: "Adventure",
      rating: 4.742,
      vote: 877,
      duration: "2hr 15min",
      description:
          "The Straw Hat Pirates leave for the island of Elegia to attend a concert by Uta, a world-famous singer. After Uta performs her first song, Luffy goes on stage to reunite with her, revealing that the two of them know each other because Uta is the adopted daughter of Red-Haired Shanks.",
      url: ""),
  Movie(
      name: "Hunter x Hunter",
      image: "assets/images/poster7.jpg",
      type: "Action",
      rating: 4.067,
      vote: 209,
      duration: "3hr 43min",
      description:
          "Its unique plot and exciting action sequences have contributed to its success. Despite its faltering pace, Yoshihiro Togashi's Hunter x Hunter remains one of the most popular anime series ever made. Both the manga and the anime have been commercially prosperous, in part due to their unorthodox pattern of storytelling.",
      url: ""),
  Movie(
      name: "Death Note",
      image: "assets/images/poster8.jpg",
      type: "Horror",
      rating: 4.221,
      vote: 699,
      duration: "2hr 23min",
      description:
          "Death Note (デスノート, Desu Nōto) is a manga series created by writer Tsugumi Ohba and illustrator Takeshi Obata. The series centers around a high school student who discovers a supernatural notebook that allows him to kill anyone by writing the victim's name while picturing their face. The plot follows his attempt to create and lead a world cleansed of evil using the book, and the complex conflict between himself and those assailing him that results.",
      url: ""),
  Movie(
      name: "Spirited away",
      image: "assets/images/image1.jpg",
      type: "Fantasy",
      rating: 4.989,
      vote: 890,
      duration: "1hr 32min",
      description:
          "During her family's move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts. Chihiro and her parents are moving to a small Japanese town in the countryside, much to Chihiro's dismay.",
      url: "https://www.youtube.com/watch?v=ByXuk9QqQkk"),
  Movie(
      name: "Your Name",
      image: "assets/images/image2.jpeg",
      type: "Romatic",
      rating: 4.372,
      vote: 579,
      duration: "1hr 18min",
      description:
          "Your Name (Japanese: 君の名は。, Hepburn: Kimi no Na wa) is a 2016 Japanese animated romantic fantasy film produced by CoMix Wave Films. It depicts a high school boy in Tokyo and a high school girl in the Japanese countryside who suddenly and inexplicably begin to swap bodies.",
      url: "https://www.youtube.com/watch?v=xU47nhruN-Q"),
  Movie(
      name: "My Neighbor Totoro",
      image: "assets/images/image3.jpg",
      type: "Fantasy",
      rating: 4.663,
      vote: 809,
      duration: "1hr 33min",
      description:
          "Totoro actually comes from Mei mispronouncing Tororu, which means troll in Japanese. This comes from a book Mei had read, which turns out to be the traditional Norwegian troll story Billy Goats Gruff, as can be seen in the end sequence which contains mother and that book.",
      url: "https://www.youtube.com/watch?v=92a7Hj0ijLs"),
  Movie(
      name: "Sword Art Online",
      image: "assets/images/image4.jpg",
      type: "Adventure",
      rating: 3.832,
      vote: 250,
      duration: "3hr 55min",
      description:
          "SWORD ART ONLINE is the story of a multiplayer virtual-reality game that takes a deadly turn when players discover they can't escape of their own will but must play to victory or to death.",
      url: "https://www.youtube.com/watch?v=6ohYYtxfDCg"),
  Movie(
      name: "Grave Of The Fireflies",
      image: "assets/images/image5.jpg",
      type: "Fantasy",
      rating: 4.965,
      vote: 1092,
      duration: "1hr 22min",
      description:
          "The film is based on a true story. Akiyuki Nosaka lost his little sister during the war to malnutrition and blamed himself for her death. He wrote Hotaru no haka (A Grave of Fireflies) in 1967 to come to terms with the loss.",
      url: "https://www.youtube.com/watch?v=4vPeTSRd580"),
  Movie(
      name: "Demon Slayer",
      image: "assets/images/poster9.jpg",
      type: "Superhero",
      rating: 4.124,
      vote: 500,
      duration: "4hr 1min",
      description:
          "A boy raised by boars, who wears a boar's head, boards the Infinity Train on a new mission with the Flame Pillar along with another boy who reveals his true power when he sleeps. Their mission is to defeat a demon who has been tormenting people and killing the demon slayers who oppose it.",
      url: "https://www.youtube.com/watch?v=a9tq0aS5Zu8"),
  Movie(
      name: "Ponyo",
      image: "assets/images/poster10.jpg",
      type: "Fantasy",
      rating: 4.891,
      vote: 950,
      duration: "2hr 8min",
      description:
          "During a forbidden excursion to see the surface world, a goldfish princess encounters a human boy named Sosuke, who gives her the name Ponyo. Ponyo longs to become human, and as her friendship with Sosuke grows, she becomes more humanlike. Ponyo's father brings her back to their ocean kingdom, but so strong is Ponyo's wish to live on the surface that she breaks free, and in the process, spills a collection of magical elixirs that endanger Sosuke's village.",
      url: "https://www.youtube.com/watch?v=CsR3KVgBzSM"),
  Movie(
      name: "Whisper of the heart",
      image: "assets/images/poster11.jpg",
      type: "Romatic",
      rating: 4.509,
      vote: 606,
      duration: "2hr 13min",
      description:
          "Based on the manga with the same title, this animated film follows Shizuku, an inquisitive young girl and a voracious reader, who longs to be a writer when she grows up. One day she notices that all of her library books have previously been taken out by one Seiji Amasawa. Amid chasing after a large cat, befriending an eccentric antiques dealer and writing her first novel, Shizuku aims to find this mysterious boy who may well be her soul mate.",
      url: "https://www.youtube.com/watch?v=0pVkiod6V0U"),
  Movie(
      name: "Weathering with you",
      image: "assets/images/poster12.jpg",
      type: "Romatic",
      rating: 4.321,
      vote: 834,
      duration: "1hr 54min",
      description:
          "Set during a period of exceptionally rainy weather, high-school boy Hodaka Morishima runs away from his troubled rural home to Tokyo and befriends an orphan girl who can manipulate the weather.",
      url: "weathering with trailer"),
  Movie(
      name: "Boruto(Naruto next Generation)",
      image: "assets/images/poster13.jpg",
      type: "Action",
      rating: 4.127,
      vote: 1007,
      duration: "4hr 10min",
      description:
          "Opening with a teenaged Boruto Uzumaki facing a foe named Kawaki during the destruction of his village, the manga follows with a retelling of events in Boruto: Naruto the Movie with added content.[3] The son of the Seventh Hokage Naruto Uzumaki, Boruto feels angry over his father placing the village before his family. At that time, Boruto becomes a member of a ninja team led by Naruto's protégé Konohamaru Sarutobi, alongside Sarada Uchiha, the daughter of Sasuke and Sakura Uchiha, and Mitsuki, Orochimaru's artificial son. Sasuke returns to the village to warn Naruto of an impending threat relating to deduce the motivations of Kaguya Ōtsutsuki. Boruto asks Sasuke to train him for the upcoming Chunin exam to impress his father. During the exam, Momoshiki and Kinshiki Ōtsutsuki, the duo whom Sasuke met, abduct Naruto so they can use kurama, a tailed beast sealed inside his body, to revitalize the dying Divine Tree from the dimension they came from. Boruto, Sasuke and the four Kages, the leaders of other ninja villages, set out to rescue Naruto. The battle ends when Momoshiki, sacrificing Kinshiki to increase his own strength, is defeated by Boruto and Naruto with Sasuke's help; Momoshiki survives long enough to realize Boruto's full potential while warning him of future tribulations. After recovering from his fight, Boruto decides to become like Sasuke in the future, while entrusting Sarada to follow her dream of becoming the next Hokage.",
      url: "https://www.youtube.com/watch?v=Qyonn5Vbg7s"),
  Movie(
      name: "Horimiya",
      image: "assets/images/poster14.jpg",
      type: "Romatic",
      rating: 4.722,
      vote: 893,
      duration: "5hr 34min",
      description:
          "Horimiya is a refreshing teen romance story that centres on the titular Kyoko Hori and Izumi Miyamura, two high school classmates who quickly fall in love. Hori-san is a popular honour student with a hidden home life: she raises her little brother and manages the home because her parents are “busy”.",
      url: "https://www.youtube.com/watch?v=e4RCugyx5No"),
  Movie(
      name: "Spy x Family",
      image: "assets/images/poster15.jpg",
      type: "Adventure",
      rating: 4.991,
      vote: 1375,
      duration: "3hr 41min",
      description:
          "In order to maintain the state of peace between the rival nations of Westalis and Ostania, a Westalian agent code-named Twilight is tasked with spying on Donovan Desmond, leader of the National Unity Party within Ostania. However, due to Desmond being notoriously reclusive, the only way Twilight can get close to him is to enroll a child in the same private school as Desmond's sons and pose as a fellow parent.",
      url: "https://www.youtube.com/watch?v=ofXigq9aIpo"),
  Movie(
      name: "Inazuma Eleven",
      image: "assets/images/poster16.jpg",
      type: "Sport",
      rating: 4.405,
      vote: 986,
      duration: "2hr 37min",
      description:
          "Centered on the globally popular sport of soccer, Inazuma Eleven tells the story of a ragtag group of junior highers on the verge of having their club disbanded — unless they win an impromptu match against the school that holds a 40 year championship reign.",
      url: "https://www.youtube.com/watch?v=cdJZAVIVEO0"),
  Movie(
      name: "Jujutsu Kaisen",
      image: "assets/images/poster17.jpg",
      type: "Horror",
      rating: 4.251,
      vote: 962,
      duration: "3hr 15min",
      description:
          "Jujutsu Kaisen (呪術廻戦) is a Japanese manga series written and illustrated by Gege Akutami. It has been serialized in Shueisha's shōnen manga magazine Weekly Shōnen Jump since March 2018, with its chapters collected and published in 21 tankōbon volumes as of December 2022. The story follows high school student Yuji Itadori as he joins a secret organization of Jujutsu Sorcerers to eliminate a powerful Curse named Ryomen Sukuna, of whom Yuji becomes the host. Jujutsu Kaisen is a sequel to Akutami's Tokyo Metropolitan Curse Technical School, serialized in Shueisha's Jump GIGA from April to July 2017, later collected in a tankōbon volume, retroactively titled as Jujutsu Kaisen 0, in December 2018.",
      url: "https://www.youtube.com/watch?v=f7R6NA4Yo00"),
  Movie(
      name: "Black Clover",
      image: "assets/images/poster18.jpg",
      type: "Adventure",
      rating: 4.735,
      vote: 1000,
      duration: "5hr 32min",
      description:
          "The series focuses on Asta, a young orphan who is left to be raised in an orphanage alongside his fellow orphan, Yuno. While everyone is born with the ability to utilize mana in the form of magical power, Asta, with no magic instead focuses on physical strength.",
      url: "https://www.youtube.com/watch?v=M-JD8QqStBg"),
];

List<Movie> movieListTrailer = [
  Movie(
      name: "Spirited away",
      image: "assets/images/image1.jpg",
      type: "Fantasy",
      rating: 4.9,
      vote: 890,
      duration: "1hr 32min",
      description:
          "During her family's move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts. Chihiro and her parents are moving to a small Japanese town in the countryside, much to Chihiro's dismay.",
      url: "https://www.youtube.com/watch?v=ByXuk9QqQkk"),
  Movie(
      name: "Your Name",
      image: "assets/images/image2.jpeg",
      type: "Romatic",
      rating: 4.3,
      vote: 579,
      duration: "1hr 18min",
      description:
          "Your Name (Japanese: 君の名は。, Hepburn: Kimi no Na wa) is a 2016 Japanese animated romantic fantasy film produced by CoMix Wave Films. It depicts a high school boy in Tokyo and a high school girl in the Japanese countryside who suddenly and inexplicably begin to swap bodies.",
      url: "https://www.youtube.com/watch?v=xU47nhruN-Q"),
  Movie(
      name: "My Neighbor Totoro",
      image: "assets/images/image3.jpg",
      type: "Fantasy",
      rating: 4.6,
      vote: 809,
      duration: "1hr 33min",
      description:
          "Totoro actually comes from Mei mispronouncing Tororu, which means troll in Japanese. This comes from a book Mei had read, which turns out to be the traditional Norwegian troll story Billy Goats Gruff, as can be seen in the end sequence which contains mother and that book.",
      url: "https://www.youtube.com/watch?v=92a7Hj0ijLs"),
  Movie(
      name: "Sword Art Online",
      image: "assets/images/image4.jpg",
      type: "Adventure",
      rating: 3.8,
      vote: 250,
      duration: "3hr 55min",
      description:
          "SWORD ART ONLINE is the story of a multiplayer virtual-reality game that takes a deadly turn when players discover they can't escape of their own will but must play to victory or to death.",
      url: "https://www.youtube.com/watch?v=6ohYYtxfDCg"),
  Movie(
      name: "Grave Of The Fireflies",
      image: "assets/images/image5.jpg",
      type: "Fantasy",
      rating: 4.9,
      vote: 1092,
      duration: "1hr 22min",
      description:
          "The film is based on a true story. Akiyuki Nosaka lost his little sister during the war to malnutrition and blamed himself for her death. He wrote Hotaru no haka (A Grave of Fireflies) in 1967 to come to terms with the loss.",
      url: "https://www.youtube.com/watch?v=4vPeTSRd580"),
];

List<Movie> showCasesLists = [
  Movie(
      name: "Your Name",
      image: "assets/images/image2.jpeg",
      type: "Romatic",
      rating: 4.3,
      vote: 579,
      duration: "1hr 18min",
      description:
          "Your Name (Japanese: 君の名は。, Hepburn: Kimi no Na wa) is a 2016 Japanese animated romantic fantasy film produced by CoMix Wave Films. It depicts a high school boy in Tokyo and a high school girl in the Japanese countryside who suddenly and inexplicably begin to swap bodies.",
      url: "https://www.youtube.com/watch?v=xU47nhruN-Q"),
      Movie(
      name: "Attack on Titan",
      image: "assets/images/poster3.png",
      type: "Horror",
      rating: 4.406,
      vote: 399,
      duration: "4hr 1min",
      description:
          "It is set in a world where humanity is forced to live in cities surrounded by three enormous walls that protect them from gigantic man-eating humanoids referred to as Titans; the story follows Eren Yeager, who vows to exterminate the Titans after they bring about the destruction of his hometown and the death of his mother.",
      url: ""),
      Movie(
      name: "Haikyuu",
      image: "assets/images/poster5.jpg",
      type: "Sport",
      rating: 5.0,
      vote: 981,
      duration: "3hr 45min",
      description:
          "It was serialized in Shueisha's shōnen manga magazine Weekly Shōnen Jump from February 2012 to July 2020, with its chapters collected in 45 tankōbon volumes. The story follows Shoyo Hinata, a boy determined to become a great volleyball player despite his small stature.",
      url: ""),
       Movie(
      name: "Demon Slayer",
      image: "assets/images/poster9.jpg",
      type: "Superhero",
      rating: 4.124,
      vote: 500,
      duration: "4hr 1min",
      description:
          "A boy raised by boars, who wears a boar's head, boards the Infinity Train on a new mission with the Flame Pillar along with another boy who reveals his true power when he sleeps. Their mission is to defeat a demon who has been tormenting people and killing the demon slayers who oppose it.",
      url: "https://www.youtube.com/watch?v=a9tq0aS5Zu8"),
      Movie(
      name: "Ponyo",
      image: "assets/images/poster10.jpg",
      type: "Fantasy",
      rating: 4.891,
      vote: 950,
      duration: "2hr 8min",
      description:
          "During a forbidden excursion to see the surface world, a goldfish princess encounters a human boy named Sosuke, who gives her the name Ponyo. Ponyo longs to become human, and as her friendship with Sosuke grows, she becomes more humanlike. Ponyo's father brings her back to their ocean kingdom, but so strong is Ponyo's wish to live on the surface that she breaks free, and in the process, spills a collection of magical elixirs that endanger Sosuke's village.",
      url: "https://www.youtube.com/watch?v=CsR3KVgBzSM"),

];

List<ActorModel> actroLists = [
  ActorModel(name: "Monkey D Luffy", image: "assets/images/actor1.jpg"),
  ActorModel(name: "Shoyo Hinata", image: "assets/images/actor2.jpg"),
  ActorModel(name: "Hyuga Hinata", image: "assets/images/actor3.jpg"),
  ActorModel(name: "Asta Staria", image: "assets/images/actor4.jpg"),
  ActorModel(name: "Anya Forger", image: "assets/images/actor5.jpg"),
  ActorModel(name: "Naruto Uzumaki", image: "assets/images/actor6.jpg")
];
