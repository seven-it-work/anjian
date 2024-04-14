package com.umeng.commonsdk.proguard;

import android.support.v4.app.FrameMetricsAggregator;
import com.cyjh.common.util.C1176s;
import java.nio.ByteBuffer;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

/* renamed from: com.umeng.commonsdk.proguard.ab */
/* loaded from: classes.dex */
public final class C2457ab {

    /* renamed from: a */
    private static final Comparator f9252a = new a();

    /* renamed from: com.umeng.commonsdk.proguard.ab$a */
    /* loaded from: classes.dex */
    private static class a implements Comparator {
        private a() {
        }

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            if (obj == null && obj2 == null) {
                return 0;
            }
            if (obj == null) {
                return -1;
            }
            if (obj2 == null) {
                return 1;
            }
            return obj instanceof List ? C2457ab.m10707a((List) obj, (List) obj2) : obj instanceof Set ? C2457ab.m10709a((Set) obj, (Set) obj2) : obj instanceof Map ? C2457ab.m10708a((Map) obj, (Map) obj2) : obj instanceof byte[] ? C2457ab.m10712a((byte[]) obj, (byte[]) obj2) : C2457ab.m10703a((Comparable) obj, (Comparable) obj2);
        }
    }

    private C2457ab() {
    }

    /* renamed from: a */
    public static int m10699a(byte b2, byte b3) {
        if (b2 < b3) {
            return -1;
        }
        return b3 < b2 ? 1 : 0;
    }

    /* renamed from: a */
    public static int m10700a(double d, double d2) {
        if (d < d2) {
            return -1;
        }
        return d2 < d ? 1 : 0;
    }

    /* renamed from: a */
    public static int m10701a(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i2 < i ? 1 : 0;
    }

    /* renamed from: a */
    public static int m10702a(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j2 < j ? 1 : 0;
    }

    /* renamed from: a */
    public static int m10703a(Comparable comparable, Comparable comparable2) {
        return comparable.compareTo(comparable2);
    }

    /* renamed from: a */
    public static int m10704a(Object obj, Object obj2) {
        if (obj instanceof Comparable) {
            return m10703a((Comparable) obj, (Comparable) obj2);
        }
        if (obj instanceof List) {
            return m10707a((List) obj, (List) obj2);
        }
        if (obj instanceof Set) {
            return m10709a((Set) obj, (Set) obj2);
        }
        if (obj instanceof Map) {
            return m10708a((Map) obj, (Map) obj2);
        }
        if (obj instanceof byte[]) {
            return m10712a((byte[]) obj, (byte[]) obj2);
        }
        throw new IllegalArgumentException("Cannot compare objects of type " + obj.getClass());
    }

    /* renamed from: a */
    public static int m10705a(String str, String str2) {
        return str.compareTo(str2);
    }

    /* renamed from: a */
    public static int m10706a(ByteBuffer byteBuffer, byte[] bArr, int i) {
        int remaining = byteBuffer.remaining();
        System.arraycopy(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), bArr, i, remaining);
        return remaining;
    }

    /* renamed from: a */
    public static int m10707a(List list, List list2) {
        int m10701a = m10701a(list.size(), list2.size());
        if (m10701a != 0) {
            return m10701a;
        }
        for (int i = 0; i < list.size(); i++) {
            int compare = f9252a.compare(list.get(i), list2.get(i));
            if (compare != 0) {
                return compare;
            }
        }
        return 0;
    }

    /* renamed from: a */
    public static int m10708a(Map map, Map map2) {
        int m10701a = m10701a(map.size(), map2.size());
        if (m10701a != 0) {
            return m10701a;
        }
        TreeMap treeMap = new TreeMap(f9252a);
        treeMap.putAll(map);
        Iterator it = treeMap.entrySet().iterator();
        TreeMap treeMap2 = new TreeMap(f9252a);
        treeMap2.putAll(map2);
        Iterator it2 = treeMap2.entrySet().iterator();
        while (it.hasNext() && it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Map.Entry entry2 = (Map.Entry) it2.next();
            int compare = f9252a.compare(entry.getKey(), entry2.getKey());
            if (compare != 0) {
                return compare;
            }
            int compare2 = f9252a.compare(entry.getValue(), entry2.getValue());
            if (compare2 != 0) {
                return compare2;
            }
        }
        return 0;
    }

    /* renamed from: a */
    public static int m10709a(Set set, Set set2) {
        int m10701a = m10701a(set.size(), set2.size());
        if (m10701a != 0) {
            return m10701a;
        }
        TreeSet treeSet = new TreeSet(f9252a);
        treeSet.addAll(set);
        TreeSet treeSet2 = new TreeSet(f9252a);
        treeSet2.addAll(set2);
        Iterator it = treeSet.iterator();
        Iterator it2 = treeSet2.iterator();
        while (it.hasNext() && it2.hasNext()) {
            int compare = f9252a.compare(it.next(), it2.next());
            if (compare != 0) {
                return compare;
            }
        }
        return 0;
    }

    /* renamed from: a */
    public static int m10710a(short s, short s2) {
        if (s < s2) {
            return -1;
        }
        return s2 < s ? 1 : 0;
    }

    /* renamed from: a */
    public static int m10711a(boolean z, boolean z2) {
        return Boolean.valueOf(z).compareTo(Boolean.valueOf(z2));
    }

    /* renamed from: a */
    public static int m10712a(byte[] bArr, byte[] bArr2) {
        int m10701a = m10701a(bArr.length, bArr2.length);
        if (m10701a != 0) {
            return m10701a;
        }
        for (int i = 0; i < bArr.length; i++) {
            int m10699a = m10699a(bArr[i], bArr2[i]);
            if (m10699a != 0) {
                return m10699a;
            }
        }
        return 0;
    }

    /* renamed from: a */
    public static String m10713a(byte b2) {
        return Integer.toHexString((b2 | 256) & FrameMetricsAggregator.EVERY_DURATION).toUpperCase().substring(1);
    }

    /* renamed from: a */
    public static void m10714a(ByteBuffer byteBuffer, StringBuilder sb) {
        byte[] array = byteBuffer.array();
        int arrayOffset = byteBuffer.arrayOffset();
        int position = byteBuffer.position() + arrayOffset;
        int limit = arrayOffset + byteBuffer.limit();
        int i = limit - position > 128 ? position + 128 : limit;
        for (int i2 = position; i2 < i; i2++) {
            if (i2 > position) {
                sb.append(C1176s.a.f4108a);
            }
            sb.append(m10713a(array[i2]));
        }
        if (limit != i) {
            sb.append("...");
        }
    }

    /* renamed from: a */
    public static byte[] m10715a(ByteBuffer byteBuffer) {
        if (m10717b(byteBuffer)) {
            return byteBuffer.array();
        }
        byte[] bArr = new byte[byteBuffer.remaining()];
        m10706a(byteBuffer, bArr, 0);
        return bArr;
    }

    /* renamed from: a */
    public static byte[] m10716a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    /* renamed from: b */
    public static boolean m10717b(ByteBuffer byteBuffer) {
        return byteBuffer.hasArray() && byteBuffer.position() == 0 && byteBuffer.arrayOffset() == 0 && byteBuffer.remaining() == byteBuffer.capacity();
    }

    /* renamed from: c */
    public static ByteBuffer m10718c(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return null;
        }
        return m10717b(byteBuffer) ? byteBuffer : ByteBuffer.wrap(m10715a(byteBuffer));
    }

    /* renamed from: d */
    public static ByteBuffer m10719d(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return null;
        }
        ByteBuffer wrap = ByteBuffer.wrap(new byte[byteBuffer.remaining()]);
        if (byteBuffer.hasArray()) {
            System.arraycopy(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), wrap.array(), 0, byteBuffer.remaining());
            return wrap;
        }
        byteBuffer.slice().get(wrap.array());
        return wrap;
    }
}
