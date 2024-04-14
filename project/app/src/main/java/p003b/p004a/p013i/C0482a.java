package p003b.p004a.p013i;

import java.net.IDN;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.commons.io.FilenameUtils;
import org.slf4j.Marker;
import p003b.p004a.C0439c;

/* renamed from: b.a.i.a */
/* loaded from: classes.dex */
public final class C0482a {

    /* renamed from: a */
    public static final String f521a = "publicsuffixes.gz";

    /* renamed from: e */
    private static final byte f525e = 33;

    /* renamed from: g */
    private final AtomicBoolean f527g = new AtomicBoolean(false);

    /* renamed from: h */
    private final CountDownLatch f528h = new CountDownLatch(1);

    /* renamed from: i */
    private byte[] f529i;

    /* renamed from: j */
    private byte[] f530j;

    /* renamed from: b */
    private static final byte[] f522b = {42};

    /* renamed from: c */
    private static final String[] f523c = new String[0];

    /* renamed from: d */
    private static final String[] f524d = {Marker.ANY_MARKER};

    /* renamed from: f */
    private static final C0482a f526f = new C0482a();

    /* renamed from: a */
    public static C0482a m492a() {
        return f526f;
    }

    /* renamed from: a */
    private static String m493a(byte[] bArr, byte[][] bArr2, int i) {
        int i2;
        int i3;
        int i4;
        int length = bArr.length;
        int i5 = 0;
        while (i5 < length) {
            int i6 = (i5 + length) / 2;
            while (i6 >= 0 && bArr[i6] != 10) {
                i6--;
            }
            int i7 = i6 + 1;
            int i8 = 1;
            while (true) {
                i2 = i7 + i8;
                if (bArr[i2] == 10) {
                    break;
                }
                i8++;
            }
            int i9 = i2 - i7;
            int i10 = i;
            boolean z = false;
            int i11 = 0;
            int i12 = 0;
            while (true) {
                if (z) {
                    z = false;
                    i3 = 46;
                } else {
                    i3 = bArr2[i10][i11] & 255;
                }
                i4 = i3 - (bArr[i7 + i12] & 255);
                if (i4 != 0) {
                    break;
                }
                i12++;
                i11++;
                if (i12 != i9) {
                    if (bArr2[i10].length == i11) {
                        if (i10 == bArr2.length - 1) {
                            break;
                        }
                        i10++;
                        z = true;
                        i11 = -1;
                    }
                } else {
                    break;
                }
            }
            if (i4 >= 0) {
                if (i4 <= 0) {
                    int i13 = i9 - i12;
                    int length2 = bArr2[i10].length - i11;
                    while (true) {
                        i10++;
                        if (i10 >= bArr2.length) {
                            break;
                        }
                        length2 += bArr2[i10].length;
                    }
                    if (length2 >= i13) {
                        if (length2 <= i13) {
                            return new String(bArr, i7, i9, C0439c.f167e);
                        }
                    }
                }
                i5 = i2 + 1;
            }
            length = i7 - 1;
        }
        return null;
    }

    /* renamed from: a */
    private void m494a(byte[] bArr, byte[] bArr2) {
        this.f529i = bArr;
        this.f530j = bArr2;
        this.f527g.set(true);
        this.f528h.countDown();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x005c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0084 A[LOOP:0: B:25:0x0081->B:27:0x0084, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c3 A[LOOP:3: B:46:0x00c3->B:50:0x00d0, LOOP_START, PHI: r1
      0x00c3: PHI (r1v3 int) = (r1v0 int), (r1v4 int) binds: [B:45:0x00c1, B:50:0x00d0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00a1 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String[] m495a(java.lang.String[] r9) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p003b.p004a.p013i.C0482a.m495a(java.lang.String[]):java.lang.String[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x004a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m496b() {
        /*
            r6 = this;
            java.lang.Class<b.a.i.a> r0 = p003b.p004a.p013i.C0482a.class
            java.lang.ClassLoader r0 = r0.getClassLoader()
            java.lang.String r1 = "publicsuffixes.gz"
            java.io.InputStream r0 = r0.getResourceAsStream(r1)
            r1 = 0
            if (r0 == 0) goto L48
            c.l r2 = new c.l
            c.y r0 = p017c.C0548p.m1223a(r0)
            r2.<init>(r0)
            c.e r0 = p017c.C0548p.m1217a(r2)
            int r2 = r0.mo1146i()     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L35
            byte[] r2 = new byte[r2]     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L35
            r0.mo1120b(r2)     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L35
            int r3 = r0.mo1146i()     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L35
            byte[] r3 = new byte[r3]     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L35
            r0.mo1120b(r3)     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L35
            p003b.p004a.C0439c.m144a(r0)
            r1 = r2
            goto L49
        L33:
            r1 = move-exception
            goto L44
        L35:
            r2 = move-exception
            b.a.h.e r3 = p003b.p004a.p012h.C0481e.m489b()     // Catch: java.lang.Throwable -> L33
            r4 = 5
            java.lang.String r5 = "Failed to read public suffix list"
            r3.mo467a(r4, r5, r2)     // Catch: java.lang.Throwable -> L33
            p003b.p004a.C0439c.m144a(r0)
            goto L48
        L44:
            p003b.p004a.C0439c.m144a(r0)
            throw r1
        L48:
            r3 = r1
        L49:
            monitor-enter(r6)
            r6.f529i = r1     // Catch: java.lang.Throwable -> L55
            r6.f530j = r3     // Catch: java.lang.Throwable -> L55
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L55
            java.util.concurrent.CountDownLatch r0 = r6.f528h
            r0.countDown()
            return
        L55:
            r0 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L55
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p003b.p004a.p013i.C0482a.m496b():void");
    }

    /* renamed from: a */
    public final String m497a(String str) {
        int length;
        int length2;
        if (str == null) {
            throw new NullPointerException("domain == null");
        }
        String[] split = IDN.toUnicode(str).split("\\.");
        String[] m495a = m495a(split);
        if (split.length == m495a.length && m495a[0].charAt(0) != '!') {
            return null;
        }
        if (m495a[0].charAt(0) == '!') {
            length = split.length;
            length2 = m495a.length;
        } else {
            length = split.length;
            length2 = m495a.length + 1;
        }
        StringBuilder sb = new StringBuilder();
        String[] split2 = str.split("\\.");
        for (int i = length - length2; i < split2.length; i++) {
            sb.append(split2[i]);
            sb.append(FilenameUtils.EXTENSION_SEPARATOR);
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }
}
