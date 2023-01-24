import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_app/constants/colors.dart';
import 'package:movie_app/constants/demis.dart';
import 'package:movie_app/constants/strings.dart';
import 'package:movie_app/model/movie.dart';
import 'package:movie_app/widgets/actor_list_builder.dart';
import 'package:movie_app/widgets/easy_text.dart';
import 'package:movie_app/widgets/gradient_box.dart';
import 'package:movie_app/widgets/movie_title_and_more.dart';
import 'package:movie_app/widgets/movies_list_builder.dart';

import '../utils/data.dart';

class MovieDetails extends StatelessWidget {
  MovieDetails({super.key, required this.movie});
  Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          AppBarAndImageItemView(
              movie: movie,
              onTap: () {
                print("click_----------------------------");
                Navigator.of(context).pop();
              })
        ],
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Movie types , duration and favorite
              MovieTypeWrapItemView(movie: movie),

              //Title of Story Lines
              MovieTitleAndMore(title: kStorylines),

              //Movie description , Play trailer and rate movie button.icon
              MovieDescriptionAndButtonItemView(movie: movie),

              const SizedBox(
                height: kSP10x,
              ),

              //Actors List View
              ActorsListItemView(
                text: kBestActors,
              ),

              //AboutFlim title
              MovieTitleAndMore(title: kAboutFlim),

              //About Flim description
              AboutFlimItemView(movie: movie),

              //creators
              ActorsListItemView(
                text: kCreators,
                more: kMoreCreators,
              ),

              //RelatedMovies
              Column(
                children: [
                  MovieTitleAndMore(title: kRelatedMovies),
                  MovieListBuilder(
                      movieList: movieListPosters, onTap: (int index) {})
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AboutFlimItemView extends StatelessWidget {
  const AboutFlimItemView({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSP10x),
      child: Column(
        children: [
          TitleAndDescriptionView(des: movie.name ?? "", title: kOriginalTitle),
          TitleAndDescriptionView(des: movie.type ?? "", title: kType),
          const TitleAndDescriptionView(des: "Japan", title: kProduction),
          const TitleAndDescriptionView(des: "2022-2-2", title: kPremiere),
          TitleAndDescriptionView(
              des: movie.description ?? "", title: kDescription),
        ],
      ),
    );
  }
}

class TitleAndDescriptionView extends StatelessWidget {
  const TitleAndDescriptionView({
    Key? key,
    required this.des,
    required this.title,
  }) : super(key: key);

  final String title, des;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kSP10x),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: EasyText(
              text: title,
              color: kTitleHintText,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            flex: 2,
            child: EasyText(
              text: des,
              color: kWhite,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}

class ActorsListItemView extends StatelessWidget {
  ActorsListItemView({
    Key? key,
    required this.text,
    this.more = "",
  }) : super(key: key);
  String text, more;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kSP10x),
      width: double.maxFinite,
      height: kSPActorContainerHeight280X,
      color: kPrimaryColor,
      child: Column(
        children: [
          //Best Actors Title and More
          MovieTitleAndMore(
            title: text,
            more: more,
          ),

          //Best Actors Images,Name And likes
          ActorsListBuilder(
            actorLists: actroLists,
          ),
        ],
      ),
    );
  }
}

class MovieDescriptionAndButtonItemView extends StatelessWidget {
  const MovieDescriptionAndButtonItemView({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSP10x),
      child: Column(
        children: [
          EasyText(
            text: "${movie.description}",
            fontWeight: FontWeight.w500,
          ),
          const SizedBox(
            height: kSP10x,
          ),
          Row(
            children: [
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: kSP10x, horizontal: kSP10x),
                      backgroundColor: kPlayButtonColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_circle,
                    color: kBlack.withOpacity(0.6),
                  ),
                  label: EasyText(
                    text: kPlayTrailer,
                    fontWeight: FontWeight.bold,
                    fontSize: kFontSize14x,
                  )),
              const SizedBox(
                width: kSP10x,
              ),
              OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: kSP10x, horizontal: kSP10x),
                      side: const BorderSide(color: kWhite, width: 2),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(kButtonRadius50x))),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.star,
                    color: kPlayButtonColor,
                  ),
                  label: EasyText(
                    text: kRateMovie,
                    fontWeight: FontWeight.bold,
                    fontSize: kFontSize14x,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

class MovieTypeWrapItemView extends StatelessWidget {
  const MovieTypeWrapItemView({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: kSP10x,
      children: [
        Chip(
            avatar: const Icon(
              Icons.schedule,
              color: kPlayButtonColor,
            ),
            side: BorderSide.none,
            backgroundColor: kSecondaryColor,
            label: EasyText(
              text: "${movie.duration}",
              fontWeight: FontWeight.bold,
            )),
        Chip(
            backgroundColor: kPrimaryColor,
            label: EasyText(
              text: "${movie.type}",
            )),
        Chip(
            backgroundColor: kPrimaryColor,
            label: EasyText(
              text: "Animated",
            )),
        Chip(
            backgroundColor: kPrimaryColor,
            label: EasyText(
              text: "anime",
            )),
        const Chip(
          backgroundColor: kSecondaryColor,
          label: Icon(
            Icons.favorite_border,
            color: kWhite,
          ),
        )
      ],
    );
  }
}

class AppBarAndImageItemView extends StatelessWidget {
  AppBarAndImageItemView({Key? key, required this.movie, required this.onTap})
      : super(key: key);

  final Movie movie;
  Function onTap;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: kSecondaryColor,
      floating: true,
      expandedHeight: kDetailAppBarHeight250X,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        background: Stack(
          children: [
            //Detail image
            DeatilImageView(movie: movie),

            //Gradient Box
            const GradientBox(),

            //App bar back and search icon, rating , vote and movie name
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: kSP10x, vertical: kSP20x),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //App Bar Back And search icons
                    BackAndSearchIconView(
                      onTap: () => onTap(),
                    ),

                    const Spacer(),

                    //Rating and vote showing
                    RatingAndVoteView(movie: movie),

                    const SizedBox(
                      height: kSP10x,
                    ),

                    //Details movie name
                    EasyText(
                      text: "${movie.name}",
                      fontSize: kFontSize24x,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RatingAndVoteView extends StatelessWidget {
  const RatingAndVoteView({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: kReleaseYearBoxWidth60x,
          height: kReleaseYearBoxHeight40x,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: kPlayButtonColor, borderRadius: BorderRadius.circular(40)),
          child: EasyText(
            text: kRelesaeYear,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Rating Bar
            RatingBarView(movie: movie),
            const SizedBox(
              width: kSP10x,
            ),

            //Vote or Votes
            EasyText(
              text: (movie.vote! > 1)
                  ? "${movie.vote} VOTES"
                  : "${movie.vote} VOTE",
              fontWeight: FontWeight.bold,
              color: kTitleHintText,
            ),
          ],
        ),

        //Movie Rating number
        EasyText(
          text: "${movie.rating}",
          fontSize: kFontSize50x,
        )
      ],
    );
  }
}

class RatingBarView extends StatelessWidget {
  const RatingBarView({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return RatingBar(
      initialRating: movie.rating ?? 0.0,
      itemSize: kRatingSize16x,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      ratingWidget: RatingWidget(
        full: const Icon(
          Icons.star,
          color: kPlayButtonColor,
        ),
        half: const Icon(
          Icons.star_half,
          color: kPlayButtonColor,
        ),
        empty: const Icon(
          Icons.star,
          color: kRatingEmptyColor,
        ),
      ),
      onRatingUpdate: (rating) {},
    );
  }
}

class BackAndSearchIconView extends StatelessWidget {
  BackAndSearchIconView({Key? key, required this.onTap}) : super(key: key);

  Function onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: kBlack.withOpacity(0.6),
          child: IconButton(
            onPressed: () {
              print("object========================>");
              onTap();
            },
            icon: const Icon(
              Icons.arrow_back_ios_sharp,
              color: kWhite,
              size: kIconSize20x,
            ),
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.search_rounded,
          size: kIconSize34x,
          color: kWhite,
        )
      ],
    );
  }
}

class DeatilImageView extends StatelessWidget {
  const DeatilImageView({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Image.asset(
        "${movie.image}",
        fit: BoxFit.cover,
      ),
    );
  }
}
