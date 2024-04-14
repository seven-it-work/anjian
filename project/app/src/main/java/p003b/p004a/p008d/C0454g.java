package p003b.p004a.p008d;

import java.io.IOException;
import java.util.List;
import p003b.C0494ac;
import p003b.C0496ae;
import p003b.InterfaceC0512j;
import p003b.InterfaceC0525w;
import p003b.p004a.p007c.C0442c;
import p003b.p004a.p007c.C0446g;

/* renamed from: b.a.d.g */
/* loaded from: classes.dex */
public final class C0454g implements InterfaceC0525w.a {

    /* renamed from: a */
    public final C0446g f236a;

    /* renamed from: b */
    final InterfaceC0450c f237b;

    /* renamed from: c */
    final C0442c f238c;

    /* renamed from: d */
    public final C0494ac f239d;

    /* renamed from: e */
    private final List<InterfaceC0525w> f240e;

    /* renamed from: f */
    private final int f241f;

    /* renamed from: g */
    private int f242g;

    public C0454g(List<InterfaceC0525w> list, C0446g c0446g, InterfaceC0450c interfaceC0450c, C0442c c0442c, int i, C0494ac c0494ac) {
        this.f240e = list;
        this.f238c = c0442c;
        this.f236a = c0446g;
        this.f237b = interfaceC0450c;
        this.f241f = i;
        this.f239d = c0494ac;
    }

    /* renamed from: c */
    private C0446g m249c() {
        return this.f236a;
    }

    /* renamed from: d */
    private InterfaceC0450c m250d() {
        return this.f237b;
    }

    @Override // p003b.InterfaceC0525w.a
    /* renamed from: a */
    public final C0494ac mo251a() {
        return this.f239d;
    }

    @Override // p003b.InterfaceC0525w.a
    /* renamed from: a */
    public final C0496ae mo252a(C0494ac c0494ac) throws IOException {
        return m253a(c0494ac, this.f236a, this.f237b, this.f238c);
    }

    /* renamed from: a */
    public final C0496ae m253a(C0494ac c0494ac, C0446g c0446g, InterfaceC0450c interfaceC0450c, C0442c c0442c) throws IOException {
        if (this.f241f >= this.f240e.size()) {
            throw new AssertionError();
        }
        this.f242g++;
        if (this.f237b != null && !this.f238c.m179a(c0494ac.f643a)) {
            throw new IllegalStateException("network interceptor " + this.f240e.get(this.f241f - 1) + " must retain the same host and port");
        }
        if (this.f237b != null && this.f242g > 1) {
            throw new IllegalStateException("network interceptor " + this.f240e.get(this.f241f - 1) + " must call proceed() exactly once");
        }
        C0454g c0454g = new C0454g(this.f240e, c0446g, interfaceC0450c, c0442c, this.f241f + 1, c0494ac);
        InterfaceC0525w interfaceC0525w = this.f240e.get(this.f241f);
        C0496ae intercept = interfaceC0525w.intercept(c0454g);
        if (interfaceC0450c != null && this.f241f + 1 < this.f240e.size() && c0454g.f242g != 1) {
            throw new IllegalStateException("network interceptor " + interfaceC0525w + " must call proceed() exactly once");
        }
        if (intercept != null) {
            return intercept;
        }
        throw new NullPointerException("interceptor " + interfaceC0525w + " returned null");
    }

    @Override // p003b.InterfaceC0525w.a
    /* renamed from: b */
    public final InterfaceC0512j mo254b() {
        return this.f238c;
    }
}
