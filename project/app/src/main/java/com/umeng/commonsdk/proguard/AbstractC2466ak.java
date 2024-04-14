package com.umeng.commonsdk.proguard;

import com.cyjh.common.util.C1176s;
import com.umeng.commonsdk.proguard.AbstractC2466ak;
import com.umeng.commonsdk.proguard.InterfaceC2463ah;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* renamed from: com.umeng.commonsdk.proguard.ak */
/* loaded from: classes.dex */
public abstract class AbstractC2466ak<T extends AbstractC2466ak<?, ?>, F extends InterfaceC2463ah> implements InterfaceC2456aa<T, F> {

    /* renamed from: c */
    private static final Map<Class<? extends InterfaceC2490bh>, InterfaceC2491bi> f9262c;

    /* renamed from: a */
    protected Object f9263a;

    /* renamed from: b */
    protected F f9264b;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.umeng.commonsdk.proguard.ak$a */
    /* loaded from: classes.dex */
    public static class a extends AbstractC2492bj<AbstractC2466ak> {
        private a() {
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void mo10766b(AbstractC2481az abstractC2481az, AbstractC2466ak abstractC2466ak) throws C2462ag {
            abstractC2466ak.f9264b = null;
            abstractC2466ak.f9263a = null;
            abstractC2481az.mo10808j();
            C2476au mo10810l = abstractC2481az.mo10810l();
            abstractC2466ak.f9263a = abstractC2466ak.m10751a(abstractC2481az, mo10810l);
            if (abstractC2466ak.f9263a != null) {
                abstractC2466ak.f9264b = (F) abstractC2466ak.m10748a(mo10810l.f9329c);
            }
            abstractC2481az.mo10811m();
            abstractC2481az.mo10810l();
            abstractC2481az.mo10809k();
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void mo10764a(AbstractC2481az abstractC2481az, AbstractC2466ak abstractC2466ak) throws C2462ag {
            if (abstractC2466ak.m10747a() == null || abstractC2466ak.m10756b() == null) {
                throw new C2483ba("Cannot write a TUnion with no set value!");
            }
            abstractC2481az.mo10792a(abstractC2466ak.m10763d());
            abstractC2481az.mo10787a(abstractC2466ak.m10761c(abstractC2466ak.f9264b));
            abstractC2466ak.m10755a(abstractC2481az);
            abstractC2481az.mo10799c();
            abstractC2481az.mo10801d();
            abstractC2481az.mo10798b();
        }
    }

    /* renamed from: com.umeng.commonsdk.proguard.ak$b */
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
    /* renamed from: com.umeng.commonsdk.proguard.ak$c */
    /* loaded from: classes.dex */
    public static class c extends AbstractC2493bk<AbstractC2466ak> {
        private c() {
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void mo10766b(AbstractC2481az abstractC2481az, AbstractC2466ak abstractC2466ak) throws C2462ag {
            abstractC2466ak.f9264b = null;
            abstractC2466ak.f9263a = null;
            short mo10820v = abstractC2481az.mo10820v();
            abstractC2466ak.f9263a = abstractC2466ak.m10752a(abstractC2481az, mo10820v);
            if (abstractC2466ak.f9263a != null) {
                abstractC2466ak.f9264b = (F) abstractC2466ak.m10748a(mo10820v);
            }
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void mo10764a(AbstractC2481az abstractC2481az, AbstractC2466ak abstractC2466ak) throws C2462ag {
            if (abstractC2466ak.m10747a() == null || abstractC2466ak.m10756b() == null) {
                throw new C2483ba("Cannot write a TUnion with no set value!");
            }
            abstractC2481az.mo10795a(abstractC2466ak.f9264b.mo10738a());
            abstractC2466ak.m10758b(abstractC2481az);
        }
    }

    /* renamed from: com.umeng.commonsdk.proguard.ak$d */
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

    static {
        HashMap hashMap = new HashMap();
        f9262c = hashMap;
        hashMap.put(AbstractC2492bj.class, new b());
        f9262c.put(AbstractC2493bk.class, new d());
    }

    protected AbstractC2466ak() {
        this.f9264b = null;
        this.f9263a = null;
    }

    protected AbstractC2466ak(F f, Object obj) {
        m10754a((AbstractC2466ak<T, F>) f, obj);
    }

    protected AbstractC2466ak(AbstractC2466ak<T, F> abstractC2466ak) {
        if (!abstractC2466ak.getClass().equals(getClass())) {
            throw new ClassCastException();
        }
        this.f9264b = abstractC2466ak.f9264b;
        this.f9263a = m10743a(abstractC2466ak.f9263a);
    }

    /* renamed from: a */
    private static Object m10743a(Object obj) {
        return obj instanceof InterfaceC2456aa ? ((InterfaceC2456aa) obj).deepCopy() : obj instanceof ByteBuffer ? C2457ab.m10719d((ByteBuffer) obj) : obj instanceof List ? m10744a((List) obj) : obj instanceof Set ? m10746a((Set) obj) : obj instanceof Map ? m10745a((Map<Object, Object>) obj) : obj;
    }

    /* renamed from: a */
    private static List m10744a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(m10743a(it.next()));
        }
        return arrayList;
    }

    /* renamed from: a */
    private static Map m10745a(Map<Object, Object> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<Object, Object> entry : map.entrySet()) {
            hashMap.put(m10743a(entry.getKey()), m10743a(entry.getValue()));
        }
        return hashMap;
    }

    /* renamed from: a */
    private static Set m10746a(Set set) {
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            hashSet.add(m10743a(it.next()));
        }
        return hashSet;
    }

    /* renamed from: a */
    public F m10747a() {
        return this.f9264b;
    }

    /* renamed from: a */
    protected abstract F m10748a(short s);

    /* renamed from: a */
    public Object m10749a(int i) {
        return m10750a((AbstractC2466ak<T, F>) m10748a((short) i));
    }

    /* renamed from: a */
    public Object m10750a(F f) {
        if (f == this.f9264b) {
            return m10756b();
        }
        throw new IllegalArgumentException("Cannot get the value of field " + f + " because union's set field is " + this.f9264b);
    }

    /* renamed from: a */
    protected abstract Object m10751a(AbstractC2481az abstractC2481az, C2476au c2476au) throws C2462ag;

    /* renamed from: a */
    protected abstract Object m10752a(AbstractC2481az abstractC2481az, short s) throws C2462ag;

    /* renamed from: a */
    public void m10753a(int i, Object obj) {
        m10754a((AbstractC2466ak<T, F>) m10748a((short) i), obj);
    }

    /* renamed from: a */
    public void m10754a(F f, Object obj) {
        m10757b(f, obj);
        this.f9264b = f;
        this.f9263a = obj;
    }

    /* renamed from: a */
    protected abstract void m10755a(AbstractC2481az abstractC2481az) throws C2462ag;

    /* renamed from: b */
    public Object m10756b() {
        return this.f9263a;
    }

    /* renamed from: b */
    protected abstract void m10757b(F f, Object obj) throws ClassCastException;

    /* renamed from: b */
    protected abstract void m10758b(AbstractC2481az abstractC2481az) throws C2462ag;

    /* renamed from: b */
    public boolean m10759b(int i) {
        return m10760b((AbstractC2466ak<T, F>) m10748a((short) i));
    }

    /* renamed from: b */
    public boolean m10760b(F f) {
        return this.f9264b == f;
    }

    /* renamed from: c */
    protected abstract C2476au m10761c(F f);

    /* renamed from: c */
    public boolean m10762c() {
        return this.f9264b != null;
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public final void clear() {
        this.f9264b = null;
        this.f9263a = null;
    }

    /* renamed from: d */
    protected abstract C2487be m10763d();

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public void read(AbstractC2481az abstractC2481az) throws C2462ag {
        f9262c.get(abstractC2481az.mo10850D()).mo10769b().mo10766b(abstractC2481az, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("<");
        sb.append(getClass().getSimpleName());
        sb.append(C1176s.a.f4108a);
        if (m10747a() != null) {
            Object m10756b = m10756b();
            sb.append(m10761c(m10747a()).f9327a);
            sb.append(":");
            if (m10756b instanceof ByteBuffer) {
                C2457ab.m10714a((ByteBuffer) m10756b, sb);
            } else {
                sb.append(m10756b.toString());
            }
        }
        sb.append(">");
        return sb.toString();
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public void write(AbstractC2481az abstractC2481az) throws C2462ag {
        f9262c.get(abstractC2481az.mo10850D()).mo10769b().mo10764a(abstractC2481az, this);
    }
}
