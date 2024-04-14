package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.analytics.pro.C2428c;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.umeng.analytics.pro.g */
/* loaded from: classes.dex */
public class C2432g {

    /* renamed from: a */
    public static final int f9067a = 2049;

    /* renamed from: b */
    public static final int f9068b = 2050;

    /* renamed from: c */
    private static Context f9069c = null;

    /* renamed from: d */
    private static String f9070d = null;

    /* renamed from: e */
    private static final String f9071e = "umeng+";

    /* renamed from: f */
    private static final String f9072f = "ek__id";

    /* renamed from: g */
    private static final String f9073g = "ek_key";

    /* renamed from: h */
    private List<String> f9074h;

    /* renamed from: i */
    private List<Integer> f9075i;

    /* renamed from: j */
    private String f9076j;

    /* renamed from: com.umeng.analytics.pro.g$a */
    /* loaded from: classes.dex */
    public enum a {
        AUTOPAGE,
        PAGE,
        BEGIN,
        END,
        NEWSESSION
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.umeng.analytics.pro.g$b */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a */
        private static final C2432g f9083a = new C2432g();

        private b() {
        }
    }

    private C2432g() {
        this.f9074h = new ArrayList();
        this.f9075i = new ArrayList();
        this.f9076j = null;
    }

    /* renamed from: a */
    public static C2432g m10485a(Context context) {
        C2432g c2432g = b.f9083a;
        if (f9069c == null && context != null) {
            f9069c = context.getApplicationContext();
            c2432g.m10491h();
        }
        return c2432g;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x01a8, code lost:
    
        if (r4 != null) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x01c4, code lost:
    
        r4.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01c2, code lost:
    
        if (r4 != null) goto L129;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x01df A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01f7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01bf  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String m10486a(org.json.JSONObject r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 516
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.C2432g.m10486a(org.json.JSONObject, boolean):java.lang.String");
    }

    /* renamed from: a */
    private void m10487a(String str, JSONObject jSONObject, SQLiteDatabase sQLiteDatabase) {
        Cursor cursor;
        String str2 = null;
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(C2428c.e.a.f9047e);
            if (jSONObject2 != null) {
                cursor = sQLiteDatabase.rawQuery("select __d from __sd where __ii=\"" + str + "\"", null);
                if (cursor != null) {
                    while (cursor.moveToNext()) {
                        try {
                            str2 = m10503b(cursor.getString(cursor.getColumnIndex(C2428c.e.a.f9047e)));
                        } catch (Throwable th) {
                            th = th;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                }
            } else {
                cursor = null;
            }
            if (jSONObject2 != null) {
                JSONArray jSONArray = new JSONArray();
                if (!TextUtils.isEmpty(str2)) {
                    jSONArray = new JSONArray(str2);
                }
                jSONArray.put(jSONObject2);
                String m10493a = m10493a(jSONArray.toString());
                if (!TextUtils.isEmpty(m10493a)) {
                    sQLiteDatabase.execSQL("update  __sd set __d=\"" + m10493a + "\" where __ii=\"" + str + "\"");
                }
            }
            JSONObject jSONObject3 = jSONObject.getJSONObject(C2428c.e.a.f9046d);
            if (jSONObject3 != null) {
                String m10493a2 = m10493a(jSONObject3.toString());
                if (!TextUtils.isEmpty(m10493a2)) {
                    sQLiteDatabase.execSQL("update  __sd set __c=\"" + m10493a2 + "\" where __ii=\"" + str + "\"");
                }
            }
            sQLiteDatabase.execSQL("update  __sd set __f=\"" + String.valueOf(jSONObject.getLong(C2428c.e.a.f9049g)) + "\" where __ii=\"" + str + "\"");
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable unused) {
            cursor = null;
        }
    }

    /* renamed from: a */
    private void m10488a(String str, JSONObject jSONObject, SQLiteDatabase sQLiteDatabase, String str2) throws JSONException {
        Cursor cursor;
        Cursor cursor2 = null;
        r0 = null;
        String str3 = null;
        try {
            cursor = sQLiteDatabase.rawQuery("select " + str2 + " from __sd where __ii=\"" + str + "\"", null);
            if (cursor != null) {
                while (cursor.moveToNext()) {
                    try {
                        str3 = m10503b(cursor.getString(cursor.getColumnIndex(str2)));
                    } catch (Throwable th) {
                        th = th;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
            }
            JSONArray jSONArray = new JSONArray();
            if (!TextUtils.isEmpty(str3)) {
                jSONArray = new JSONArray(str3);
            }
            jSONArray.put(jSONObject);
            String m10493a = m10493a(jSONArray.toString());
            if (!TextUtils.isEmpty(m10493a)) {
                sQLiteDatabase.execSQL("update __sd set " + str2 + "=\"" + m10493a + "\" where __ii=\"" + str + "\"");
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0166, code lost:
    
        if (r1 != null) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0168, code lost:
    
        r1.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0191, code lost:
    
        if (r1 != null) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0183, code lost:
    
        if (r1 != null) goto L94;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m10489a(org.json.JSONObject r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 434
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.C2432g.m10489a(org.json.JSONObject, java.lang.String):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x006e, code lost:
    
        if (r1 != null) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0070, code lost:
    
        r1.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0098, code lost:
    
        if (r1 != null) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x008a, code lost:
    
        if (r1 != null) goto L53;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m10490b(org.json.JSONObject r5, java.lang.String r6) {
        /*
            r4 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L84 android.database.sqlite.SQLiteDatabaseCorruptException -> L8d
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.C2430e.m10475a(r1)     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L84 android.database.sqlite.SQLiteDatabaseCorruptException -> L8d
            android.database.sqlite.SQLiteDatabase r1 = r1.m10476a()     // Catch: java.lang.Throwable -> L81 java.lang.Throwable -> L84 android.database.sqlite.SQLiteDatabaseCorruptException -> L8d
            r1.beginTransaction()     // Catch: java.lang.Throwable -> L85 android.database.sqlite.SQLiteDatabaseCorruptException -> L8e java.lang.Throwable -> L9b
            java.lang.String r2 = "select *  from __er"
            boolean r3 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Throwable -> L85 android.database.sqlite.SQLiteDatabaseCorruptException -> L8e java.lang.Throwable -> L9b
            if (r3 != 0) goto L29
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L85 android.database.sqlite.SQLiteDatabaseCorruptException -> L8e java.lang.Throwable -> L9b
            java.lang.String r3 = "select *  from __er where __i=\""
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L85 android.database.sqlite.SQLiteDatabaseCorruptException -> L8e java.lang.Throwable -> L9b
            r2.append(r6)     // Catch: java.lang.Throwable -> L85 android.database.sqlite.SQLiteDatabaseCorruptException -> L8e java.lang.Throwable -> L9b
            java.lang.String r6 = "\""
            r2.append(r6)     // Catch: java.lang.Throwable -> L85 android.database.sqlite.SQLiteDatabaseCorruptException -> L8e java.lang.Throwable -> L9b
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L85 android.database.sqlite.SQLiteDatabaseCorruptException -> L8e java.lang.Throwable -> L9b
        L29:
            android.database.Cursor r6 = r1.rawQuery(r2, r0)     // Catch: java.lang.Throwable -> L85 android.database.sqlite.SQLiteDatabaseCorruptException -> L8e java.lang.Throwable -> L9b
            if (r6 == 0) goto L66
            org.json.JSONArray r0 = new org.json.JSONArray     // Catch: java.lang.Throwable -> L63 java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            r0.<init>()     // Catch: java.lang.Throwable -> L63 java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
        L34:
            boolean r2 = r6.moveToNext()     // Catch: java.lang.Throwable -> L63 java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            if (r2 == 0) goto L57
            java.lang.String r2 = "__a"
            int r2 = r6.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L63 java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            java.lang.String r2 = r6.getString(r2)     // Catch: java.lang.Throwable -> L63 java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Throwable -> L63 java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            if (r3 != 0) goto L34
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L63 java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            java.lang.String r2 = r4.m10503b(r2)     // Catch: java.lang.Throwable -> L63 java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L63 java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            r0.put(r3)     // Catch: java.lang.Throwable -> L63 java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            goto L34
        L57:
            int r2 = r0.length()     // Catch: java.lang.Throwable -> L63 java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            if (r2 <= 0) goto L66
            java.lang.String r2 = "error"
            r5.put(r2, r0)     // Catch: java.lang.Throwable -> L63 java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            goto L66
        L63:
            r5 = move-exception
            r0 = r6
            goto L9c
        L66:
            r1.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L63 java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            if (r6 == 0) goto L6e
            r6.close()
        L6e:
            if (r1 == 0) goto L73
        L70:
            r1.endTransaction()     // Catch: java.lang.Throwable -> L73
        L73:
            android.content.Context r5 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r5 = com.umeng.analytics.pro.C2430e.m10475a(r5)
            r5.m10477b()
            return
        L7d:
            r0 = r6
            goto L85
        L7f:
            r0 = r6
            goto L8e
        L81:
            r5 = move-exception
            r1 = r0
            goto L9c
        L84:
            r1 = r0
        L85:
            if (r0 == 0) goto L8a
            r0.close()
        L8a:
            if (r1 == 0) goto L73
            goto L70
        L8d:
            r1 = r0
        L8e:
            android.content.Context r5 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> L9b
            com.umeng.analytics.pro.C2431f.m10481a(r5)     // Catch: java.lang.Throwable -> L9b
            if (r0 == 0) goto L98
            r0.close()
        L98:
            if (r1 == 0) goto L73
            goto L70
        L9b:
            r5 = move-exception
        L9c:
            if (r0 == 0) goto La1
            r0.close()
        La1:
            if (r1 == 0) goto La6
            r1.endTransaction()     // Catch: java.lang.Throwable -> La6
        La6:
            android.content.Context r6 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r6 = com.umeng.analytics.pro.C2430e.m10475a(r6)
            r6.m10477b()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.C2432g.m10490b(org.json.JSONObject, java.lang.String):void");
    }

    /* renamed from: h */
    private void m10491h() {
        synchronized (this) {
            m10492i();
            this.f9074h.clear();
        }
    }

    /* renamed from: i */
    private void m10492i() {
        try {
            if (TextUtils.isEmpty(f9070d)) {
                SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f9069c);
                String string = sharedPreferences.getString(f9072f, null);
                if (TextUtils.isEmpty(string)) {
                    string = DeviceConfig.getDBencryptID(f9069c);
                    if (!TextUtils.isEmpty(string)) {
                        sharedPreferences.edit().putString(f9072f, string).commit();
                    }
                }
                if (!TextUtils.isEmpty(string)) {
                    String substring = string.substring(1, 9);
                    StringBuilder sb = new StringBuilder();
                    for (int i = 0; i < substring.length(); i++) {
                        char charAt = substring.charAt(i);
                        if (!Character.isDigit(charAt)) {
                            sb.append(charAt);
                        } else if (Integer.parseInt(Character.toString(charAt)) == 0) {
                            sb.append(0);
                        } else {
                            sb.append(10 - Integer.parseInt(Character.toString(charAt)));
                        }
                    }
                    f9070d = sb.toString();
                }
                if (TextUtils.isEmpty(f9070d)) {
                    return;
                }
                f9070d += new StringBuilder(f9070d).reverse().toString();
                String string2 = sharedPreferences.getString(f9073g, null);
                if (TextUtils.isEmpty(string2)) {
                    sharedPreferences.edit().putString(f9073g, m10493a(f9071e)).commit();
                } else {
                    if (f9071e.equals(m10503b(string2))) {
                        return;
                    }
                    m10500a(true, false);
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public String m10493a(String str) {
        try {
            return TextUtils.isEmpty(f9070d) ? str : Base64.encodeToString(DataHelper.encrypt(str.getBytes(), f9070d.getBytes()), 0);
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: a */
    public JSONObject m10494a(boolean z) {
        String m10486a;
        m10495a();
        this.f9075i.clear();
        JSONObject jSONObject = new JSONObject();
        if (z) {
            m10486a = m10486a(jSONObject, z);
            if (TextUtils.isEmpty(m10486a)) {
                return jSONObject;
            }
        } else {
            m10486a(jSONObject, z);
            m10486a = null;
        }
        m10490b(jSONObject, m10486a);
        m10489a(jSONObject, m10486a);
        return jSONObject;
    }

    /* renamed from: a */
    public void m10495a() {
        this.f9074h.clear();
    }

    /* JADX INFO: Infinite loop detected, blocks: 1, insns: 0 */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x004d, code lost:
    
        if (r0 == 0) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0044, code lost:
    
        r0.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0042, code lost:
    
        if (r0 == 0) goto L17;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002c A[Catch: Throwable -> 0x002f, TRY_ENTER, TRY_LEAVE, TryCatch #2 {Throwable -> 0x002f, blocks: (B:13:0x002c, B:31:0x0044), top: B:3:0x0001 }] */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void m10496a(int r3) {
        /*
            r2 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> L3f java.lang.Throwable -> L42 android.database.sqlite.SQLiteDatabaseCorruptException -> L48
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.C2430e.m10475a(r1)     // Catch: java.lang.Throwable -> L3f java.lang.Throwable -> L42 android.database.sqlite.SQLiteDatabaseCorruptException -> L48
            android.database.sqlite.SQLiteDatabase r1 = r1.m10476a()     // Catch: java.lang.Throwable -> L3f java.lang.Throwable -> L42 android.database.sqlite.SQLiteDatabaseCorruptException -> L48
            r1.beginTransaction()     // Catch: java.lang.Throwable -> L39 java.lang.Throwable -> L3b android.database.sqlite.SQLiteDatabaseCorruptException -> L3d
            if (r3 != 0) goto L16
            java.lang.String r3 = "delete from __dp where __ty=0"
        L12:
            r1.execSQL(r3)     // Catch: java.lang.Throwable -> L39 java.lang.Throwable -> L3b android.database.sqlite.SQLiteDatabaseCorruptException -> L3d
            goto L27
        L16:
            r0 = 4
            if (r3 != r0) goto L21
            java.lang.String r3 = "delete from __dp where __ty=3"
            r1.execSQL(r3)     // Catch: java.lang.Throwable -> L39 java.lang.Throwable -> L3b android.database.sqlite.SQLiteDatabaseCorruptException -> L3d
            java.lang.String r3 = "delete from __dp where __ty=2"
            goto L12
        L21:
            r0 = 1
            if (r3 != r0) goto L27
            java.lang.String r3 = "delete from __dp where __ty=1"
            goto L12
        L27:
            r1.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L39 java.lang.Throwable -> L3b android.database.sqlite.SQLiteDatabaseCorruptException -> L3d
            if (r1 == 0) goto L2f
            r1.endTransaction()     // Catch: java.lang.Throwable -> L2f
        L2f:
            android.content.Context r3 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r3 = com.umeng.analytics.pro.C2430e.m10475a(r3)
            r3.m10477b()
            return
        L39:
            r3 = move-exception
            goto L50
        L3b:
            r0 = r1
            goto L42
        L3d:
            r0 = r1
            goto L48
        L3f:
            r3 = move-exception
            r1 = r0
            goto L50
        L42:
            if (r0 == 0) goto L2f
        L44:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L2f
            goto L2f
        L48:
            android.content.Context r3 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> L3f
            com.umeng.analytics.pro.C2431f.m10481a(r3)     // Catch: java.lang.Throwable -> L3f
            if (r0 == 0) goto L2f
            goto L44
        L50:
            if (r1 == 0) goto L55
            r1.endTransaction()     // Catch: java.lang.Throwable -> L55
        L55:
            android.content.Context r0 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.C2430e.m10475a(r0)
            r0.m10477b()
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.C2432g.m10496a(int):void");
    }

    /* JADX INFO: Infinite loop detected, blocks: 1, insns: 0 */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a6, code lost:
    
        if (r0 == null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x009d, code lost:
    
        r0.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x009b, code lost:
    
        if (r0 == null) goto L19;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void m10497a(org.json.JSONArray r8) {
        /*
            r7 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> L98 java.lang.Throwable -> L9b android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.C2430e.m10475a(r1)     // Catch: java.lang.Throwable -> L98 java.lang.Throwable -> L9b android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            android.database.sqlite.SQLiteDatabase r1 = r1.m10476a()     // Catch: java.lang.Throwable -> L98 java.lang.Throwable -> L9b android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            r1.beginTransaction()     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            r2 = 0
        Lf:
            int r3 = r8.length()     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            if (r2 >= r3) goto L80
            org.json.JSONObject r3 = r8.getJSONObject(r2)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            android.content.ContentValues r4 = new android.content.ContentValues     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            r4.<init>()     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            java.lang.String r5 = "__i"
            java.lang.String r5 = r3.optString(r5)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            boolean r6 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            if (r6 != 0) goto L32
            java.lang.String r6 = "-1"
            boolean r6 = r6.equals(r5)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            if (r6 == 0) goto L42
        L32:
            com.umeng.analytics.pro.o r5 = com.umeng.analytics.pro.C2440o.m10600a()     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            java.lang.String r5 = r5.m10612c()     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            boolean r6 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            if (r6 == 0) goto L42
            java.lang.String r5 = "-1"
        L42:
            java.lang.String r6 = "__i"
            r4.put(r6, r5)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            java.lang.String r5 = "__e"
            java.lang.String r6 = "id"
            java.lang.String r6 = r3.optString(r6)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            r4.put(r5, r6)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            java.lang.String r5 = "__t"
            java.lang.String r6 = "__t"
            int r6 = r3.optInt(r6)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            r4.put(r5, r6)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            java.lang.String r5 = "__i"
            r3.remove(r5)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            java.lang.String r5 = "__t"
            r3.remove(r5)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            java.lang.String r5 = "__s"
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            java.lang.String r3 = r7.m10493a(r3)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            r4.put(r5, r3)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            java.lang.String r3 = "__et"
            r1.insert(r3, r0, r4)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
        L7d:
            int r2 = r2 + 1
            goto Lf
        L80:
            r1.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            if (r1 == 0) goto L88
            r1.endTransaction()     // Catch: java.lang.Throwable -> L88
        L88:
            android.content.Context r8 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r8 = com.umeng.analytics.pro.C2430e.m10475a(r8)
            r8.m10477b()
            return
        L92:
            r8 = move-exception
            goto La9
        L94:
            r0 = r1
            goto L9b
        L96:
            r0 = r1
            goto La1
        L98:
            r8 = move-exception
            r1 = r0
            goto La9
        L9b:
            if (r0 == 0) goto L88
        L9d:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L88
            goto L88
        La1:
            android.content.Context r8 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> L98
            com.umeng.analytics.pro.C2431f.m10481a(r8)     // Catch: java.lang.Throwable -> L98
            if (r0 == 0) goto L88
            goto L9d
        La9:
            if (r1 == 0) goto Lae
            r1.endTransaction()     // Catch: java.lang.Throwable -> Lae
        Lae:
            android.content.Context r0 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.C2430e.m10475a(r0)
            r0.m10477b()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.C2432g.m10497a(org.json.JSONArray):void");
    }

    /* JADX INFO: Infinite loop detected, blocks: 1, insns: 0 */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0088, code lost:
    
        if (r0 == null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007f, code lost:
    
        r0.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x007d, code lost:
    
        if (r0 == null) goto L10;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void m10498a(org.json.JSONObject r12, int r13) {
        /*
            r11 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> L7a java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.C2430e.m10475a(r1)     // Catch: java.lang.Throwable -> L7a java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            android.database.sqlite.SQLiteDatabase r1 = r1.m10476a()     // Catch: java.lang.Throwable -> L7a java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            r1.beginTransaction()     // Catch: java.lang.Throwable -> L74 java.lang.Throwable -> L76 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            android.content.ContentValues r2 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L74 java.lang.Throwable -> L76 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            r2.<init>()     // Catch: java.lang.Throwable -> L74 java.lang.Throwable -> L76 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            java.lang.String r3 = "__ii"
            java.lang.String r3 = r12.optString(r3)     // Catch: java.lang.Throwable -> L74 java.lang.Throwable -> L76 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            java.lang.String r4 = "__id"
            long r5 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L74 java.lang.Throwable -> L76 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            r7 = 10000(0x2710, double:4.9407E-320)
            long r9 = r5 - r7
            java.lang.Long r5 = java.lang.Long.valueOf(r9)     // Catch: java.lang.Throwable -> L74 java.lang.Throwable -> L76 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            r2.put(r4, r5)     // Catch: java.lang.Throwable -> L74 java.lang.Throwable -> L76 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            java.lang.String r4 = "__ii"
            boolean r5 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Throwable -> L74 java.lang.Throwable -> L76 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            if (r5 == 0) goto L34
            java.lang.String r3 = "-1"
        L34:
            r2.put(r4, r3)     // Catch: java.lang.Throwable -> L74 java.lang.Throwable -> L76 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            java.lang.String r3 = "__ii"
            r12.remove(r3)     // Catch: java.lang.Throwable -> L74 java.lang.Throwable -> L76 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            java.lang.String r3 = "__io"
            java.lang.String r12 = r12.toString()     // Catch: java.lang.Throwable -> L74 java.lang.Throwable -> L76 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            java.lang.String r12 = r11.m10493a(r12)     // Catch: java.lang.Throwable -> L74 java.lang.Throwable -> L76 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            r2.put(r3, r12)     // Catch: java.lang.Throwable -> L74 java.lang.Throwable -> L76 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            java.lang.String r12 = "__ty"
            java.lang.Integer r13 = java.lang.Integer.valueOf(r13)     // Catch: java.lang.Throwable -> L74 java.lang.Throwable -> L76 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            r2.put(r12, r13)     // Catch: java.lang.Throwable -> L74 java.lang.Throwable -> L76 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            java.lang.String r12 = "__ve"
            android.content.Context r13 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> L74 java.lang.Throwable -> L76 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            java.lang.String r13 = com.umeng.commonsdk.statistics.common.DeviceConfig.getAppVersionCode(r13)     // Catch: java.lang.Throwable -> L74 java.lang.Throwable -> L76 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            r2.put(r12, r13)     // Catch: java.lang.Throwable -> L74 java.lang.Throwable -> L76 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            java.lang.String r12 = "__dp"
            r1.insert(r12, r0, r2)     // Catch: java.lang.Throwable -> L74 java.lang.Throwable -> L76 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            r1.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L74 java.lang.Throwable -> L76 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            if (r1 == 0) goto L6a
            r1.endTransaction()     // Catch: java.lang.Throwable -> L6a
        L6a:
            android.content.Context r12 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r12 = com.umeng.analytics.pro.C2430e.m10475a(r12)
            r12.m10477b()
            return
        L74:
            r12 = move-exception
            goto L8b
        L76:
            r0 = r1
            goto L7d
        L78:
            r0 = r1
            goto L83
        L7a:
            r12 = move-exception
            r1 = r0
            goto L8b
        L7d:
            if (r0 == 0) goto L6a
        L7f:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L6a
            goto L6a
        L83:
            android.content.Context r12 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> L7a
            com.umeng.analytics.pro.C2431f.m10481a(r12)     // Catch: java.lang.Throwable -> L7a
            if (r0 == 0) goto L6a
            goto L7f
        L8b:
            if (r1 == 0) goto L90
            r1.endTransaction()     // Catch: java.lang.Throwable -> L90
        L90:
            android.content.Context r13 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r13 = com.umeng.analytics.pro.C2430e.m10475a(r13)
            r13.m10477b()
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.C2432g.m10498a(org.json.JSONObject, int):void");
    }

    /* JADX INFO: Infinite loop detected, blocks: 1, insns: 0 */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a6, code lost:
    
        if (r0 == null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x009d, code lost:
    
        r0.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x009b, code lost:
    
        if (r0 == null) goto L12;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.String] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void m10499a(boolean r5, java.lang.String r6) {
        /*
            r4 = this;
            r0 = 0
            r4.f9076j = r6     // Catch: java.lang.Throwable -> L98 java.lang.Throwable -> L9b android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            android.content.Context r1 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> L98 java.lang.Throwable -> L9b android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.C2430e.m10475a(r1)     // Catch: java.lang.Throwable -> L98 java.lang.Throwable -> L9b android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            android.database.sqlite.SQLiteDatabase r1 = r1.m10476a()     // Catch: java.lang.Throwable -> L98 java.lang.Throwable -> L9b android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            r1.beginTransaction()     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            boolean r2 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            if (r2 != 0) goto L80
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            java.lang.String r3 = "delete from __er where __i=\""
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            r2.append(r6)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            java.lang.String r3 = "\""
            r2.append(r3)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            r1.execSQL(r2)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            java.lang.String r3 = "delete from __et where __i=\""
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            r2.append(r6)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            java.lang.String r3 = "\""
            r2.append(r3)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            r1.execSQL(r2)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            if (r5 == 0) goto L80
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            java.lang.String r2 = "update __sd set __b=\""
            r5.<init>(r2)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            r5.append(r0)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            java.lang.String r2 = "\" where __ii=\""
            r5.append(r2)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            r5.append(r6)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            java.lang.String r2 = "\""
            r5.append(r2)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            r1.execSQL(r5)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            java.lang.String r2 = "update __sd set __a=\""
            r5.<init>(r2)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            r5.append(r0)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            java.lang.String r0 = "\" where __ii=\""
            r5.append(r0)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            r5.append(r6)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            java.lang.String r6 = "\""
            r5.append(r6)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            r1.execSQL(r5)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
        L80:
            r1.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            if (r1 == 0) goto L88
            r1.endTransaction()     // Catch: java.lang.Throwable -> L88
        L88:
            android.content.Context r5 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r5 = com.umeng.analytics.pro.C2430e.m10475a(r5)
            r5.m10477b()
            return
        L92:
            r5 = move-exception
            goto La9
        L94:
            r0 = r1
            goto L9b
        L96:
            r0 = r1
            goto La1
        L98:
            r5 = move-exception
            r1 = r0
            goto La9
        L9b:
            if (r0 == 0) goto L88
        L9d:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L88
            goto L88
        La1:
            android.content.Context r5 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> L98
            com.umeng.analytics.pro.C2431f.m10481a(r5)     // Catch: java.lang.Throwable -> L98
            if (r0 == 0) goto L88
            goto L9d
        La9:
            if (r1 == 0) goto Lae
            r1.endTransaction()     // Catch: java.lang.Throwable -> Lae
        Lae:
            android.content.Context r6 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r6 = com.umeng.analytics.pro.C2430e.m10475a(r6)
            r6.m10477b()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.C2432g.m10499a(boolean, java.lang.String):void");
    }

    /* JADX INFO: Infinite loop detected, blocks: 1, insns: 0 */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0070, code lost:
    
        if (r0 == null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0067, code lost:
    
        r0.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0065, code lost:
    
        if (r0 == null) goto L17;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [java.lang.String] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void m10500a(boolean r3, boolean r4) {
        /*
            r2 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> L62 java.lang.Throwable -> L65 android.database.sqlite.SQLiteDatabaseCorruptException -> L6b
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.C2430e.m10475a(r1)     // Catch: java.lang.Throwable -> L62 java.lang.Throwable -> L65 android.database.sqlite.SQLiteDatabaseCorruptException -> L6b
            android.database.sqlite.SQLiteDatabase r1 = r1.m10476a()     // Catch: java.lang.Throwable -> L62 java.lang.Throwable -> L65 android.database.sqlite.SQLiteDatabaseCorruptException -> L6b
            r1.beginTransaction()     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5e android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            if (r4 == 0) goto L18
            if (r3 == 0) goto L4a
            java.lang.String r3 = "delete from __sd"
            r1.execSQL(r3)     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5e android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            goto L4a
        L18:
            java.util.List<java.lang.String> r3 = r2.f9074h     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5e android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            int r3 = r3.size()     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5e android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            if (r3 <= 0) goto L4a
            r3 = 0
        L21:
            java.util.List<java.lang.String> r4 = r2.f9074h     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5e android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            int r4 = r4.size()     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5e android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            if (r3 >= r4) goto L4a
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5e android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            java.lang.String r0 = "delete from __sd where __ii=\""
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5e android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            java.util.List<java.lang.String> r0 = r2.f9074h     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5e android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            java.lang.Object r0 = r0.get(r3)     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5e android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5e android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            r4.append(r0)     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5e android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            java.lang.String r0 = "\""
            r4.append(r0)     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5e android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5e android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            r1.execSQL(r4)     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5e android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            int r3 = r3 + 1
            goto L21
        L4a:
            r1.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L5e android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            if (r1 == 0) goto L52
            r1.endTransaction()     // Catch: java.lang.Throwable -> L52
        L52:
            android.content.Context r3 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r3 = com.umeng.analytics.pro.C2430e.m10475a(r3)
            r3.m10477b()
            return
        L5c:
            r3 = move-exception
            goto L73
        L5e:
            r0 = r1
            goto L65
        L60:
            r0 = r1
            goto L6b
        L62:
            r3 = move-exception
            r1 = r0
            goto L73
        L65:
            if (r0 == 0) goto L52
        L67:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L52
            goto L52
        L6b:
            android.content.Context r3 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> L62
            com.umeng.analytics.pro.C2431f.m10481a(r3)     // Catch: java.lang.Throwable -> L62
            if (r0 == 0) goto L52
            goto L67
        L73:
            if (r1 == 0) goto L78
            r1.endTransaction()     // Catch: java.lang.Throwable -> L78
        L78:
            android.content.Context r4 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r4 = com.umeng.analytics.pro.C2430e.m10475a(r4)
            r4.m10477b()
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.C2432g.m10500a(boolean, boolean):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x005b, code lost:
    
        if (r0 == null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0049, code lost:
    
        r0.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0047, code lost:
    
        if (r0 == null) goto L18;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean m10501a(java.lang.String r5, java.lang.String r6, int r7) {
        /*
            r4 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> L44 java.lang.Throwable -> L47 android.database.sqlite.SQLiteDatabaseCorruptException -> L56
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.C2430e.m10475a(r1)     // Catch: java.lang.Throwable -> L44 java.lang.Throwable -> L47 android.database.sqlite.SQLiteDatabaseCorruptException -> L56
            android.database.sqlite.SQLiteDatabase r1 = r1.m10476a()     // Catch: java.lang.Throwable -> L44 java.lang.Throwable -> L47 android.database.sqlite.SQLiteDatabaseCorruptException -> L56
            r1.beginTransaction()     // Catch: java.lang.Throwable -> L3e java.lang.Throwable -> L40 android.database.sqlite.SQLiteDatabaseCorruptException -> L42
            android.content.ContentValues r2 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L3e java.lang.Throwable -> L40 android.database.sqlite.SQLiteDatabaseCorruptException -> L42
            r2.<init>()     // Catch: java.lang.Throwable -> L3e java.lang.Throwable -> L40 android.database.sqlite.SQLiteDatabaseCorruptException -> L42
            java.lang.String r3 = "__i"
            r2.put(r3, r5)     // Catch: java.lang.Throwable -> L3e java.lang.Throwable -> L40 android.database.sqlite.SQLiteDatabaseCorruptException -> L42
            java.lang.String r5 = r4.m10493a(r6)     // Catch: java.lang.Throwable -> L3e java.lang.Throwable -> L40 android.database.sqlite.SQLiteDatabaseCorruptException -> L42
            boolean r6 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> L3e java.lang.Throwable -> L40 android.database.sqlite.SQLiteDatabaseCorruptException -> L42
            if (r6 != 0) goto L35
            java.lang.String r6 = "__a"
            r2.put(r6, r5)     // Catch: java.lang.Throwable -> L3e java.lang.Throwable -> L40 android.database.sqlite.SQLiteDatabaseCorruptException -> L42
            java.lang.String r5 = "__t"
            java.lang.Integer r6 = java.lang.Integer.valueOf(r7)     // Catch: java.lang.Throwable -> L3e java.lang.Throwable -> L40 android.database.sqlite.SQLiteDatabaseCorruptException -> L42
            r2.put(r5, r6)     // Catch: java.lang.Throwable -> L3e java.lang.Throwable -> L40 android.database.sqlite.SQLiteDatabaseCorruptException -> L42
            java.lang.String r5 = "__er"
            r1.insert(r5, r0, r2)     // Catch: java.lang.Throwable -> L3e java.lang.Throwable -> L40 android.database.sqlite.SQLiteDatabaseCorruptException -> L42
        L35:
            r1.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L3e java.lang.Throwable -> L40 android.database.sqlite.SQLiteDatabaseCorruptException -> L42
            if (r1 == 0) goto L4c
            r1.endTransaction()     // Catch: java.lang.Throwable -> L4c
            goto L4c
        L3e:
            r5 = move-exception
            goto L60
        L40:
            r0 = r1
            goto L47
        L42:
            r0 = r1
            goto L56
        L44:
            r5 = move-exception
            r1 = r0
            goto L60
        L47:
            if (r0 == 0) goto L4c
        L49:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L4c
        L4c:
            android.content.Context r5 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r5 = com.umeng.analytics.pro.C2430e.m10475a(r5)
            r5.m10477b()
            goto L5e
        L56:
            android.content.Context r5 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> L44
            com.umeng.analytics.pro.C2431f.m10481a(r5)     // Catch: java.lang.Throwable -> L44
            if (r0 == 0) goto L4c
            goto L49
        L5e:
            r5 = 0
            return r5
        L60:
            if (r1 == 0) goto L65
            r1.endTransaction()     // Catch: java.lang.Throwable -> L65
        L65:
            android.content.Context r6 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r6 = com.umeng.analytics.pro.C2430e.m10475a(r6)
            r6.m10477b()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.C2432g.m10501a(java.lang.String, java.lang.String, int):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00a8, code lost:
    
        if (r1 == null) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0096, code lost:
    
        r1.endTransaction();
        r1 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0094, code lost:
    
        if (r1 == null) goto L34;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10, types: [com.umeng.analytics.pro.g$a] */
    /* JADX WARN: Type inference failed for: r1v11, types: [com.umeng.analytics.pro.g$a] */
    /* JADX WARN: Type inference failed for: r1v13, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.umeng.analytics.pro.g$a] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean m10502a(java.lang.String r6, org.json.JSONObject r7, com.umeng.analytics.pro.C2432g.a r8) {
        /*
            r5 = this;
            r0 = 0
            if (r7 != 0) goto L4
            return r0
        L4:
            r1 = 0
            android.content.Context r2 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> L91 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> La3
            com.umeng.analytics.pro.e r2 = com.umeng.analytics.pro.C2430e.m10475a(r2)     // Catch: java.lang.Throwable -> L91 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> La3
            android.database.sqlite.SQLiteDatabase r2 = r2.m10476a()     // Catch: java.lang.Throwable -> L91 java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> La3
            r2.beginTransaction()     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            com.umeng.analytics.pro.g$a r3 = com.umeng.analytics.pro.C2432g.a.BEGIN     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            if (r8 != r3) goto L3b
            java.lang.String r8 = "__e"
            java.lang.Object r7 = r7.get(r8)     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            java.lang.Long r7 = (java.lang.Long) r7     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            long r7 = r7.longValue()     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            android.content.ContentValues r3 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            r3.<init>()     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            java.lang.String r4 = "__ii"
            r3.put(r4, r6)     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            java.lang.String r6 = "__e"
            java.lang.String r7 = java.lang.String.valueOf(r7)     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            r3.put(r6, r7)     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            java.lang.String r6 = "__sd"
            r2.insert(r6, r1, r3)     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            goto L82
        L3b:
            com.umeng.analytics.pro.g$a r1 = com.umeng.analytics.pro.C2432g.a.END     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            if (r8 != r1) goto L6a
            java.lang.String r8 = "__f"
            java.lang.Object r7 = r7.get(r8)     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            java.lang.Long r7 = (java.lang.Long) r7     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            long r7 = r7.longValue()     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            java.lang.String r3 = "update __sd set __f=\""
            r1.<init>(r3)     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            r1.append(r7)     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            java.lang.String r7 = "\" where __ii=\""
            r1.append(r7)     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            r1.append(r6)     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            java.lang.String r6 = "\""
            r1.append(r6)     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            java.lang.String r6 = r1.toString()     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            r2.execSQL(r6)     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            goto L82
        L6a:
            com.umeng.analytics.pro.g$a r1 = com.umeng.analytics.pro.C2432g.a.PAGE     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            if (r8 != r1) goto L74
            java.lang.String r8 = "__a"
        L70:
            r5.m10488a(r6, r7, r2, r8)     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            goto L82
        L74:
            com.umeng.analytics.pro.g$a r1 = com.umeng.analytics.pro.C2432g.a.AUTOPAGE     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            if (r8 != r1) goto L7b
            java.lang.String r8 = "__b"
            goto L70
        L7b:
            com.umeng.analytics.pro.g$a r1 = com.umeng.analytics.pro.C2432g.a.NEWSESSION     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            if (r8 != r1) goto L82
            r5.m10487a(r6, r7, r2)     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
        L82:
            r2.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L8b java.lang.Throwable -> L8d android.database.sqlite.SQLiteDatabaseCorruptException -> L8f
            if (r2 == 0) goto L99
            r2.endTransaction()     // Catch: java.lang.Throwable -> L99
            goto L99
        L8b:
            r6 = move-exception
            goto Lac
        L8d:
            r1 = r2
            goto L94
        L8f:
            r1 = r2
            goto La3
        L91:
            r6 = move-exception
            r2 = r1
            goto Lac
        L94:
            if (r1 == 0) goto L99
        L96:
            r1.endTransaction()     // Catch: java.lang.Throwable -> L99
        L99:
            android.content.Context r6 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r6 = com.umeng.analytics.pro.C2430e.m10475a(r6)
            r6.m10477b()
            return r0
        La3:
            android.content.Context r6 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> L91
            com.umeng.analytics.pro.C2431f.m10481a(r6)     // Catch: java.lang.Throwable -> L91
            if (r1 == 0) goto L99
            goto L96
            return r0
        Lac:
            if (r2 == 0) goto Lb1
            r2.endTransaction()     // Catch: java.lang.Throwable -> Lb1
        Lb1:
            android.content.Context r7 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r7 = com.umeng.analytics.pro.C2430e.m10475a(r7)
            r7.m10477b()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.C2432g.m10502a(java.lang.String, org.json.JSONObject, com.umeng.analytics.pro.g$a):boolean");
    }

    /* renamed from: b */
    public String m10503b(String str) {
        try {
            return TextUtils.isEmpty(f9070d) ? str : new String(DataHelper.decrypt(Base64.decode(str.getBytes(), 0), f9070d.getBytes()));
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Infinite loop detected, blocks: 1, insns: 0 */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x001e, code lost:
    
        r1.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005d, code lost:
    
        if (r1 != null) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0076, code lost:
    
        if (r0 == 0) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006d, code lost:
    
        r0.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x006b, code lost:
    
        if (r0 == 0) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
    
        if (r1 != null) goto L7;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.lang.CharSequence, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.StringBuilder] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void m10504b() {
        /*
            r7 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> L66 java.lang.Throwable -> L6b android.database.sqlite.SQLiteDatabaseCorruptException -> L71
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.C2430e.m10475a(r1)     // Catch: java.lang.Throwable -> L66 java.lang.Throwable -> L6b android.database.sqlite.SQLiteDatabaseCorruptException -> L71
            android.database.sqlite.SQLiteDatabase r1 = r1.m10476a()     // Catch: java.lang.Throwable -> L66 java.lang.Throwable -> L6b android.database.sqlite.SQLiteDatabaseCorruptException -> L71
            r1.beginTransaction()     // Catch: java.lang.Throwable -> L60 java.lang.Throwable -> L62 android.database.sqlite.SQLiteDatabaseCorruptException -> L64
            com.umeng.analytics.pro.o r0 = com.umeng.analytics.pro.C2440o.m10600a()     // Catch: java.lang.Throwable -> L60 java.lang.Throwable -> L62 android.database.sqlite.SQLiteDatabaseCorruptException -> L64
            java.lang.String r0 = r0.m10614d()     // Catch: java.lang.Throwable -> L60 java.lang.Throwable -> L62 android.database.sqlite.SQLiteDatabaseCorruptException -> L64
            boolean r2 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L60 java.lang.Throwable -> L62 android.database.sqlite.SQLiteDatabaseCorruptException -> L64
            if (r2 == 0) goto L2b
            if (r1 == 0) goto L21
        L1e:
            r1.endTransaction()     // Catch: java.lang.Throwable -> L21
        L21:
            android.content.Context r0 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.C2430e.m10475a(r0)
            r0.m10477b()
            return
        L2b:
            java.lang.String r2 = ""
            java.lang.String r3 = "-1"
            java.lang.String[] r2 = new java.lang.String[]{r2, r3}     // Catch: java.lang.Throwable -> L60 java.lang.Throwable -> L62 android.database.sqlite.SQLiteDatabaseCorruptException -> L64
            r3 = 0
        L34:
            r4 = 2
            if (r3 >= r4) goto L5a
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L60 java.lang.Throwable -> L62 android.database.sqlite.SQLiteDatabaseCorruptException -> L64
            java.lang.String r5 = "update __et set __i=\""
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L60 java.lang.Throwable -> L62 android.database.sqlite.SQLiteDatabaseCorruptException -> L64
            r4.append(r0)     // Catch: java.lang.Throwable -> L60 java.lang.Throwable -> L62 android.database.sqlite.SQLiteDatabaseCorruptException -> L64
            java.lang.String r5 = "\" where __i=\""
            r4.append(r5)     // Catch: java.lang.Throwable -> L60 java.lang.Throwable -> L62 android.database.sqlite.SQLiteDatabaseCorruptException -> L64
            r5 = r2[r3]     // Catch: java.lang.Throwable -> L60 java.lang.Throwable -> L62 android.database.sqlite.SQLiteDatabaseCorruptException -> L64
            r4.append(r5)     // Catch: java.lang.Throwable -> L60 java.lang.Throwable -> L62 android.database.sqlite.SQLiteDatabaseCorruptException -> L64
            java.lang.String r5 = "\""
            r4.append(r5)     // Catch: java.lang.Throwable -> L60 java.lang.Throwable -> L62 android.database.sqlite.SQLiteDatabaseCorruptException -> L64
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L60 java.lang.Throwable -> L62 android.database.sqlite.SQLiteDatabaseCorruptException -> L64
            r1.execSQL(r4)     // Catch: java.lang.Throwable -> L60 java.lang.Throwable -> L62 android.database.sqlite.SQLiteDatabaseCorruptException -> L64
            int r3 = r3 + 1
            goto L34
        L5a:
            r1.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L60 java.lang.Throwable -> L62 android.database.sqlite.SQLiteDatabaseCorruptException -> L64
            if (r1 == 0) goto L21
            goto L1e
        L60:
            r0 = move-exception
            goto L79
        L62:
            r0 = r1
            goto L6b
        L64:
            r0 = r1
            goto L71
        L66:
            r1 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
            goto L79
        L6b:
            if (r0 == 0) goto L21
        L6d:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L21
            goto L21
        L71:
            android.content.Context r1 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> L66
            com.umeng.analytics.pro.C2431f.m10481a(r1)     // Catch: java.lang.Throwable -> L66
            if (r0 == 0) goto L21
            goto L6d
        L79:
            if (r1 == 0) goto L7e
            r1.endTransaction()     // Catch: java.lang.Throwable -> L7e
        L7e:
            android.content.Context r1 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.C2430e.m10475a(r1)
            r1.m10477b()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.C2432g.m10504b():void");
    }

    /* JADX INFO: Infinite loop detected, blocks: 1, insns: 0 */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0062, code lost:
    
        if (r0 == null) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0059, code lost:
    
        r0.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0057, code lost:
    
        if (r0 == null) goto L25;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void m10505b(int r4) {
        /*
            r3 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> L54 java.lang.Throwable -> L57 android.database.sqlite.SQLiteDatabaseCorruptException -> L5d
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.C2430e.m10475a(r1)     // Catch: java.lang.Throwable -> L54 java.lang.Throwable -> L57 android.database.sqlite.SQLiteDatabaseCorruptException -> L5d
            android.database.sqlite.SQLiteDatabase r1 = r1.m10476a()     // Catch: java.lang.Throwable -> L54 java.lang.Throwable -> L57 android.database.sqlite.SQLiteDatabaseCorruptException -> L5d
            r1.beginTransaction()     // Catch: java.lang.Throwable -> L4e java.lang.Throwable -> L50 android.database.sqlite.SQLiteDatabaseCorruptException -> L52
            java.lang.String r0 = "delete from __dp"
            r2 = -1
            if (r4 != r2) goto L17
            r1.execSQL(r0)     // Catch: java.lang.Throwable -> L4e java.lang.Throwable -> L50 android.database.sqlite.SQLiteDatabaseCorruptException -> L52
            goto L3c
        L17:
            r0 = 1
            if (r4 != r0) goto L20
            java.lang.String r4 = "delete from __dp where __ty=1"
        L1c:
            r1.execSQL(r4)     // Catch: java.lang.Throwable -> L4e java.lang.Throwable -> L50 android.database.sqlite.SQLiteDatabaseCorruptException -> L52
            goto L3c
        L20:
            r0 = 4
            if (r4 != r0) goto L2b
            java.lang.String r4 = "delete from __dp where __ty=3"
            r1.execSQL(r4)     // Catch: java.lang.Throwable -> L4e java.lang.Throwable -> L50 android.database.sqlite.SQLiteDatabaseCorruptException -> L52
            java.lang.String r4 = "delete from __dp where __ty=2"
            goto L1c
        L2b:
            r0 = 3
            if (r4 != r0) goto L31
            java.lang.String r4 = "delete from __dp where __ty=3"
            goto L1c
        L31:
            if (r4 != 0) goto L36
            java.lang.String r4 = "delete from __dp where __ty=0"
            goto L1c
        L36:
            r0 = 2
            if (r4 != r0) goto L3c
            java.lang.String r4 = "delete from __dp where __ty=2"
            goto L1c
        L3c:
            r1.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L4e java.lang.Throwable -> L50 android.database.sqlite.SQLiteDatabaseCorruptException -> L52
            if (r1 == 0) goto L44
            r1.endTransaction()     // Catch: java.lang.Throwable -> L44
        L44:
            android.content.Context r4 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r4 = com.umeng.analytics.pro.C2430e.m10475a(r4)
            r4.m10477b()
            return
        L4e:
            r4 = move-exception
            goto L65
        L50:
            r0 = r1
            goto L57
        L52:
            r0 = r1
            goto L5d
        L54:
            r4 = move-exception
            r1 = r0
            goto L65
        L57:
            if (r0 == 0) goto L44
        L59:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L44
            goto L44
        L5d:
            android.content.Context r4 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> L54
            com.umeng.analytics.pro.C2431f.m10481a(r4)     // Catch: java.lang.Throwable -> L54
            if (r0 == 0) goto L44
            goto L59
        L65:
            if (r1 == 0) goto L6a
            r1.endTransaction()     // Catch: java.lang.Throwable -> L6a
        L6a:
            android.content.Context r0 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.C2430e.m10475a(r0)
            r0.m10477b()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.C2432g.m10505b(int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x009c, code lost:
    
        if (r2 != null) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x00af, code lost:
    
        r2.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00b2, code lost:
    
        com.umeng.analytics.pro.C2430e.m10475a(com.umeng.analytics.pro.C2432g.f9069c).m10477b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00bb, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c7, code lost:
    
        if (r2 != null) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00ad, code lost:
    
        if (r2 != null) goto L70;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.lang.Object, org.json.JSONArray] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v4, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v5, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Object, org.json.JSONArray] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.Object, org.json.JSONArray] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public org.json.JSONObject m10506c() {
        /*
            r9 = this;
            org.json.JSONObject r0 = new org.json.JSONObject
            r0.<init>()
            r1 = 0
            android.content.Context r2 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> La3 java.lang.Throwable -> La7 android.database.sqlite.SQLiteDatabaseCorruptException -> Lbc
            com.umeng.analytics.pro.e r2 = com.umeng.analytics.pro.C2430e.m10475a(r2)     // Catch: java.lang.Throwable -> La3 java.lang.Throwable -> La7 android.database.sqlite.SQLiteDatabaseCorruptException -> Lbc
            android.database.sqlite.SQLiteDatabase r2 = r2.m10476a()     // Catch: java.lang.Throwable -> La3 java.lang.Throwable -> La7 android.database.sqlite.SQLiteDatabaseCorruptException -> Lbc
            r2.beginTransaction()     // Catch: java.lang.Throwable -> La8 android.database.sqlite.SQLiteDatabaseCorruptException -> Lbd java.lang.Throwable -> Lcb
            java.lang.String r3 = "select *  from __dp"
            android.database.Cursor r3 = r2.rawQuery(r3, r1)     // Catch: java.lang.Throwable -> La8 android.database.sqlite.SQLiteDatabaseCorruptException -> Lbd java.lang.Throwable -> Lcb
            if (r3 == 0) goto L94
            org.json.JSONArray r1 = new org.json.JSONArray     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L9f android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            r1.<init>()     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L9f android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            org.json.JSONArray r4 = new org.json.JSONArray     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L9f android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            r4.<init>()     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L9f android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            org.json.JSONArray r5 = new org.json.JSONArray     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L9f android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            r5.<init>()     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L9f android.database.sqlite.SQLiteDatabaseCorruptException -> La1
        L2a:
            boolean r6 = r3.moveToNext()     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L9f android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            if (r6 == 0) goto L94
            java.lang.String r6 = "__io"
            int r6 = r3.getColumnIndex(r6)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L9f android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            java.lang.String r6 = r3.getString(r6)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L9f android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            java.lang.String r7 = "__ty"
            int r7 = r3.getColumnIndex(r7)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L9f android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            int r7 = r3.getInt(r7)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L9f android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            boolean r8 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L9f android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            if (r8 != 0) goto L70
            org.json.JSONObject r8 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L9f android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            java.lang.String r6 = r9.m10503b(r6)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L9f android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            r8.<init>(r6)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L9f android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            int r6 = r8.length()     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L9f android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            if (r6 <= 0) goto L70
            r6 = 2
            if (r7 != r6) goto L60
        L5c:
            r4.put(r8)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L9f android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            goto L70
        L60:
            r6 = 3
            if (r7 != r6) goto L64
            goto L5c
        L64:
            if (r7 != 0) goto L6a
            r1.put(r8)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L9f android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            goto L70
        L6a:
            r6 = 1
            if (r7 != r6) goto L70
            r5.put(r8)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L9f android.database.sqlite.SQLiteDatabaseCorruptException -> La1
        L70:
            int r6 = r1.length()     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L9f android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            if (r6 <= 0) goto L7b
            java.lang.String r6 = "events"
            r0.put(r6, r1)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L9f android.database.sqlite.SQLiteDatabaseCorruptException -> La1
        L7b:
            int r6 = r4.length()     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L9f android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            if (r6 <= 0) goto L86
            java.lang.String r6 = "session"
            r0.put(r6, r4)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L9f android.database.sqlite.SQLiteDatabaseCorruptException -> La1
        L86:
            int r6 = r5.length()     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L9f android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            if (r6 <= 0) goto L2a
            java.lang.String r6 = "pageview"
            r0.put(r6, r5)     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L9f android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            goto L2a
        L92:
            r0 = move-exception
            goto Lcd
        L94:
            r2.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L92 java.lang.Throwable -> L9f android.database.sqlite.SQLiteDatabaseCorruptException -> La1
            if (r3 == 0) goto L9c
            r3.close()
        L9c:
            if (r2 == 0) goto Lb2
            goto Laf
        L9f:
            r1 = r3
            goto La8
        La1:
            r1 = r3
            goto Lbd
        La3:
            r0 = move-exception
            r2 = r1
            r3 = r2
            goto Lcd
        La7:
            r2 = r1
        La8:
            if (r1 == 0) goto Lad
            r1.close()
        Lad:
            if (r2 == 0) goto Lb2
        Laf:
            r2.endTransaction()     // Catch: java.lang.Throwable -> Lb2
        Lb2:
            android.content.Context r1 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.C2430e.m10475a(r1)
            r1.m10477b()
            return r0
        Lbc:
            r2 = r1
        Lbd:
            android.content.Context r3 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> Lcb
            com.umeng.analytics.pro.C2431f.m10481a(r3)     // Catch: java.lang.Throwable -> Lcb
            if (r1 == 0) goto Lc7
            r1.close()
        Lc7:
            if (r2 == 0) goto Lb2
            goto Laf
            return r0
        Lcb:
            r0 = move-exception
            r3 = r1
        Lcd:
            if (r3 == 0) goto Ld2
            r3.close()
        Ld2:
            if (r2 == 0) goto Ld7
            r2.endTransaction()     // Catch: java.lang.Throwable -> Ld7
        Ld7:
            android.content.Context r1 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.C2430e.m10475a(r1)
            r1.m10477b()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.C2432g.m10506c():org.json.JSONObject");
    }

    /* JADX INFO: Infinite loop detected, blocks: 1, insns: 0 */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0066, code lost:
    
        if (r0 == null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x005d, code lost:
    
        r0.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x005b, code lost:
    
        if (r0 == null) goto L13;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [java.util.List, java.util.List<java.lang.Integer>] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void m10507d() {
        /*
            r5 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> L56 java.lang.Throwable -> L5b android.database.sqlite.SQLiteDatabaseCorruptException -> L61
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.C2430e.m10475a(r1)     // Catch: java.lang.Throwable -> L56 java.lang.Throwable -> L5b android.database.sqlite.SQLiteDatabaseCorruptException -> L61
            android.database.sqlite.SQLiteDatabase r1 = r1.m10476a()     // Catch: java.lang.Throwable -> L56 java.lang.Throwable -> L5b android.database.sqlite.SQLiteDatabaseCorruptException -> L61
            r1.beginTransaction()     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.util.List<java.lang.Integer> r0 = r5.f9075i     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            if (r0 <= 0) goto L39
            r0 = 0
        L17:
            java.util.List<java.lang.Integer> r2 = r5.f9075i     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            int r2 = r2.size()     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            if (r0 >= r2) goto L39
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r3 = "delete from __et where rowid="
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.util.List<java.lang.Integer> r3 = r5.f9075i     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.Object r3 = r3.get(r0)     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r2.append(r3)     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r1.execSQL(r2)     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            int r0 = r0 + 1
            goto L17
        L39:
            java.util.List<java.lang.Integer> r0 = r5.f9075i     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r0.clear()     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r1.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            if (r1 == 0) goto L46
            r1.endTransaction()     // Catch: java.lang.Throwable -> L46
        L46:
            android.content.Context r0 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.C2430e.m10475a(r0)
            r0.m10477b()
            return
        L50:
            r0 = move-exception
            goto L69
        L52:
            r0 = r1
            goto L5b
        L54:
            r0 = r1
            goto L61
        L56:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L69
        L5b:
            if (r0 == 0) goto L46
        L5d:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L46
            goto L46
        L61:
            android.content.Context r1 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> L56
            com.umeng.analytics.pro.C2431f.m10481a(r1)     // Catch: java.lang.Throwable -> L56
            if (r0 == 0) goto L46
            goto L5d
        L69:
            if (r1 == 0) goto L6e
            r1.endTransaction()     // Catch: java.lang.Throwable -> L6e
        L6e:
            android.content.Context r1 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.C2430e.m10475a(r1)
            r1.m10477b()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.C2432g.m10507d():void");
    }

    /* JADX INFO: Infinite loop detected, blocks: 1, insns: 0 */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003b, code lost:
    
        if (r0 == 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0032, code lost:
    
        r0.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0030, code lost:
    
        if (r0 == 0) goto L7;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void m10508e() {
        /*
            r3 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> L2e java.lang.Throwable -> L30 android.database.sqlite.SQLiteDatabaseCorruptException -> L36
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.C2430e.m10475a(r1)     // Catch: java.lang.Throwable -> L2e java.lang.Throwable -> L30 android.database.sqlite.SQLiteDatabaseCorruptException -> L36
            android.database.sqlite.SQLiteDatabase r1 = r1.m10476a()     // Catch: java.lang.Throwable -> L2e java.lang.Throwable -> L30 android.database.sqlite.SQLiteDatabaseCorruptException -> L36
            r1.beginTransaction()     // Catch: java.lang.Throwable -> L25 java.lang.Throwable -> L2a android.database.sqlite.SQLiteDatabaseCorruptException -> L2c
            java.lang.String r0 = "delete from __er"
            r1.execSQL(r0)     // Catch: java.lang.Throwable -> L25 java.lang.Throwable -> L2a android.database.sqlite.SQLiteDatabaseCorruptException -> L2c
            r1.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L25 java.lang.Throwable -> L2a android.database.sqlite.SQLiteDatabaseCorruptException -> L2c
            if (r1 == 0) goto L1b
            r1.endTransaction()     // Catch: java.lang.Throwable -> L1b
        L1b:
            android.content.Context r0 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.C2430e.m10475a(r0)
            r0.m10477b()
            return
        L25:
            r0 = move-exception
            r2 = r1
            r1 = r0
            r0 = r2
            goto L3e
        L2a:
            r0 = r1
            goto L30
        L2c:
            r0 = r1
            goto L36
        L2e:
            r1 = move-exception
            goto L3e
        L30:
            if (r0 == 0) goto L1b
        L32:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L1b
            goto L1b
        L36:
            android.content.Context r1 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> L2e
            com.umeng.analytics.pro.C2431f.m10481a(r1)     // Catch: java.lang.Throwable -> L2e
            if (r0 == 0) goto L1b
            goto L32
        L3e:
            if (r0 == 0) goto L43
            r0.endTransaction()     // Catch: java.lang.Throwable -> L43
        L43:
            android.content.Context r0 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.C2430e.m10475a(r0)
            r0.m10477b()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.C2432g.m10508e():void");
    }

    /* renamed from: f */
    public void m10509f() {
        m10505b(-1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0049, code lost:
    
        if (r0 != null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0054, code lost:
    
        r0.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0067, code lost:
    
        if (r0 == null) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0052, code lost:
    
        if (r0 == null) goto L13;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void m10510g() {
        /*
            r5 = this;
            java.lang.String r0 = r5.f9076j
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 0
            if (r0 != 0) goto L7a
            android.content.Context r0 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> L4c java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L61
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.C2430e.m10475a(r0)     // Catch: java.lang.Throwable -> L4c java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L61
            android.database.sqlite.SQLiteDatabase r0 = r0.m10476a()     // Catch: java.lang.Throwable -> L4c java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L61
            r0.beginTransaction()     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L62 java.lang.Throwable -> L6a
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L62 java.lang.Throwable -> L6a
            java.lang.String r3 = "delete from __er where __i=\""
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L62 java.lang.Throwable -> L6a
            java.lang.String r3 = r5.f9076j     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L62 java.lang.Throwable -> L6a
            r2.append(r3)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L62 java.lang.Throwable -> L6a
            java.lang.String r3 = "\""
            r2.append(r3)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L62 java.lang.Throwable -> L6a
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L62 java.lang.Throwable -> L6a
            r0.execSQL(r2)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L62 java.lang.Throwable -> L6a
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L62 java.lang.Throwable -> L6a
            java.lang.String r3 = "delete from __et where __i=\""
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L62 java.lang.Throwable -> L6a
            java.lang.String r3 = r5.f9076j     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L62 java.lang.Throwable -> L6a
            r2.append(r3)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L62 java.lang.Throwable -> L6a
            java.lang.String r3 = "\""
            r2.append(r3)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L62 java.lang.Throwable -> L6a
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L62 java.lang.Throwable -> L6a
            r0.execSQL(r2)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L62 java.lang.Throwable -> L6a
            r0.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L62 java.lang.Throwable -> L6a
            if (r0 == 0) goto L57
            goto L54
        L4c:
            r0 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L6b
        L51:
            r0 = r1
        L52:
            if (r0 == 0) goto L57
        L54:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L57
        L57:
            android.content.Context r0 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.C2430e.m10475a(r0)
            r0.m10477b()
            goto L7a
        L61:
            r0 = r1
        L62:
            android.content.Context r2 = com.umeng.analytics.pro.C2432g.f9069c     // Catch: java.lang.Throwable -> L6a
            com.umeng.analytics.pro.C2431f.m10481a(r2)     // Catch: java.lang.Throwable -> L6a
            if (r0 == 0) goto L57
            goto L54
        L6a:
            r1 = move-exception
        L6b:
            if (r0 == 0) goto L70
            r0.endTransaction()     // Catch: java.lang.Throwable -> L70
        L70:
            android.content.Context r0 = com.umeng.analytics.pro.C2432g.f9069c
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.C2430e.m10475a(r0)
            r0.m10477b()
            throw r1
        L7a:
            r5.f9076j = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.C2432g.m10510g():void");
    }
}
