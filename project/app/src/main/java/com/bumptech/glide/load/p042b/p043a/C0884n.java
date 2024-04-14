package com.bumptech.glide.load.p042b.p043a;

import java.util.Map;
import java.util.TreeMap;

/* renamed from: com.bumptech.glide.load.b.a.n */
/* loaded from: classes.dex */
final class C0884n<K, V> extends TreeMap<K, V> {
    @Override // java.util.AbstractMap
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("( ");
        for (Map.Entry<K, V> entry : entrySet()) {
            sb.append('{');
            sb.append(entry.getKey());
            sb.append(':');
            sb.append(entry.getValue());
            sb.append("}, ");
        }
        if (!isEmpty()) {
            sb.replace(sb.length() - 2, sb.length(), "");
        }
        sb.append(" )");
        return sb.toString();
    }
}
