package com.google.p130a.p158i.p159a;

import com.google.p130a.p137c.C1852b;

/* renamed from: com.google.a.i.a.c */
/* loaded from: classes.dex */
enum EnumC1992c {
    DATA_MASK_000 { // from class: com.google.a.i.a.c.1
        @Override // com.google.p130a.p158i.p159a.EnumC1992c
        final boolean isMasked(int i, int i2) {
            return ((i + i2) & 1) == 0;
        }
    },
    DATA_MASK_001 { // from class: com.google.a.i.a.c.2
        @Override // com.google.p130a.p158i.p159a.EnumC1992c
        final boolean isMasked(int i, int i2) {
            return (i & 1) == 0;
        }
    },
    DATA_MASK_010 { // from class: com.google.a.i.a.c.3
        @Override // com.google.p130a.p158i.p159a.EnumC1992c
        final boolean isMasked(int i, int i2) {
            return i2 % 3 == 0;
        }
    },
    DATA_MASK_011 { // from class: com.google.a.i.a.c.4
        @Override // com.google.p130a.p158i.p159a.EnumC1992c
        final boolean isMasked(int i, int i2) {
            return (i + i2) % 3 == 0;
        }
    },
    DATA_MASK_100 { // from class: com.google.a.i.a.c.5
        @Override // com.google.p130a.p158i.p159a.EnumC1992c
        final boolean isMasked(int i, int i2) {
            return (((i / 2) + (i2 / 3)) & 1) == 0;
        }
    },
    DATA_MASK_101 { // from class: com.google.a.i.a.c.6
        @Override // com.google.p130a.p158i.p159a.EnumC1992c
        final boolean isMasked(int i, int i2) {
            return (i * i2) % 6 == 0;
        }
    },
    DATA_MASK_110 { // from class: com.google.a.i.a.c.7
        @Override // com.google.p130a.p158i.p159a.EnumC1992c
        final boolean isMasked(int i, int i2) {
            return (i * i2) % 6 < 3;
        }
    },
    DATA_MASK_111 { // from class: com.google.a.i.a.c.8
        @Override // com.google.p130a.p158i.p159a.EnumC1992c
        final boolean isMasked(int i, int i2) {
            return (((i + i2) + ((i * i2) % 3)) & 1) == 0;
        }
    };

    abstract boolean isMasked(int i, int i2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void unmaskBitMatrix(C1852b c1852b, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            for (int i3 = 0; i3 < i; i3++) {
                if (isMasked(i2, i3)) {
                    c1852b.m8483c(i3, i2);
                }
            }
        }
    }
}
