import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GsColors {
  static const Color black = Color(0xFF333333);

  static const Color green = Color(0xff5CCB6F);
  static const Color green1 = Color(0xff06AE93);
  static const Color green2 = Color(0xff42D08E);
  static const Color greenLine = Color(0xff82DA6F);
  static const Color line_unfilled = Color(0xffC9E8C4);
  static const Color line_filled = Color(0xff69D058);

  static const Color bgGray = Color(0xFFF8F8F8);
  static const Color gray = Color(0xff999999);
  static const Color gray2 = Color(0xffC3C3C3);
  static const Color gray3 = Color(0xffAEAEAE);
  static const Color gray4 = Color(0xffC0BFBF);
  static const Color gray5 = Color(0xffF5F5F5);
  static const Color gray6 = Color(0xff666666);
  static const Color gray7 = Color(0xffCED1D6);
  static const Color gray8 = Color(0xffF0F0F0);
  static const Color gray9 = Color(0xffCDCDCD);
  static const Color gray10 = Color(0xffDBDBDB);
  static const Color gray11 = Color(0xffF5F6F8);
  static const Color gray_line = Color(0xffE7E7E7);
  static const Color gray12 = Color(0xffAAAAAA);
  static const Color gray13 = Color(0xFFF8F8F8);
  static const Color gray14 = Color(0xFFEEEEEE);
  static const Color gray15 = Color(0xFF66649E);
  static const Color gray16 = Color(0xFF2846B4);
  static const Color gray17 = Color(0xFFECECEC);

  static const Color bg = Color(0xffF0F0F1);
  static const Color red = Color(0xffF64C30);
  static const Color red1 = Color(0xffAD2117);

  static const Color blue = Color(0xff2B73FD);
  static const Color blue1 = Color(0xff8BB2FF);
  static const Color blue2 = Color(0xff2B73FD);
  static const Color blue3 = Color(0xff1346FF);
  static const Color blue4 = Color(0xff305BAF);
  static const Color blue5 = Color(0xff3B91F7);
  static const Color blue6 = Color(0xff1A60FE);
  static const Color blue7 = Color(0xff237FFD);
  static const Color blue8 = Color(0xff56ABFF);
  static const Color blue9 = Color(0xffDEE9FF);
  static const Color blue10 = Color(0xffB6CBFF);
  static const Color blue11 = Color(0xff4267F2);
  static const Color blueShadow = Color(0xff6A92FF);
  static const Color blue12 = Color(0xff3E8CFF);
  static const Color blue13 = Color(0xff4267F2);
  static const Color blue14 = Color(0xff1D6CFD);
  static const Color yellow = Color(0xffFD9E2B);

  static const Color white = Colors.white;
  static const Color blueMain = Color.fromRGBO(22, 79, 255, 0.9);
  static const Color toastColor = Color.fromRGBO(14, 52, 127, 0.8);
  static const Color blueMainColorValue = Color(0xff1A60FE);

  static var primarySwatch = MaterialColor(
    blueMainColorValue.value,
    <int, Color>{
      50: blueMainColorValue,
      100: blueMainColorValue,
      200: blueMainColorValue,
      300: blueMainColorValue,
      400: blueMainColorValue,
      500: blueMainColorValue,
      600: blueMainColorValue,
      700: blueMainColorValue,
      800: blueMainColorValue,
      900: blueMainColorValue,
    },
  );

  /// 全局主色，用于强调 按钮、文字
  static const commonMain = Color(0xFF2B73FD);

  /// 半透明T
  static const commonMainTranslucent = Color(0x802B73FD);

  /// 用于点缀、强调
  static const commonAccent = Color(0xFF5CCB6F);

  /// 用于告警提示
  static const commonWarn = Color(0xFFF64C30);

  /// 用于提示颜色
  static const commonTip = Color(0xFFFD9E2B);

  /// 标题颜色
  static const commonTitle = Color(0xFFFFFFFF);

  /// 重要信息用色
  static const commonTvMajor = Color(0xFF333333);

  /// 次要信息用色
  static const commonTvSecondary = Color(0xFF999999);

  /// 辅助信息用色
  static const commonTvExplanation = Color(0xFFC3C3C3);

  static const tilteGradientBegin = Color(0xFF237FFD);
  static const tilteGradientEnd = Color(0xFF1346FF);
  static const mapBackgound = Color(0xFFE0E8FD);

  /// 分割线
  static var listDivider = Color(0xFFDADADA);
}

class GsTextStyle {
  static const TextStyle robotNameTextStyle = TextStyle();
}

class GsFontWeight {
  ///medium
  static final FontWeight medium = FontWeight.w500;

  ///regular
  static final FontWeight regular = FontWeight.w400;
}

class GsFontSize {
  static final sp_25 = 25.sp;
  static final sp_28 = 28.sp;
  static final sp_30 = 30.sp;
  static final sp_32 = 32.sp;
  static final sp_35 = 35.sp;
  static final sp_36 = 36.sp;
  static final sp_40 = 40.sp;
  static final sp_42 = 42.sp;
  static final sp_46 = 46.sp;
  static final sp_48 = 48.sp;
  static final sp_50 = 50.sp;
  static final sp_52 = 52.sp;
  static final sp_58 = 58.sp;
  static final sp_60 = 60.sp;
  static final sp_64 = 64.sp;
  static final sp_68 = 68.sp;

  /// 一级标题
  static final h1 = sp_64;

  /// 二级标题
  static final h2 = sp_48;

  /// 正文
  static final content = sp_42;

  /// 辅助说明文字
  static final explanation = sp_36;

  /// 图标辅助文字
  static final explanationIcon = sp_32;

  static final dialogTitle = 60.sp;
  static final dialogContent = GsSize.sp_48;
  static final dialogButton = GsSize.sp_48;
}

class GsSize {
  static final sp_25 = 25.sp;
  static final sp_28 = 28.sp;
  static final sp_30 = 30.sp;
  static final sp_32 = 32.sp;
  static final sp_36 = 36.sp;
  static final sp_42 = 42.sp;
  static final sp_46 = 46.sp;
  static final sp_48 = 48.sp;
  static final sp_64 = 64.sp;
  static final sp_72 = 72.sp;

  static final mainTab = 76.sp;

  static final borderRadius = 24.sp;

  /// loadingDialog
  static final loadingWidth = 668.sp;
  static final loadingHeight = 550.sp;
  static final titleHeight = 200.sp;

  ///设计图的文字高度+状态栏高度
  static final navHeight = Size.fromHeight(titleHeight).height + ScreenUtil().statusBarHeight;

  /// Dialog 规范
  static final dialogPaddingHorizontal = 78.sp;
  static final dialogPaddingVertical = 120.sp;
  static final dialogRadius = 68.sp;

  /// 异常 & 导航点 & 任务进度
  static final sheetMarginHorizontal = 42.sp;
  static final sheetMarginVertical = 24.sp;

  /// 导航 & 任务 & 实时视频 等按钮
  static final actionBottomSize = 107.sp;
  static final actionBottomStartTaskSize = 129.sp;

  /// 实时视图定位状态图标大小
  static final locationIconSize = 64.sp;
}
