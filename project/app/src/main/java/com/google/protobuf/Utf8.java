package com.google.protobuf;

/* loaded from: classes.dex */
final class Utf8 {
    public static final int COMPLETE = 0;
    public static final int MALFORMED = -1;

    private Utf8() {
    }

    private static int incompleteStateFor(int i) {
        if (i > -12) {
            return -1;
        }
        return i;
    }

    private static int incompleteStateFor(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    private static int incompleteStateFor(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    private static int incompleteStateFor(byte[] bArr, int i, int i2) {
        byte b2 = bArr[i - 1];
        switch (i2 - i) {
            case 0:
                return incompleteStateFor(b2);
            case 1:
                return incompleteStateFor(b2, bArr[i]);
            case 2:
                return incompleteStateFor(b2, bArr[i], bArr[i + 1]);
            default:
                throw new AssertionError();
        }
    }

    public static boolean isValidUtf8(byte[] bArr) {
        return isValidUtf8(bArr, 0, bArr.length);
    }

    public static boolean isValidUtf8(byte[] bArr, int i, int i2) {
        return partialIsValidUtf8(bArr, i, i2) == 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0015, code lost:
    
        if (r7[r8] > (-65)) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0042, code lost:
    
        if (r7[r8] > (-65)) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x007a, code lost:
    
        if (r7[r6] > (-65)) goto L50;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int partialIsValidUtf8(int r6, byte[] r7, int r8, int r9) {
        /*
            if (r6 == 0) goto L7d
            if (r8 < r9) goto L5
            return r6
        L5:
            byte r0 = (byte) r6
            r1 = -32
            r2 = -1
            r3 = -65
            if (r0 >= r1) goto L18
            r6 = -62
            if (r0 < r6) goto L17
            int r6 = r8 + 1
            r8 = r7[r8]
            if (r8 <= r3) goto L7e
        L17:
            return r2
        L18:
            r4 = -16
            if (r0 >= r4) goto L45
            int r6 = r6 >> 8
            r6 = r6 ^ r2
            byte r6 = (byte) r6
            if (r6 != 0) goto L30
            int r6 = r8 + 1
            r8 = r7[r8]
            if (r6 < r9) goto L2d
            int r6 = incompleteStateFor(r0, r8)
            return r6
        L2d:
            r5 = r8
            r8 = r6
            r6 = r5
        L30:
            if (r6 > r3) goto L44
            r4 = -96
            if (r0 != r1) goto L38
            if (r6 < r4) goto L44
        L38:
            r1 = -19
            if (r0 != r1) goto L3e
            if (r6 >= r4) goto L44
        L3e:
            int r6 = r8 + 1
            r8 = r7[r8]
            if (r8 <= r3) goto L7e
        L44:
            return r2
        L45:
            int r1 = r6 >> 8
            r1 = r1 ^ r2
            byte r1 = (byte) r1
            r4 = 0
            if (r1 != 0) goto L57
            int r6 = r8 + 1
            r1 = r7[r8]
            if (r6 < r9) goto L5b
            int r6 = incompleteStateFor(r0, r1)
            return r6
        L57:
            int r6 = r6 >> 16
            byte r4 = (byte) r6
            r6 = r8
        L5b:
            if (r4 != 0) goto L69
            int r8 = r6 + 1
            r4 = r7[r6]
            if (r8 < r9) goto L68
            int r6 = incompleteStateFor(r0, r1, r4)
            return r6
        L68:
            r6 = r8
        L69:
            if (r1 > r3) goto L7c
            int r8 = r0 << 28
            int r1 = r1 + 112
            int r8 = r8 + r1
            int r8 = r8 >> 30
            if (r8 != 0) goto L7c
            if (r4 > r3) goto L7c
            int r8 = r6 + 1
            r6 = r7[r6]
            if (r6 <= r3) goto L7d
        L7c:
            return r2
        L7d:
            r6 = r8
        L7e:
            int r6 = partialIsValidUtf8(r7, r6, r9)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.partialIsValidUtf8(int, byte[], int, int):int");
    }

    public static int partialIsValidUtf8(byte[] bArr, int i, int i2) {
        while (i < i2 && bArr[i] >= 0) {
            i++;
        }
        if (i >= i2) {
            return 0;
        }
        return partialIsValidUtf8NonAscii(bArr, i, i2);
    }

    private static int partialIsValidUtf8NonAscii(byte[] bArr, int i, int i2) {
        while (i < i2) {
            int i3 = i + 1;
            byte b2 = bArr[i];
            if (b2 < 0) {
                if (b2 < -32) {
                    if (i3 >= i2) {
                        return b2;
                    }
                    if (b2 >= -62) {
                        i = i3 + 1;
                        if (bArr[i3] > -65) {
                        }
                    }
                    return -1;
                }
                if (b2 >= -16) {
                    if (i3 >= i2 - 2) {
                        return incompleteStateFor(bArr, i3, i2);
                    }
                    int i4 = i3 + 1;
                    byte b3 = bArr[i3];
                    if (b3 <= -65 && (((b2 << 28) + (b3 + 112)) >> 30) == 0) {
                        int i5 = i4 + 1;
                        if (bArr[i4] <= -65) {
                            i3 = i5 + 1;
                            if (bArr[i5] > -65) {
                            }
                        }
                    }
                    return -1;
                }
                if (i3 >= i2 - 1) {
                    return incompleteStateFor(bArr, i3, i2);
                }
                int i6 = i3 + 1;
                byte b4 = bArr[i3];
                if (b4 <= -65 && ((b2 != -32 || b4 >= -96) && (b2 != -19 || b4 < -96))) {
                    i = i6 + 1;
                    if (bArr[i6] > -65) {
                    }
                }
                return -1;
            }
            i = i3;
        }
        return 0;
    }
}
