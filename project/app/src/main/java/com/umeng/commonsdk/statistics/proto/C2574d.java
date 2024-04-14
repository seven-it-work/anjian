package com.umeng.commonsdk.statistics.proto;

import com.umeng.commonsdk.proguard.AbstractC2481az;
import com.umeng.commonsdk.proguard.AbstractC2492bj;
import com.umeng.commonsdk.proguard.AbstractC2493bk;
import com.umeng.commonsdk.proguard.C2462ag;
import com.umeng.commonsdk.proguard.C2468am;
import com.umeng.commonsdk.proguard.C2469an;
import com.umeng.commonsdk.proguard.C2471ap;
import com.umeng.commonsdk.proguard.C2473ar;
import com.umeng.commonsdk.proguard.C2475at;
import com.umeng.commonsdk.proguard.C2476au;
import com.umeng.commonsdk.proguard.C2478aw;
import com.umeng.commonsdk.proguard.C2483ba;
import com.umeng.commonsdk.proguard.C2485bc;
import com.umeng.commonsdk.proguard.C2487be;
import com.umeng.commonsdk.proguard.C2488bf;
import com.umeng.commonsdk.proguard.C2489bg;
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

/* renamed from: com.umeng.commonsdk.statistics.proto.d */
/* loaded from: classes.dex */
public class C2574d implements InterfaceC2456aa<C2574d, e>, Serializable, Cloneable {

    /* renamed from: d */
    public static final Map<e, C2468am> f9939d;

    /* renamed from: e */
    private static final long f9940e = 2846460275012375038L;

    /* renamed from: f */
    private static final C2487be f9941f = new C2487be("Imprint");

    /* renamed from: g */
    private static final C2476au f9942g = new C2476au("property", C2489bg.f9368k, 1);

    /* renamed from: h */
    private static final C2476au f9943h = new C2476au(ContentProviderStorage.VERSION, (byte) 8, 2);

    /* renamed from: i */
    private static final C2476au f9944i = new C2476au("checksum", (byte) 11, 3);

    /* renamed from: j */
    private static final Map<Class<? extends InterfaceC2490bh>, InterfaceC2491bi> f9945j;

    /* renamed from: k */
    private static final int f9946k = 0;

    /* renamed from: a */
    public Map<String, C2575e> f9947a;

    /* renamed from: b */
    public int f9948b;

    /* renamed from: c */
    public String f9949c;

    /* renamed from: l */
    private byte f9950l;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.umeng.commonsdk.statistics.proto.d$a */
    /* loaded from: classes.dex */
    public static class a extends AbstractC2492bj<C2574d> {
        private a() {
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void mo10766b(AbstractC2481az abstractC2481az, C2574d c2574d) throws C2462ag {
            abstractC2481az.mo10808j();
            while (true) {
                C2476au mo10810l = abstractC2481az.mo10810l();
                if (mo10810l.f9328b == 0) {
                    abstractC2481az.mo10809k();
                    if (!c2574d.m11576h()) {
                        throw new C2483ba("Required field 'version' was not found in serialized data! Struct: " + toString());
                    }
                    c2574d.m11580l();
                    return;
                }
                switch (mo10810l.f9329c) {
                    case 1:
                        if (mo10810l.f9328b == 13) {
                            C2478aw mo10812n = abstractC2481az.mo10812n();
                            c2574d.f9947a = new HashMap(mo10812n.f9334c * 2);
                            for (int i = 0; i < mo10812n.f9334c; i++) {
                                String mo10824z = abstractC2481az.mo10824z();
                                C2575e c2575e = new C2575e();
                                c2575e.read(abstractC2481az);
                                c2574d.f9947a.put(mo10824z, c2575e);
                            }
                            abstractC2481az.mo10813o();
                            c2574d.m11566a(true);
                            break;
                        }
                        break;
                    case 2:
                        if (mo10810l.f9328b == 8) {
                            c2574d.f9948b = abstractC2481az.mo10821w();
                            c2574d.m11569b(true);
                            break;
                        }
                        break;
                    case 3:
                        if (mo10810l.f9328b == 11) {
                            c2574d.f9949c = abstractC2481az.mo10824z();
                            c2574d.m11571c(true);
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
        public void mo10764a(AbstractC2481az abstractC2481az, C2574d c2574d) throws C2462ag {
            c2574d.m11580l();
            abstractC2481az.mo10792a(C2574d.f9941f);
            if (c2574d.f9947a != null) {
                abstractC2481az.mo10787a(C2574d.f9942g);
                abstractC2481az.mo10789a(new C2478aw((byte) 11, (byte) 12, c2574d.f9947a.size()));
                for (Map.Entry<String, C2575e> entry : c2574d.f9947a.entrySet()) {
                    abstractC2481az.mo10793a(entry.getKey());
                    entry.getValue().write(abstractC2481az);
                }
                abstractC2481az.mo10803e();
                abstractC2481az.mo10799c();
            }
            abstractC2481az.mo10787a(C2574d.f9943h);
            abstractC2481az.mo10785a(c2574d.f9948b);
            abstractC2481az.mo10799c();
            if (c2574d.f9949c != null) {
                abstractC2481az.mo10787a(C2574d.f9944i);
                abstractC2481az.mo10793a(c2574d.f9949c);
                abstractC2481az.mo10799c();
            }
            abstractC2481az.mo10801d();
            abstractC2481az.mo10798b();
        }
    }

    /* renamed from: com.umeng.commonsdk.statistics.proto.d$b */
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
    /* renamed from: com.umeng.commonsdk.statistics.proto.d$c */
    /* loaded from: classes.dex */
    public static class c extends AbstractC2493bk<C2574d> {
        private c() {
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void mo10764a(AbstractC2481az abstractC2481az, C2574d c2574d) throws C2462ag {
            C2488bf c2488bf = (C2488bf) abstractC2481az;
            c2488bf.mo10785a(c2574d.f9947a.size());
            for (Map.Entry<String, C2575e> entry : c2574d.f9947a.entrySet()) {
                c2488bf.mo10793a(entry.getKey());
                entry.getValue().write(c2488bf);
            }
            c2488bf.mo10785a(c2574d.f9948b);
            c2488bf.mo10793a(c2574d.f9949c);
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void mo10766b(AbstractC2481az abstractC2481az, C2574d c2574d) throws C2462ag {
            C2488bf c2488bf = (C2488bf) abstractC2481az;
            C2478aw c2478aw = new C2478aw((byte) 11, (byte) 12, c2488bf.mo10821w());
            c2574d.f9947a = new HashMap(c2478aw.f9334c * 2);
            for (int i = 0; i < c2478aw.f9334c; i++) {
                String z = c2488bf.mo10824z();
                C2575e c2575e = new C2575e();
                c2575e.read(c2488bf);
                c2574d.f9947a.put(z, c2575e);
            }
            c2574d.m11566a(true);
            c2574d.f9948b = c2488bf.mo10821w();
            c2574d.m11569b(true);
            c2574d.f9949c = c2488bf.mo10824z();
            c2574d.m11571c(true);
        }
    }

    /* renamed from: com.umeng.commonsdk.statistics.proto.d$d */
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

    /* renamed from: com.umeng.commonsdk.statistics.proto.d$e */
    /* loaded from: classes.dex */
    public enum e implements InterfaceC2463ah {
        PROPERTY(1, "property"),
        VERSION(2, ContentProviderStorage.VERSION),
        CHECKSUM(3, "checksum");


        /* renamed from: d */
        private static final Map<String, e> f9954d = new HashMap();

        /* renamed from: e */
        private final short f9956e;

        /* renamed from: f */
        private final String f9957f;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                f9954d.put(eVar.mo10739b(), eVar);
            }
        }

        e(short s, String str) {
            this.f9956e = s;
            this.f9957f = str;
        }

        /* renamed from: a */
        public static e m11587a(int i) {
            switch (i) {
                case 1:
                    return PROPERTY;
                case 2:
                    return VERSION;
                case 3:
                    return CHECKSUM;
                default:
                    return null;
            }
        }

        /* renamed from: a */
        public static e m11588a(String str) {
            return f9954d.get(str);
        }

        /* renamed from: b */
        public static e m11589b(int i) {
            e m11587a = m11587a(i);
            if (m11587a != null) {
                return m11587a;
            }
            throw new IllegalArgumentException("Field " + i + " doesn't exist!");
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2463ah
        /* renamed from: a */
        public final short mo10738a() {
            return this.f9956e;
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2463ah
        /* renamed from: b */
        public final String mo10739b() {
            return this.f9957f;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f9945j = hashMap;
        hashMap.put(AbstractC2492bj.class, new b());
        f9945j.put(AbstractC2493bk.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.PROPERTY, (e) new C2468am("property", (byte) 1, new C2471ap(C2489bg.f9368k, new C2469an((byte) 11), new C2473ar((byte) 12, C2575e.class))));
        enumMap.put((EnumMap) e.VERSION, (e) new C2468am(ContentProviderStorage.VERSION, (byte) 1, new C2469an((byte) 8)));
        enumMap.put((EnumMap) e.CHECKSUM, (e) new C2468am("checksum", (byte) 1, new C2469an((byte) 11)));
        f9939d = Collections.unmodifiableMap(enumMap);
        C2468am.m10774a(C2574d.class, f9939d);
    }

    public C2574d() {
        this.f9950l = (byte) 0;
    }

    public C2574d(C2574d c2574d) {
        this.f9950l = (byte) 0;
        this.f9950l = c2574d.f9950l;
        if (c2574d.m11573e()) {
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, C2575e> entry : c2574d.f9947a.entrySet()) {
                hashMap.put(entry.getKey(), new C2575e(entry.getValue()));
            }
            this.f9947a = hashMap;
        }
        this.f9948b = c2574d.f9948b;
        if (c2574d.m11579k()) {
            this.f9949c = c2574d.f9949c;
        }
    }

    public C2574d(Map<String, C2575e> map, int i, String str) {
        this();
        this.f9947a = map;
        this.f9948b = i;
        m11569b(true);
        this.f9949c = str;
    }

    /* renamed from: a */
    private void m11555a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f9950l = (byte) 0;
            read(new C2475at(new C2494bl(objectInputStream)));
        } catch (C2462ag e2) {
            throw new IOException(e2.getMessage());
        }
    }

    /* renamed from: a */
    private void m11556a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new C2475at(new C2494bl(objectOutputStream)));
        } catch (C2462ag e2) {
            throw new IOException(e2.getMessage());
        }
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public C2574d deepCopy() {
        return new C2574d(this);
    }

    /* renamed from: a */
    public C2574d m11562a(int i) {
        this.f9948b = i;
        m11569b(true);
        return this;
    }

    /* renamed from: a */
    public C2574d m11563a(String str) {
        this.f9949c = str;
        return this;
    }

    /* renamed from: a */
    public C2574d m11564a(Map<String, C2575e> map) {
        this.f9947a = map;
        return this;
    }

    /* renamed from: a */
    public void m11565a(String str, C2575e c2575e) {
        if (this.f9947a == null) {
            this.f9947a = new HashMap();
        }
        this.f9947a.put(str, c2575e);
    }

    /* renamed from: a */
    public void m11566a(boolean z) {
        if (z) {
            return;
        }
        this.f9947a = null;
    }

    /* renamed from: b */
    public int m11567b() {
        if (this.f9947a == null) {
            return 0;
        }
        return this.f9947a.size();
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public e fieldForId(int i) {
        return e.m11587a(i);
    }

    /* renamed from: b */
    public void m11569b(boolean z) {
        this.f9950l = C2520x.m11119a(this.f9950l, 0, z);
    }

    /* renamed from: c */
    public Map<String, C2575e> m11570c() {
        return this.f9947a;
    }

    /* renamed from: c */
    public void m11571c(boolean z) {
        if (z) {
            return;
        }
        this.f9949c = null;
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public void clear() {
        this.f9947a = null;
        m11569b(false);
        this.f9948b = 0;
        this.f9949c = null;
    }

    /* renamed from: d */
    public void m11572d() {
        this.f9947a = null;
    }

    /* renamed from: e */
    public boolean m11573e() {
        return this.f9947a != null;
    }

    /* renamed from: f */
    public int m11574f() {
        return this.f9948b;
    }

    /* renamed from: g */
    public void m11575g() {
        this.f9950l = C2520x.m11131b(this.f9950l, 0);
    }

    /* renamed from: h */
    public boolean m11576h() {
        return C2520x.m11127a(this.f9950l, 0);
    }

    /* renamed from: i */
    public String m11577i() {
        return this.f9949c;
    }

    /* renamed from: j */
    public void m11578j() {
        this.f9949c = null;
    }

    /* renamed from: k */
    public boolean m11579k() {
        return this.f9949c != null;
    }

    /* renamed from: l */
    public void m11580l() throws C2462ag {
        if (this.f9947a == null) {
            throw new C2483ba("Required field 'property' was not present! Struct: " + toString());
        }
        if (this.f9949c == null) {
            throw new C2483ba("Required field 'checksum' was not present! Struct: " + toString());
        }
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public void read(AbstractC2481az abstractC2481az) throws C2462ag {
        f9945j.get(abstractC2481az.mo10850D()).mo10769b().mo10766b(abstractC2481az, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Imprint(");
        sb.append("property:");
        if (this.f9947a == null) {
            sb.append("null");
        } else {
            sb.append(this.f9947a);
        }
        sb.append(", ");
        sb.append("version:");
        sb.append(this.f9948b);
        sb.append(", ");
        sb.append("checksum:");
        sb.append(this.f9949c == null ? "null" : this.f9949c);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public void write(AbstractC2481az abstractC2481az) throws C2462ag {
        f9945j.get(abstractC2481az.mo10850D()).mo10769b().mo10764a(abstractC2481az, this);
    }
}
