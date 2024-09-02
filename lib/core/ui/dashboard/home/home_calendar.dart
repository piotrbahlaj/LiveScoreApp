import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_score/core/constants/dashboard_constants.dart';
import 'package:live_score/core/extensions/date_time_extension.dart';
import 'package:live_score/core/theme/app_theme.dart';
import 'package:live_score/core/ui/dashboard/home/home_date_element.dart';
import 'package:live_score/features/dashboard/cubit/dashboard_cubit.dart';

class HomeCalendar extends StatelessWidget {
  const HomeCalendar({super.key});

  void _scrollLeft(ScrollController scrollController) {
    scrollController.animateTo(
      scrollController.offset - DashboardConstants.calendarScrollOffset,
      duration: const Duration(
        milliseconds: DashboardConstants.calendarScrollDuration,
      ),
      curve: Curves.easeInOut,
    );
  }

  void _scrollRight(ScrollController scrollController) {
    scrollController.animateTo(
      scrollController.offset + DashboardConstants.calendarScrollOffset,
      duration: const Duration(
        milliseconds: DashboardConstants.calendarScrollDuration,
      ),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    final DateTime now = DateTime.now();
    List<DateTime> weekDates =
        now.generateDates(DashboardConstants.calendarRange);
    final cubit = context.read<DashboardCubit>();

    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        final int todayIndex = weekDates.indexWhere(
          (date) =>
              date.year == now.year &&
              date.month == now.month &&
              date.day == now.day,
        );

        if (todayIndex != -1) {
          const double itemWidth = DashboardConstants.calendarItemWidth;
          final double screenWidth = MediaQuery.of(context).size.width;
          final double offset =
              (todayIndex * itemWidth) - (screenWidth / 2) + (itemWidth / 2);

          scrollController.jumpTo(offset);

          cubit.setScrollOffset(offset);
        }
      },
    );

    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return SizedBox(
          height: 60,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: InkWell(
                  onTap: () => _scrollLeft(scrollController),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: AppTheme.onSecondary,
                    size: 20,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  controller: scrollController,
                  scrollDirection: Axis.horizontal,
                  itemCount: weekDates.length,
                  itemBuilder: (context, index) {
                    final isSelected = state.selectedDateIndex == index;
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: GestureDetector(
                        onTap: () {
                          cubit.selectDate(index);
                        },
                        child: HomeDateElement(
                          date: weekDates[index],
                          isSelected: isSelected,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: InkWell(
                  onTap: () => _scrollRight(scrollController),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: AppTheme.onSecondary,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
