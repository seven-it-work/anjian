package com.umeng.analytics.pro;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.umeng.analytics.pro.f */
/* loaded from: classes.dex */
public class C2431f {
    C2431f() {
    }

    /* renamed from: a */
    public static String m10479a(List<String> list) {
        return TextUtils.join("!", list);
    }

    /* renamed from: a */
    public static List<String> m10480a(String str) {
        return new ArrayList(Arrays.asList(str.split("!")));
    }

    /* renamed from: a */
    public static void m10481a(Context context) {
        if (context == null) {
            return;
        }
        try {
            File file = new File(C2428c.f9003a + context.getPackageName() + "/databases/ua.db");
            if (file.exists()) {
                file.delete();
            }
            C2429d.m10467a(context).m10473a();
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002e, code lost:
    
        if (r4 != null) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0030, code lost:
    
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0033, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0042, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003f, code lost:
    
        if (r4 == null) goto L24;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean m10482a(java.lang.String r4, android.database.sqlite.SQLiteDatabase r5) {
        /*
            r0 = 0
            if (r4 != 0) goto L4
            return r0
        L4:
            r1 = 0
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L3e
            java.lang.String r3 = "select count(*) as c from sqlite_master where type ='table' and name ='"
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L3e
            java.lang.String r4 = r4.trim()     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L3e
            r2.append(r4)     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L3e
            java.lang.String r4 = "' "
            r2.append(r4)     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L3e
            java.lang.String r4 = r2.toString()     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L3e
            android.database.Cursor r4 = r5.rawQuery(r4, r1)     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L3e
            boolean r5 = r4.moveToNext()     // Catch: java.lang.Throwable -> L34 java.lang.Exception -> L3f
            if (r5 == 0) goto L2e
            int r5 = r4.getInt(r0)     // Catch: java.lang.Throwable -> L34 java.lang.Exception -> L3f
            if (r5 <= 0) goto L2e
            r5 = 1
            r0 = 1
        L2e:
            if (r4 == 0) goto L42
        L30:
            r4.close()
            return r0
        L34:
            r5 = move-exception
            r1 = r4
            goto L38
        L37:
            r5 = move-exception
        L38:
            if (r1 == 0) goto L3d
            r1.close()
        L3d:
            throw r5
        L3e:
            r4 = r1
        L3f:
            if (r4 == 0) goto L42
            goto L30
        L42:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.C2431f.m10482a(java.lang.String, android.database.sqlite.SQLiteDatabase):boolean");
    }

    /* renamed from: b */
    public static String m10483b(Context context) {
        return C2428c.f9003a + context.getPackageName() + C2428c.f9004b;
    }

    /* renamed from: b */
    public static List<String> m10484b(List<String> list) {
        ArrayList arrayList = new ArrayList();
        try {
            for (String str : list) {
                if (Collections.frequency(arrayList, str) <= 0) {
                    arrayList.add(str);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return arrayList;
    }
}
