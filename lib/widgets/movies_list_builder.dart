import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_app/model/movie.dart';

import '../constants/colors.dart';
import '../constants/demis.dart';
import 'easy_text.dart';

class MovieListBuilder extends StatelessWidget {
  MovieListBuilder({super.key, required this.movieList, required this.onTap});
  Function(int) onTap;
  List<Movie> movieList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: kMovieAndSerialsHeight280x,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: movieList.length,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () => onTap(index),
                child: MovieCard(
                  movie: movieList[index],
                ),
              )),
    );
  }
}

class MovieCard extends StatefulWidget {
  MovieCard({super.key, required this.movie});
  Movie movie;

  @override
  State<MovieCard> createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: kSP10x),
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            height: 200,
            child: Image.asset(
              widget.movie.image ?? "",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: kSP10x,
          ),
          EasyText(
            text: widget.movie.name ?? "",
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: kSP10x,
          ),
          Row(
            children: [
              EasyText(
                text: "${widget.movie.rating ?? 0.0}",
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                width: kSP10x,
              ),
              RatingBar(
                initialRating: widget.movie.rating ?? 0.0,
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
              ),
            ],
          )
        ],
      ),
    );
  }
}
