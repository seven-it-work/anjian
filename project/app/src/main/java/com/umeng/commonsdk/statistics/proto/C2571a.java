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
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.umeng.commonsdk.statistics.proto.a */
/* loaded from: classes.dex */
public class C2571a implements InterfaceC2456aa<C2571a, e>, Serializable, Cloneable {

    /* renamed from: e */
    public static final Map<e, C2468am> f9878e;

    /* renamed from: f */
    private static final long f9879f = 9132678615281394583L;

    /* renamed from: g */
    private static final C2487be f9880g = new C2487be("IdJournal");

    /* renamed from: h */
    private static final C2476au f9881h = new C2476au("domain", (byte) 11, 1);

    /* renamed from: i */
    private static final C2476au f9882i = new C2476au("old_id", (byte) 11, 2);

    /* renamed from: j */
    private static final C2476au f9883j = new C2476au("new_id", (byte) 11, 3);

    /* renamed from: k */
    private static final C2476au f9884k = new C2476au("ts", (byte) 10, 4);

    /* renamed from: l */
    private static final Map<Class<? extends InterfaceC2490bh>, InterfaceC2491bi> f9885l;

    /* renamed from: m */
    private static final int f9886m = 0;

    /* renamed from: a */
    public String f9887a;

    /* renamed from: b */
    public String f9888b;

    /* renamed from: c */
    public String f9889c;

    /* renamed from: d */
    public long f9890d;

    /* renamed from: n */
    private byte f9891n;

    /* renamed from: o */
    private e[] f9892o;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.umeng.commonsdk.statistics.proto.a$a */
    /* loaded from: classes.dex */
    public static class a extends AbstractC2492bj<C2571a> {
        private a() {
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void mo10766b(AbstractC2481az abstractC2481az, C2571a c2571a) throws C2462ag {
            abstractC2481az.mo10808j();
            while (true) {
                C2476au mo10810l = abstractC2481az.mo10810l();
                if (mo10810l.f9328b == 0) {
                    abstractC2481az.mo10809k();
                    if (c2571a.m11473m()) {
                        c2571a.m11474n();
                        return;
                    } else {
                        throw new C2483ba("Required field 'ts' was not found in serialized data! Struct: " + toString());
                    }
                }
                switch (mo10810l.f9329c) {
                    case 1:
                        if (mo10810l.f9328b == 11) {
                            c2571a.f9887a = abstractC2481az.mo10824z();
                            c2571a.m11456a(true);
                            break;
                        }
                        break;
                    case 2:
                        if (mo10810l.f9328b == 11) {
                            c2571a.f9888b = abstractC2481az.mo10824z();
                            c2571a.m11459b(true);
                            break;
                        }
                        break;
                    case 3:
                        if (mo10810l.f9328b == 11) {
                            c2571a.f9889c = abstractC2481az.mo10824z();
                            c2571a.m11462c(true);
                            break;
                        }
                        break;
                    case 4:
                        if (mo10810l.f9328b == 10) {
                            c2571a.f9890d = abstractC2481az.mo10822x();
                            c2571a.m11463d(true);
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
        public void mo10764a(AbstractC2481az abstractC2481az, C2571a c2571a) throws C2462ag {
            c2571a.m11474n();
            abstractC2481az.mo10792a(C2571a.f9880g);
            if (c2571a.f9887a != null) {
                abstractC2481az.mo10787a(C2571a.f9881h);
                abstractC2481az.mo10793a(c2571a.f9887a);
                abstractC2481az.mo10799c();
            }
            if (c2571a.f9888b != null && c2571a.m11467g()) {
                abstractC2481az.mo10787a(C2571a.f9882i);
                abstractC2481az.mo10793a(c2571a.f9888b);
                abstractC2481az.mo10799c();
            }
            if (c2571a.f9889c != null) {
                abstractC2481az.mo10787a(C2571a.f9883j);
                abstractC2481az.mo10793a(c2571a.f9889c);
                abstractC2481az.mo10799c();
            }
            abstractC2481az.mo10787a(C2571a.f9884k);
            abstractC2481az.mo10786a(c2571a.f9890d);
            abstractC2481az.mo10799c();
            abstractC2481az.mo10801d();
            abstractC2481az.mo10798b();
        }
    }

    /* renamed from: com.umeng.commonsdk.statistics.proto.a$b */
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
    /* renamed from: com.umeng.commonsdk.statistics.proto.a$c */
    /* loaded from: classes.dex */
    public static class c extends AbstractC2493bk<C2571a> {
        private c() {
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void mo10764a(AbstractC2481az abstractC2481az, C2571a c2571a) throws C2462ag {
            C2488bf c2488bf = (C2488bf) abstractC2481az;
            c2488bf.mo10793a(c2571a.f9887a);
            c2488bf.mo10793a(c2571a.f9889c);
            c2488bf.mo10786a(c2571a.f9890d);
            BitSet bitSet = new BitSet();
            if (c2571a.m11467g()) {
                bitSet.set(0);
            }
            c2488bf.m10860a(bitSet, 1);
            if (c2571a.m11467g()) {
                c2488bf.mo10793a(c2571a.f9888b);
            }
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void mo10766b(AbstractC2481az abstractC2481az, C2571a c2571a) throws C2462ag {
            C2488bf c2488bf = (C2488bf) abstractC2481az;
            c2571a.f9887a = c2488bf.mo10824z();
            c2571a.m11456a(true);
            c2571a.f9889c = c2488bf.mo10824z();
            c2571a.m11462c(true);
            c2571a.f9890d = c2488bf.mo10822x();
            c2571a.m11463d(true);
            if (c2488bf.m10861b(1).get(0)) {
                c2571a.f9888b = c2488bf.mo10824z();
                c2571a.m11459b(true);
            }
        }
    }

    /* renamed from: com.umeng.commonsdk.statistics.proto.a$d */
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

    /* renamed from: com.umeng.commonsdk.statistics.proto.a$e */
    /* loaded from: classes.dex */
    public enum e implements InterfaceC2463ah {
        DOMAIN(1, "domain"),
        OLD_ID(2, "old_id"),
        NEW_ID(3, "new_id"),
        TS(4, "ts");


        /* renamed from: e */
        private static final Map<String, e> f9897e = new HashMap();

        /* renamed from: f */
        private final short f9899f;

        /* renamed from: g */
        private final String f9900g;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                f9897e.put(eVar.mo10739b(), eVar);
            }
        }

        e(short s, String str) {
            this.f9899f = s;
            this.f9900g = str;
        }

        /* renamed from: a */
        public static e m11481a(int i) {
            switch (i) {
                case 1:
                    return DOMAIN;
                case 2:
                    return OLD_ID;
                case 3:
                    return NEW_ID;
                case 4:
                    return TS;
                default:
                    return null;
            }
        }

        /* renamed from: a */
        public static e m11482a(String str) {
            return f9897e.get(str);
        }

        /* renamed from: b */
        public static e m11483b(int i) {
            e m11481a = m11481a(i);
            if (m11481a != null) {
                return m11481a;
            }
            throw new IllegalArgumentException("Field " + i + " doesn't exist!");
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2463ah
        /* renamed from: a */
        public final short mo10738a() {
            return this.f9899f;
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2463ah
        /* renamed from: b */
        public final String mo10739b() {
            return this.f9900g;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f9885l = hashMap;
        hashMap.put(AbstractC2492bj.class, new b());
        f9885l.put(AbstractC2493bk.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.DOMAIN, (e) new C2468am("domain", (byte) 1, new C2469an((byte) 11)));
        enumMap.put((EnumMap) e.OLD_ID, (e) new C2468am("old_id", (byte) 2, new C2469an((byte) 11)));
        enumMap.put((EnumMap) e.NEW_ID, (e) new C2468am("new_id", (byte) 1, new C2469an((byte) 11)));
        enumMap.put((EnumMap) e.TS, (e) new C2468am("ts", (byte) 1, new C2469an((byte) 10)));
        f9878e = Collections.unmodifiableMap(enumMap);
        C2468am.m10774a(C2571a.class, f9878e);
    }

    public C2571a() {
        this.f9891n = (byte) 0;
        this.f9892o = new e[]{e.OLD_ID};
    }

    public C2571a(C2571a c2571a) {
        this.f9891n = (byte) 0;
        this.f9892o = new e[]{e.OLD_ID};
        this.f9891n = c2571a.f9891n;
        if (c2571a.m11464d()) {
            this.f9887a = c2571a.f9887a;
        }
        if (c2571a.m11467g()) {
            this.f9888b = c2571a.f9888b;
        }
        if (c2571a.m11470j()) {
            this.f9889c = c2571a.f9889c;
        }
        this.f9890d = c2571a.f9890d;
    }

    public C2571a(String str, String str2, long j) {
        this();
        this.f9887a = str;
        this.f9889c = str2;
        this.f9890d = j;
        m11463d(true);
    }

    /* renamed from: a */
    private void m11445a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f9891n = (byte) 0;
            read(new C2475at(new C2494bl(objectInputStream)));
        } catch (C2462ag e2) {
            throw new IOException(e2.getMessage());
        }
    }

    /* renamed from: a */
    private void m11446a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new C2475at(new C2494bl(objectOutputStream)));
        } catch (C2462ag e2) {
            throw new IOException(e2.getMessage());
        }
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public e fieldForId(int i) {
        return e.m11481a(i);
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public C2571a deepCopy() {
        return new C2571a(this);
    }

    /* renamed from: a */
    public C2571a m11454a(long j) {
        this.f9890d = j;
        m11463d(true);
        return this;
    }

    /* renamed from: a */
    public C2571a m11455a(String str) {
        this.f9887a = str;
        return this;
    }

    /* renamed from: a */
    public void m11456a(boolean z) {
        if (z) {
            return;
        }
        this.f9887a = null;
    }

    /* renamed from: b */
    public C2571a m11457b(String str) {
        this.f9888b = str;
        return this;
    }

    /* renamed from: b */
    public String m11458b() {
        return this.f9887a;
    }

    /* renamed from: b */
    public void m11459b(boolean z) {
        if (z) {
            return;
        }
        this.f9888b = null;
    }

    /* renamed from: c */
    public C2571a m11460c(String str) {
        this.f9889c = str;
        return this;
    }

    /* renamed from: c */
    public void m11461c() {
        this.f9887a = null;
    }

    /* renamed from: c */
    public void m11462c(boolean z) {
        if (z) {
            return;
        }
        this.f9889c = null;
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public void clear() {
        this.f9887a = null;
        this.f9888b = null;
        this.f9889c = null;
        m11463d(false);
        this.f9890d = 0L;
    }

    /* renamed from: d */
    public void m11463d(boolean z) {
        this.f9891n = C2520x.m11119a(this.f9891n, 0, z);
    }

    /* renamed from: d */
    public boolean m11464d() {
        return this.f9887a != null;
    }

    /* renamed from: e */
    public String m11465e() {
        return this.f9888b;
    }

    /* renamed from: f */
    public void m11466f() {
        this.f9888b = null;
    }

    /* renamed from: g */
    public boolean m11467g() {
        return this.f9888b != null;
    }

    /* renamed from: h */
    public String m11468h() {
        return this.f9889c;
    }

    /* renamed from: i */
    public void m11469i() {
        this.f9889c = null;
    }

    /* renamed from: j */
    public boolean m11470j() {
        return this.f9889c != null;
    }

    /* renamed from: k */
    public long m11471k() {
        return this.f9890d;
    }

    /* renamed from: l */
    public void m11472l() {
        this.f9891n = C2520x.m11131b(this.f9891n, 0);
    }

    /* renamed from: m */
    public boolean m11473m() {
        return C2520x.m11127a(this.f9891n, 0);
    }

    /* renamed from: n */
    public void m11474n() throws C2462ag {
        if (this.f9887a == null) {
            throw new C2483ba("Required field 'domain' was not present! Struct: " + toString());
        }
        if (this.f9889c == null) {
            throw new C2483ba("Required field 'new_id' was not present! Struct: " + toString());
        }
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public void read(AbstractC2481az abstractC2481az) throws C2462ag {
        f9885l.get(abstractC2481az.mo10850D()).mo10769b().mo10766b(abstractC2481az, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("IdJournal(");
        sb.append("domain:");
        sb.append(this.f9887a == null ? "null" : this.f9887a);
        if (m11467g()) {
            sb.append(", ");
            sb.append("old_id:");
            sb.append(this.f9888b == null ? "null" : this.f9888b);
        }
        sb.append(", ");
        sb.append("new_id:");
        sb.append(this.f9889c == null ? "null" : this.f9889c);
        sb.append(", ");
        sb.append("ts:");
        sb.append(this.f9890d);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public void write(AbstractC2481az abstractC2481az) throws C2462ag {
        f9885l.get(abstractC2481az.mo10850D()).mo10769b().mo10764a(abstractC2481az, this);
    }
}
