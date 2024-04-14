package com.umeng.commonsdk.statistics.proto;

import com.umeng.commonsdk.proguard.AbstractC2481az;
import com.umeng.commonsdk.proguard.AbstractC2492bj;
import com.umeng.commonsdk.proguard.AbstractC2493bk;
import com.umeng.commonsdk.proguard.C2462ag;
import com.umeng.commonsdk.proguard.C2468am;
import com.umeng.commonsdk.proguard.C2469an;
import com.umeng.commonsdk.proguard.C2475at;
import com.umeng.commonsdk.proguard.C2476au;
import com.umeng.commonsdk.proguard.C2483ba;
import com.umeng.commonsdk.proguard.C2485bc;
import com.umeng.commonsdk.proguard.C2487be;
import com.umeng.commonsdk.proguard.C2488bf;
import com.umeng.commonsdk.proguard.C2494bl;
import com.umeng.commonsdk.proguard.C2520x;
import com.umeng.commonsdk.proguard.InterfaceC2456aa;
import com.umeng.commonsdk.proguard.InterfaceC2463ah;
import com.umeng.commonsdk.proguard.InterfaceC2490bh;
import com.umeng.commonsdk.proguard.InterfaceC2491bi;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import net.grandcentrix.tray.provider.ContentProviderStorage;

/* renamed from: com.umeng.commonsdk.statistics.proto.b */
/* loaded from: classes.dex */
public class C2572b implements InterfaceC2456aa<C2572b, e>, Serializable, Cloneable {

    /* renamed from: d */
    public static final Map<e, C2468am> f9901d;

    /* renamed from: e */
    private static final long f9902e = -6496538196005191531L;

    /* renamed from: f */
    private static final C2487be f9903f = new C2487be("IdSnapshot");

    /* renamed from: g */
    private static final C2476au f9904g = new C2476au("identity", (byte) 11, 1);

    /* renamed from: h */
    private static final C2476au f9905h = new C2476au("ts", (byte) 10, 2);

    /* renamed from: i */
    private static final C2476au f9906i = new C2476au(ContentProviderStorage.VERSION, (byte) 8, 3);

    /* renamed from: j */
    private static final Map<Class<? extends InterfaceC2490bh>, InterfaceC2491bi> f9907j;

    /* renamed from: k */
    private static final int f9908k = 0;

    /* renamed from: l */
    private static final int f9909l = 1;

    /* renamed from: a */
    public String f9910a;

    /* renamed from: b */
    public long f9911b;

    /* renamed from: c */
    public int f9912c;

    /* renamed from: m */
    private byte f9913m;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.umeng.commonsdk.statistics.proto.b$a */
    /* loaded from: classes.dex */
    public static class a extends AbstractC2492bj<C2572b> {
        private a() {
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void mo10766b(AbstractC2481az abstractC2481az, C2572b c2572b) throws C2462ag {
            abstractC2481az.mo10808j();
            while (true) {
                C2476au mo10810l = abstractC2481az.mo10810l();
                if (mo10810l.f9328b == 0) {
                    abstractC2481az.mo10809k();
                    if (!c2572b.m11503g()) {
                        throw new C2483ba("Required field 'ts' was not found in serialized data! Struct: " + toString());
                    }
                    if (c2572b.m11506j()) {
                        c2572b.m11507k();
                        return;
                    } else {
                        throw new C2483ba("Required field 'version' was not found in serialized data! Struct: " + toString());
                    }
                }
                switch (mo10810l.f9329c) {
                    case 1:
                        if (mo10810l.f9328b == 11) {
                            c2572b.f9910a = abstractC2481az.mo10824z();
                            c2572b.m11494a(true);
                            break;
                        }
                        break;
                    case 2:
                        if (mo10810l.f9328b == 10) {
                            c2572b.f9911b = abstractC2481az.mo10822x();
                            c2572b.m11497b(true);
                            break;
                        }
                        break;
                    case 3:
                        if (mo10810l.f9328b == 8) {
                            c2572b.f9912c = abstractC2481az.mo10821w();
                            c2572b.m11499c(true);
                            break;
                        }
                        break;
                }
                C2485bc.m10856a(abstractC2481az, mo10810l.f9328b);
                abstractC2481az.mo10811m();
            }
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void mo10764a(AbstractC2481az abstractC2481az, C2572b c2572b) throws C2462ag {
            c2572b.m11507k();
            abstractC2481az.mo10792a(C2572b.f9903f);
            if (c2572b.f9910a != null) {
                abstractC2481az.mo10787a(C2572b.f9904g);
                abstractC2481az.mo10793a(c2572b.f9910a);
                abstractC2481az.mo10799c();
            }
            abstractC2481az.mo10787a(C2572b.f9905h);
            abstractC2481az.mo10786a(c2572b.f9911b);
            abstractC2481az.mo10799c();
            abstractC2481az.mo10787a(C2572b.f9906i);
            abstractC2481az.mo10785a(c2572b.f9912c);
            abstractC2481az.mo10799c();
            abstractC2481az.mo10801d();
            abstractC2481az.mo10798b();
        }
    }

    /* renamed from: com.umeng.commonsdk.statistics.proto.b$b */
    /* loaded from: classes.dex */
    private static class b implements InterfaceC2491bi {
        private b() {
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2491bi
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a mo10769b() {
            return new a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.umeng.commonsdk.statistics.proto.b$c */
    /* loaded from: classes.dex */
    public static class c extends AbstractC2493bk<C2572b> {
        private c() {
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void mo10764a(AbstractC2481az abstractC2481az, C2572b c2572b) throws C2462ag {
            C2488bf c2488bf = (C2488bf) abstractC2481az;
            c2488bf.mo10793a(c2572b.f9910a);
            c2488bf.mo10786a(c2572b.f9911b);
            c2488bf.mo10785a(c2572b.f9912c);
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void mo10766b(AbstractC2481az abstractC2481az, C2572b c2572b) throws C2462ag {
            C2488bf c2488bf = (C2488bf) abstractC2481az;
            c2572b.f9910a = c2488bf.mo10824z();
            c2572b.m11494a(true);
            c2572b.f9911b = c2488bf.mo10822x();
            c2572b.m11497b(true);
            c2572b.f9912c = c2488bf.mo10821w();
            c2572b.m11499c(true);
        }
    }

    /* renamed from: com.umeng.commonsdk.statistics.proto.b$d */
    /* loaded from: classes.dex */
    private static class d implements InterfaceC2491bi {
        private d() {
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2491bi
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c mo10769b() {
            return new c();
        }
    }

    /* renamed from: com.umeng.commonsdk.statistics.proto.b$e */
    /* loaded from: classes.dex */
    public enum e implements InterfaceC2463ah {
        IDENTITY(1, "identity"),
        TS(2, "ts"),
        VERSION(3, ContentProviderStorage.VERSION);


        /* renamed from: d */
        private static final Map<String, e> f9917d = new HashMap();

        /* renamed from: e */
        private final short f9919e;

        /* renamed from: f */
        private final String f9920f;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                f9917d.put(eVar.mo10739b(), eVar);
            }
        }

        e(short s, String str) {
            this.f9919e = s;
            this.f9920f = str;
        }

        /* renamed from: a */
        public static e m11514a(int i) {
            switch (i) {
                case 1:
                    return IDENTITY;
                case 2:
                    return TS;
                case 3:
                    return VERSION;
                default:
                    return null;
            }
        }

        /* renamed from: a */
        public static e m11515a(String str) {
            return f9917d.get(str);
        }

        /* renamed from: b */
        public static e m11516b(int i) {
            e m11514a = m11514a(i);
            if (m11514a != null) {
                return m11514a;
            }
            throw new IllegalArgumentException("Field " + i + " doesn't exist!");
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2463ah
        /* renamed from: a */
        public final short mo10738a() {
            return this.f9919e;
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2463ah
        /* renamed from: b */
        public final String mo10739b() {
            return this.f9920f;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f9907j = hashMap;
        hashMap.put(AbstractC2492bj.class, new b());
        f9907j.put(AbstractC2493bk.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.IDENTITY, (e) new C2468am("identity", (byte) 1, new C2469an((byte) 11)));
        enumMap.put((EnumMap) e.TS, (e) new C2468am("ts", (byte) 1, new C2469an((byte) 10)));
        enumMap.put((EnumMap) e.VERSION, (e) new C2468am(ContentProviderStorage.VERSION, (byte) 1, new C2469an((byte) 8)));
        f9901d = Collections.unmodifiableMap(enumMap);
        C2468am.m10774a(C2572b.class, f9901d);
    }

    public C2572b() {
        this.f9913m = (byte) 0;
    }

    public C2572b(C2572b c2572b) {
        this.f9913m = (byte) 0;
        this.f9913m = c2572b.f9913m;
        if (c2572b.m11500d()) {
            this.f9910a = c2572b.f9910a;
        }
        this.f9911b = c2572b.f9911b;
        this.f9912c = c2572b.f9912c;
    }

    public C2572b(String str, long j, int i) {
        this();
        this.f9910a = str;
        this.f9911b = j;
        m11497b(true);
        this.f9912c = i;
        m11499c(true);
    }

    /* renamed from: a */
    private void m11484a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f9913m = (byte) 0;
            read(new C2475at(new C2494bl(objectInputStream)));
        } catch (C2462ag e2) {
            throw new IOException(e2.getMessage());
        }
    }

    /* renamed from: a */
    private void m11485a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new C2475at(new C2494bl(objectOutputStream)));
        } catch (C2462ag e2) {
            throw new IOException(e2.getMessage());
        }
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public C2572b deepCopy() {
        return new C2572b(this);
    }

    /* renamed from: a */
    public C2572b m11491a(int i) {
        this.f9912c = i;
        m11499c(true);
        return this;
    }

    /* renamed from: a */
    public C2572b m11492a(long j) {
        this.f9911b = j;
        m11497b(true);
        return this;
    }

    /* renamed from: a */
    public C2572b m11493a(String str) {
        this.f9910a = str;
        return this;
    }

    /* renamed from: a */
    public void m11494a(boolean z) {
        if (z) {
            return;
        }
        this.f9910a = null;
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public e fieldForId(int i) {
        return e.m11514a(i);
    }

    /* renamed from: b */
    public String m11496b() {
        return this.f9910a;
    }

    /* renamed from: b */
    public void m11497b(boolean z) {
        this.f9913m = C2520x.m11119a(this.f9913m, 0, z);
    }

    /* renamed from: c */
    public void m11498c() {
        this.f9910a = null;
    }

    /* renamed from: c */
    public void m11499c(boolean z) {
        this.f9913m = C2520x.m11119a(this.f9913m, 1, z);
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public void clear() {
        this.f9910a = null;
        m11497b(false);
        this.f9911b = 0L;
        m11499c(false);
        this.f9912c = 0;
    }

    /* renamed from: d */
    public boolean m11500d() {
        return this.f9910a != null;
    }

    /* renamed from: e */
    public long m11501e() {
        return this.f9911b;
    }

    /* renamed from: f */
    public void m11502f() {
        this.f9913m = C2520x.m11131b(this.f9913m, 0);
    }

    /* renamed from: g */
    public boolean m11503g() {
        return C2520x.m11127a(this.f9913m, 0);
    }

    /* renamed from: h */
    public int m11504h() {
        return this.f9912c;
    }

    /* renamed from: i */
    public void m11505i() {
        this.f9913m = C2520x.m11131b(this.f9913m, 1);
    }

    /* renamed from: j */
    public boolean m11506j() {
        return C2520x.m11127a(this.f9913m, 1);
    }

    /* renamed from: k */
    public void m11507k() throws C2462ag {
        if (this.f9910a == null) {
            throw new C2483ba("Required field 'identity' was not present! Struct: " + toString());
        }
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public void read(AbstractC2481az abstractC2481az) throws C2462ag {
        f9907j.get(abstractC2481az.mo10850D()).mo10769b().mo10766b(abstractC2481az, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("IdSnapshot(");
        sb.append("identity:");
        sb.append(this.f9910a == null ? "null" : this.f9910a);
        sb.append(", ");
        sb.append("ts:");
        sb.append(this.f9911b);
        sb.append(", ");
        sb.append("version:");
        sb.append(this.f9912c);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public void write(AbstractC2481az abstractC2481az) throws C2462ag {
        f9907j.get(abstractC2481az.mo10850D()).mo10769b().mo10764a(abstractC2481az, this);
    }
}
