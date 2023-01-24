import 'package:flutter/material.dart';
import 'package:movie_app/model/actor_model.dart';

import '../constants/colors.dart';
import '../constants/demis.dart';
import 'easy_text.dart';

class ActorsListBuilder extends StatelessWidget {
  ActorsListBuilder({super.key, required this.actorLists});
  List<ActorModel> actorLists;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: kActorImageBoxHeight200x,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: actorLists.length,
          itemBuilder: (context, index) => ActorsCard(
            actor: actorLists[index],
          ),
        ));
  }
}

class ActorsCard extends StatelessWidget {
  ActorsCard({Key? key, required this.actor}) : super(key: key);
  ActorModel actor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kActorImageBoxWidth180x,
      height: kActorImageBoxHeight200x,
      margin: const EdgeInsets.only(left: kSP10x),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(actor.image ?? ""), fit: BoxFit.cover)),
      child: Stack(
        children: [
          const Positioned(
            right: kSP10x,
            top: kSP10x,
            child: Icon(
              Icons.favorite_border,
              color: kWhite,
            ),
          ),
          Positioned(
            bottom: kSP10x,
            left: kSP10x,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                EasyText(
                  text: actor.name ?? "",
                  color: kWhite,
                  fontWeight: FontWeight.bold,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.thumb_up,
                      color: kPlayButtonColor,
                      size: 14,
                    ),
                    const SizedBox(
                      width: kSP10x,
                    ),
                    EasyText(
                      text: "YOU LIKE 5 MOVIES",
                      fontSize: kFontSize12x,
                      color: kTitleHintText,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
