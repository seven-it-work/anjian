package org.litepal.p235b;

import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.util.List;
import java.util.Locale;
import org.litepal.p246g.C3054a;
import org.litepal.p246g.C3058c;

/* renamed from: org.litepal.b.i */
/* loaded from: classes2.dex */
public final class C3016i extends AbstractC3002b {
    public C3016i(SQLiteDatabase sQLiteDatabase) {
        this.f11003e = sQLiteDatabase;
    }

    /* renamed from: a */
    public final double m13568a(String str, String str2, String[] strArr) {
        C3054a.m13931a(strArr);
        if (strArr != null && strArr.length > 0) {
            strArr[0] = C3058c.m13966e(strArr[0]);
        }
        return ((Double) m13508a(str, new String[]{"avg(" + str2 + ")"}, strArr, Double.TYPE)).doubleValue();
    }

    /* renamed from: a */
    public final int m13569a(String str, String[] strArr) {
        C3054a.m13931a(strArr);
        if (strArr != null && strArr.length > 0) {
            strArr[0] = C3058c.m13966e(strArr[0]);
        }
        return ((Integer) m13508a(str, new String[]{"count(1)"}, strArr, Integer.TYPE)).intValue();
    }

    /* renamed from: a */
    public final <T> T m13570a(Class<T> cls, long j, boolean z) {
        List<T> a2 = m13509a(cls, null, "id = ?", new String[]{String.valueOf(j)}, null, null, m13510a(cls.getName(), z));
        if (a2.size() > 0) {
            return a2.get(0);
        }
        return null;
    }

    /* renamed from: a */
    public final <T> T m13571a(Class<T> cls, boolean z) {
        List<T> a2 = m13509a(cls, null, null, null, "id", "1", m13510a(cls.getName(), z));
        if (a2.size() > 0) {
            return a2.get(0);
        }
        return null;
    }

    /* renamed from: a */
    public final <T> T m13572a(String str, String str2, String[] strArr, Class<T> cls) {
        C3054a.m13931a(strArr);
        if (strArr != null && strArr.length > 0) {
            strArr[0] = C3058c.m13966e(strArr[0]);
        }
        return (T) m13508a(str, new String[]{"max(" + str2 + ")"}, strArr, cls);
    }

    /* renamed from: a */
    public final <T> List<T> m13573a(Class<T> cls, boolean z, long... jArr) {
        int i = 0;
        new Object[1][0] = jArr;
        StringBuilder sb = new StringBuilder();
        int length = jArr.length;
        boolean z2 = false;
        while (i < length) {
            long j = jArr[i];
            if (z2) {
                sb.append(" or ");
            }
            sb.append("id = ");
            sb.append(j);
            i++;
            z2 = true;
        }
        return m13509a(cls, null, C3054a.m13930a(sb.toString()), null, "id", null, m13510a(cls.getName(), z));
    }

    /* renamed from: a */
    public final <T> List<T> m13574a(Class<T> cls, String[] strArr, String[] strArr2, String str, String str2, boolean z) {
        String str3;
        C3054a.m13931a(strArr2);
        int i = 0;
        if (strArr2 != null && strArr2.length > 0) {
            strArr2[0] = C3058c.m13966e(strArr2[0]);
        }
        if (TextUtils.isEmpty(str)) {
            str3 = null;
        } else {
            String lowerCase = str.trim().toLowerCase(Locale.US);
            if (lowerCase.contains(",")) {
                String[] split = lowerCase.split(",");
                StringBuilder sb = new StringBuilder();
                int length = split.length;
                boolean z2 = false;
                while (i < length) {
                    String str4 = split[i];
                    if (z2) {
                        sb.append(",");
                    }
                    sb.append(C3058c.m13968f(str4));
                    i++;
                    z2 = true;
                }
                str3 = sb.toString();
            } else {
                str3 = C3058c.m13968f(lowerCase);
            }
        }
        return m13509a(cls, strArr, m13474a(strArr2), m13492b(strArr2), str3, str2, m13510a(cls.getName(), z));
    }

    /* renamed from: b */
    public final <T> T m13575b(Class<T> cls, boolean z) {
        List<T> a2 = m13509a(cls, null, null, null, "id desc", "1", m13510a(cls.getName(), z));
        if (a2.size() > 0) {
            return a2.get(0);
        }
        return null;
    }

    /* renamed from: b */
    public final <T> T m13576b(String str, String str2, String[] strArr, Class<T> cls) {
        C3054a.m13931a(strArr);
        if (strArr != null && strArr.length > 0) {
            strArr[0] = C3058c.m13966e(strArr[0]);
        }
        return (T) m13508a(str, new String[]{"min(" + str2 + ")"}, strArr, cls);
    }

    /* renamed from: c */
    public final <T> T m13577c(String str, String str2, String[] strArr, Class<T> cls) {
        C3054a.m13931a(strArr);
        if (strArr != null && strArr.length > 0) {
            strArr[0] = C3058c.m13966e(strArr[0]);
        }
        return (T) m13508a(str, new String[]{"sum(" + str2 + ")"}, strArr, cls);
    }
}
