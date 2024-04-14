package p003b.p004a.p007c;

import java.util.LinkedHashSet;
import java.util.Set;
import p003b.C0498ag;

/* renamed from: b.a.c.d */
/* loaded from: classes.dex */
public final class C0443d {

    /* renamed from: a */
    private final Set<C0498ag> f204a = new LinkedHashSet();

    /* renamed from: a */
    public final synchronized void m185a(C0498ag c0498ag) {
        this.f204a.add(c0498ag);
    }

    /* renamed from: b */
    public final synchronized void m186b(C0498ag c0498ag) {
        this.f204a.remove(c0498ag);
    }

    /* renamed from: c */
    public final synchronized boolean m187c(C0498ag c0498ag) {
        return this.f204a.contains(c0498ag);
    }
}
