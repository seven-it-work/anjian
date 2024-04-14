package com.p058c.p061c;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.support.v4.app.NotificationCompat;
import android.text.Editable;
import android.text.Html;
import com.p058c.C1088a;
import com.p058c.p060b.C1096b;
import com.p058c.p060b.C1097c;
import com.p058c.p062d.C1105a;
import java.util.Locale;
import net.grandcentrix.tray.provider.ContentProviderStorage;
import org.apache.commons.mail.EmailConstants;
import org.json.JSONObject;
import org.xml.sax.XMLReader;

/* renamed from: com.c.c.a */
/* loaded from: classes.dex */
public final class C1104a {

    /* renamed from: k */
    public static final int f3667k = 0;

    /* renamed from: l */
    public static final int f3668l = 1;

    /* renamed from: m */
    public static final int f3669m = 2;

    /* renamed from: q */
    private static ApplicationInfo f3670q = null;

    /* renamed from: r */
    private static PackageInfo f3671r = null;

    /* renamed from: s */
    private static final String f3672s = "aqs.skip";

    /* renamed from: t */
    private static final String f3673t = "•";

    /* renamed from: a */
    Activity f3674a;

    /* renamed from: b */
    C1088a f3675b;

    /* renamed from: f */
    boolean f3679f;

    /* renamed from: g */
    int f3680g;

    /* renamed from: h */
    String f3681h;

    /* renamed from: i */
    boolean f3682i;

    /* renamed from: j */
    boolean f3683j;

    /* renamed from: o */
    private long f3685o = 720000;

    /* renamed from: p */
    private int f3686p = 0;

    /* renamed from: c */
    a f3676c = new a(this, 0);

    /* renamed from: n */
    private String f3684n = Locale.getDefault().toString();

    /* renamed from: d */
    String f3677d = "market://details?id=" + m4014a().packageName;

    /* renamed from: e */
    String f3678e = this.f3677d;

    /* renamed from: com.c.c.a$a */
    /* loaded from: classes.dex */
    private class a implements DialogInterface.OnClickListener, Html.TagHandler {
        private a() {
        }

        /* synthetic */ a(C1104a c1104a, byte b2) {
            this();
        }

        /* renamed from: a */
        private void m4018a(String str) {
            if (str == null || str.length() <= 1000) {
                return;
            }
            String m4017c = C1104a.this.m4017c();
            C1096b c1096b = new C1096b();
            c1096b.f3566c = m4017c;
            C1096b c1096b2 = c1096b;
            c1096b2.f3565b = JSONObject.class;
            c1096b2.m3852b(this, "marketCb");
            c1096b.m3841a(EmailConstants.TEXT_SUBTYPE_HTML, (Object) str);
            C1104a.this.f3675b.m3740a(C1104a.this.f3680g).m3743a(c1096b);
        }

        /* renamed from: a */
        private void m4019a(JSONObject jSONObject) {
            if (C1104a.this.f3683j) {
                return;
            }
            C1104a.this.f3683j = true;
            C1104a.this.f3680g = 0;
            C1104a c1104a = C1104a.this;
            if (jSONObject != null) {
                String optString = jSONObject.optString(ContentProviderStorage.VERSION, "0");
                int optInt = jSONObject.optInt("code", 0);
                C1105a.m4061b((Object) ContentProviderStorage.VERSION, (Object) (String.valueOf(c1104a.m4016b().versionName) + "->" + optString + ":" + c1104a.m4016b().versionCode + "->" + optInt));
                C1105a.m4061b("outdated", Boolean.valueOf(c1104a.m4015a(optString, optInt)));
                if ((c1104a.f3679f || c1104a.m4015a(optString, optInt)) && jSONObject != null && c1104a.f3681h == null && (true ^ c1104a.f3674a.isFinishing())) {
                    JSONObject optJSONObject = jSONObject.optJSONObject("dialog");
                    String optString2 = optJSONObject.optString("update", "Update");
                    String optString3 = optJSONObject.optString("skip", "Skip");
                    String optString4 = optJSONObject.optString("rate", "Rate");
                    String optString5 = optJSONObject.optString("wbody", "");
                    String optString6 = optJSONObject.optString("title", "Update Available");
                    C1105a.m4061b((Object) "wbody", (Object) optString5);
                    c1104a.f3681h = jSONObject.optString(ContentProviderStorage.VERSION, null);
                    AlertDialog create = new AlertDialog.Builder(c1104a.f3674a).setIcon(c1104a.m4014a().loadIcon(c1104a.f3674a.getPackageManager())).setTitle(optString6).setPositiveButton(optString4, c1104a.f3676c).setNeutralButton(optString3, c1104a.f3676c).setNegativeButton(optString2, c1104a.f3676c).create();
                    create.setMessage(Html.fromHtml("<small>" + optString5 + "</small>", null, c1104a.f3676c));
                    c1104a.f3675b.m3741a((Dialog) create);
                }
            }
        }

        /* renamed from: a */
        private void m4020a(JSONObject jSONObject, C1097c c1097c) {
            if (C1104a.this.f3674a.isFinishing()) {
                return;
            }
            if (jSONObject == null) {
                m4019a(jSONObject);
                return;
            }
            String optString = jSONObject.optString(NotificationCompat.CATEGORY_STATUS);
            if (!"1".equals(optString)) {
                if ("0".equals(optString)) {
                    c1097c.f3607u = true;
                    return;
                } else {
                    m4019a(jSONObject);
                    return;
                }
            }
            if (jSONObject.has("dialog")) {
                m4019a(jSONObject);
            }
            if (!C1104a.this.f3682i && jSONObject.optBoolean("fetch", false) && c1097c.f3604r == 1) {
                C1104a.this.f3682i = true;
                String optString2 = jSONObject.optString("marketUrl", null);
                C1096b c1096b = new C1096b();
                c1096b.f3566c = optString2;
                C1096b c1096b2 = c1096b;
                c1096b2.f3565b = String.class;
                c1096b2.m3852b(this, "detailCb");
                C1104a.this.f3675b.m3740a(C1104a.this.f3680g).m3743a(c1096b);
            }
        }

        @Override // android.text.Html.TagHandler
        public final void handleTag(boolean z, String str, Editable editable, XMLReader xMLReader) {
            if ("li".equals(str)) {
                if (!z) {
                    editable.append("\n");
                    return;
                }
                editable.append("  ");
                editable.append(C1104a.f3673t);
                editable.append("  ");
            }
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            Activity activity;
            String str;
            switch (i) {
                case -3:
                    Activity activity2 = C1104a.this.f3674a;
                    PreferenceManager.getDefaultSharedPreferences(activity2).edit().putString(C1104a.f3672s, C1104a.this.f3681h).commit();
                    return;
                case -2:
                    activity = C1104a.this.f3674a;
                    str = C1104a.this.f3678e;
                    break;
                case -1:
                    activity = C1104a.this.f3674a;
                    str = C1104a.this.f3677d;
                    break;
                default:
                    return;
            }
            C1104a.m3986a(activity, str);
        }
    }

    private C1104a(Activity activity) {
        this.f3674a = activity;
        this.f3675b = new C1088a(activity);
    }

    /* renamed from: a */
    private C1104a m3979a(int i) {
        this.f3686p = i;
        return this;
    }

    /* renamed from: a */
    private C1104a m3980a(long j) {
        this.f3685o = j;
        return this;
    }

    /* renamed from: a */
    private C1104a m3981a(String str) {
        this.f3677d = str;
        return this;
    }

    /* renamed from: a */
    private C1104a m3982a(boolean z) {
        this.f3679f = z;
        return this;
    }

    /* renamed from: a */
    private static String m3983a(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString(f3672s, null);
    }

    /* renamed from: a */
    private static void m3984a(Context context, String str) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putString(f3672s, str).commit();
    }

    /* renamed from: a */
    private void m3985a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        String optString = jSONObject.optString(ContentProviderStorage.VERSION, "0");
        int optInt = jSONObject.optInt("code", 0);
        C1105a.m4061b((Object) ContentProviderStorage.VERSION, (Object) (String.valueOf(m4016b().versionName) + "->" + optString + ":" + m4016b().versionCode + "->" + optInt));
        C1105a.m4061b("outdated", Boolean.valueOf(m4015a(optString, optInt)));
        if ((this.f3679f || m4015a(optString, optInt)) && jSONObject != null && this.f3681h == null && (!this.f3674a.isFinishing()) == true) {
            JSONObject optJSONObject = jSONObject.optJSONObject("dialog");
            String optString2 = optJSONObject.optString("update", "Update");
            String optString3 = optJSONObject.optString("skip", "Skip");
            String optString4 = optJSONObject.optString("rate", "Rate");
            String optString5 = optJSONObject.optString("wbody", "");
            String optString6 = optJSONObject.optString("title", "Update Available");
            C1105a.m4061b((Object) "wbody", (Object) optString5);
            this.f3681h = jSONObject.optString(ContentProviderStorage.VERSION, null);
            AlertDialog create = new AlertDialog.Builder(this.f3674a).setIcon(m4014a().loadIcon(this.f3674a.getPackageManager())).setTitle(optString6).setPositiveButton(optString4, this.f3676c).setNeutralButton(optString3, this.f3676c).setNegativeButton(optString2, this.f3676c).create();
            create.setMessage(Html.fromHtml("<small>" + optString5 + "</small>", null, this.f3676c));
            this.f3675b.m3741a((Dialog) create);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m3986a(Activity activity, String str) {
        if (str == null) {
            return false;
        }
        try {
            activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x001d. Please report as an issue. */
    /* renamed from: a */
    private static boolean m3987a(String str, String str2, int i) {
        if (str.equals(str2)) {
            return false;
        }
        try {
            String[] split = str.split("\\.");
            String[] split2 = str2.split("\\.");
            if (split.length < 3 || split2.length < 3) {
                return true;
            }
            switch (i) {
                case 0:
                    if (!split[split.length - 1].equals(split2[split2.length - 1])) {
                        return true;
                    }
                case 1:
                    if (!split[split.length - 2].equals(split2[split2.length - 2])) {
                        return true;
                    }
                case 2:
                    return !split[split.length - 3].equals(split2[split2.length - 3]);
                default:
                    return true;
            }
        } catch (Exception e) {
            C1105a.m4065b(e);
            return true;
        }
    }

    /* renamed from: b */
    private C1104a m3988b(int i) {
        this.f3680g = i;
        return this;
    }

    /* renamed from: b */
    private C1104a m3989b(String str) {
        this.f3678e = str;
        return this;
    }

    /* renamed from: b */
    private void m3991b(JSONObject jSONObject) {
        if (jSONObject != null && this.f3681h == null && (!this.f3674a.isFinishing()) == true) {
            JSONObject optJSONObject = jSONObject.optJSONObject("dialog");
            String optString = optJSONObject.optString("update", "Update");
            String optString2 = optJSONObject.optString("skip", "Skip");
            String optString3 = optJSONObject.optString("rate", "Rate");
            String optString4 = optJSONObject.optString("wbody", "");
            String optString5 = optJSONObject.optString("title", "Update Available");
            C1105a.m4061b((Object) "wbody", (Object) optString4);
            this.f3681h = jSONObject.optString(ContentProviderStorage.VERSION, null);
            AlertDialog create = new AlertDialog.Builder(this.f3674a).setIcon(m4014a().loadIcon(this.f3674a.getPackageManager())).setTitle(optString5).setPositiveButton(optString3, this.f3676c).setNeutralButton(optString2, this.f3676c).setNegativeButton(optString, this.f3676c).create();
            create.setMessage(Html.fromHtml("<small>" + optString4 + "</small>", null, this.f3676c));
            this.f3675b.m3741a((Dialog) create);
        }
    }

    /* renamed from: c */
    private C1104a m3994c(String str) {
        this.f3684n = str;
        return this;
    }

    /* renamed from: d */
    private static String m3997d() {
        return "https://androidquery.appspot.com";
    }

    /* renamed from: d */
    private static String m3998d(String str) {
        return "<small>" + str + "</small>";
    }

    /* renamed from: e */
    private String m4000e() {
        return m4014a().packageName;
    }

    /* renamed from: f */
    private Drawable m4001f() {
        return m4014a().loadIcon(this.f3674a.getPackageManager());
    }

    /* renamed from: g */
    private String m4003g() {
        return m4016b().versionName;
    }

    /* renamed from: h */
    private int m4005h() {
        return m4016b().versionCode;
    }

    /* renamed from: i */
    private void m4008i() {
        String m4017c = m4017c();
        C1096b c1096b = new C1096b();
        c1096b.f3566c = m4017c;
        C1096b c1096b2 = c1096b;
        c1096b2.f3565b = JSONObject.class;
        c1096b2.m3852b(this.f3676c, "marketCb").m3844a(!this.f3679f).f3579p = this.f3685o;
        this.f3675b.m3740a(this.f3680g).m3743a(c1096b);
    }

    /* renamed from: j */
    private String m4009j() {
        return "market://details?id=" + m4014a().packageName;
    }

    /* renamed from: k */
    private boolean m4012k() {
        return !this.f3674a.isFinishing();
    }

    /* renamed from: a */
    final ApplicationInfo m4014a() {
        if (f3670q == null) {
            f3670q = this.f3674a.getApplicationInfo();
        }
        return f3670q;
    }

    /* renamed from: a */
    final boolean m4015a(String str, int i) {
        if (str.equals(PreferenceManager.getDefaultSharedPreferences(this.f3674a).getString(f3672s, null))) {
            return false;
        }
        String str2 = m4016b().versionName;
        int i2 = m4016b().versionCode;
        if (str2.equals(str) || i2 > i) {
            return false;
        }
        return m3987a(str2, str, this.f3686p);
    }

    /* renamed from: b */
    final PackageInfo m4016b() {
        if (f3671r == null) {
            try {
                f3671r = this.f3674a.getPackageManager().getPackageInfo(m4014a().packageName, 0);
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
        }
        return f3671r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final String m4017c() {
        String str = String.valueOf("https://androidquery.appspot.com") + "/api/market?app=" + m4014a().packageName + "&locale=" + this.f3684n + "&version=" + m4016b().versionName + "&code=" + m4016b().versionCode + "&aq=0.26.7";
        if (!this.f3679f) {
            return str;
        }
        return String.valueOf(str) + "&force=true";
    }
}
