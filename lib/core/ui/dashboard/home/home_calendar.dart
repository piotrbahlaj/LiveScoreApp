import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_score/core/constants/dashboard_constants.dart';
import 'package:live_score/core/theme/app_theme.dart';
import 'package:live_score/core/ui/dashboard/home/home_date_element.dart';
import 'package:live_score/core/utils/date_util.dart';
import 'package:live_score/features/dashboard/cubit/dashboard_cubit.dart';

class DashboardCalendar extends StatelessWidget {
  const DashboardCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    List<DateTime> weekDates =
        DateUtil.generateDates(DashboardConstants.calendarRange);
    final ScrollController scrollController = DateUtil.scrollController;
    final cubit = context.read<DashboardCubit>();

    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        final DateTime now = DateTime.now();
        final int todayIndex = weekDates.indexWhere((date) =>
            date.year == now.year &&
            date.month == now.month &&
            date.day == now.day);

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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: InkWell(
                  onTap: DateUtil.scrollLeft,
                  child: Icon(
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
                        child: DashboardDateElement(
                          date: weekDates[index],
                          isSelected: isSelected,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: InkWell(
                  onTap: DateUtil.scrollRight,
                  child: Icon(
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
