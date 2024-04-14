package p003b;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
import p003b.p004a.C0439c;
import p017c.C0535c;
import p017c.InterfaceC0536d;

/* renamed from: b.s */
/* loaded from: classes.dex */
public final class C0521s extends AbstractC0495ad {

    /* renamed from: a */
    private static final C0526x f947a = C0526x.m956a("application/x-www-form-urlencoded");

    /* renamed from: b */
    private final List<String> f948b;

    /* renamed from: c */
    private final List<String> f949c;

    /* renamed from: b.s$a */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a */
        private final List<String> f950a = new ArrayList();

        /* renamed from: b */
        private final List<String> f951b = new ArrayList();

        /* renamed from: a */
        private a m834a(String str, String str2) {
            this.f950a.add(C0524v.m873a(str, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, true));
            this.f951b.add(C0524v.m873a(str2, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, true));
            return this;
        }

        /* renamed from: a */
        private C0521s m835a() {
            return new C0521s(this.f950a, this.f951b);
        }

        /* renamed from: b */
        private a m836b(String str, String str2) {
            this.f950a.add(C0524v.m873a(str, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, true));
            this.f951b.add(C0524v.m873a(str2, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, true));
            return this;
        }
    }

    C0521s(List<String> list, List<String> list2) {
        this.f948b = C0439c.m140a(list);
        this.f949c = C0439c.m140a(list2);
    }

    /* renamed from: a */
    private int m828a() {
        return this.f948b.size();
    }

    /* renamed from: a */
    private long m829a(@Nullable InterfaceC0536d interfaceC0536d, boolean z) {
        C0535c c0535c = z ? new C0535c() : interfaceC0536d.mo1096a();
        int size = this.f948b.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                c0535c.mo1157l(38);
            }
            c0535c.mo1114b(this.f948b.get(i));
            c0535c.mo1157l(61);
            c0535c.mo1114b(this.f949c.get(i));
        }
        if (!z) {
            return 0L;
        }
        long j = c0535c.f1086c;
        c0535c.m1173w();
        return j;
    }

    /* renamed from: a */
    private String m830a(int i) {
        return this.f948b.get(i);
    }

    /* renamed from: b */
    private String m831b(int i) {
        return C0524v.m874a(this.f948b.get(i), true);
    }

    /* renamed from: c */
    private String m832c(int i) {
        return this.f949c.get(i);
    }

    /* renamed from: d */
    private String m833d(int i) {
        return C0524v.m874a(this.f949c.get(i), true);
    }

    @Override // p003b.AbstractC0495ad
    public final long contentLength() {
        return m829a(null, true);
    }

    @Override // p003b.AbstractC0495ad
    public final C0526x contentType() {
        return f947a;
    }

    @Override // p003b.AbstractC0495ad
    public final void writeTo(InterfaceC0536d interfaceC0536d) throws IOException {
        m829a(interfaceC0536d, false);
    }
}
