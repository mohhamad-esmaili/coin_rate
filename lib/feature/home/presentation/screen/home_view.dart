import 'package:coin_rate/core/gen/assets.gen.dart';
import 'package:coin_rate/feature/home/presentation/bloc/home_bloc.dart';
import 'package:coin_rate/feature/home/presentation/widgets/button_card.dart';
import 'package:coin_rate/feature/home/presentation/widgets/coin_listbuilder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData themeData = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),

                /// top image
                Center(
                  child: Assets.images.lockShield.image(
                    width: size.width / 1.8,
                  ),
                ),
                const SizedBox(height: 80),

                /// button card row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ButtonCard(
                      cardTitle: "ایجاد کیف پول شخصی",
                      subtitle: "بازیابی کیف پول",
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 140,
                      child: VerticalDivider(
                        color: Colors.white,
                        thickness: 1,
                        width: 20,
                      ),
                    ),
                    ButtonCard(
                      cardTitle: "ایجاد کیف پول هوشمند",
                      subtitle: "کیف پول دارم",
                      onTap: () {},
                    ),
                  ],
                )
                    .animate()
                    .fade(duration: const Duration(milliseconds: 300))
                    .slideY(),
                const SizedBox(height: 60),

                /// 10 top coins section
                Text(
                  "رمز ارز های برتر",
                  style: themeData.textTheme.titleLarge,
                ),
                const Divider(
                  color: Colors.white,
                  thickness: 0.5,
                ),
                BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    if (state is HomeDataLoading) {
                      return Shimmer.fromColors(
                        baseColor: Colors.white10,
                        highlightColor: Colors.white24,
                        child: ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    } else if (state is HomeDataCompleted) {
                      return CoinListBuilder(coinList: state.coinmodel.data!);
                    } else if (state is HomeDataError) {
                      return Center(
                        child: Text(
                          'خطا: ${state.errorMessage}',
                          style:
                              const TextStyle(color: Colors.red, fontSize: 14),
                        ),
                      );
                    } else {
                      return const SizedBox.shrink();
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
