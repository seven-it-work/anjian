package com.google.p130a.p158i.p159a;

import com.google.p130a.C1961h;
import com.google.p130a.EnumC1891e;
import com.google.p130a.p137c.C1858c;
import com.google.p130a.p137c.C1867l;
import com.google.p130a.p137c.EnumC1859d;
import java.io.UnsupportedEncodingException;
import java.util.Collection;
import java.util.Map;

/* renamed from: com.google.a.i.a.d */
/* loaded from: classes.dex */
final class C1993d {

    /* renamed from: a */
    private static final char[] f7804a = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:".toCharArray();

    /* renamed from: b */
    private static final int f7805b = 1;

    private C1993d() {
    }

    /* renamed from: a */
    private static char m9118a(int i) throws C1961h {
        if (i >= f7804a.length) {
            throw C1961h.getFormatInstance();
        }
        return f7804a[i];
    }

    /* renamed from: a */
    private static int m9119a(C1858c c1858c) throws C1961h {
        int m8515a = c1858c.m8515a(8);
        if ((m8515a & 128) == 0) {
            return m8515a & 127;
        }
        if ((m8515a & 192) == 128) {
            return c1858c.m8515a(8) | ((m8515a & 63) << 8);
        }
        if ((m8515a & 224) == 192) {
            return c1858c.m8515a(16) | ((m8515a & 31) << 16);
        }
        throw C1961h.getFormatInstance();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x00b8. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x003e. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00fd A[LOOP:0: B:2:0x001e->B:16:0x00fd, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00dc A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.p130a.p137c.C1860e m9120a(byte[] r18, com.google.p130a.p158i.p159a.C1999j r19, com.google.p130a.p158i.p159a.EnumC1995f r20, java.util.Map<com.google.p130a.EnumC1891e, ?> r21) throws com.google.p130a.C1961h {
        /*
            Method dump skipped, instructions count: 290
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p130a.p158i.p159a.C1993d.m9120a(byte[], com.google.a.i.a.j, com.google.a.i.a.f, java.util.Map):com.google.a.c.e");
    }

    /* renamed from: a */
    private static void m9121a(C1858c c1858c, StringBuilder sb, int i) throws C1961h {
        if (i * 13 > c1858c.m8514a()) {
            throw C1961h.getFormatInstance();
        }
        byte[] bArr = new byte[i * 2];
        int i2 = 0;
        while (i > 0) {
            int m8515a = c1858c.m8515a(13);
            int i3 = (m8515a % 96) | ((m8515a / 96) << 8);
            int i4 = i3 + (i3 < 959 ? 41377 : 42657);
            bArr[i2] = (byte) (i4 >> 8);
            bArr[i2 + 1] = (byte) i4;
            i2 += 2;
            i--;
        }
        try {
            sb.append(new String(bArr, C1867l.f7317b));
        } catch (UnsupportedEncodingException unused) {
            throw C1961h.getFormatInstance();
        }
    }

    /* renamed from: a */
    private static void m9122a(C1858c c1858c, StringBuilder sb, int i, EnumC1859d enumC1859d, Collection<byte[]> collection, Map<EnumC1891e, ?> map) throws C1961h {
        if ((i << 3) > c1858c.m8514a()) {
            throw C1961h.getFormatInstance();
        }
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) c1858c.m8515a(8);
        }
        try {
            sb.append(new String(bArr, enumC1859d == null ? C1867l.m8551a(bArr, map) : enumC1859d.name()));
            collection.add(bArr);
        } catch (UnsupportedEncodingException unused) {
            throw C1961h.getFormatInstance();
        }
    }

    /* renamed from: a */
    private static void m9123a(C1858c c1858c, StringBuilder sb, int i, boolean z) throws C1961h {
        while (i > 1) {
            if (c1858c.m8514a() < 11) {
                throw C1961h.getFormatInstance();
            }
            int m8515a = c1858c.m8515a(11);
            sb.append(m9118a(m8515a / 45));
            sb.append(m9118a(m8515a % 45));
            i -= 2;
        }
        if (i == 1) {
            if (c1858c.m8514a() < 6) {
                throw C1961h.getFormatInstance();
            }
            sb.append(m9118a(c1858c.m8515a(6)));
        }
        if (z) {
            for (int length = sb.length(); length < sb.length(); length++) {
                if (sb.charAt(length) == '%') {
                    if (length < sb.length() - 1) {
                        int i2 = length + 1;
                        if (sb.charAt(i2) == '%') {
                            sb.deleteCharAt(i2);
                        }
                    }
                    sb.setCharAt(length, (char) 29);
                }
            }
        }
    }

    /* renamed from: b */
    private static void m9124b(C1858c c1858c, StringBuilder sb, int i) throws C1961h {
        if (i * 13 > c1858c.m8514a()) {
            throw C1961h.getFormatInstance();
        }
        byte[] bArr = new byte[i * 2];
        int i2 = 0;
        while (i > 0) {
            int m8515a = c1858c.m8515a(13);
            int i3 = (m8515a % 192) | ((m8515a / 192) << 8);
            int i4 = i3 + (i3 < 7936 ? 33088 : 49472);
            bArr[i2] = (byte) (i4 >> 8);
            bArr[i2 + 1] = (byte) i4;
            i2 += 2;
            i--;
        }
        try {
            sb.append(new String(bArr, C1867l.f7316a));
        } catch (UnsupportedEncodingException unused) {
            throw C1961h.getFormatInstance();
        }
    }

    /* renamed from: c */
    private static void m9125c(C1858c c1858c, StringBuilder sb, int i) throws C1961h {
        while (i >= 3) {
            if (c1858c.m8514a() < 10) {
                throw C1961h.getFormatInstance();
            }
            int m8515a = c1858c.m8515a(10);
            if (m8515a >= 1000) {
                throw C1961h.getFormatInstance();
            }
            sb.append(m9118a(m8515a / 100));
            sb.append(m9118a((m8515a / 10) % 10));
            sb.append(m9118a(m8515a % 10));
            i -= 3;
        }
        if (i == 2) {
            if (c1858c.m8514a() < 7) {
                throw C1961h.getFormatInstance();
            }
            int m8515a2 = c1858c.m8515a(7);
            if (m8515a2 >= 100) {
                throw C1961h.getFormatInstance();
            }
            sb.append(m9118a(m8515a2 / 10));
            sb.append(m9118a(m8515a2 % 10));
            return;
        }
        if (i == 1) {
            if (c1858c.m8514a() < 4) {
                throw C1961h.getFormatInstance();
            }
            int m8515a3 = c1858c.m8515a(4);
            if (m8515a3 >= 10) {
                throw C1961h.getFormatInstance();
            }
            sb.append(m9118a(m8515a3));
        }
    }
}
