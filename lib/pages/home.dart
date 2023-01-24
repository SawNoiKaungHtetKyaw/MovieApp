import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';
import 'package:movie_app/constants/demis.dart';
import 'package:movie_app/constants/strings.dart';
import 'package:movie_app/model/movie.dart';
import 'package:movie_app/pages/movie_details.dart';
import 'package:movie_app/utils/data.dart';
import 'package:movie_app/widgets/actor_list_builder.dart';
import 'package:movie_app/widgets/easy_text.dart';
import 'package:movie_app/widgets/movie_title_and_more.dart';
import 'package:movie_app/widgets/movies_list_builder.dart';

import '../widgets/gradient_box.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

int tabIndex = 0;
List<Movie> movies = movieListPosters;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kSecondaryColor,
        appBar: AppBar(
          title: EasyText(
            text: kDiscover,
            fontWeight: FontWeight.w700,
            fontSize: kFontSize18x,
          ),
          centerTitle: true,
          actions: const [
            Icon(
              Icons.search,
              size: kIconSize28x,
              color: kWhite,
            )
          ],
          leading: const Icon(
            Icons.menu,
            size: kIconSize28x,
            color: kWhite,
          ),
          backgroundColor: kSecondaryColor,
        ),
        body: const HomeBody());
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> tabList = [
      "Animated",
      "Action",
      "Superhero",
      "Horror",
      "Adventure",
      "Sport",
      "Fantasy",
      "Romatic",
    ];

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Image and Title PageView
          MovieImageAndTitlePageView(
            movieList: movieListTrailer,
          ),

          //Title
          MovieTitleAndMore(
            title: kBestPopularMAndS,
          ),

          //Movie Card Lists
          MovieListBuilder(
            movieList: movieListPosters,
            onTap: (int index) {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MovieDetails(
                  movie: movieListPosters[index],
                ),
              ));
            },
          ),

          //Check Movie And Show Times
          CheckMovieAndShowTimes(),

          const SizedBox(
            height: kSP10x,
          ),

          //TabBar and Movie Card
          TabBarAndMovieCardItemView(tabList: tabList),

          const SizedBox(height: kSP10x),

          //Show Cases Title and More
          MovieTitleAndMore(
            title: kShowcases,
            more: kMoreShowCases,
          ),

          const SizedBox(height: kSP10x),

          //ShowCases ListView
          ShowCasesItemView(
            showCaseLists: showCasesLists,
          ),

          //Actors 
          const ActorsItemView(),

          const SizedBox(
            height: kSP50x,
          )
        ],
      ),
    );
  }
}

class ActorsItemView extends StatelessWidget {
  const ActorsItemView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: kSPActorContainerHeight280X,
      color: kPrimaryColor,
      child: Column(
        children: [
          const SizedBox(height: kSP10x),
          //Best Actors Title and More
          MovieTitleAndMore(
            title: kBestActors,
            more: kMoreActors,
          ),

          const SizedBox(height: kSP10x),

          //Best Actors Images,Name And likes
          ActorsListBuilder(
            actorLists: actroLists,
          ),
        ],
      ),
    );
  }
}

class ShowCasesItemView extends StatelessWidget {
  ShowCasesItemView({Key? key, required this.showCaseLists}) : super(key: key);

  List<Movie> showCaseLists;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: kShowCasesListViewHeight200x,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: showCaseLists.length,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.only(left: kSP10x),
          width: kShowCasesMovieCardWidth260x,
          height: kShowCasesMovieCardHeight200x,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(showCaseLists[index].image ?? ""),
                  fit: BoxFit.cover)),
          child: Stack(
            children: [
              const Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.play_circle_fill,
                  size: kIconSize50x,
                  color: kPlayButtonColor,
                ),
              ),
              Positioned(
                bottom: kSP10x,
                left: kSP10x,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EasyText(
                      text: showCaseLists[index].name ?? "",
                      color: kWhite,
                      fontSize: kFontSize18x,
                      fontWeight: FontWeight.bold,
                    ),
                    EasyText(
                      text: "15 DECEMBER 2022",
                      color: kTitleHintText,
                      fontSize: kFontSize14x,
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TabBarAndMovieCardItemView extends StatefulWidget {
  const TabBarAndMovieCardItemView({
    super.key,
    required this.tabList,
  });

  final List<String> tabList;

  @override
  State<TabBarAndMovieCardItemView> createState() =>
      _TabBarAndMovieCardItemViewState();
}

class _TabBarAndMovieCardItemViewState
    extends State<TabBarAndMovieCardItemView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
            length: widget.tabList.length,
            initialIndex: tabIndex,
            child: TabBar(
                onTap: (value) {
                  movies = [];
                  setState(() {
                    tabIndex = value;
                  });
                  movieListPosters.forEach((movie) {
                    if (tabIndex == 0) {
                      movies.add(movie);
                    }
                    if (movie.type == widget.tabList[tabIndex]) {
                      movies.add(movie);
                    }
                  });
                },
                padding: const EdgeInsets.only(left: kSP10x),
                isScrollable: true,
                indicatorColor: kPlayButtonColor,
                unselectedLabelColor: kWhite.withOpacity(0.3),
                tabs: widget.tabList
                    .map((name) => Tab(
                          text: name,
                        ))
                    .toList())),
        Container(
            width: double.infinity,
            height: kTabListViewHeight300x,
            color: kPrimaryColor,
            alignment: Alignment.center,
            child: MovieListBuilder(
              movieList: movies,
              onTap: (int index) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MovieDetails(movie: movies[index]),
                ));
              },
            )),
      ],
    );
  }
}

class CheckMovieAndShowTimes extends StatelessWidget {
  CheckMovieAndShowTimes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kSP10x),
      padding: const EdgeInsets.all(kSP20x),
      width: double.maxFinite,
      height: kCheckMovieShowtimesHeight150x,
      color: kPrimaryColor,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EasyText(
                text: kCheckMovieShowtimes,
                fontSize: kFontSize24x,
                fontWeight: FontWeight.w500,
              ),
              EasyText(
                text: kSeemore,
                fontSize: kFontSize14x,
                fontWeight: FontWeight.bold,
                color: kPlayButtonColor,
                underLine: TextDecoration.underline,
              ),
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.location_on,
            size: kIconSize50x,
            color: kWhite,
          )
        ],
      ),
    );
  }
}

class MovieImageAndTitlePageView extends StatelessWidget {
  MovieImageAndTitlePageView({Key? key, required this.movieList})
      : super(key: key);
  List<Movie> movieList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: kPageViewHeight250x,
      child: PageView.builder(
        itemCount: movieList.length,
        itemBuilder: (context, index) => Stack(
          children: [
            SizedBox(
              width: double.maxFinite,
              height: double.maxFinite,
              child: Image.asset(
                "${movieList[index].image}",
                fit: BoxFit.cover,
              ),
            ),
            const GradientBox(),
            Positioned(
              bottom: 20,
              left: 15,
              child: EasyText(
                text: movieList[index].name.toString(),
                fontSize: kFontSize24x,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.play_circle_fill,
                size: kIconSize50x,
                color: kPlayButtonColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
