package com.google.p130a.p146f.p147a;

import com.google.p130a.AbstractC2020q;
import com.google.p130a.C1847c;
import com.google.p130a.C2016m;
import com.google.p130a.C2021r;
import com.google.p130a.C2023t;
import com.google.p130a.EnumC1796a;
import com.google.p130a.EnumC1891e;
import com.google.p130a.EnumC2022s;
import com.google.p130a.p137c.C1860e;
import com.google.p130a.p137c.C1862g;
import com.google.p130a.p146f.InterfaceC1902c;
import com.google.p130a.p146f.p147a.p148a.C1899a;
import com.google.p130a.p158i.C1989a;
import com.google.p130a.p158i.p159a.C1998i;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.google.a.f.a.a */
/* loaded from: classes.dex */
public final class C1898a extends C1989a implements InterfaceC1902c {

    /* renamed from: b */
    private static final C2021r[] f7432b = new C2021r[0];

    /* renamed from: c */
    private static final C2023t[] f7433c = new C2023t[0];

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.a.f.a.a$a */
    /* loaded from: classes.dex */
    public static final class a implements Serializable, Comparator<C2021r> {
        private a() {
        }

        @Override // java.util.Comparator
        public final int compare(C2021r c2021r, C2021r c2021r2) {
            return Integer.compare(((Integer) c2021r.f7899f.get(EnumC2022s.STRUCTURED_APPEND_SEQUENCE)).intValue(), ((Integer) c2021r2.f7899f.get(EnumC2022s.STRUCTURED_APPEND_SEQUENCE)).intValue());
        }
    }

    /* renamed from: a */
    private static List<C2021r> m8704a(List<C2021r> list) {
        boolean z;
        Iterator<C2021r> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            if (it.next().f7899f.containsKey(EnumC2022s.STRUCTURED_APPEND_SEQUENCE)) {
                z = true;
                break;
            }
        }
        if (!z) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList<C2021r> arrayList2 = new ArrayList();
        for (C2021r c2021r : list) {
            arrayList.add(c2021r);
            if (c2021r.f7899f.containsKey(EnumC2022s.STRUCTURED_APPEND_SEQUENCE)) {
                arrayList2.add(c2021r);
            }
        }
        Collections.sort(arrayList2, new a());
        StringBuilder sb = new StringBuilder();
        int i = 0;
        int i2 = 0;
        for (C2021r c2021r2 : arrayList2) {
            sb.append(c2021r2.f7894a);
            i += c2021r2.f7895b.length;
            if (c2021r2.f7899f.containsKey(EnumC2022s.BYTE_SEGMENTS)) {
                Iterator it2 = ((Iterable) c2021r2.f7899f.get(EnumC2022s.BYTE_SEGMENTS)).iterator();
                while (it2.hasNext()) {
                    i2 += ((byte[]) it2.next()).length;
                }
            }
        }
        byte[] bArr = new byte[i];
        byte[] bArr2 = new byte[i2];
        int i3 = 0;
        int i4 = 0;
        for (C2021r c2021r3 : arrayList2) {
            System.arraycopy(c2021r3.f7895b, 0, bArr, i3, c2021r3.f7895b.length);
            i3 += c2021r3.f7895b.length;
            if (c2021r3.f7899f.containsKey(EnumC2022s.BYTE_SEGMENTS)) {
                for (byte[] bArr3 : (Iterable) c2021r3.f7899f.get(EnumC2022s.BYTE_SEGMENTS)) {
                    System.arraycopy(bArr3, 0, bArr2, i4, bArr3.length);
                    i4 += bArr3.length;
                }
            }
        }
        C2021r c2021r4 = new C2021r(sb.toString(), bArr, f7433c, EnumC1796a.QR_CODE);
        if (i2 > 0) {
            ArrayList arrayList3 = new ArrayList();
            arrayList3.add(bArr2);
            c2021r4.m9289a(EnumC2022s.BYTE_SEGMENTS, arrayList3);
        }
        arrayList.add(c2021r4);
        return arrayList;
    }

    @Override // com.google.p130a.p146f.InterfaceC1902c
    /* renamed from: a_ */
    public final C2021r[] mo8705a_(C1847c c1847c) throws C2016m {
        return mo8706b(c1847c);
    }

    @Override // com.google.p130a.p146f.InterfaceC1902c
    /* renamed from: b */
    public final C2021r[] mo8706b(C1847c c1847c) throws C2016m {
        ArrayList arrayList = new ArrayList();
        for (C1862g c1862g : new C1899a(c1847c.m8431c()).m8707a()) {
            try {
                C1860e m9131a = this.f7797a.m9131a(c1862g.f7292d, (Map<EnumC1891e, ?>) null);
                C2023t[] c2023tArr = c1862g.f7293e;
                if (m9131a.f7289h instanceof C1998i) {
                    ((C1998i) m9131a.f7289h).m9138a(c2023tArr);
                }
                C2021r c2021r = new C2021r(m9131a.f7284c, m9131a.f7282a, c2023tArr, EnumC1796a.QR_CODE);
                List<byte[]> list = m9131a.f7285d;
                if (list != null) {
                    c2021r.m9289a(EnumC2022s.BYTE_SEGMENTS, list);
                }
                String str = m9131a.f7286e;
                if (str != null) {
                    c2021r.m9289a(EnumC2022s.ERROR_CORRECTION_LEVEL, str);
                }
                if (m9131a.m8530a()) {
                    c2021r.m9289a(EnumC2022s.STRUCTURED_APPEND_SEQUENCE, Integer.valueOf(m9131a.f7291j));
                    c2021r.m9289a(EnumC2022s.STRUCTURED_APPEND_PARITY, Integer.valueOf(m9131a.f7290i));
                }
                arrayList.add(c2021r);
            } catch (AbstractC2020q unused) {
            }
        }
        if (arrayList.isEmpty()) {
            return f7432b;
        }
        List<C2021r> m8704a = m8704a(arrayList);
        return (C2021r[]) m8704a.toArray(new C2021r[m8704a.size()]);
    }
}
