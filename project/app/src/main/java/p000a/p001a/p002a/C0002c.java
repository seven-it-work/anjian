package p000a.p001a.p002a;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.io.IOUtils;

/* renamed from: a.a.a.c */
/* loaded from: classes.dex */
public final class C0002c extends OutputStream {

    /* renamed from: a */
    private OutputStream f4a;

    /* renamed from: b */
    private int f5b;

    /* renamed from: c */
    private int f6c;

    /* renamed from: d */
    private int f7d;

    /* renamed from: e */
    private int f8e;

    private C0002c(OutputStream outputStream) {
        this(outputStream, 76);
    }

    public C0002c(OutputStream outputStream, int i) {
        this.f4a = null;
        this.f5b = 0;
        this.f6c = 0;
        this.f7d = 0;
        this.f8e = 0;
        this.f4a = outputStream;
        this.f8e = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m15a() throws IOException {
        if (this.f6c > 0) {
            if (this.f8e > 0 && this.f7d == this.f8e) {
                this.f4a.write(IOUtils.LINE_SEPARATOR_WINDOWS.getBytes());
                this.f7d = 0;
            }
            char charAt = C0003d.f9a.charAt((this.f5b << 8) >>> 26);
            char charAt2 = C0003d.f9a.charAt((this.f5b << 14) >>> 26);
            char charAt3 = this.f6c < 2 ? C0003d.f10b : C0003d.f9a.charAt((this.f5b << 20) >>> 26);
            char charAt4 = this.f6c < 3 ? C0003d.f10b : C0003d.f9a.charAt((this.f5b << 26) >>> 26);
            this.f4a.write(charAt);
            this.f4a.write(charAt2);
            this.f4a.write(charAt3);
            this.f4a.write(charAt4);
            this.f7d += 4;
            this.f6c = 0;
            this.f5b = 0;
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        m15a();
        this.f4a.close();
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        this.f5b = ((i & 255) << (16 - (this.f6c * 8))) | this.f5b;
        this.f6c++;
        if (this.f6c == 3) {
            m15a();
        }
    }
}
