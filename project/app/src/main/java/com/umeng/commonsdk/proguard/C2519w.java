package com.umeng.commonsdk.proguard;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import net.grandcentrix.tray.provider.ContentProviderStorage;

/* renamed from: com.umeng.commonsdk.proguard.w */
/* loaded from: classes.dex */
public class C2519w implements InterfaceC2456aa<C2519w, e>, Serializable, Cloneable {

    /* renamed from: A */
    private static final int f9581A = 2;

    /* renamed from: B */
    private static final int f9582B = 3;

    /* renamed from: k */
    public static final Map<e, C2468am> f9583k;

    /* renamed from: l */
    private static final long f9584l = 420342210744516016L;

    /* renamed from: m */
    private static final C2487be f9585m = new C2487be("UMEnvelope");

    /* renamed from: n */
    private static final C2476au f9586n = new C2476au(ContentProviderStorage.VERSION, (byte) 11, 1);

    /* renamed from: o */
    private static final C2476au f9587o = new C2476au("address", (byte) 11, 2);

    /* renamed from: p */
    private static final C2476au f9588p = new C2476au("signature", (byte) 11, 3);

    /* renamed from: q */
    private static final C2476au f9589q = new C2476au("serial_num", (byte) 8, 4);

    /* renamed from: r */
    private static final C2476au f9590r = new C2476au("ts_secs", (byte) 8, 5);

    /* renamed from: s */
    private static final C2476au f9591s = new C2476au("length", (byte) 8, 6);

    /* renamed from: t */
    private static final C2476au f9592t = new C2476au("entity", (byte) 11, 7);

    /* renamed from: u */
    private static final C2476au f9593u = new C2476au("guid", (byte) 11, 8);

    /* renamed from: v */
    private static final C2476au f9594v = new C2476au("checksum", (byte) 11, 9);

    /* renamed from: w */
    private static final C2476au f9595w = new C2476au("codex", (byte) 8, 10);

    /* renamed from: x */
    private static final Map<Class<? extends InterfaceC2490bh>, InterfaceC2491bi> f9596x;

    /* renamed from: y */
    private static final int f9597y = 0;

    /* renamed from: z */
    private static final int f9598z = 1;

    /* renamed from: C */
    private byte f9599C;

    /* renamed from: D */
    private e[] f9600D;

    /* renamed from: a */
    public String f9601a;

    /* renamed from: b */
    public String f9602b;

    /* renamed from: c */
    public String f9603c;

    /* renamed from: d */
    public int f9604d;

    /* renamed from: e */
    public int f9605e;

    /* renamed from: f */
    public int f9606f;

    /* renamed from: g */
    public ByteBuffer f9607g;

    /* renamed from: h */
    public String f9608h;

    /* renamed from: i */
    public String f9609i;

    /* renamed from: j */
    public int f9610j;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.umeng.commonsdk.proguard.w$a */
    /* loaded from: classes.dex */
    public static class a extends AbstractC2492bj<C2519w> {
        private a() {
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void mo10766b(AbstractC2481az abstractC2481az, C2519w c2519w) throws C2462ag {
            abstractC2481az.mo10808j();
            while (true) {
                C2476au mo10810l = abstractC2481az.mo10810l();
                if (mo10810l.f9328b == 0) {
                    abstractC2481az.mo10809k();
                    if (!c2519w.m11096m()) {
                        throw new C2483ba("Required field 'serial_num' was not found in serialized data! Struct: " + toString());
                    }
                    if (!c2519w.m11099p()) {
                        throw new C2483ba("Required field 'ts_secs' was not found in serialized data! Struct: " + toString());
                    }
                    if (c2519w.m11102s()) {
                        c2519w.m11061G();
                        return;
                    } else {
                        throw new C2483ba("Required field 'length' was not found in serialized data! Struct: " + toString());
                    }
                }
                switch (mo10810l.f9329c) {
                    case 1:
                        if (mo10810l.f9328b == 11) {
                            c2519w.f9601a = abstractC2481az.mo10824z();
                            c2519w.m11067a(true);
                            break;
                        }
                        break;
                    case 2:
                        if (mo10810l.f9328b == 11) {
                            c2519w.f9602b = abstractC2481az.mo10824z();
                            c2519w.m11071b(true);
                            break;
                        }
                        break;
                    case 3:
                        if (mo10810l.f9328b == 11) {
                            c2519w.f9603c = abstractC2481az.mo10824z();
                            c2519w.m11075c(true);
                            break;
                        }
                        break;
                    case 4:
                        if (mo10810l.f9328b == 8) {
                            c2519w.f9604d = abstractC2481az.mo10821w();
                            c2519w.m11078d(true);
                            break;
                        }
                        break;
                    case 5:
                        if (mo10810l.f9328b == 8) {
                            c2519w.f9605e = abstractC2481az.mo10821w();
                            c2519w.m11083e(true);
                            break;
                        }
                        break;
                    case 6:
                        if (mo10810l.f9328b == 8) {
                            c2519w.f9606f = abstractC2481az.mo10821w();
                            c2519w.m11085f(true);
                            break;
                        }
                        break;
                    case 7:
                        if (mo10810l.f9328b == 11) {
                            c2519w.f9607g = abstractC2481az.mo10781A();
                            c2519w.m11086g(true);
                            break;
                        }
                        break;
                    case 8:
                        if (mo10810l.f9328b == 11) {
                            c2519w.f9608h = abstractC2481az.mo10824z();
                            c2519w.m11089h(true);
                            break;
                        }
                        break;
                    case 9:
                        if (mo10810l.f9328b == 11) {
                            c2519w.f9609i = abstractC2481az.mo10824z();
                            c2519w.m11091i(true);
                            break;
                        }
                        break;
                    case 10:
                        if (mo10810l.f9328b == 8) {
                            c2519w.f9610j = abstractC2481az.mo10821w();
                            c2519w.m11092j(true);
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
        public void mo10764a(AbstractC2481az abstractC2481az, C2519w c2519w) throws C2462ag {
            c2519w.m11061G();
            abstractC2481az.mo10792a(C2519w.f9585m);
            if (c2519w.f9601a != null) {
                abstractC2481az.mo10787a(C2519w.f9586n);
                abstractC2481az.mo10793a(c2519w.f9601a);
                abstractC2481az.mo10799c();
            }
            if (c2519w.f9602b != null) {
                abstractC2481az.mo10787a(C2519w.f9587o);
                abstractC2481az.mo10793a(c2519w.f9602b);
                abstractC2481az.mo10799c();
            }
            if (c2519w.f9603c != null) {
                abstractC2481az.mo10787a(C2519w.f9588p);
                abstractC2481az.mo10793a(c2519w.f9603c);
                abstractC2481az.mo10799c();
            }
            abstractC2481az.mo10787a(C2519w.f9589q);
            abstractC2481az.mo10785a(c2519w.f9604d);
            abstractC2481az.mo10799c();
            abstractC2481az.mo10787a(C2519w.f9590r);
            abstractC2481az.mo10785a(c2519w.f9605e);
            abstractC2481az.mo10799c();
            abstractC2481az.mo10787a(C2519w.f9591s);
            abstractC2481az.mo10785a(c2519w.f9606f);
            abstractC2481az.mo10799c();
            if (c2519w.f9607g != null) {
                abstractC2481az.mo10787a(C2519w.f9592t);
                abstractC2481az.mo10794a(c2519w.f9607g);
                abstractC2481az.mo10799c();
            }
            if (c2519w.f9608h != null) {
                abstractC2481az.mo10787a(C2519w.f9593u);
                abstractC2481az.mo10793a(c2519w.f9608h);
                abstractC2481az.mo10799c();
            }
            if (c2519w.f9609i != null) {
                abstractC2481az.mo10787a(C2519w.f9594v);
                abstractC2481az.mo10793a(c2519w.f9609i);
                abstractC2481az.mo10799c();
            }
            if (c2519w.m11060F()) {
                abstractC2481az.mo10787a(C2519w.f9595w);
                abstractC2481az.mo10785a(c2519w.f9610j);
                abstractC2481az.mo10799c();
            }
            abstractC2481az.mo10801d();
            abstractC2481az.mo10798b();
        }
    }

    /* renamed from: com.umeng.commonsdk.proguard.w$b */
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
    /* renamed from: com.umeng.commonsdk.proguard.w$c */
    /* loaded from: classes.dex */
    public static class c extends AbstractC2493bk<C2519w> {
        private c() {
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void mo10764a(AbstractC2481az abstractC2481az, C2519w c2519w) throws C2462ag {
            C2488bf c2488bf = (C2488bf) abstractC2481az;
            c2488bf.mo10793a(c2519w.f9601a);
            c2488bf.mo10793a(c2519w.f9602b);
            c2488bf.mo10793a(c2519w.f9603c);
            c2488bf.mo10785a(c2519w.f9604d);
            c2488bf.mo10785a(c2519w.f9605e);
            c2488bf.mo10785a(c2519w.f9606f);
            c2488bf.mo10794a(c2519w.f9607g);
            c2488bf.mo10793a(c2519w.f9608h);
            c2488bf.mo10793a(c2519w.f9609i);
            BitSet bitSet = new BitSet();
            if (c2519w.m11060F()) {
                bitSet.set(0);
            }
            c2488bf.m10860a(bitSet, 1);
            if (c2519w.m11060F()) {
                c2488bf.mo10785a(c2519w.f9610j);
            }
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void mo10766b(AbstractC2481az abstractC2481az, C2519w c2519w) throws C2462ag {
            C2488bf c2488bf = (C2488bf) abstractC2481az;
            c2519w.f9601a = c2488bf.mo10824z();
            c2519w.m11067a(true);
            c2519w.f9602b = c2488bf.mo10824z();
            c2519w.m11071b(true);
            c2519w.f9603c = c2488bf.mo10824z();
            c2519w.m11075c(true);
            c2519w.f9604d = c2488bf.mo10821w();
            c2519w.m11078d(true);
            c2519w.f9605e = c2488bf.mo10821w();
            c2519w.m11083e(true);
            c2519w.f9606f = c2488bf.mo10821w();
            c2519w.m11085f(true);
            c2519w.f9607g = c2488bf.mo10781A();
            c2519w.m11086g(true);
            c2519w.f9608h = c2488bf.mo10824z();
            c2519w.m11089h(true);
            c2519w.f9609i = c2488bf.mo10824z();
            c2519w.m11091i(true);
            if (c2488bf.m10861b(1).get(0)) {
                c2519w.f9610j = c2488bf.mo10821w();
                c2519w.m11092j(true);
            }
        }
    }

    /* renamed from: com.umeng.commonsdk.proguard.w$d */
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

    /* renamed from: com.umeng.commonsdk.proguard.w$e */
    /* loaded from: classes.dex */
    public enum e implements InterfaceC2463ah {
        VERSION(1, ContentProviderStorage.VERSION),
        ADDRESS(2, "address"),
        SIGNATURE(3, "signature"),
        SERIAL_NUM(4, "serial_num"),
        TS_SECS(5, "ts_secs"),
        LENGTH(6, "length"),
        ENTITY(7, "entity"),
        GUID(8, "guid"),
        CHECKSUM(9, "checksum"),
        CODEX(10, "codex");


        /* renamed from: k */
        private static final Map<String, e> f9621k = new HashMap();

        /* renamed from: l */
        private final short f9623l;

        /* renamed from: m */
        private final String f9624m;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                f9621k.put(eVar.mo10739b(), eVar);
            }
        }

        e(short s, String str) {
            this.f9623l = s;
            this.f9624m = str;
        }

        /* renamed from: a */
        public static e m11116a(int i) {
            switch (i) {
                case 1:
                    return VERSION;
                case 2:
                    return ADDRESS;
                case 3:
                    return SIGNATURE;
                case 4:
                    return SERIAL_NUM;
                case 5:
                    return TS_SECS;
                case 6:
                    return LENGTH;
                case 7:
                    return ENTITY;
                case 8:
                    return GUID;
                case 9:
                    return CHECKSUM;
                case 10:
                    return CODEX;
                default:
                    return null;
            }
        }

        /* renamed from: a */
        public static e m11117a(String str) {
            return f9621k.get(str);
        }

        /* renamed from: b */
        public static e m11118b(int i) {
            e m11116a = m11116a(i);
            if (m11116a != null) {
                return m11116a;
            }
            throw new IllegalArgumentException("Field " + i + " doesn't exist!");
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2463ah
        /* renamed from: a */
        public final short mo10738a() {
            return this.f9623l;
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2463ah
        /* renamed from: b */
        public final String mo10739b() {
            return this.f9624m;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f9596x = hashMap;
        hashMap.put(AbstractC2492bj.class, new b());
        f9596x.put(AbstractC2493bk.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.VERSION, (e) new C2468am(ContentProviderStorage.VERSION, (byte) 1, new C2469an((byte) 11)));
        enumMap.put((EnumMap) e.ADDRESS, (e) new C2468am("address", (byte) 1, new C2469an((byte) 11)));
        enumMap.put((EnumMap) e.SIGNATURE, (e) new C2468am("signature", (byte) 1, new C2469an((byte) 11)));
        enumMap.put((EnumMap) e.SERIAL_NUM, (e) new C2468am("serial_num", (byte) 1, new C2469an((byte) 8)));
        enumMap.put((EnumMap) e.TS_SECS, (e) new C2468am("ts_secs", (byte) 1, new C2469an((byte) 8)));
        enumMap.put((EnumMap) e.LENGTH, (e) new C2468am("length", (byte) 1, new C2469an((byte) 8)));
        enumMap.put((EnumMap) e.ENTITY, (e) new C2468am("entity", (byte) 1, new C2469an((byte) 11, true)));
        enumMap.put((EnumMap) e.GUID, (e) new C2468am("guid", (byte) 1, new C2469an((byte) 11)));
        enumMap.put((EnumMap) e.CHECKSUM, (e) new C2468am("checksum", (byte) 1, new C2469an((byte) 11)));
        enumMap.put((EnumMap) e.CODEX, (e) new C2468am("codex", (byte) 2, new C2469an((byte) 8)));
        f9583k = Collections.unmodifiableMap(enumMap);
        C2468am.m10774a(C2519w.class, f9583k);
    }

    public C2519w() {
        this.f9599C = (byte) 0;
        this.f9600D = new e[]{e.CODEX};
    }

    public C2519w(C2519w c2519w) {
        this.f9599C = (byte) 0;
        this.f9600D = new e[]{e.CODEX};
        this.f9599C = c2519w.f9599C;
        if (c2519w.m11079d()) {
            this.f9601a = c2519w.f9601a;
        }
        if (c2519w.m11087g()) {
            this.f9602b = c2519w.f9602b;
        }
        if (c2519w.m11093j()) {
            this.f9603c = c2519w.f9603c;
        }
        this.f9604d = c2519w.f9604d;
        this.f9605e = c2519w.f9605e;
        this.f9606f = c2519w.f9606f;
        if (c2519w.m11106w()) {
            this.f9607g = C2457ab.m10719d(c2519w.f9607g);
        }
        if (c2519w.m11109z()) {
            this.f9608h = c2519w.f9608h;
        }
        if (c2519w.m11057C()) {
            this.f9609i = c2519w.f9609i;
        }
        this.f9610j = c2519w.f9610j;
    }

    public C2519w(String str, String str2, String str3, int i, int i2, int i3, ByteBuffer byteBuffer, String str4, String str5) {
        this();
        this.f9601a = str;
        this.f9602b = str2;
        this.f9603c = str3;
        this.f9604d = i;
        m11078d(true);
        this.f9605e = i2;
        m11083e(true);
        this.f9606f = i3;
        m11085f(true);
        this.f9607g = byteBuffer;
        this.f9608h = str4;
        this.f9609i = str5;
    }

    /* renamed from: a */
    private void m11053a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f9599C = (byte) 0;
            read(new C2475at(new C2494bl(objectInputStream)));
        } catch (C2462ag e2) {
            throw new IOException(e2.getMessage());
        }
    }

    /* renamed from: a */
    private void m11054a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new C2475at(new C2494bl(objectOutputStream)));
        } catch (C2462ag e2) {
            throw new IOException(e2.getMessage());
        }
    }

    /* renamed from: A */
    public String m11055A() {
        return this.f9609i;
    }

    /* renamed from: B */
    public void m11056B() {
        this.f9609i = null;
    }

    /* renamed from: C */
    public boolean m11057C() {
        return this.f9609i != null;
    }

    /* renamed from: D */
    public int m11058D() {
        return this.f9610j;
    }

    /* renamed from: E */
    public void m11059E() {
        this.f9599C = C2520x.m11131b(this.f9599C, 3);
    }

    /* renamed from: F */
    public boolean m11060F() {
        return C2520x.m11127a(this.f9599C, 3);
    }

    /* renamed from: G */
    public void m11061G() throws C2462ag {
        if (this.f9601a == null) {
            throw new C2483ba("Required field 'version' was not present! Struct: " + toString());
        }
        if (this.f9602b == null) {
            throw new C2483ba("Required field 'address' was not present! Struct: " + toString());
        }
        if (this.f9603c == null) {
            throw new C2483ba("Required field 'signature' was not present! Struct: " + toString());
        }
        if (this.f9607g == null) {
            throw new C2483ba("Required field 'entity' was not present! Struct: " + toString());
        }
        if (this.f9608h == null) {
            throw new C2483ba("Required field 'guid' was not present! Struct: " + toString());
        }
        if (this.f9609i == null) {
            throw new C2483ba("Required field 'checksum' was not present! Struct: " + toString());
        }
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public C2519w deepCopy() {
        return new C2519w(this);
    }

    /* renamed from: a */
    public C2519w m11063a(int i) {
        this.f9604d = i;
        m11078d(true);
        return this;
    }

    /* renamed from: a */
    public C2519w m11064a(String str) {
        this.f9601a = str;
        return this;
    }

    /* renamed from: a */
    public C2519w m11065a(ByteBuffer byteBuffer) {
        this.f9607g = byteBuffer;
        return this;
    }

    /* renamed from: a */
    public C2519w m11066a(byte[] bArr) {
        m11065a(bArr == null ? null : ByteBuffer.wrap(bArr));
        return this;
    }

    /* renamed from: a */
    public void m11067a(boolean z) {
        if (z) {
            return;
        }
        this.f9601a = null;
    }

    /* renamed from: b */
    public C2519w m11068b(int i) {
        this.f9605e = i;
        m11083e(true);
        return this;
    }

    /* renamed from: b */
    public C2519w m11069b(String str) {
        this.f9602b = str;
        return this;
    }

    /* renamed from: b */
    public String m11070b() {
        return this.f9601a;
    }

    /* renamed from: b */
    public void m11071b(boolean z) {
        if (z) {
            return;
        }
        this.f9602b = null;
    }

    /* renamed from: c */
    public C2519w m11072c(int i) {
        this.f9606f = i;
        m11085f(true);
        return this;
    }

    /* renamed from: c */
    public C2519w m11073c(String str) {
        this.f9603c = str;
        return this;
    }

    /* renamed from: c */
    public void m11074c() {
        this.f9601a = null;
    }

    /* renamed from: c */
    public void m11075c(boolean z) {
        if (z) {
            return;
        }
        this.f9603c = null;
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public void clear() {
        this.f9601a = null;
        this.f9602b = null;
        this.f9603c = null;
        m11078d(false);
        this.f9604d = 0;
        m11083e(false);
        this.f9605e = 0;
        m11085f(false);
        this.f9606f = 0;
        this.f9607g = null;
        this.f9608h = null;
        this.f9609i = null;
        m11092j(false);
        this.f9610j = 0;
    }

    /* renamed from: d */
    public C2519w m11076d(int i) {
        this.f9610j = i;
        m11092j(true);
        return this;
    }

    /* renamed from: d */
    public C2519w m11077d(String str) {
        this.f9608h = str;
        return this;
    }

    /* renamed from: d */
    public void m11078d(boolean z) {
        this.f9599C = C2520x.m11119a(this.f9599C, 0, z);
    }

    /* renamed from: d */
    public boolean m11079d() {
        return this.f9601a != null;
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public e fieldForId(int i) {
        return e.m11116a(i);
    }

    /* renamed from: e */
    public C2519w m11081e(String str) {
        this.f9609i = str;
        return this;
    }

    /* renamed from: e */
    public String m11082e() {
        return this.f9602b;
    }

    /* renamed from: e */
    public void m11083e(boolean z) {
        this.f9599C = C2520x.m11119a(this.f9599C, 1, z);
    }

    /* renamed from: f */
    public void m11084f() {
        this.f9602b = null;
    }

    /* renamed from: f */
    public void m11085f(boolean z) {
        this.f9599C = C2520x.m11119a(this.f9599C, 2, z);
    }

    /* renamed from: g */
    public void m11086g(boolean z) {
        if (z) {
            return;
        }
        this.f9607g = null;
    }

    /* renamed from: g */
    public boolean m11087g() {
        return this.f9602b != null;
    }

    /* renamed from: h */
    public String m11088h() {
        return this.f9603c;
    }

    /* renamed from: h */
    public void m11089h(boolean z) {
        if (z) {
            return;
        }
        this.f9608h = null;
    }

    /* renamed from: i */
    public void m11090i() {
        this.f9603c = null;
    }

    /* renamed from: i */
    public void m11091i(boolean z) {
        if (z) {
            return;
        }
        this.f9609i = null;
    }

    /* renamed from: j */
    public void m11092j(boolean z) {
        this.f9599C = C2520x.m11119a(this.f9599C, 3, z);
    }

    /* renamed from: j */
    public boolean m11093j() {
        return this.f9603c != null;
    }

    /* renamed from: k */
    public int m11094k() {
        return this.f9604d;
    }

    /* renamed from: l */
    public void m11095l() {
        this.f9599C = C2520x.m11131b(this.f9599C, 0);
    }

    /* renamed from: m */
    public boolean m11096m() {
        return C2520x.m11127a(this.f9599C, 0);
    }

    /* renamed from: n */
    public int m11097n() {
        return this.f9605e;
    }

    /* renamed from: o */
    public void m11098o() {
        this.f9599C = C2520x.m11131b(this.f9599C, 1);
    }

    /* renamed from: p */
    public boolean m11099p() {
        return C2520x.m11127a(this.f9599C, 1);
    }

    /* renamed from: q */
    public int m11100q() {
        return this.f9606f;
    }

    /* renamed from: r */
    public void m11101r() {
        this.f9599C = C2520x.m11131b(this.f9599C, 2);
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public void read(AbstractC2481az abstractC2481az) throws C2462ag {
        f9596x.get(abstractC2481az.mo10850D()).mo10769b().mo10766b(abstractC2481az, this);
    }

    /* renamed from: s */
    public boolean m11102s() {
        return C2520x.m11127a(this.f9599C, 2);
    }

    /* renamed from: t */
    public byte[] m11103t() {
        m11065a(C2457ab.m10718c(this.f9607g));
        if (this.f9607g == null) {
            return null;
        }
        return this.f9607g.array();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("UMEnvelope(");
        sb.append("version:");
        sb.append(this.f9601a == null ? "null" : this.f9601a);
        sb.append(", ");
        sb.append("address:");
        sb.append(this.f9602b == null ? "null" : this.f9602b);
        sb.append(", ");
        sb.append("signature:");
        sb.append(this.f9603c == null ? "null" : this.f9603c);
        sb.append(", ");
        sb.append("serial_num:");
        sb.append(this.f9604d);
        sb.append(", ");
        sb.append("ts_secs:");
        sb.append(this.f9605e);
        sb.append(", ");
        sb.append("length:");
        sb.append(this.f9606f);
        sb.append(", ");
        sb.append("entity:");
        if (this.f9607g == null) {
            sb.append("null");
        } else {
            C2457ab.m10714a(this.f9607g, sb);
        }
        sb.append(", ");
        sb.append("guid:");
        sb.append(this.f9608h == null ? "null" : this.f9608h);
        sb.append(", ");
        sb.append("checksum:");
        sb.append(this.f9609i == null ? "null" : this.f9609i);
        if (m11060F()) {
            sb.append(", ");
            sb.append("codex:");
            sb.append(this.f9610j);
        }
        sb.append(")");
        return sb.toString();
    }

    /* renamed from: u */
    public ByteBuffer m11104u() {
        return this.f9607g;
    }

    /* renamed from: v */
    public void m11105v() {
        this.f9607g = null;
    }

    /* renamed from: w */
    public boolean m11106w() {
        return this.f9607g != null;
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public void write(AbstractC2481az abstractC2481az) throws C2462ag {
        f9596x.get(abstractC2481az.mo10850D()).mo10769b().mo10764a(abstractC2481az, this);
    }

    /* renamed from: x */
    public String m11107x() {
        return this.f9608h;
    }

    /* renamed from: y */
    public void m11108y() {
        this.f9608h = null;
    }

    /* renamed from: z */
    public boolean m11109z() {
        return this.f9608h != null;
    }
}
