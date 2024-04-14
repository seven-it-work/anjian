package com.google.p130a.p158i.p159a;

/* renamed from: com.google.a.i.a.h */
/* loaded from: classes.dex */
public enum EnumC1997h {
    TERMINATOR(new int[]{0, 0, 0}, 0),
    NUMERIC(new int[]{10, 12, 14}, 1),
    ALPHANUMERIC(new int[]{9, 11, 13}, 2),
    STRUCTURED_APPEND(new int[]{0, 0, 0}, 3),
    BYTE(new int[]{8, 16, 16}, 4),
    ECI(new int[]{0, 0, 0}, 7),
    KANJI(new int[]{8, 10, 12}, 8),
    FNC1_FIRST_POSITION(new int[]{0, 0, 0}, 5),
    FNC1_SECOND_POSITION(new int[]{0, 0, 0}, 9),
    HANZI(new int[]{8, 10, 12}, 13);

    private final int bits;
    private final int[] characterCountBitsForVersions;

    EnumC1997h(int[] iArr, int i) {
        this.characterCountBitsForVersions = iArr;
        this.bits = i;
    }

    public static EnumC1997h forBits(int i) {
        switch (i) {
            case 0:
                return TERMINATOR;
            case 1:
                return NUMERIC;
            case 2:
                return ALPHANUMERIC;
            case 3:
                return STRUCTURED_APPEND;
            case 4:
                return BYTE;
            case 5:
                return FNC1_FIRST_POSITION;
            case 6:
            case 10:
            case 11:
            case 12:
            default:
                throw new IllegalArgumentException();
            case 7:
                return ECI;
            case 8:
                return KANJI;
            case 9:
                return FNC1_SECOND_POSITION;
            case 13:
                return HANZI;
        }
    }

    public final int getBits() {
        return this.bits;
    }

    public final int getCharacterCountBits(C1999j c1999j) {
        int i = c1999j.f7819a;
        return this.characterCountBitsForVersions[i <= 9 ? (char) 0 : i <= 26 ? (char) 1 : (char) 2];
    }
}
