package org.p202a.p203a;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.p202a.AbstractC2735b;
import org.p202a.InterfaceC2744g;
import org.p202a.InterfaceC2746i;
import org.p202a.InterfaceC2748k;

/* renamed from: org.a.a.d */
/* loaded from: classes2.dex */
public final class C2720d<T> extends AbstractC2735b<T> {

    /* renamed from: d */
    private static final Pattern f10398d = Pattern.compile("%([0-9]+)");

    /* renamed from: a */
    private final String f10399a;

    /* renamed from: b */
    private final InterfaceC2748k<T> f10400b;

    /* renamed from: c */
    private final Object[] f10401c;

    private C2720d(String str, InterfaceC2748k<T> interfaceC2748k, Object[] objArr) {
        this.f10399a = str;
        this.f10400b = interfaceC2748k;
        this.f10401c = (Object[]) objArr.clone();
    }

    @InterfaceC2746i
    /* renamed from: a */
    public static <T> InterfaceC2748k<T> m12329a(String str, InterfaceC2748k<T> interfaceC2748k, Object... objArr) {
        return new C2720d(str, interfaceC2748k, objArr);
    }

    @Override // org.p202a.AbstractC2735b, org.p202a.InterfaceC2748k
    /* renamed from: a */
    public final void mo12330a(Object obj, InterfaceC2744g interfaceC2744g) {
        this.f10400b.mo12330a(obj, interfaceC2744g);
    }

    @Override // org.p202a.InterfaceC2748k
    /* renamed from: a */
    public final boolean mo12320a(Object obj) {
        return this.f10400b.mo12320a(obj);
    }

    @Override // org.p202a.InterfaceC2750m
    public final void describeTo(InterfaceC2744g interfaceC2744g) {
        Matcher matcher = f10398d.matcher(this.f10399a);
        int i = 0;
        while (matcher.find()) {
            interfaceC2744g.mo12297a(this.f10399a.substring(i, matcher.start()));
            interfaceC2744g.mo12296a(this.f10401c[Integer.parseInt(matcher.group(1))]);
            i = matcher.end();
        }
        if (i < this.f10399a.length()) {
            interfaceC2744g.mo12297a(this.f10399a.substring(i));
        }
    }
}
