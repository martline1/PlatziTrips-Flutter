import "package:flutter/material.dart";

class Stars extends StatelessWidget {
	final EdgeInsetsGeometry margin;
	final double size;
	final int starsQuantity;

	Stars({ this.margin = const EdgeInsets.only(right: 3), this.size = 30, this.starsQuantity = 0 });

	Widget generateStarIcon(IconData icon) => Container(
		margin: this.margin,
		child: Icon(
			icon,
			color: Color(0xFFf2C611),
			size: this.size,
		),
	);

	@override
	Widget build(BuildContext context) {
		final star      = generateStarIcon(Icons.star);
		final halfStar  = generateStarIcon(Icons.star_half);
		final emptyStar = generateStarIcon(Icons.star_outline);

		final int fullStars    = (starsQuantity / 2).floor();
		final bool hasHalfStar = starsQuantity.isOdd;

		return Row(
			children: List<Widget>.generate(5, (index) {
				if (index < fullStars) return star;

				if (index == fullStars && hasHalfStar) return halfStar;

				return emptyStar;
			}),
		);
	}
}
