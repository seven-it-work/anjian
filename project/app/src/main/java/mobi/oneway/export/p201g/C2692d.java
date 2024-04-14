package mobi.oneway.export.p201g;

import java.io.OutputStream;
import org.apache.commons.io.IOUtils;

/* renamed from: mobi.oneway.export.g.d */
/* loaded from: classes2.dex */
public class C2692d extends OutputStream {

    /* renamed from: a */
    private OutputStream f10344a;

    /* renamed from: b */
    private int f10345b;

    /* renamed from: c */
    private int f10346c;

    /* renamed from: d */
    private int f10347d;

    /* renamed from: e */
    private int f10348e;

    public C2692d(OutputStream outputStream) {
        this(outputStream, 76);
    }

    public C2692d(OutputStream outputStream, int i) {
        this.f10344a = null;
        this.f10345b = 0;
        this.f10346c = 0;
        this.f10347d = 0;
        this.f10348e = 0;
        this.f10344a = outputStream;
        this.f10348e = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m12175a() {
        if (this.f10346c <= 0) {
            return;
        }
        if (this.f10348e > 0 && this.f10347d == this.f10348e) {
            this.f10344a.write(IOUtils.LINE_SEPARATOR_WINDOWS.getBytes("UTF-8"));
            this.f10347d = 0;
        }
        char charAt = C2705q.f10370a.charAt((this.f10345b << 8) >>> 26);
        char charAt2 = C2705q.f10370a.charAt((this.f10345b << 14) >>> 26);
        char charAt3 = this.f10346c < 2 ? C2705q.f10371b : C2705q.f10370a.charAt((this.f10345b << 20) >>> 26);
        char charAt4 = this.f10346c < 3 ? C2705q.f10371b : C2705q.f10370a.charAt((this.f10345b << 26) >>> 26);
        this.f10344a.write(charAt);
        this.f10344a.write(charAt2);
        this.f10344a.write(charAt3);
        this.f10344a.write(charAt4);
        this.f10347d += 4;
        this.f10346c = 0;
        this.f10345b = 0;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m12175a();
        this.f10344a.close();
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        this.f10345b = ((i & 255) << (16 - (this.f10346c * 8))) | this.f10345b;
        this.f10346c++;
        if (this.f10346c == 3) {
            m12175a();
        }
    }
}
