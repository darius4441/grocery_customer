import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 55,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child: const TextField(
                decoration: InputDecoration(
                  filled: true,
                  border: InputBorder.none,
                  fillColor: Colors.white,
                  hintText: "Chercher un produit ...",
                  hintStyle: TextStyle(color: Colors.grey),
                  contentPadding: EdgeInsets.fromLTRB(8, 5, 8, 0),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: const [
                  Icon(
                    IconlyLight.info_square,
                    size: 12.0,
                    color: Colors.white,
                  ),
                  Text(
                    "100% Coton",
                    style: TextStyle(color: Colors.white, fontSize: 12.0),
                  )
                ],
              ),
              Row(
                children: const [
                  Icon(
                    IconlyLight.info_square,
                    size: 12.0,
                    color: Colors.white,
                  ),
                  Text(
                    "4 - 7 Retour",
                    style: TextStyle(color: Colors.white, fontSize: 12.0),
                  )
                ],
              ),
              Row(
                children: const [
                  Icon(
                    IconlyLight.info_square,
                    size: 12.0,
                    color: Colors.white,
                  ),
                  Text(
                    "Vrai Marques",
                    style: TextStyle(color: Colors.white, fontSize: 12.0),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
