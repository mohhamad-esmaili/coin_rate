import 'package:cached_network_image/cached_network_image.dart';
import 'package:coin_rate/feature/home/data/models/datum.dart';
import 'package:coin_rate/feature/home/presentation/widgets/progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CoinListBuilder extends StatelessWidget {
  final List<MainData> coinList;
  const CoinListBuilder({super.key, required this.coinList});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return ListView.builder(
      itemCount: coinList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        MainData selectedCoin = coinList[index];
        bool isAsc = selectedCoin.raw!.usd!.changepct24Hour! > 0;
        Color priceColor =
            isAsc ? const Color(0xff20ff92) : const Color(0xfffe5050);
        return Directionality(
          textDirection: TextDirection.ltr,
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(vertical: 5),
            horizontalTitleGap: 5,
            leading: CachedNetworkImage(
              imageUrl: selectedCoin.coinInfo!.imageUrl!,
              imageBuilder: (context, imageProvider) => CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 25,
                backgroundImage: imageProvider,
              ),
              placeholder: (context, url) => const Padding(
                padding: EdgeInsets.all(8.0),
                child: ProgressIndicatorWidget(),
              ),
              errorWidget: (context, url, error) => const Icon(
                Icons.error,
                color: Colors.redAccent,
              ),
            ),
            title: Text(
              selectedCoin.coinInfo!.fullName!,
              style: themeData.textTheme.titleLarge,
            ),
            subtitle: Text(
              selectedCoin.coinInfo!.name!,
              style: themeData.textTheme.titleSmall,
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  selectedCoin.price.toString(),
                  style: TextStyle(
                    fontFamily: "",
                    color: priceColor,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "%${selectedCoin.raw!.usd!.changepct24Hour!.toStringAsFixed(2)}",
                  style: TextStyle(
                    fontFamily: "",
                    color: priceColor,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ).animate().fade(duration: const Duration(milliseconds: 300)),
        );
      },
    );
  }
}
