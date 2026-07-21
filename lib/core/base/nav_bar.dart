import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:task3/core/base/nav_bar_item.dart';
import 'package:task3/core/resources/color_manager.dart';
import '../resources/assets_manager.dart';
import '../resources/spacing_values_manager.dart';

class ScaffoldWithNavBar extends StatefulWidget {
  const ScaffoldWithNavBar({
    required this.navigationShell,
    this.onCenterTap,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  final StatefulNavigationShell navigationShell;
  final VoidCallback? onCenterTap;

  @override
  State<ScaffoldWithNavBar> createState() => _ScaffoldWithNavBarState();
}

class _ScaffoldWithNavBarState extends State<ScaffoldWithNavBar> {
  @override
  Widget build(BuildContext context) {
    final double fabSize = AppWidth.s56;
    final double notchMargin = AppWidth.s10;

    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Column(children: [Expanded(child: widget.navigationShell)]),
      extendBody: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: fabSize,
        height: fabSize,
        child: FloatingActionButton(
          onPressed: widget.onCenterTap ?? () {},
          backgroundColor: ColorManager.brandPrimary,
          foregroundColor: ColorManager.white,
          elevation: 0,
          shape: const CircleBorder(),
          child: Image.asset(
            IconAssets.chef,
            width: AppWidth.s24,
            height: AppHeight.s24,
          ),
        ),
      ),
      bottomNavigationBar: CustomPaint(
        painter: _NotchedBarPainter(
          notchRadius: fabSize / 2,
          notchMargin: notchMargin,
          color: ColorManager.white,
          shadow: BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 40,
            spreadRadius: 0,
            color: const Color(0xFF95A8C3).withValues(alpha: 0.26),
          ),
        ),

        child: SafeArea(
          top: false,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppWidth.s26,
              vertical: AppHeight.s16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NavBarItem(
                  iconPath: IconAssets.home,
                  isSelected: widget.navigationShell.currentIndex == 0,
                  onTap: () => _onTap(context, 0),
                ),
                NavBarItem(
                  iconPath: IconAssets.search,
                  isSelected: widget.navigationShell.currentIndex == 1,
                  onTap: () => _onTap(context, 1),
                ),
                SizedBox(width: 1.sp),
                NavBarItem(
                  iconPath: IconAssets.not,
                  isSelected: widget.navigationShell.currentIndex == 2,
                  onTap: () => _onTap(context, 2),
                ),
                NavBarItem(
                  iconPath: IconAssets.profile,
                  isSelected: widget.navigationShell.currentIndex == 3,
                  onTap: () async {
                    _onTap(context, 3);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTap(BuildContext context, int index) {
    if (index == widget.navigationShell.currentIndex) return;
    setState(() {});
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }
}

class _NotchedBarPainter extends CustomPainter {
  const _NotchedBarPainter({
    required this.notchRadius,
    required this.notchMargin,
    required this.color,
    required this.shadow,
  });

  final double notchRadius;
  final double notchMargin;
  final Color color;
  final BoxShadow shadow;

  @override
  void paint(Canvas canvas, Size size) {
    final Path path = const CircularNotchedRectangle().getOuterPath(
      Offset.zero & size,
      Rect.fromCircle(
        center: Offset(size.width / 2, 0),
        radius: notchRadius + notchMargin,
      ),
    );

    canvas.save();
    canvas.translate(shadow.offset.dx, shadow.offset.dy);
    canvas.drawPath(path, shadow.toPaint());
    canvas.restore();

    canvas.drawPath(path, Paint()..color = color);
  }

  @override
  bool shouldRepaint(_NotchedBarPainter oldDelegate) =>
      oldDelegate.notchRadius != notchRadius ||
      oldDelegate.notchMargin != notchMargin ||
      oldDelegate.color != color ||
      oldDelegate.shadow != shadow;
}
