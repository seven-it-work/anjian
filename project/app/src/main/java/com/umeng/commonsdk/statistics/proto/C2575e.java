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

/* renamed from: com.umeng.commonsdk.statistics.proto.e */
/* loaded from: classes.dex */
public class C2575e implements InterfaceC2456aa<C2575e, e>, Serializable, Cloneable {

    /* renamed from: d */
    public static final Map<e, C2468am> f9958d;

    /* renamed from: e */
    private static final long f9959e = 7501688097813630241L;

    /* renamed from: f */
    private static final C2487be f9960f = new C2487be("ImprintValue");

    /* renamed from: g */
    private static final C2476au f9961g = new C2476au("value", (byte) 11, 1);

    /* renamed from: h */
    private static final C2476au f9962h = new C2476au("ts", (byte) 10, 2);

    /* renamed from: i */
    private static final C2476au f9963i = new C2476au("guid", (byte) 11, 3);

    /* renamed from: j */
    private static final Map<Class<? extends InterfaceC2490bh>, InterfaceC2491bi> f9964j;

    /* renamed from: k */
    private static final int f9965k = 0;

    /* renamed from: a */
    public String f9966a;

    /* renamed from: b */
    public long f9967b;

    /* renamed from: c */
    public String f9968c;

    /* renamed from: l */
    private byte f9969l;

    /* renamed from: m */
    private e[] f9970m;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.umeng.commonsdk.statistics.proto.e$a */
    /* loaded from: classes.dex */
    public static class a extends AbstractC2492bj<C2575e> {
        private a() {
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void mo10766b(AbstractC2481az abstractC2481az, C2575e c2575e) throws C2462ag {
            abstractC2481az.mo10808j();
            while (true) {
                C2476au mo10810l = abstractC2481az.mo10810l();
                if (mo10810l.f9328b == 0) {
                    abstractC2481az.mo10809k();
                    if (c2575e.m11609g()) {
                        c2575e.m11613k();
                        return;
                    } else {
                        throw new C2483ba("Required field 'ts' was not found in serialized data! Struct: " + toString());
                    }
                }
                switch (mo10810l.f9329c) {
                    case 1:
                        if (mo10810l.f9328b == 11) {
                            c2575e.f9966a = abstractC2481az.mo10824z();
                            c2575e.m11600a(true);
                            break;
                        }
                        break;
                    case 2:
                        if (mo10810l.f9328b == 10) {
                            c2575e.f9967b = abstractC2481az.mo10822x();
                            c2575e.m11603b(true);
                            break;
                        }
                        break;
                    case 3:
                        if (mo10810l.f9328b == 11) {
                            c2575e.f9968c = abstractC2481az.mo10824z();
                            c2575e.m11605c(true);
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
        public void mo10764a(AbstractC2481az abstractC2481az, C2575e c2575e) throws C2462ag {
            c2575e.m11613k();
            abstractC2481az.mo10792a(C2575e.f9960f);
            if (c2575e.f9966a != null && c2575e.m11606d()) {
                abstractC2481az.mo10787a(C2575e.f9961g);
                abstractC2481az.mo10793a(c2575e.f9966a);
                abstractC2481az.mo10799c();
            }
            abstractC2481az.mo10787a(C2575e.f9962h);
            abstractC2481az.mo10786a(c2575e.f9967b);
            abstractC2481az.mo10799c();
            if (c2575e.f9968c != null) {
                abstractC2481az.mo10787a(C2575e.f9963i);
                abstractC2481az.mo10793a(c2575e.f9968c);
                abstractC2481az.mo10799c();
            }
            abstractC2481az.mo10801d();
            abstractC2481az.mo10798b();
        }
    }

    /* renamed from: com.umeng.commonsdk.statistics.proto.e$b */
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
    /* renamed from: com.umeng.commonsdk.statistics.proto.e$c */
    /* loaded from: classes.dex */
    public static class c extends AbstractC2493bk<C2575e> {
        private c() {
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void mo10764a(AbstractC2481az abstractC2481az, C2575e c2575e) throws C2462ag {
            C2488bf c2488bf = (C2488bf) abstractC2481az;
            c2488bf.mo10786a(c2575e.f9967b);
            c2488bf.mo10793a(c2575e.f9968c);
            BitSet bitSet = new BitSet();
            if (c2575e.m11606d()) {
                bitSet.set(0);
            }
            c2488bf.m10860a(bitSet, 1);
            if (c2575e.m11606d()) {
                c2488bf.mo10793a(c2575e.f9966a);
            }
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void mo10766b(AbstractC2481az abstractC2481az, C2575e c2575e) throws C2462ag {
            C2488bf c2488bf = (C2488bf) abstractC2481az;
            c2575e.f9967b = c2488bf.mo10822x();
            c2575e.m11603b(true);
            c2575e.f9968c = c2488bf.mo10824z();
            c2575e.m11605c(true);
            if (c2488bf.m10861b(1).get(0)) {
                c2575e.f9966a = c2488bf.mo10824z();
                c2575e.m11600a(true);
            }
        }
    }

    /* renamed from: com.umeng.commonsdk.statistics.proto.e$d */
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

    /* renamed from: com.umeng.commonsdk.statistics.proto.e$e */
    /* loaded from: classes.dex */
    public enum e implements InterfaceC2463ah {
        VALUE(1, "value"),
        TS(2, "ts"),
        GUID(3, "guid");


        /* renamed from: d */
        private static final Map<String, e> f9974d = new HashMap();

        /* renamed from: e */
        private final short f9976e;

        /* renamed from: f */
        private final String f9977f;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                f9974d.put(eVar.mo10739b(), eVar);
            }
        }

        e(short s, String str) {
            this.f9976e = s;
            this.f9977f = str;
        }

        /* renamed from: a */
        public static e m11620a(int i) {
            switch (i) {
                case 1:
                    return VALUE;
                case 2:
                    return TS;
                case 3:
                    return GUID;
                default:
                    return null;
            }
        }

        /* renamed from: a */
        public static e m11621a(String str) {
            return f9974d.get(str);
        }

        /* renamed from: b */
        public static e m11622b(int i) {
            e m11620a = m11620a(i);
            if (m11620a != null) {
                return m11620a;
            }
            throw new IllegalArgumentException("Field " + i + " doesn't exist!");
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2463ah
        /* renamed from: a */
        public final short mo10738a() {
            return this.f9976e;
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2463ah
        /* renamed from: b */
        public final String mo10739b() {
            return this.f9977f;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f9964j = hashMap;
        hashMap.put(AbstractC2492bj.class, new b());
        f9964j.put(AbstractC2493bk.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.VALUE, (e) new C2468am("value", (byte) 2, new C2469an((byte) 11)));
        enumMap.put((EnumMap) e.TS, (e) new C2468am("ts", (byte) 1, new C2469an((byte) 10)));
        enumMap.put((EnumMap) e.GUID, (e) new C2468am("guid", (byte) 1, new C2469an((byte) 11)));
        f9958d = Collections.unmodifiableMap(enumMap);
        C2468am.m10774a(C2575e.class, f9958d);
    }

    public C2575e() {
        this.f9969l = (byte) 0;
        this.f9970m = new e[]{e.VALUE};
    }

    public C2575e(long j, String str) {
        this();
        this.f9967b = j;
        m11603b(true);
        this.f9968c = str;
    }

    public C2575e(C2575e c2575e) {
        this.f9969l = (byte) 0;
        this.f9970m = new e[]{e.VALUE};
        this.f9969l = c2575e.f9969l;
        if (c2575e.m11606d()) {
            this.f9966a = c2575e.f9966a;
        }
        this.f9967b = c2575e.f9967b;
        if (c2575e.m11612j()) {
            this.f9968c = c2575e.f9968c;
        }
    }

    /* renamed from: a */
    private void m11590a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f9969l = (byte) 0;
            read(new C2475at(new C2494bl(objectInputStream)));
        } catch (C2462ag e2) {
            throw new IOException(e2.getMessage());
        }
    }

    /* renamed from: a */
    private void m11591a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new C2475at(new C2494bl(objectOutputStream)));
        } catch (C2462ag e2) {
            throw new IOException(e2.getMessage());
        }
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public e fieldForId(int i) {
        return e.m11620a(i);
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public C2575e deepCopy() {
        return new C2575e(this);
    }

    /* renamed from: a */
    public C2575e m11598a(long j) {
        this.f9967b = j;
        m11603b(true);
        return this;
    }

    /* renamed from: a */
    public C2575e m11599a(String str) {
        this.f9966a = str;
        return this;
    }

    /* renamed from: a */
    public void m11600a(boolean z) {
        if (z) {
            return;
        }
        this.f9966a = null;
    }

    /* renamed from: b */
    public C2575e m11601b(String str) {
        this.f9968c = str;
        return this;
    }

    /* renamed from: b */
    public String m11602b() {
        return this.f9966a;
    }

    /* renamed from: b */
    public void m11603b(boolean z) {
        this.f9969l = C2520x.m11119a(this.f9969l, 0, z);
    }

    /* renamed from: c */
    public void m11604c() {
        this.f9966a = null;
    }

    /* renamed from: c */
    public void m11605c(boolean z) {
        if (z) {
            return;
        }
        this.f9968c = null;
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public void clear() {
        this.f9966a = null;
        m11603b(false);
        this.f9967b = 0L;
        this.f9968c = null;
    }

    /* renamed from: d */
    public boolean m11606d() {
        return this.f9966a != null;
    }

    /* renamed from: e */
    public long m11607e() {
        return this.f9967b;
    }

    /* renamed from: f */
    public void m11608f() {
        this.f9969l = C2520x.m11131b(this.f9969l, 0);
    }

    /* renamed from: g */
    public boolean m11609g() {
        return C2520x.m11127a(this.f9969l, 0);
    }

    /* renamed from: h */
    public String m11610h() {
        return this.f9968c;
    }

    /* renamed from: i */
    public void m11611i() {
        this.f9968c = null;
    }

    /* renamed from: j */
    public boolean m11612j() {
        return this.f9968c != null;
    }

    /* renamed from: k */
    public void m11613k() throws C2462ag {
        if (this.f9968c == null) {
            throw new C2483ba("Required field 'guid' was not present! Struct: " + toString());
        }
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public void read(AbstractC2481az abstractC2481az) throws C2462ag {
        f9964j.get(abstractC2481az.mo10850D()).mo10769b().mo10766b(abstractC2481az, this);
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("ImprintValue(");
        if (m11606d()) {
            sb.append("value:");
            sb.append(this.f9966a == null ? "null" : this.f9966a);
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            sb.append(", ");
        }
        sb.append("ts:");
        sb.append(this.f9967b);
        sb.append(", ");
        sb.append("guid:");
        sb.append(this.f9968c == null ? "null" : this.f9968c);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public void write(AbstractC2481az abstractC2481az) throws C2462ag {
        f9964j.get(abstractC2481az.mo10850D()).mo10769b().mo10764a(abstractC2481az, this);
    }
}
