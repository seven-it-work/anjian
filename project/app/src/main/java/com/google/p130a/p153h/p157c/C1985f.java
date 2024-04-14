package com.google.p130a.p153h.p157c;

import android.support.v4.app.FrameMetricsAggregator;
import android.support.v4.view.InputDeviceCompat;
import android.support.v7.widget.helper.ItemTouchHelper;
import com.cyjh.mobileanjian.ipc.share.proto.C1612a;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.google.p130a.C2026w;
import com.google.p130a.p153h.C1962a;
import mobi.oneway.export.C2640a;

/* renamed from: com.google.a.h.c.f */
/* loaded from: classes.dex */
public final class C1985f {

    /* renamed from: a */
    private static final int[][] f7771a = {new int[]{27, 917}, new int[]{522, 568, 723, 809}, new int[]{237, 308, 436, 284, 646, 653, 428, 379}, new int[]{C1612a.f6075aQ, 562, 232, 755, 599, 524, UiMessage.CommandToUi.Command_Type.CLOSE_CONTINUE_ACK_VALUE, 132, 295, 116, 442, 428, 295, 42, 176, 65}, new int[]{361, 575, 922, 525, 176, 586, 640, 321, 536, 742, 677, 742, 687, 284, 193, 517, 273, 494, 263, 147, 593, 800, 571, 320, 803, 133, 231, 390, 685, 330, 63, UiMessage.CommandToUi.Command_Type.GET_FW_VISIBLE_VALUE}, new int[]{539, 422, 6, 93, 862, 771, 453, 106, UiMessage.CommandToUi.Command_Type.FW_SET_WIDTH_VALUE, 287, 107, 505, 733, 877, 381, UiMessage.CommandToUi.Command_Type.FW_SET_TEXT_VALUE, 723, 476, 462, 172, 430, UiMessage.CommandToUi.Command_Type.FW_SET_TOP_VALUE, 858, 822, 543, 376, FrameMetricsAggregator.EVERY_DURATION, 400, 672, 762, 283, 184, 440, 35, 519, 31, 460, 594, 225, 535, 517, 352, UiMessage.CommandToUi.Command_Type.FW_ZORDER_VALUE, 158, 651, 201, 488, UiMessage.CommandToUi.Command_Type.SET_CONTROL_GRAVITY_VALUE, 648, 733, 717, 83, UiMessage.CommandToUi.Command_Type.GET_TEXT_VALUE, 97, 280, 771, 840, 629, 4, 381, 843, 623, 264, 543}, new int[]{521, UiMessage.CommandToUi.Command_Type.SET_FW_TEXT_COLOR_VALUE, 864, 547, 858, 580, 296, 379, 53, 779, 897, 444, 400, 925, 749, 415, 822, 93, UiMessage.CommandToUi.Command_Type.SET_FW_IMAGE_VIEW_VALUE, UiMessage.CommandToUi.Command_Type.SET_TAB_VALUE, C1962a.f7639b, 244, 583, 620, 246, 148, 447, 631, 292, 908, 490, 704, 516, C1612a.f6068aJ, 457, 907, 594, 723, 674, 292, 272, 96, 684, 432, 686, UiMessage.CommandToUi.Command_Type.FW_OPACITY_VALUE, 860, 569, 193, 219, C1612a.f6065aG, 186, 236, 287, 192, 775, 278, 173, 40, 379, 712, 463, 646, 776, 171, 491, 297, 763, 156, 732, 95, 270, 447, 90, 507, 48, 228, 821, 808, 898, 784, 663, 627, 378, 382, C1612a.f6072aN, 380, 602, 754, 336, 89, 614, 87, 432, 670, 616, 157, 374, 242, 726, 600, 269, 375, 898, 845, 454, 354, 130, 814, 587, 804, 34, UiMessage.CommandToUi.Command_Type.SET_EDIT_INPUT_TYPE_VALUE, 330, 539, 297, 827, 865, 37, 517, 834, 315, 550, 86, UiMessage.CommandToUi.Command_Type.CLOSE_CONTINUE_ACK_VALUE, 4, 108, 539}, new int[]{524, 894, 75, 766, 882, 857, 74, UiMessage.CommandToUi.Command_Type.SET_RADIO_GROUP_VALUE, 82, 586, 708, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 905, 786, 138, 720, 858, 194, UiMessage.CommandToUi.Command_Type.SET_FW_TEXT_SIZE_VALUE, 913, C1612a.f6076aR, 190, 375, 850, 438, 733, 194, 280, 201, 280, 828, 757, 710, 814, 919, 89, 68, 569, 11, UiMessage.CommandToUi.Command_Type.SET_RADIO_GROUP_VALUE, 796, UiMessage.CommandToUi.Command_Type.FW_ZORDER_VALUE, 540, 913, UiMessage.CommandToUi.Command_Type.CLOSE_CONTINUE_ACK_VALUE, 700, 799, 137, 439, 418, 592, 668, 353, 859, 370, 694, 325, 240, UiMessage.CommandToUi.Command_Type.SET_FW_TEXT_VIEW_VALUE, 257, 284, 549, UiMessage.CommandToUi.Command_Type.SET_WEB_VIEW_VALUE, 884, 315, 70, 329, 793, 490, C1612a.f6075aQ, 877, 162, 749, 812, 684, 461, 334, 376, 849, 521, 307, 291, 803, 712, 19, 358, 399, 908, 103, FrameMetricsAggregator.EVERY_DURATION, 51, 8, 517, 225, 289, 470, 637, 731, 66, 255, 917, 269, 463, 830, 730, 433, 848, 585, 136, 538, 906, 90, 2, 290, 743, 199, 655, 903, 329, 49, UiMessage.CommandToUi.Command_Type.CLOSE_EXIT_ACK_VALUE, 580, 355, 588, 188, 462, 10, 134, 628, 320, 479, 130, 739, 71, 263, 318, 374, UiMessage.CommandToUi.Command_Type.LOAD_PROFILE_VALUE, 192, UiMessage.CommandToUi.Command_Type.FW_ZORDER_VALUE, 142, 673, 687, 234, 722, 384, 177, 752, UiMessage.CommandToUi.Command_Type.FW_GET_VALUE_VALUE, 640, 455, 193, 689, 707, 805, 641, 48, 60, 732, 621, 895, 544, C1612a.f6071aM, 852, 655, UiMessage.CommandToUi.Command_Type.SET_FW_BG_VALUE, 697, 755, 756, 60, 231, 773, 434, 421, 726, 528, UiMessage.CommandToUi.Command_Type.SET_PADDING_VALUE, 118, 49, 795, 32, 144, 500, 238, 836, 394, 280, 566, 319, 9, 647, 550, 73, 914, 342, 126, 32, 681, 331, 792, 620, 60, UiMessage.CommandToUi.Command_Type.FW_SET_TOP_VALUE, 441, 180, 791, 893, 754, UiMessage.CommandToUi.Command_Type.FW_ZORDER_VALUE, 383, 228, 749, 760, UiMessage.CommandToUi.Command_Type.SET_FONT_SIZE_LEVEL_VALUE, 54, 297, 134, 54, 834, 299, 922, 191, 910, 532, UiMessage.CommandToUi.Command_Type.FW_SET_TOP_VALUE, 829, 189, 20, 167, 29, 872, 449, 83, UiMessage.CommandToUi.Command_Type.GET_VISIBLE_VALUE, 41, 656, 505, 579, 481, 173, UiMessage.CommandToUi.Command_Type.GET_TEXT_VALUE, 251, 688, 95, 497, 555, 642, 543, 307, 159, 924, 558, 648, 55, 497, 10}, new int[]{352, 77, 373, UiMessage.CommandToUi.Command_Type.SET_FULLSCREEN_VALUE, 35, 599, 428, UiMessage.CommandToUi.Command_Type.SET_SPINNER_VALUE, UiMessage.CommandToUi.Command_Type.GET_FW_ENABLE_VALUE, 574, 118, 498, 285, 380, 350, 492, 197, 265, 920, 155, 914, 299, 229, 643, 294, 871, UiMessage.CommandToUi.Command_Type.SET_TITLE_BACKCOLOR_VALUE, 88, 87, 193, 352, 781, 846, 75, 327, 520, 435, 543, UiMessage.CommandToUi.Command_Type.SET_BOTTON_VALUE, 666, 249, 346, 781, 621, 640, 268, 794, 534, 539, 781, UiMessage.CommandToUi.Command_Type.GET_VALUE_VALUE, 390, 644, 102, 476, 499, 290, 632, 545, 37, 858, 916, 552, 41, 542, 289, 122, 272, 383, 800, 485, 98, 752, 472, 761, 107, 784, 860, 658, 741, 290, UiMessage.CommandToUi.Command_Type.SET_RADIO_GROUP_VALUE, 681, UiMessage.CommandToUi.Command_Type.GET_TEXTCOLOR_VALUE, 855, 85, 99, 62, 482, 180, 20, 297, 451, 593, 913, 142, 808, 684, 287, 536, 561, 76, 653, 899, 729, 567, 744, 390, InputDeviceCompat.SOURCE_DPAD, 192, 516, C1612a.f6068aJ, 240, 518, 794, 395, 768, 848, 51, UiMessage.CommandToUi.Command_Type.FW_SET_WIDTH_VALUE, 384, 168, 190, 826, 328, 596, 786, UiMessage.CommandToUi.Command_Type.SET_TITLE_TEXT_VALUE, 570, 381, 415, 641, 156, 237, 151, 429, 531, UiMessage.CommandToUi.Command_Type.SET_SPINNER_VALUE, 676, 710, 89, 168, UiMessage.CommandToUi.Command_Type.SET_TEXT_VALUE, UiMessage.CommandToUi.Command_Type.GET_VISIBLE_VALUE, 40, 708, 575, 162, 864, 229, 65, 861, 841, 512, 164, 477, 221, 92, 358, 785, 288, 357, 850, 836, 827, 736, 707, 94, 8, 494, 114, 521, 2, 499, 851, 543, 152, 729, 771, 95, 248, 361, 578, 323, 856, 797, 289, 51, 684, 466, 533, 820, 669, 45, 902, 452, 167, 342, 244, 173, 35, 463, 651, 51, 699, 591, 452, 578, 37, 124, 298, 332, 552, 43, 427, 119, 662, 777, 475, 850, 764, 364, 578, 911, 283, 711, 472, 420, 245, 288, 594, 394, FrameMetricsAggregator.EVERY_DURATION, 327, 589, 777, 699, 688, 43, UiMessage.CommandToUi.Command_Type.GET_VALUE_VALUE, 842, 383, 721, 521, 560, 644, 714, 559, 62, 145, 873, 663, 713, 159, 672, 729, 624, 59, 193, 417, 158, UiMessage.CommandToUi.Command_Type.SET_WEB_VIEW_VALUE, 563, 564, 343, 693, 109, UiMessage.CommandToUi.Command_Type.FW_SET_LEFT_VALUE, 563, 365, 181, 772, 677, UiMessage.CommandToUi.Command_Type.SET_FW_TEXT_COLOR_VALUE, 248, 353, 708, UiMessage.CommandToUi.Command_Type.GET_FW_VISIBLE_VALUE, 579, 870, 617, 841, 632, 860, 289, 536, 35, 777, 618, 586, 424, 833, 77, 597, 346, 269, 757, 632, 695, 751, 331, C2640a.f10157e, 184, 45, 787, 680, 18, 66, UiMessage.CommandToUi.Command_Type.GET_TEXTCOLOR_VALUE, 369, 54, 492, 228, 613, 830, 922, 437, 519, 644, 905, 789, 420, UiMessage.CommandToUi.Command_Type.SET_BACKCOLOR_VALUE, 441, UiMessage.CommandToUi.Command_Type.SET_SPINNER_VALUE, 300, 892, 827, 141, 537, 381, 662, InputDeviceCompat.SOURCE_DPAD, 56, 252, 341, 242, 797, 838, 837, 720, 224, 307, 631, 61, 87, 560, UiMessage.CommandToUi.Command_Type.SET_FW_TEXT_COLOR_VALUE, 756, 665, 397, 808, 851, UiMessage.CommandToUi.Command_Type.SET_FW_BG_VALUE, 473, 795, 378, 31, 647, 915, 459, 806, 590, 731, 425, UiMessage.CommandToUi.Command_Type.SET_FW_TEXT_VIEW_VALUE, 548, 249, 321, 881, 699, 535, 673, 782, UiMessage.CommandToUi.Command_Type.SET_LINE_VALUE, 815, 905, UiMessage.CommandToUi.Command_Type.SET_TITLE_TEXT_VALUE, 843, 922, 281, 73, 469, 791, 660, 162, 498, 308, 155, 422, 907, 817, 187, 62, 16, 425, 535, 336, 286, 437, 375, 273, UiMessage.CommandToUi.Command_Type.FW_SET_WIDTH_VALUE, 296, 183, 923, 116, 667, 751, 353, 62, 366, 691, 379, 687, 842, 37, 357, 720, 742, 330, 5, 39, 923, UiMessage.CommandToUi.Command_Type.SET_FW_TEXT_SIZE_VALUE, 424, 242, 749, 321, 54, 669, 316, 342, 299, 534, 105, 667, 488, 640, 672, 576, 540, 316, 486, 721, UiMessage.CommandToUi.Command_Type.FW_SET_WIDTH_VALUE, 46, 656, 447, 171, 616, 464, 190, 531, 297, 321, 762, 752, 533, 175, 134, 14, 381, 433, 717, 45, 111, 20, 596, 284, 736, 138, 646, UiMessage.CommandToUi.Command_Type.GET_FW_TEXT_COLOR_VALUE, 877, 669, 141, 919, 45, 780, UiMessage.CommandToUi.Command_Type.GET_TEXTCOLOR_VALUE, 164, 332, 899, 165, 726, 600, 325, 498, 655, 357, 752, 768, 223, 849, 647, 63, UiMessage.CommandToUi.Command_Type.SET_FW_TEXT_COLOR_VALUE, 863, 251, 366, UiMessage.CommandToUi.Command_Type.SET_TEXT_VALUE, 282, 738, 675, UiMessage.CommandToUi.Command_Type.GET_FW_VISIBLE_VALUE, 389, 244, 31, 121, UiMessage.CommandToUi.Command_Type.SET_TITLE_TEXT_VALUE, 263}};

    private C1985f() {
    }

    /* renamed from: a */
    public static int m9077a(int i) {
        if (i < 0 || i > 8) {
            throw new IllegalArgumentException("Error correction level must be between 0 and 8!");
        }
        return 1 << (i + 1);
    }

    /* renamed from: a */
    public static String m9078a(CharSequence charSequence, int i) {
        int m9077a = m9077a(i);
        char[] cArr = new char[m9077a];
        int length = charSequence.length();
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = m9077a - 1;
            int charAt = (charSequence.charAt(i2) + cArr[i3]) % C1962a.f7638a;
            while (i3 > 0) {
                cArr[i3] = (char) ((cArr[i3 - 1] + (929 - ((f7771a[i][i3] * charAt) % C1962a.f7638a))) % C1962a.f7638a);
                i3--;
            }
            cArr[0] = (char) ((929 - ((charAt * f7771a[i][0]) % C1962a.f7638a)) % C1962a.f7638a);
        }
        StringBuilder sb = new StringBuilder(m9077a);
        for (int i4 = m9077a - 1; i4 >= 0; i4--) {
            if (cArr[i4] != 0) {
                cArr[i4] = (char) (929 - cArr[i4]);
            }
            sb.append(cArr[i4]);
        }
        return sb.toString();
    }

    /* renamed from: b */
    private static int m9079b(int i) throws C2026w {
        if (i <= 0) {
            throw new IllegalArgumentException("n must be > 0");
        }
        if (i <= 40) {
            return 2;
        }
        if (i <= 160) {
            return 3;
        }
        if (i <= 320) {
            return 4;
        }
        if (i <= 863) {
            return 5;
        }
        throw new C2026w("No recommendation possible");
    }
}
