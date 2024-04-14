package com.umeng.commonsdk.statistics.proto;

import com.umeng.commonsdk.proguard.AbstractC2481az;
import com.umeng.commonsdk.proguard.AbstractC2492bj;
import com.umeng.commonsdk.proguard.AbstractC2493bk;
import com.umeng.commonsdk.proguard.C2462ag;
import com.umeng.commonsdk.proguard.C2468am;
import com.umeng.commonsdk.proguard.C2469an;
import com.umeng.commonsdk.proguard.C2470ao;
import com.umeng.commonsdk.proguard.C2471ap;
import com.umeng.commonsdk.proguard.C2473ar;
import com.umeng.commonsdk.proguard.C2475at;
import com.umeng.commonsdk.proguard.C2476au;
import com.umeng.commonsdk.proguard.C2477av;
import com.umeng.commonsdk.proguard.C2478aw;
import com.umeng.commonsdk.proguard.C2483ba;
import com.umeng.commonsdk.proguard.C2485bc;
import com.umeng.commonsdk.proguard.C2487be;
import com.umeng.commonsdk.proguard.C2488bf;
import com.umeng.commonsdk.proguard.C2489bg;
import com.umeng.commonsdk.proguard.C2494bl;
import com.umeng.commonsdk.proguard.InterfaceC2456aa;
import com.umeng.commonsdk.proguard.InterfaceC2463ah;
import com.umeng.commonsdk.proguard.InterfaceC2490bh;
import com.umeng.commonsdk.proguard.InterfaceC2491bi;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.umeng.commonsdk.statistics.proto.c */
/* loaded from: classes.dex */
public class C2573c implements InterfaceC2456aa<C2573c, e>, Serializable, Cloneable {

    /* renamed from: d */
    public static final Map<e, C2468am> f9921d;

    /* renamed from: e */
    private static final long f9922e = -5764118265293965743L;

    /* renamed from: f */
    private static final C2487be f9923f = new C2487be("IdTracking");

    /* renamed from: g */
    private static final C2476au f9924g = new C2476au("snapshots", C2489bg.f9368k, 1);

    /* renamed from: h */
    private static final C2476au f9925h = new C2476au("journals", C2489bg.f9370m, 2);

    /* renamed from: i */
    private static final C2476au f9926i = new C2476au("checksum", (byte) 11, 3);

    /* renamed from: j */
    private static final Map<Class<? extends InterfaceC2490bh>, InterfaceC2491bi> f9927j;

    /* renamed from: a */
    public Map<String, C2572b> f9928a;

    /* renamed from: b */
    public List<C2571a> f9929b;

    /* renamed from: c */
    public String f9930c;

    /* renamed from: k */
    private e[] f9931k;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.umeng.commonsdk.statistics.proto.c$a */
    /* loaded from: classes.dex */
    public static class a extends AbstractC2492bj<C2573c> {
        private a() {
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void mo10766b(AbstractC2481az abstractC2481az, C2573c c2573c) throws C2462ag {
            abstractC2481az.mo10808j();
            while (true) {
                C2476au mo10810l = abstractC2481az.mo10810l();
                if (mo10810l.f9328b == 0) {
                    abstractC2481az.mo10809k();
                    c2573c.m11545n();
                    return;
                }
                int i = 0;
                switch (mo10810l.f9329c) {
                    case 1:
                        if (mo10810l.f9328b == 13) {
                            C2478aw mo10812n = abstractC2481az.mo10812n();
                            c2573c.f9928a = new HashMap(mo10812n.f9334c * 2);
                            while (i < mo10812n.f9334c) {
                                String mo10824z = abstractC2481az.mo10824z();
                                C2572b c2572b = new C2572b();
                                c2572b.read(abstractC2481az);
                                c2573c.f9928a.put(mo10824z, c2572b);
                                i++;
                            }
                            abstractC2481az.mo10813o();
                            c2573c.m11530a(true);
                            break;
                        }
                        break;
                    case 2:
                        if (mo10810l.f9328b == 15) {
                            C2477av mo10814p = abstractC2481az.mo10814p();
                            c2573c.f9929b = new ArrayList(mo10814p.f9331b);
                            while (i < mo10814p.f9331b) {
                                C2571a c2571a = new C2571a();
                                c2571a.read(abstractC2481az);
                                c2573c.f9929b.add(c2571a);
                                i++;
                            }
                            abstractC2481az.mo10815q();
                            c2573c.m11532b(true);
                            break;
                        }
                        break;
                    case 3:
                        if (mo10810l.f9328b == 11) {
                            c2573c.f9930c = abstractC2481az.mo10824z();
                            c2573c.m11534c(true);
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
        public void mo10764a(AbstractC2481az abstractC2481az, C2573c c2573c) throws C2462ag {
            c2573c.m11545n();
            abstractC2481az.mo10792a(C2573c.f9923f);
            if (c2573c.f9928a != null) {
                abstractC2481az.mo10787a(C2573c.f9924g);
                abstractC2481az.mo10789a(new C2478aw((byte) 11, (byte) 12, c2573c.f9928a.size()));
                for (Map.Entry<String, C2572b> entry : c2573c.f9928a.entrySet()) {
                    abstractC2481az.mo10793a(entry.getKey());
                    entry.getValue().write(abstractC2481az);
                }
                abstractC2481az.mo10803e();
                abstractC2481az.mo10799c();
            }
            if (c2573c.f9929b != null && c2573c.m11541j()) {
                abstractC2481az.mo10787a(C2573c.f9925h);
                abstractC2481az.mo10788a(new C2477av((byte) 12, c2573c.f9929b.size()));
                Iterator<C2571a> it = c2573c.f9929b.iterator();
                while (it.hasNext()) {
                    it.next().write(abstractC2481az);
                }
                abstractC2481az.mo10804f();
                abstractC2481az.mo10799c();
            }
            if (c2573c.f9930c != null && c2573c.m11544m()) {
                abstractC2481az.mo10787a(C2573c.f9926i);
                abstractC2481az.mo10793a(c2573c.f9930c);
                abstractC2481az.mo10799c();
            }
            abstractC2481az.mo10801d();
            abstractC2481az.mo10798b();
        }
    }

    /* renamed from: com.umeng.commonsdk.statistics.proto.c$b */
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
    /* renamed from: com.umeng.commonsdk.statistics.proto.c$c */
    /* loaded from: classes.dex */
    public static class c extends AbstractC2493bk<C2573c> {
        private c() {
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void mo10764a(AbstractC2481az abstractC2481az, C2573c c2573c) throws C2462ag {
            C2488bf c2488bf = (C2488bf) abstractC2481az;
            c2488bf.mo10785a(c2573c.f9928a.size());
            for (Map.Entry<String, C2572b> entry : c2573c.f9928a.entrySet()) {
                c2488bf.mo10793a(entry.getKey());
                entry.getValue().write(c2488bf);
            }
            BitSet bitSet = new BitSet();
            if (c2573c.m11541j()) {
                bitSet.set(0);
            }
            if (c2573c.m11544m()) {
                bitSet.set(1);
            }
            c2488bf.m10860a(bitSet, 2);
            if (c2573c.m11541j()) {
                c2488bf.mo10785a(c2573c.f9929b.size());
                Iterator<C2571a> it = c2573c.f9929b.iterator();
                while (it.hasNext()) {
                    it.next().write(c2488bf);
                }
            }
            if (c2573c.m11544m()) {
                c2488bf.mo10793a(c2573c.f9930c);
            }
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void mo10766b(AbstractC2481az abstractC2481az, C2573c c2573c) throws C2462ag {
            C2488bf c2488bf = (C2488bf) abstractC2481az;
            C2478aw c2478aw = new C2478aw((byte) 11, (byte) 12, c2488bf.mo10821w());
            c2573c.f9928a = new HashMap(c2478aw.f9334c * 2);
            for (int i = 0; i < c2478aw.f9334c; i++) {
                String z = c2488bf.mo10824z();
                C2572b c2572b = new C2572b();
                c2572b.read(c2488bf);
                c2573c.f9928a.put(z, c2572b);
            }
            c2573c.m11530a(true);
            BitSet m10861b = c2488bf.m10861b(2);
            if (m10861b.get(0)) {
                C2477av c2477av = new C2477av((byte) 12, c2488bf.mo10821w());
                c2573c.f9929b = new ArrayList(c2477av.f9331b);
                for (int i2 = 0; i2 < c2477av.f9331b; i2++) {
                    C2571a c2571a = new C2571a();
                    c2571a.read(c2488bf);
                    c2573c.f9929b.add(c2571a);
                }
                c2573c.m11532b(true);
            }
            if (m10861b.get(1)) {
                c2573c.f9930c = c2488bf.mo10824z();
                c2573c.m11534c(true);
            }
        }
    }

    /* renamed from: com.umeng.commonsdk.statistics.proto.c$d */
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

    /* renamed from: com.umeng.commonsdk.statistics.proto.c$e */
    /* loaded from: classes.dex */
    public enum e implements InterfaceC2463ah {
        SNAPSHOTS(1, "snapshots"),
        JOURNALS(2, "journals"),
        CHECKSUM(3, "checksum");


        /* renamed from: d */
        private static final Map<String, e> f9935d = new HashMap();

        /* renamed from: e */
        private final short f9937e;

        /* renamed from: f */
        private final String f9938f;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                f9935d.put(eVar.mo10739b(), eVar);
            }
        }

        e(short s, String str) {
            this.f9937e = s;
            this.f9938f = str;
        }

        /* renamed from: a */
        public static e m11552a(int i) {
            switch (i) {
                case 1:
                    return SNAPSHOTS;
                case 2:
                    return JOURNALS;
                case 3:
                    return CHECKSUM;
                default:
                    return null;
            }
        }

        /* renamed from: a */
        public static e m11553a(String str) {
            return f9935d.get(str);
        }

        /* renamed from: b */
        public static e m11554b(int i) {
            e m11552a = m11552a(i);
            if (m11552a != null) {
                return m11552a;
            }
            throw new IllegalArgumentException("Field " + i + " doesn't exist!");
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2463ah
        /* renamed from: a */
        public final short mo10738a() {
            return this.f9937e;
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2463ah
        /* renamed from: b */
        public final String mo10739b() {
            return this.f9938f;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f9927j = hashMap;
        hashMap.put(AbstractC2492bj.class, new b());
        f9927j.put(AbstractC2493bk.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.SNAPSHOTS, (e) new C2468am("snapshots", (byte) 1, new C2471ap(C2489bg.f9368k, new C2469an((byte) 11), new C2473ar((byte) 12, C2572b.class))));
        enumMap.put((EnumMap) e.JOURNALS, (e) new C2468am("journals", (byte) 2, new C2470ao(C2489bg.f9370m, new C2473ar((byte) 12, C2571a.class))));
        enumMap.put((EnumMap) e.CHECKSUM, (e) new C2468am("checksum", (byte) 2, new C2469an((byte) 11)));
        f9921d = Collections.unmodifiableMap(enumMap);
        C2468am.m10774a(C2573c.class, f9921d);
    }

    public C2573c() {
        this.f9931k = new e[]{e.JOURNALS, e.CHECKSUM};
    }

    public C2573c(C2573c c2573c) {
        this.f9931k = new e[]{e.JOURNALS, e.CHECKSUM};
        if (c2573c.m11536e()) {
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, C2572b> entry : c2573c.f9928a.entrySet()) {
                hashMap.put(entry.getKey(), new C2572b(entry.getValue()));
            }
            this.f9928a = hashMap;
        }
        if (c2573c.m11541j()) {
            ArrayList arrayList = new ArrayList();
            Iterator<C2571a> it = c2573c.f9929b.iterator();
            while (it.hasNext()) {
                arrayList.add(new C2571a(it.next()));
            }
            this.f9929b = arrayList;
        }
        if (c2573c.m11544m()) {
            this.f9930c = c2573c.f9930c;
        }
    }

    public C2573c(Map<String, C2572b> map) {
        this();
        this.f9928a = map;
    }

    /* renamed from: a */
    private void m11517a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            read(new C2475at(new C2494bl(objectInputStream)));
        } catch (C2462ag e2) {
            throw new IOException(e2.getMessage());
        }
    }

    /* renamed from: a */
    private void m11518a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new C2475at(new C2494bl(objectOutputStream)));
        } catch (C2462ag e2) {
            throw new IOException(e2.getMessage());
        }
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public e fieldForId(int i) {
        return e.m11552a(i);
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public C2573c deepCopy() {
        return new C2573c(this);
    }

    /* renamed from: a */
    public C2573c m11525a(String str) {
        this.f9930c = str;
        return this;
    }

    /* renamed from: a */
    public C2573c m11526a(List<C2571a> list) {
        this.f9929b = list;
        return this;
    }

    /* renamed from: a */
    public C2573c m11527a(Map<String, C2572b> map) {
        this.f9928a = map;
        return this;
    }

    /* renamed from: a */
    public void m11528a(C2571a c2571a) {
        if (this.f9929b == null) {
            this.f9929b = new ArrayList();
        }
        this.f9929b.add(c2571a);
    }

    /* renamed from: a */
    public void m11529a(String str, C2572b c2572b) {
        if (this.f9928a == null) {
            this.f9928a = new HashMap();
        }
        this.f9928a.put(str, c2572b);
    }

    /* renamed from: a */
    public void m11530a(boolean z) {
        if (z) {
            return;
        }
        this.f9928a = null;
    }

    /* renamed from: b */
    public int m11531b() {
        if (this.f9928a == null) {
            return 0;
        }
        return this.f9928a.size();
    }

    /* renamed from: b */
    public void m11532b(boolean z) {
        if (z) {
            return;
        }
        this.f9929b = null;
    }

    /* renamed from: c */
    public Map<String, C2572b> m11533c() {
        return this.f9928a;
    }

    /* renamed from: c */
    public void m11534c(boolean z) {
        if (z) {
            return;
        }
        this.f9930c = null;
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public void clear() {
        this.f9928a = null;
        this.f9929b = null;
        this.f9930c = null;
    }

    /* renamed from: d */
    public void m11535d() {
        this.f9928a = null;
    }

    /* renamed from: e */
    public boolean m11536e() {
        return this.f9928a != null;
    }

    /* renamed from: f */
    public int m11537f() {
        if (this.f9929b == null) {
            return 0;
        }
        return this.f9929b.size();
    }

    /* renamed from: g */
    public Iterator<C2571a> m11538g() {
        if (this.f9929b == null) {
            return null;
        }
        return this.f9929b.iterator();
    }

    /* renamed from: h */
    public List<C2571a> m11539h() {
        return this.f9929b;
    }

    /* renamed from: i */
    public void m11540i() {
        this.f9929b = null;
    }

    /* renamed from: j */
    public boolean m11541j() {
        return this.f9929b != null;
    }

    /* renamed from: k */
    public String m11542k() {
        return this.f9930c;
    }

    /* renamed from: l */
    public void m11543l() {
        this.f9930c = null;
    }

    /* renamed from: m */
    public boolean m11544m() {
        return this.f9930c != null;
    }

    /* renamed from: n */
    public void m11545n() throws C2462ag {
        if (this.f9928a == null) {
            throw new C2483ba("Required field 'snapshots' was not present! Struct: " + toString());
        }
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public void read(AbstractC2481az abstractC2481az) throws C2462ag {
        f9927j.get(abstractC2481az.mo10850D()).mo10769b().mo10766b(abstractC2481az, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("IdTracking(");
        sb.append("snapshots:");
        if (this.f9928a == null) {
            sb.append("null");
        } else {
            sb.append(this.f9928a);
        }
        if (m11541j()) {
            sb.append(", ");
            sb.append("journals:");
            if (this.f9929b == null) {
                sb.append("null");
            } else {
                sb.append(this.f9929b);
            }
        }
        if (m11544m()) {
            sb.append(", ");
            sb.append("checksum:");
            sb.append(this.f9930c == null ? "null" : this.f9930c);
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public void write(AbstractC2481az abstractC2481az) throws C2462ag {
        f9927j.get(abstractC2481az.mo10850D()).mo10769b().mo10764a(abstractC2481az, this);
    }
}
