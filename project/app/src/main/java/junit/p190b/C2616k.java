package junit.p190b;

import java.io.PrintWriter;
import java.io.StringWriter;

/* renamed from: junit.b.k */
/* loaded from: classes.dex */
public final class C2616k {

    /* renamed from: a */
    protected InterfaceC2614i f10076a;

    /* renamed from: b */
    protected Throwable f10077b;

    public C2616k(InterfaceC2614i interfaceC2614i, Throwable th) {
        this.f10076a = interfaceC2614i;
        this.f10077b = th;
    }

    /* renamed from: c */
    private Throwable m11788c() {
        return this.f10077b;
    }

    /* renamed from: d */
    private String m11789d() {
        return this.f10077b.getMessage();
    }

    /* renamed from: e */
    private boolean m11790e() {
        return this.f10077b instanceof C2607b;
    }

    /* renamed from: a */
    public final InterfaceC2614i m11791a() {
        return this.f10076a;
    }

    /* renamed from: b */
    public final String m11792b() {
        StringWriter stringWriter = new StringWriter();
        this.f10077b.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public final String toString() {
        return this.f10076a + ": " + this.f10077b.getMessage();
    }
}
