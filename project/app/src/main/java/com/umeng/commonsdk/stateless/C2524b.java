package com.umeng.commonsdk.stateless;

import com.umeng.commonsdk.proguard.AbstractC2481az;
import com.umeng.commonsdk.proguard.AbstractC2492bj;
import com.umeng.commonsdk.proguard.AbstractC2493bk;
import com.umeng.commonsdk.proguard.C2457ab;
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
import java.nio.ByteBuffer;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import net.grandcentrix.tray.provider.ContentProviderStorage;

/* renamed from: com.umeng.commonsdk.stateless.b */
/* loaded from: classes.dex */
public class C2524b implements InterfaceC2456aa<C2524b, e>, Serializable, Cloneable {

    /* renamed from: A */
    private static final int f9651A = 2;

    /* renamed from: B */
    private static final int f9652B = 3;

    /* renamed from: k */
    public static final Map<e, C2468am> f9653k;

    /* renamed from: l */
    private static final long f9654l = 420342210744516016L;

    /* renamed from: m */
    private static final C2487be f9655m = new C2487be("UMSLEnvelope");

    /* renamed from: n */
    private static final C2476au f9656n = new C2476au(ContentProviderStorage.VERSION, (byte) 11, 1);

    /* renamed from: o */
    private static final C2476au f9657o = new C2476au("address", (byte) 11, 2);

    /* renamed from: p */
    private static final C2476au f9658p = new C2476au("signature", (byte) 11, 3);

    /* renamed from: q */
    private static final C2476au f9659q = new C2476au("serial_num", (byte) 8, 4);

    /* renamed from: r */
    private static final C2476au f9660r = new C2476au("ts_secs", (byte) 8, 5);

    /* renamed from: s */
    private static final C2476au f9661s = new C2476au("length", (byte) 8, 6);

    /* renamed from: t */
    private static final C2476au f9662t = new C2476au("entity", (byte) 11, 7);

    /* renamed from: u */
    private static final C2476au f9663u = new C2476au("guid", (byte) 11, 8);

    /* renamed from: v */
    private static final C2476au f9664v = new C2476au("checksum", (byte) 11, 9);

    /* renamed from: w */
    private static final C2476au f9665w = new C2476au("codex", (byte) 8, 10);

    /* renamed from: x */
    private static final Map<Class<? extends InterfaceC2490bh>, InterfaceC2491bi> f9666x;

    /* renamed from: y */
    private static final int f9667y = 0;

    /* renamed from: z */
    private static final int f9668z = 1;

    /* renamed from: C */
    private byte f9669C;

    /* renamed from: D */
    private e[] f9670D;

    /* renamed from: a */
    public String f9671a;

    /* renamed from: b */
    public String f9672b;

    /* renamed from: c */
    public String f9673c;

    /* renamed from: d */
    public int f9674d;

    /* renamed from: e */
    public int f9675e;

    /* renamed from: f */
    public int f9676f;

    /* renamed from: g */
    public ByteBuffer f9677g;

    /* renamed from: h */
    public String f9678h;

    /* renamed from: i */
    public String f9679i;

    /* renamed from: j */
    public int f9680j;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.umeng.commonsdk.stateless.b$a */
    /* loaded from: classes.dex */
    public static class a extends AbstractC2492bj<C2524b> {
        private a() {
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void mo10766b(AbstractC2481az abstractC2481az, C2524b c2524b) throws C2462ag {
            abstractC2481az.mo10808j();
            while (true) {
                C2476au mo10810l = abstractC2481az.mo10810l();
                if (mo10810l.f9328b == 0) {
                    abstractC2481az.mo10809k();
                    if (!c2524b.m11197m()) {
                        throw new C2483ba("Required field 'serial_num' was not found in serialized data! Struct: " + toString());
                    }
                    if (!c2524b.m11200p()) {
                        throw new C2483ba("Required field 'ts_secs' was not found in serialized data! Struct: " + toString());
                    }
                    if (c2524b.m11203s()) {
                        c2524b.m11162G();
                        return;
                    } else {
                        throw new C2483ba("Required field 'length' was not found in serialized data! Struct: " + toString());
                    }
                }
                switch (mo10810l.f9329c) {
                    case 1:
                        if (mo10810l.f9328b == 11) {
                            c2524b.f9671a = abstractC2481az.mo10824z();
                            c2524b.m11168a(true);
                            break;
                        }
                        break;
                    case 2:
                        if (mo10810l.f9328b == 11) {
                            c2524b.f9672b = abstractC2481az.mo10824z();
                            c2524b.m11172b(true);
                            break;
                        }
                        break;
                    case 3:
                        if (mo10810l.f9328b == 11) {
                            c2524b.f9673c = abstractC2481az.mo10824z();
                            c2524b.m11176c(true);
                            break;
                        }
                        break;
                    case 4:
                        if (mo10810l.f9328b == 8) {
                            c2524b.f9674d = abstractC2481az.mo10821w();
                            c2524b.m11179d(true);
                            break;
                        }
                        break;
                    case 5:
                        if (mo10810l.f9328b == 8) {
                            c2524b.f9675e = abstractC2481az.mo10821w();
                            c2524b.m11184e(true);
                            break;
                        }
                        break;
                    case 6:
                        if (mo10810l.f9328b == 8) {
                            c2524b.f9676f = abstractC2481az.mo10821w();
                            c2524b.m11186f(true);
                            break;
                        }
                        break;
                    case 7:
                        if (mo10810l.f9328b == 11) {
                            c2524b.f9677g = abstractC2481az.mo10781A();
                            c2524b.m11187g(true);
                            break;
                        }
                        break;
                    case 8:
                        if (mo10810l.f9328b == 11) {
                            c2524b.f9678h = abstractC2481az.mo10824z();
                            c2524b.m11190h(true);
                            break;
                        }
                        break;
                    case 9:
                        if (mo10810l.f9328b == 11) {
                            c2524b.f9679i = abstractC2481az.mo10824z();
                            c2524b.m11192i(true);
                            break;
                        }
                        break;
                    case 10:
                        if (mo10810l.f9328b == 8) {
                            c2524b.f9680j = abstractC2481az.mo10821w();
                            c2524b.m11193j(true);
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
        public void mo10764a(AbstractC2481az abstractC2481az, C2524b c2524b) throws C2462ag {
            c2524b.m11162G();
            abstractC2481az.mo10792a(C2524b.f9655m);
            if (c2524b.f9671a != null) {
                abstractC2481az.mo10787a(C2524b.f9656n);
                abstractC2481az.mo10793a(c2524b.f9671a);
                abstractC2481az.mo10799c();
            }
            if (c2524b.f9672b != null) {
                abstractC2481az.mo10787a(C2524b.f9657o);
                abstractC2481az.mo10793a(c2524b.f9672b);
                abstractC2481az.mo10799c();
            }
            if (c2524b.f9673c != null) {
                abstractC2481az.mo10787a(C2524b.f9658p);
                abstractC2481az.mo10793a(c2524b.f9673c);
                abstractC2481az.mo10799c();
            }
            abstractC2481az.mo10787a(C2524b.f9659q);
            abstractC2481az.mo10785a(c2524b.f9674d);
            abstractC2481az.mo10799c();
            abstractC2481az.mo10787a(C2524b.f9660r);
            abstractC2481az.mo10785a(c2524b.f9675e);
            abstractC2481az.mo10799c();
            abstractC2481az.mo10787a(C2524b.f9661s);
            abstractC2481az.mo10785a(c2524b.f9676f);
            abstractC2481az.mo10799c();
            if (c2524b.f9677g != null) {
                abstractC2481az.mo10787a(C2524b.f9662t);
                abstractC2481az.mo10794a(c2524b.f9677g);
                abstractC2481az.mo10799c();
            }
            if (c2524b.f9678h != null) {
                abstractC2481az.mo10787a(C2524b.f9663u);
                abstractC2481az.mo10793a(c2524b.f9678h);
                abstractC2481az.mo10799c();
            }
            if (c2524b.f9679i != null) {
                abstractC2481az.mo10787a(C2524b.f9664v);
                abstractC2481az.mo10793a(c2524b.f9679i);
                abstractC2481az.mo10799c();
            }
            if (c2524b.m11161F()) {
                abstractC2481az.mo10787a(C2524b.f9665w);
                abstractC2481az.mo10785a(c2524b.f9680j);
                abstractC2481az.mo10799c();
            }
            abstractC2481az.mo10801d();
            abstractC2481az.mo10798b();
        }
    }

    /* renamed from: com.umeng.commonsdk.stateless.b$b */
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
    /* renamed from: com.umeng.commonsdk.stateless.b$c */
    /* loaded from: classes.dex */
    public static class c extends AbstractC2493bk<C2524b> {
        private c() {
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void mo10764a(AbstractC2481az abstractC2481az, C2524b c2524b) throws C2462ag {
            C2488bf c2488bf = (C2488bf) abstractC2481az;
            c2488bf.mo10793a(c2524b.f9671a);
            c2488bf.mo10793a(c2524b.f9672b);
            c2488bf.mo10793a(c2524b.f9673c);
            c2488bf.mo10785a(c2524b.f9674d);
            c2488bf.mo10785a(c2524b.f9675e);
            c2488bf.mo10785a(c2524b.f9676f);
            c2488bf.mo10794a(c2524b.f9677g);
            c2488bf.mo10793a(c2524b.f9678h);
            c2488bf.mo10793a(c2524b.f9679i);
            BitSet bitSet = new BitSet();
            if (c2524b.m11161F()) {
                bitSet.set(0);
            }
            c2488bf.m10860a(bitSet, 1);
            if (c2524b.m11161F()) {
                c2488bf.mo10785a(c2524b.f9680j);
            }
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void mo10766b(AbstractC2481az abstractC2481az, C2524b c2524b) throws C2462ag {
            C2488bf c2488bf = (C2488bf) abstractC2481az;
            c2524b.f9671a = c2488bf.mo10824z();
            c2524b.m11168a(true);
            c2524b.f9672b = c2488bf.mo10824z();
            c2524b.m11172b(true);
            c2524b.f9673c = c2488bf.mo10824z();
            c2524b.m11176c(true);
            c2524b.f9674d = c2488bf.mo10821w();
            c2524b.m11179d(true);
            c2524b.f9675e = c2488bf.mo10821w();
            c2524b.m11184e(true);
            c2524b.f9676f = c2488bf.mo10821w();
            c2524b.m11186f(true);
            c2524b.f9677g = c2488bf.mo10781A();
            c2524b.m11187g(true);
            c2524b.f9678h = c2488bf.mo10824z();
            c2524b.m11190h(true);
            c2524b.f9679i = c2488bf.mo10824z();
            c2524b.m11192i(true);
            if (c2488bf.m10861b(1).get(0)) {
                c2524b.f9680j = c2488bf.mo10821w();
                c2524b.m11193j(true);
            }
        }
    }

    /* renamed from: com.umeng.commonsdk.stateless.b$d */
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

    /* renamed from: com.umeng.commonsdk.stateless.b$e */
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
        private static final Map<String, e> f9691k = new HashMap();

        /* renamed from: l */
        private final short f9693l;

        /* renamed from: m */
        private final String f9694m;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                f9691k.put(eVar.mo10739b(), eVar);
            }
        }

        e(short s, String str) {
            this.f9693l = s;
            this.f9694m = str;
        }

        /* renamed from: a */
        public static e m11217a(int i) {
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
        public static e m11218a(String str) {
            return f9691k.get(str);
        }

        /* renamed from: b */
        public static e m11219b(int i) {
            e m11217a = m11217a(i);
            if (m11217a != null) {
                return m11217a;
            }
            throw new IllegalArgumentException("Field " + i + " doesn't exist!");
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2463ah
        /* renamed from: a */
        public final short mo10738a() {
            return this.f9693l;
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2463ah
        /* renamed from: b */
        public final String mo10739b() {
            return this.f9694m;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f9666x = hashMap;
        hashMap.put(AbstractC2492bj.class, new b());
        f9666x.put(AbstractC2493bk.class, new d());
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
        f9653k = Collections.unmodifiableMap(enumMap);
        C2468am.m10774a(C2524b.class, f9653k);
    }

    public C2524b() {
        this.f9669C = (byte) 0;
        this.f9670D = new e[]{e.CODEX};
    }

    public C2524b(C2524b c2524b) {
        this.f9669C = (byte) 0;
        this.f9670D = new e[]{e.CODEX};
        this.f9669C = c2524b.f9669C;
        if (c2524b.m11180d()) {
            this.f9671a = c2524b.f9671a;
        }
        if (c2524b.m11188g()) {
            this.f9672b = c2524b.f9672b;
        }
        if (c2524b.m11194j()) {
            this.f9673c = c2524b.f9673c;
        }
        this.f9674d = c2524b.f9674d;
        this.f9675e = c2524b.f9675e;
        this.f9676f = c2524b.f9676f;
        if (c2524b.m11207w()) {
            this.f9677g = C2457ab.m10719d(c2524b.f9677g);
        }
        if (c2524b.m11210z()) {
            this.f9678h = c2524b.f9678h;
        }
        if (c2524b.m11158C()) {
            this.f9679i = c2524b.f9679i;
        }
        this.f9680j = c2524b.f9680j;
    }

    public C2524b(String str, String str2, String str3, int i, int i2, int i3, ByteBuffer byteBuffer, String str4, String str5) {
        this();
        this.f9671a = str;
        this.f9672b = str2;
        this.f9673c = str3;
        this.f9674d = i;
        m11179d(true);
        this.f9675e = i2;
        m11184e(true);
        this.f9676f = i3;
        m11186f(true);
        this.f9677g = byteBuffer;
        this.f9678h = str4;
        this.f9679i = str5;
    }

    /* renamed from: a */
    private void m11154a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f9669C = (byte) 0;
            read(new C2475at(new C2494bl(objectInputStream)));
        } catch (C2462ag e2) {
            throw new IOException(e2.getMessage());
        }
    }

    /* renamed from: a */
    private void m11155a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new C2475at(new C2494bl(objectOutputStream)));
        } catch (C2462ag e2) {
            throw new IOException(e2.getMessage());
        }
    }

    /* renamed from: A */
    public String m11156A() {
        return this.f9679i;
    }

    /* renamed from: B */
    public void m11157B() {
        this.f9679i = null;
    }

    /* renamed from: C */
    public boolean m11158C() {
        return this.f9679i != null;
    }

    /* renamed from: D */
    public int m11159D() {
        return this.f9680j;
    }

    /* renamed from: E */
    public void m11160E() {
        this.f9669C = C2520x.m11131b(this.f9669C, 3);
    }

    /* renamed from: F */
    public boolean m11161F() {
        return C2520x.m11127a(this.f9669C, 3);
    }

    /* renamed from: G */
    public void m11162G() throws C2462ag {
        if (this.f9671a == null) {
            throw new C2483ba("Required field 'version' was not present! Struct: " + toString());
        }
        if (this.f9672b == null) {
            throw new C2483ba("Required field 'address' was not present! Struct: " + toString());
        }
        if (this.f9673c == null) {
            throw new C2483ba("Required field 'signature' was not present! Struct: " + toString());
        }
        if (this.f9677g == null) {
            throw new C2483ba("Required field 'entity' was not present! Struct: " + toString());
        }
        if (this.f9678h == null) {
            throw new C2483ba("Required field 'guid' was not present! Struct: " + toString());
        }
        if (this.f9679i == null) {
            throw new C2483ba("Required field 'checksum' was not present! Struct: " + toString());
        }
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public C2524b deepCopy() {
        return new C2524b(this);
    }

    /* renamed from: a */
    public C2524b m11164a(int i) {
        this.f9674d = i;
        m11179d(true);
        return this;
    }

    /* renamed from: a */
    public C2524b m11165a(String str) {
        this.f9671a = str;
        return this;
    }

    /* renamed from: a */
    public C2524b m11166a(ByteBuffer byteBuffer) {
        this.f9677g = byteBuffer;
        return this;
    }

    /* renamed from: a */
    public C2524b m11167a(byte[] bArr) {
        m11166a(bArr == null ? null : ByteBuffer.wrap(bArr));
        return this;
    }

    /* renamed from: a */
    public void m11168a(boolean z) {
        if (z) {
            return;
        }
        this.f9671a = null;
    }

    /* renamed from: b */
    public C2524b m11169b(int i) {
        this.f9675e = i;
        m11184e(true);
        return this;
    }

    /* renamed from: b */
    public C2524b m11170b(String str) {
        this.f9672b = str;
        return this;
    }

    /* renamed from: b */
    public String m11171b() {
        return this.f9671a;
    }

    /* renamed from: b */
    public void m11172b(boolean z) {
        if (z) {
            return;
        }
        this.f9672b = null;
    }

    /* renamed from: c */
    public C2524b m11173c(int i) {
        this.f9676f = i;
        m11186f(true);
        return this;
    }

    /* renamed from: c */
    public C2524b m11174c(String str) {
        this.f9673c = str;
        return this;
    }

    /* renamed from: c */
    public void m11175c() {
        this.f9671a = null;
    }

    /* renamed from: c */
    public void m11176c(boolean z) {
        if (z) {
            return;
        }
        this.f9673c = null;
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public void clear() {
        this.f9671a = null;
        this.f9672b = null;
        this.f9673c = null;
        m11179d(false);
        this.f9674d = 0;
        m11184e(false);
        this.f9675e = 0;
        m11186f(false);
        this.f9676f = 0;
        this.f9677g = null;
        this.f9678h = null;
        this.f9679i = null;
        m11193j(false);
        this.f9680j = 0;
    }

    /* renamed from: d */
    public C2524b m11177d(int i) {
        this.f9680j = i;
        m11193j(true);
        return this;
    }

    /* renamed from: d */
    public C2524b m11178d(String str) {
        this.f9678h = str;
        return this;
    }

    /* renamed from: d */
    public void m11179d(boolean z) {
        this.f9669C = C2520x.m11119a(this.f9669C, 0, z);
    }

    /* renamed from: d */
    public boolean m11180d() {
        return this.f9671a != null;
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public e fieldForId(int i) {
        return e.m11217a(i);
    }

    /* renamed from: e */
    public C2524b m11182e(String str) {
        this.f9679i = str;
        return this;
    }

    /* renamed from: e */
    public String m11183e() {
        return this.f9672b;
    }

    /* renamed from: e */
    public void m11184e(boolean z) {
        this.f9669C = C2520x.m11119a(this.f9669C, 1, z);
    }

    /* renamed from: f */
    public void m11185f() {
        this.f9672b = null;
    }

    /* renamed from: f */
    public void m11186f(boolean z) {
        this.f9669C = C2520x.m11119a(this.f9669C, 2, z);
    }

    /* renamed from: g */
    public void m11187g(boolean z) {
        if (z) {
            return;
        }
        this.f9677g = null;
    }

    /* renamed from: g */
    public boolean m11188g() {
        return this.f9672b != null;
    }

    /* renamed from: h */
    public String m11189h() {
        return this.f9673c;
    }

    /* renamed from: h */
    public void m11190h(boolean z) {
        if (z) {
            return;
        }
        this.f9678h = null;
    }

    /* renamed from: i */
    public void m11191i() {
        this.f9673c = null;
    }

    /* renamed from: i */
    public void m11192i(boolean z) {
        if (z) {
            return;
        }
        this.f9679i = null;
    }

    /* renamed from: j */
    public void m11193j(boolean z) {
        this.f9669C = C2520x.m11119a(this.f9669C, 3, z);
    }

    /* renamed from: j */
    public boolean m11194j() {
        return this.f9673c != null;
    }

    /* renamed from: k */
    public int m11195k() {
        return this.f9674d;
    }

    /* renamed from: l */
    public void m11196l() {
        this.f9669C = C2520x.m11131b(this.f9669C, 0);
    }

    /* renamed from: m */
    public boolean m11197m() {
        return C2520x.m11127a(this.f9669C, 0);
    }

    /* renamed from: n */
    public int m11198n() {
        return this.f9675e;
    }

    /* renamed from: o */
    public void m11199o() {
        this.f9669C = C2520x.m11131b(this.f9669C, 1);
    }

    /* renamed from: p */
    public boolean m11200p() {
        return C2520x.m11127a(this.f9669C, 1);
    }

    /* renamed from: q */
    public int m11201q() {
        return this.f9676f;
    }

    /* renamed from: r */
    public void m11202r() {
        this.f9669C = C2520x.m11131b(this.f9669C, 2);
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public void read(AbstractC2481az abstractC2481az) throws C2462ag {
        f9666x.get(abstractC2481az.mo10850D()).mo10769b().mo10766b(abstractC2481az, this);
    }

    /* renamed from: s */
    public boolean m11203s() {
        return C2520x.m11127a(this.f9669C, 2);
    }

    /* renamed from: t */
    public byte[] m11204t() {
        m11166a(C2457ab.m10718c(this.f9677g));
        if (this.f9677g == null) {
            return null;
        }
        return this.f9677g.array();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("UMSLEnvelope(");
        sb.append("version:");
        sb.append(this.f9671a == null ? "null" : this.f9671a);
        sb.append(", ");
        sb.append("address:");
        sb.append(this.f9672b == null ? "null" : this.f9672b);
        sb.append(", ");
        sb.append("signature:");
        sb.append(this.f9673c == null ? "null" : this.f9673c);
        sb.append(", ");
        sb.append("serial_num:");
        sb.append(this.f9674d);
        sb.append(", ");
        sb.append("ts_secs:");
        sb.append(this.f9675e);
        sb.append(", ");
        sb.append("length:");
        sb.append(this.f9676f);
        sb.append(", ");
        sb.append("entity:");
        if (this.f9677g == null) {
            sb.append("null");
        } else {
            C2457ab.m10714a(this.f9677g, sb);
        }
        sb.append(", ");
        sb.append("guid:");
        sb.append(this.f9678h == null ? "null" : this.f9678h);
        sb.append(", ");
        sb.append("checksum:");
        sb.append(this.f9679i == null ? "null" : this.f9679i);
        if (m11161F()) {
            sb.append(", ");
            sb.append("codex:");
            sb.append(this.f9680j);
        }
        sb.append(")");
        return sb.toString();
    }

    /* renamed from: u */
    public ByteBuffer m11205u() {
        return this.f9677g;
    }

    /* renamed from: v */
    public void m11206v() {
        this.f9677g = null;
    }

    /* renamed from: w */
    public boolean m11207w() {
        return this.f9677g != null;
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public void write(AbstractC2481az abstractC2481az) throws C2462ag {
        f9666x.get(abstractC2481az.mo10850D()).mo10769b().mo10764a(abstractC2481az, this);
    }

    /* renamed from: x */
    public String m11208x() {
        return this.f9678h;
    }

    /* renamed from: y */
    public void m11209y() {
        this.f9678h = null;
    }

    /* renamed from: z */
    public boolean m11210z() {
        return this.f9678h != null;
    }
}
