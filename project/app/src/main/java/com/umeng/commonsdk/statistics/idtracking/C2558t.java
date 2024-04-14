package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;

/* renamed from: com.umeng.commonsdk.statistics.idtracking.t */
/* loaded from: classes.dex */
public class C2558t extends AbstractC2539a {

    /* renamed from: a */
    private static final String f9853a = "uuid";

    /* renamed from: e */
    private static final String f9854e = "yosuid";

    /* renamed from: f */
    private static final String f9855f = "23346339";

    /* renamed from: b */
    private Context f9856b;

    /* renamed from: c */
    private String f9857c;

    /* renamed from: d */
    private String f9858d;

    public C2558t(Context context) {
        super("uuid");
        this.f9856b = null;
        this.f9857c = null;
        this.f9858d = null;
        this.f9856b = context;
        this.f9857c = null;
        this.f9858d = null;
    }

    /* renamed from: a */
    public static String m11421a(String str, String str2) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, str2);
        } catch (Exception e) {
            e.printStackTrace();
            return str2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0160 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x010c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0102 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x014f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0145 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x013b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:90:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0174 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x016a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.io.InputStream] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String m11422b(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 389
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.idtracking.C2558t.m11422b(java.lang.String):java.lang.String");
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2539a
    /* renamed from: f */
    public String mo11375f() {
        SharedPreferences sharedPreferences;
        SharedPreferences.Editor edit;
        try {
            if (TextUtils.isEmpty(m11421a("ro.yunos.version", "")) || this.f9856b == null || (sharedPreferences = PreferenceWrapper.getDefault(this.f9856b)) == null) {
                return null;
            }
            String string = sharedPreferences.getString(f9854e, "");
            if (!TextUtils.isEmpty(string)) {
                return string;
            }
            this.f9858d = m11422b(f9855f);
            if (!TextUtils.isEmpty(this.f9858d) && this.f9856b != null && sharedPreferences != null && (edit = sharedPreferences.edit()) != null) {
                edit.putString(f9854e, this.f9858d).commit();
            }
            return this.f9858d;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
