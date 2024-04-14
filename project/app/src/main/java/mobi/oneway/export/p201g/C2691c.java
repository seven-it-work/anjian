package mobi.oneway.export.p201g;

import java.io.IOException;
import java.io.InputStream;

/* renamed from: mobi.oneway.export.g.c */
/* loaded from: classes2.dex */
public class C2691c extends InputStream {

    /* renamed from: a */
    private InputStream f10340a;

    /* renamed from: b */
    private int[] f10341b;

    /* renamed from: c */
    private int f10342c = 0;

    /* renamed from: d */
    private boolean f10343d = false;

    public C2691c(InputStream inputStream) {
        this.f10340a = inputStream;
    }

    /* renamed from: a */
    private void m12174a() {
        int i;
        char[] cArr = new char[4];
        int i2 = 0;
        do {
            int read = this.f10340a.read();
            i = 1;
            if (read == -1) {
                if (i2 != 0) {
                    throw new IOException("Bad base64 stream");
                }
                this.f10341b = new int[0];
                this.f10343d = true;
                return;
            }
            char c2 = (char) read;
            if (C2705q.f10370a.indexOf(c2) != -1 || c2 == C2705q.f10371b) {
                cArr[i2] = c2;
                i2++;
            } else if (c2 != '\r' && c2 != '\n') {
                throw new IOException("Bad base64 stream");
            }
        } while (i2 < 4);
        boolean z = false;
        for (int i3 = 0; i3 < 4; i3++) {
            if (cArr[i3] != C2705q.f10371b) {
                if (z) {
                    throw new IOException("Bad base64 stream");
                }
            } else if (!z) {
                z = true;
            }
        }
        if (cArr[3] != C2705q.f10371b) {
            i = 3;
        } else {
            if (this.f10340a.read() != -1) {
                throw new IOException("Bad base64 stream");
            }
            this.f10343d = true;
            if (cArr[2] != C2705q.f10371b) {
                i = 2;
            }
        }
        int i4 = 0;
        for (int i5 = 0; i5 < 4; i5++) {
            if (cArr[i5] != C2705q.f10371b) {
                i4 |= C2705q.f10370a.indexOf(cArr[i5]) << ((3 - i5) * 6);
            }
        }
        this.f10341b = new int[i];
        for (int i6 = 0; i6 < i; i6++) {
            this.f10341b[i6] = (i4 >>> ((2 - i6) * 8)) & 255;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f10340a.close();
    }

    @Override // java.io.InputStream
    public int read() {
        if (this.f10341b != null && this.f10342c != this.f10341b.length) {
            int[] iArr = this.f10341b;
            int i = this.f10342c;
            this.f10342c = i + 1;
            return iArr[i];
        }
        if (this.f10343d) {
            return -1;
        }
        m12174a();
        if (this.f10341b.length == 0) {
            this.f10341b = null;
            return -1;
        }
        this.f10342c = 0;
        int[] iArr2 = this.f10341b;
        int i2 = this.f10342c;
        this.f10342c = i2 + 1;
        return iArr2[i2];
    }
}
