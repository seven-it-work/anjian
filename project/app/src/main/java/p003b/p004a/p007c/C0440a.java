package p003b.p004a.p007c;

import com.github.kevinsawicki.http.HttpRequest;
import java.io.IOException;
import p003b.C0494ac;
import p003b.C0496ae;
import p003b.C0528z;
import p003b.InterfaceC0525w;
import p003b.p004a.p008d.C0454g;

/* renamed from: b.a.c.a */
/* loaded from: classes.dex */
public final class C0440a implements InterfaceC0525w {

    /* renamed from: a */
    public final C0528z f182a;

    public C0440a(C0528z c0528z) {
        this.f182a = c0528z;
    }

    @Override // p003b.InterfaceC0525w
    public final C0496ae intercept(InterfaceC0525w.a aVar) throws IOException {
        C0454g c0454g = (C0454g) aVar;
        C0494ac c0494ac = c0454g.f239d;
        C0446g c0446g = c0454g.f236a;
        return c0454g.m253a(c0494ac, c0446g, c0446g.m208a(this.f182a, !c0494ac.f644b.equals(HttpRequest.METHOD_GET)), c0446g.m213b());
    }
}
