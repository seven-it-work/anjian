package p003b;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import javax.annotation.Nullable;
import p003b.p004a.C0439c;
import p017c.C0538f;
import p017c.C0548p;
import p017c.InterfaceC0536d;
import p017c.InterfaceC0557y;

/* renamed from: b.ad */
/* loaded from: classes.dex */
public abstract class AbstractC0495ad {
    public static AbstractC0495ad create(@Nullable final C0526x c0526x, final C0538f c0538f) {
        return new AbstractC0495ad() { // from class: b.ad.1
            @Override // p003b.AbstractC0495ad
            public final long contentLength() throws IOException {
                return c0538f.size();
            }

            @Override // p003b.AbstractC0495ad
            @Nullable
            public final C0526x contentType() {
                return C0526x.this;
            }

            @Override // p003b.AbstractC0495ad
            public final void writeTo(InterfaceC0536d interfaceC0536d) throws IOException {
                interfaceC0536d.mo1134e(c0538f);
            }
        };
    }

    public static AbstractC0495ad create(@Nullable final C0526x c0526x, final File file) {
        if (file == null) {
            throw new NullPointerException("content == null");
        }
        return new AbstractC0495ad() { // from class: b.ad.3
            @Override // p003b.AbstractC0495ad
            public final long contentLength() {
                return file.length();
            }

            @Override // p003b.AbstractC0495ad
            @Nullable
            public final C0526x contentType() {
                return C0526x.this;
            }

            @Override // p003b.AbstractC0495ad
            public final void writeTo(InterfaceC0536d interfaceC0536d) throws IOException {
                InterfaceC0557y interfaceC0557y = null;
                try {
                    InterfaceC0557y m1222a = C0548p.m1222a(file);
                    try {
                        interfaceC0536d.mo1095a(m1222a);
                        C0439c.m144a(m1222a);
                    } catch (Throwable th) {
                        th = th;
                        interfaceC0557y = m1222a;
                        C0439c.m144a(interfaceC0557y);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        };
    }

    public static AbstractC0495ad create(@Nullable C0526x c0526x, String str) {
        Charset charset = C0439c.f167e;
        if (c0526x != null && (charset = c0526x.m960a((Charset) null)) == null) {
            charset = C0439c.f167e;
            c0526x = C0526x.m956a(c0526x + "; charset=utf-8");
        }
        return create(c0526x, str.getBytes(charset));
    }

    public static AbstractC0495ad create(@Nullable C0526x c0526x, byte[] bArr) {
        return create(c0526x, bArr, 0, bArr.length);
    }

    public static AbstractC0495ad create(@Nullable final C0526x c0526x, final byte[] bArr, final int i, final int i2) {
        if (bArr == null) {
            throw new NullPointerException("content == null");
        }
        C0439c.m143a(bArr.length, i, i2);
        return new AbstractC0495ad() { // from class: b.ad.2
            @Override // p003b.AbstractC0495ad
            public final long contentLength() {
                return i2;
            }

            @Override // p003b.AbstractC0495ad
            @Nullable
            public final C0526x contentType() {
                return C0526x.this;
            }

            @Override // p003b.AbstractC0495ad
            public final void writeTo(InterfaceC0536d interfaceC0536d) throws IOException {
                interfaceC0536d.mo1127c(bArr, i, i2);
            }
        };
    }

    public long contentLength() throws IOException {
        return -1L;
    }

    @Nullable
    public abstract C0526x contentType();

    public abstract void writeTo(InterfaceC0536d interfaceC0536d) throws IOException;
}
