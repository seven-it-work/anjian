package com.google.p130a.p144e.p145a;

import android.support.v4.app.FrameMetricsAggregator;
import android.support.v4.view.InputDeviceCompat;
import android.support.v7.widget.helper.ItemTouchHelper;
import com.cyjh.elfin.p077e.p079b.C1246a;
import com.cyjh.mobileanjian.ipc.share.proto.C1612a;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.google.p130a.p137c.C1852b;
import mobi.oneway.export.C2640a;

/* renamed from: com.google.a.e.a.a */
/* loaded from: classes.dex */
final class C1893a {

    /* renamed from: a */
    static final int[][] f7406a = {new int[]{121, 120, 127, 126, 133, 132, 139, 138, 145, 144, 151, 150, 157, 156, 163, 162, 169, 168, 175, 174, 181, 180, 187, 186, 193, 192, 199, 198, -2, -2}, new int[]{123, 122, C1612a.f6065aG, 128, 135, 134, 141, 140, 147, 146, C1246a.f4655r, 152, 159, 158, 165, 164, 171, 170, 177, 176, 183, 182, 189, 188, 195, 194, 201, 200, 816, -3}, new int[]{125, 124, 131, 130, 137, 136, 143, 142, 149, 148, 155, 154, 161, 160, 167, 166, 173, 172, 179, 178, 185, 184, 191, 190, 197, 196, UiMessage.CommandToUi.Command_Type.SET_BOTTON_VALUE, 202, 818, 817}, new int[]{283, 282, C1612a.f6078aT, C1612a.f6077aS, 271, 270, 265, 264, C1612a.f6069aK, C1612a.f6068aJ, 253, 252, C2640a.f10157e, 246, 241, 240, 235, 234, 229, 228, 223, 222, UiMessage.CommandToUi.Command_Type.SET_FW_IMAGE_VIEW_VALUE, UiMessage.CommandToUi.Command_Type.SET_FW_TEXT_VIEW_VALUE, UiMessage.CommandToUi.Command_Type.SET_EDIT_INPUT_TYPE_VALUE, UiMessage.CommandToUi.Command_Type.SET_LINE_VALUE, UiMessage.CommandToUi.Command_Type.SET_CHECK_BOX_VALUE, UiMessage.CommandToUi.Command_Type.SET_RADIO_GROUP_VALUE, 819, -3}, new int[]{285, 284, 279, 278, 273, 272, 267, 266, C1612a.f6071aM, C1612a.f6070aL, 255, 254, 249, 248, 243, 242, 237, 236, 231, 230, 225, 224, 219, 218, UiMessage.CommandToUi.Command_Type.SET_FONT_SIZE_LEVEL_VALUE, UiMessage.CommandToUi.Command_Type.SET_FONT_VALUE, UiMessage.CommandToUi.Command_Type.SET_SPINNER_VALUE, UiMessage.CommandToUi.Command_Type.SET_IMAGE_VIEW_VALUE, 821, 820}, new int[]{287, 286, 281, 280, C1612a.f6076aR, C1612a.f6075aQ, 269, 268, 263, C1612a.f6072aN, 257, 256, 251, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 245, 244, 239, 238, 233, 232, 227, 226, 221, 220, UiMessage.CommandToUi.Command_Type.SET_FW_BUTTON_VALUE, UiMessage.CommandToUi.Command_Type.SET_ROW_ALIGNMENT_VALUE, UiMessage.CommandToUi.Command_Type.SET_WEB_VIEW_VALUE, UiMessage.CommandToUi.Command_Type.SET_TAB_VALUE, 822, -3}, new int[]{289, 288, 295, 294, UiMessage.CommandToUi.Command_Type.SET_ENABLED_VALUE, 300, 307, UiMessage.CommandToUi.Command_Type.SET_TITLE_BACKCOLOR_VALUE, UiMessage.CommandToUi.Command_Type.SET_FW_VISIBLE_VALUE, UiMessage.CommandToUi.Command_Type.SET_FW_ENABLE_VALUE, 319, 318, 325, 324, 331, 330, 337, 336, 343, 342, 349, 348, 355, 354, 361, 360, 367, 366, 824, 823}, new int[]{291, 290, 297, 296, UiMessage.CommandToUi.Command_Type.SET_TITLE_TEXT_VALUE, UiMessage.CommandToUi.Command_Type.SET_VISIBLE_VALUE, UiMessage.CommandToUi.Command_Type.SET_FW_BG_VALUE, 308, 315, 314, 321, 320, 327, 326, 333, 332, 339, 338, 345, 344, 351, 350, 357, 356, 363, 362, 369, 368, 825, -3}, new int[]{293, 292, 299, 298, UiMessage.CommandToUi.Command_Type.SET_BACKCOLOR_VALUE, UiMessage.CommandToUi.Command_Type.SET_TEXT_VALUE, UiMessage.CommandToUi.Command_Type.SET_FW_TEXT_SIZE_VALUE, UiMessage.CommandToUi.Command_Type.SET_FW_TEXT_COLOR_VALUE, 317, 316, 323, 322, 329, 328, 335, 334, 341, 340, 347, 346, 353, 352, 359, 358, 365, 364, 371, 370, 827, 826}, new int[]{UiMessage.CommandToUi.Command_Type.GET_FW_ENABLE_VALUE, UiMessage.CommandToUi.Command_Type.GET_VALUE_VALUE, UiMessage.CommandToUi.Command_Type.GET_TITLE_TEXT_VALUE, UiMessage.CommandToUi.Command_Type.GET_VISIBLE_VALUE, 397, 396, 391, 390, 79, 78, -2, -2, 13, 12, 37, 36, 2, -1, 44, 43, 109, 108, 385, 384, 379, 378, 373, 372, 828, -3}, new int[]{UiMessage.CommandToUi.Command_Type.GET_FW_TEXT_COLOR_VALUE, UiMessage.CommandToUi.Command_Type.GET_FW_VISIBLE_VALUE, UiMessage.CommandToUi.Command_Type.GET_BACKCOLOR_VALUE, UiMessage.CommandToUi.Command_Type.GET_TEXT_VALUE, 399, 398, 393, 392, 81, 80, 40, -2, 15, 14, 39, 38, 3, -1, -1, 45, 111, 110, 387, 386, 381, 380, 375, 374, 830, 829}, new int[]{413, 412, UiMessage.CommandToUi.Command_Type.GET_TEXTCOLOR_VALUE, UiMessage.CommandToUi.Command_Type.GET_TITLE_BACKCOLOR_VALUE, UiMessage.CommandToUi.Command_Type.GET_ENABLED_VALUE, 400, 395, 394, 83, 82, 41, -3, -3, -3, -3, -3, 5, 4, 47, 46, 113, 112, 389, 388, 383, 382, 377, 376, 831, -3}, new int[]{415, 414, 421, 420, 427, 426, 103, 102, 55, 54, 16, -3, -3, -3, -3, -3, -3, -3, 20, 19, 85, 84, 433, 432, 439, 438, 445, 444, 833, 832}, new int[]{417, 416, 423, 422, 429, 428, 105, 104, 57, 56, -3, -3, -3, -3, -3, -3, -3, -3, 22, 21, 87, 86, 435, 434, 441, 440, 447, 446, 834, -3}, new int[]{419, 418, 425, 424, 431, 430, 107, 106, 59, 58, -3, -3, -3, -3, -3, -3, -3, -3, -3, 23, 89, 88, 437, 436, 443, 442, 449, 448, 836, 835}, new int[]{481, 480, 475, 474, 469, 468, 48, -2, 30, -3, -3, -3, -3, -3, -3, -3, -3, -3, -3, 0, 53, 52, 463, 462, 457, 456, 451, 450, 837, -3}, new int[]{483, 482, 477, 476, 471, 470, 49, -1, -2, -3, -3, -3, -3, -3, -3, -3, -3, -3, -3, -3, -2, -1, 465, 464, 459, 458, 453, 452, 839, 838}, new int[]{485, 484, 479, 478, 473, 472, 51, 50, 31, -3, -3, -3, -3, -3, -3, -3, -3, -3, -3, 1, -2, 42, 467, 466, 461, 460, 455, 454, 840, -3}, new int[]{487, 486, 493, 492, 499, 498, 97, 96, 61, 60, -3, -3, -3, -3, -3, -3, -3, -3, -3, 26, 91, 90, 505, UiMessage.CommandToUi.Command_Type.SET_FULLSCREEN_VALUE, FrameMetricsAggregator.EVERY_DURATION, 510, 517, 516, 842, 841}, new int[]{489, 488, 495, 494, UiMessage.CommandToUi.Command_Type.SET_WINDOW_GRAVITY_VALUE, 500, 99, 98, 63, 62, -3, -3, -3, -3, -3, -3, -3, -3, 28, 27, 93, 92, 507, 506, InputDeviceCompat.SOURCE_DPAD, 512, 519, 518, 843, -3}, new int[]{491, 490, 497, 496, UiMessage.CommandToUi.Command_Type.SET_PADDING_VALUE, UiMessage.CommandToUi.Command_Type.SET_CONTROL_GRAVITY_VALUE, 101, 100, 65, 64, 17, -3, -3, -3, -3, -3, -3, -3, 18, 29, 95, 94, 509, 508, 515, 514, 521, 520, 845, 844}, new int[]{559, 558, 553, 552, 547, 546, 541, 540, 73, 72, 32, -3, -3, -3, -3, -3, -3, 10, 67, 66, 115, 114, 535, 534, 529, 528, 523, 522, 846, -3}, new int[]{561, 560, 555, 554, 549, 548, 543, 542, 75, 74, -2, -1, 7, 6, 35, 34, 11, -2, 69, 68, 117, 116, 537, 536, 531, 530, 525, 524, 848, 847}, new int[]{563, 562, 557, 556, 551, 550, 545, 544, 77, 76, -2, 33, 9, 8, 25, 24, -1, -2, 71, 70, 119, 118, 539, 538, 533, 532, 527, 526, 849, -3}, new int[]{565, 564, 571, 570, 577, 576, 583, 582, 589, 588, 595, 594, UiMessage.CommandToUi.Command_Type.LOAD_PROFILE_VALUE, 600, UiMessage.CommandToUi.Command_Type.FW_GET_VALUE_VALUE, UiMessage.CommandToUi.Command_Type.FW_OPACITY_VALUE, 613, UiMessage.CommandToUi.Command_Type.FW_SET_TEXT_VALUE, 619, 618, 625, 624, 631, 630, 637, 636, 643, 642, 851, 850}, new int[]{567, 566, 573, 572, 579, 578, 585, 584, 591, 590, 597, 596, UiMessage.CommandToUi.Command_Type.SET_FW_SMOOTH_VALUE, 602, UiMessage.CommandToUi.Command_Type.FW_SET_TOP_VALUE, UiMessage.CommandToUi.Command_Type.FW_SET_LEFT_VALUE, 615, 614, 621, 620, 627, 626, 633, 632, 639, 638, 645, 644, 852, -3}, new int[]{569, 568, 575, 574, 581, 580, 587, 586, 593, 592, 599, 598, UiMessage.CommandToUi.Command_Type.FW_ZORDER_VALUE, 604, UiMessage.CommandToUi.Command_Type.FW_SET_HEIGHT_VALUE, UiMessage.CommandToUi.Command_Type.FW_SET_WIDTH_VALUE, 617, 616, 623, 622, 629, 628, 635, 634, 641, 640, 647, 646, 854, 853}, new int[]{727, 726, 721, 720, 715, 714, 709, 708, 703, UiMessage.CommandToUi.Command_Type.SET_UIP_DATA_VALUE, 697, 696, 691, 690, 685, 684, 679, 678, 673, 672, 667, 666, 661, 660, 655, 654, 649, 648, 855, -3}, new int[]{729, 728, 723, 722, 717, 716, 711, 710, 705, 704, 699, 698, 693, 692, 687, 686, 681, 680, 675, 674, 669, 668, 663, 662, 657, 656, 651, 650, 857, 856}, new int[]{731, 730, 725, 724, 719, 718, 713, 712, 707, 706, UiMessage.CommandToUi.Command_Type.GET_UIP_DATA_VALUE, 700, 695, 694, 689, 688, 683, 682, 677, 676, 671, 670, 665, 664, 659, 658, 653, 652, 858, -3}, new int[]{733, 732, 739, 738, 745, 744, 751, 750, 757, 756, 763, 762, 769, 768, 775, 774, 781, 780, 787, 786, 793, 792, 799, 798, 805, 804, 811, 810, 860, 859}, new int[]{735, 734, 741, 740, 747, 746, 753, 752, 759, 758, 765, 764, 771, 770, 777, 776, 783, 782, 789, 788, 795, 794, UiMessage.CommandToUi.Command_Type.CLOSE_CONTINUE_ACK_VALUE, 800, 807, 806, 813, 812, 861, -3}, new int[]{737, 736, 743, 742, 749, 748, 755, 754, 761, 760, 767, 766, 773, 772, 779, 778, 785, 784, 791, 790, 797, 796, 803, UiMessage.CommandToUi.Command_Type.CLOSE_EXIT_ACK_VALUE, 809, 808, 815, 814, 863, 862}};

    /* renamed from: b */
    final C1852b f7407b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1893a(C1852b c1852b) {
        this.f7407b = c1852b;
    }

    /* renamed from: a */
    private byte[] m8688a() {
        byte[] bArr = new byte[144];
        int i = this.f7407b.f7256b;
        int i2 = this.f7407b.f7255a;
        for (int i3 = 0; i3 < i; i3++) {
            int[] iArr = f7406a[i3];
            for (int i4 = 0; i4 < i2; i4++) {
                int i5 = iArr[i4];
                if (i5 >= 0 && this.f7407b.m8479a(i4, i3)) {
                    int i6 = i5 / 6;
                    bArr[i6] = (byte) (((byte) (1 << (5 - (i5 % 6)))) | bArr[i6]);
                }
            }
        }
        return bArr;
    }
}