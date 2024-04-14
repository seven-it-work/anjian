package com.p058c.p059a;

import android.app.Activity;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.p058c.C1088a;
import com.p058c.DialogC1103c;
import com.p058c.p060b.AbstractRunnableC1095a;
import com.p058c.p060b.C1096b;
import com.p058c.p060b.C1097c;
import com.p058c.p062d.C1105a;
import com.umeng.analytics.pro.C2427b;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Arrays;
import java.util.HashSet;
import org.json.JSONObject;
import org.litepal.p246g.InterfaceC3057b;

/* renamed from: com.c.a.c */
/* loaded from: classes.dex */
public final class C1091c extends AbstractC1089a {

    /* renamed from: e */
    public static final String f3472e = "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2";

    /* renamed from: i */
    private static final String f3473i = "https://graph.facebook.com/oauth/authorize";

    /* renamed from: j */
    private static final String f3474j = "https://www.facebook.com/connect/login_success.html";

    /* renamed from: k */
    private static final String f3475k = "fbconnect:cancel";

    /* renamed from: n */
    private static final String f3476n = "aq.fb.token";

    /* renamed from: o */
    private static final String f3477o = "aq.fb.permission";

    /* renamed from: p */
    private static Boolean f3478p;

    /* renamed from: a */
    Activity f3479a;

    /* renamed from: b */
    String f3480b;

    /* renamed from: c */
    String f3481c;

    /* renamed from: d */
    boolean f3482d;

    /* renamed from: f */
    private String f3483f;

    /* renamed from: g */
    private DialogC1103c f3484g;

    /* renamed from: h */
    private String f3485h;

    /* renamed from: l */
    private boolean f3486l;

    /* renamed from: m */
    private int f3487m;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.c.a.c$a */
    /* loaded from: classes.dex */
    public class a extends WebViewClient implements DialogInterface.OnCancelListener {
        private a() {
        }

        /* synthetic */ a(C1091c c1091c, byte b2) {
            this();
        }

        /* renamed from: a */
        private boolean m3548a(String str) {
            if (!str.startsWith(C1091c.f3474j)) {
                if (!str.startsWith(C1091c.f3475k)) {
                    return false;
                }
                C1105a.m4041a((Object) "cancelled");
                C1091c.this.m3529e("cancel");
                return true;
            }
            String string = C1091c.m3524c(str).getString("error_reason");
            C1105a.m4061b((Object) C2427b.f8943J, (Object) string);
            if (string == null) {
                C1091c c1091c = C1091c.this;
                String queryParameter = Uri.parse(str.replace('#', '?')).getQueryParameter("access_token");
                C1105a.m4061b((Object) "token", (Object) queryParameter);
                c1091c.f3480b = queryParameter;
            }
            if (C1091c.this.f3480b == null) {
                C1091c.this.m3529e("cancel");
                return true;
            }
            C1091c.this.m3546d();
            C1091c.this.m3545a(C1091c.this.f3480b, C1091c.this.f3481c);
            C1091c.this.f3482d = false;
            C1091c.this.m3500a(C1091c.this.f3479a);
            return true;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public final void onCancel(DialogInterface dialogInterface) {
            C1091c.this.m3529e("cancel");
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            C1091c.this.m3547e();
            C1105a.m4061b((Object) "finished", (Object) str);
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            C1105a.m4061b((Object) "started", (Object) str);
            if (m3548a(str)) {
                return;
            }
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            C1091c.this.m3529e("cancel");
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            C1105a.m4041a((Object) ("return url: " + str));
            return m3548a(str);
        }
    }

    private C1091c(Activity activity, String str, String str2) {
        this(activity, str, str2, (byte) 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private C1091c(android.app.Activity r4, java.lang.String r5, java.lang.String r6, byte r7) {
        /*
            r3 = this;
            r3.<init>()
            r3.f3483f = r5
            r3.f3479a = r4
            r3.f3481c = r6
            r4 = 0
            r3.f3480b = r4
            java.lang.String r5 = r3.f3480b
            r7 = 0
            r0 = 1
            if (r5 != 0) goto L62
            android.app.Activity r5 = r3.f3479a
            android.content.SharedPreferences r5 = android.preference.PreferenceManager.getDefaultSharedPreferences(r5)
            java.lang.String r1 = "aq.fb.permission"
            java.lang.String r5 = r5.getString(r1, r4)
            if (r6 != 0) goto L22
        L20:
            r5 = 1
            goto L4e
        L22:
            if (r5 != 0) goto L26
        L24:
            r5 = 0
            goto L4e
        L26:
            java.lang.String r1 = "[,\\s]+"
            java.lang.String[] r5 = r5.split(r1)
            java.util.HashSet r1 = new java.util.HashSet
            java.util.List r5 = java.util.Arrays.asList(r5)
            r1.<init>(r5)
            java.lang.String r5 = "[,\\s]+"
            java.lang.String[] r5 = r6.split(r5)
            r6 = 0
        L3c:
            int r2 = r5.length
            if (r6 < r2) goto L40
            goto L20
        L40:
            r2 = r5[r6]
            boolean r2 = r1.contains(r2)
            if (r2 != 0) goto L5f
            java.lang.String r5 = "perm mismatch"
            com.p058c.p062d.C1105a.m4041a(r5)
            goto L24
        L4e:
            if (r5 == 0) goto L62
            android.app.Activity r5 = r3.f3479a
            android.content.SharedPreferences r5 = android.preference.PreferenceManager.getDefaultSharedPreferences(r5)
            java.lang.String r6 = "aq.fb.token"
            java.lang.String r4 = r5.getString(r6, r4)
            r3.f3480b = r4
            goto L62
        L5f:
            int r6 = r6 + 1
            goto L3c
        L62:
            java.lang.String r4 = r3.f3480b
            if (r4 != 0) goto L67
            r7 = 1
        L67:
            r3.f3482d = r7
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p058c.p059a.C1091c.<init>(android.app.Activity, java.lang.String, java.lang.String, byte):void");
    }

    /* renamed from: a */
    private C1091c m3510a(int i) {
        this.f3486l = true;
        this.f3487m = i;
        return this;
    }

    /* renamed from: a */
    private static String m3511a(Bundle bundle) {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (String str : bundle.keySet()) {
            if (z) {
                z = false;
            } else {
                sb.append("&");
            }
            sb.append(String.valueOf(str) + "=" + bundle.getString(str));
        }
        return sb.toString();
    }

    /* renamed from: a */
    private void m3512a(int i, Intent intent) {
        C1105a.m4061b("on result", Integer.valueOf(i));
        if (i != -1) {
            if (i == 0) {
                m3529e("cancel");
                return;
            }
            return;
        }
        String stringExtra = intent.getStringExtra(C2427b.f8943J);
        if (stringExtra == null) {
            stringExtra = intent.getStringExtra("error_type");
        }
        if (stringExtra == null) {
            this.f3480b = intent.getStringExtra("access_token");
            C1105a.m4061b((Object) "onComplete", (Object) this.f3480b);
            if (this.f3480b == null) {
                m3529e("cancel");
                return;
            }
            m3545a(this.f3480b, this.f3481c);
            this.f3482d = false;
            m3500a(this.f3479a);
            return;
        }
        C1105a.m4061b((Object) C2427b.f8943J, (Object) stringExtra);
        if (stringExtra.equals("service_disabled") || stringExtra.equals("AndroidAuthKillSwitchException")) {
            m3540j();
            return;
        }
        String stringExtra2 = intent.getStringExtra("error_description");
        C1105a.m4061b((Object) "fb error", (Object) stringExtra2);
        Log.e("fb error", stringExtra2);
        m3529e(stringExtra2);
    }

    /* renamed from: a */
    private void m3516a(C1096b<JSONObject> c1096b) {
        new C1088a(this.f3479a).m3742a((AbstractC1089a) this).m3744a("https://graph.facebook.com/me", JSONObject.class, c1096b);
    }

    /* renamed from: a */
    private static boolean m3517a(Activity activity, String str, String str2, int i) {
        Intent intent = new Intent();
        intent.setClassName("com.facebook.katana", "com.facebook.katana.ProxyAuth");
        intent.putExtra("client_id", str);
        if (str2 != null) {
            intent.putExtra("scope", str2);
        }
        if (!m3518a(activity, intent)) {
            return false;
        }
        try {
            activity.startActivityForResult(intent, i);
            return true;
        } catch (ActivityNotFoundException unused) {
            return false;
        }
    }

    /* renamed from: a */
    private static boolean m3518a(Context context, Intent intent) {
        PackageManager packageManager = context.getPackageManager();
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
        if (resolveActivity == null) {
            return false;
        }
        try {
            for (Signature signature : packageManager.getPackageInfo(resolveActivity.activityInfo.packageName, 64).signatures) {
                if (signature.toCharsString().equals(f3472e)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    /* renamed from: b */
    private C1091c m3519b(int i) {
        this.f3485h = this.f3479a.getString(i);
        return this;
    }

    /* renamed from: b */
    private static String m3520b(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString(f3476n, null);
    }

    /* renamed from: b */
    private void m3522b(C1096b<JSONObject> c1096b) {
        new C1088a(this.f3479a).m3742a((AbstractC1089a) this).m3744a("https://graph.facebook.com/me", JSONObject.class, c1096b);
    }

    /* renamed from: b */
    private static boolean m3523b(String str, String str2) {
        if (str == null) {
            return true;
        }
        if (str2 == null) {
            return false;
        }
        HashSet hashSet = new HashSet(Arrays.asList(str2.split("[,\\s]+")));
        for (String str3 : str.split("[,\\s]+")) {
            if (!hashSet.contains(str3)) {
                C1105a.m4041a((Object) "perm mismatch");
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static Bundle m3524c(String str) {
        try {
            URL url = new URL(str);
            Bundle m3533g = m3533g(url.getQuery());
            m3533g.putAll(m3533g(url.getRef()));
            return m3533g;
        } catch (MalformedURLException unused) {
            return new Bundle();
        }
    }

    /* renamed from: d */
    private C1091c m3526d(String str) {
        this.f3485h = str;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m3529e(String str) {
        m3546d();
        m3499a(C1097c.f3593g, str);
    }

    /* renamed from: f */
    private String m3531f() {
        return this.f3480b;
    }

    /* renamed from: f */
    private static String m3532f(String str) {
        String queryParameter = Uri.parse(str.replace('#', '?')).getQueryParameter("access_token");
        C1105a.m4061b((Object) "token", (Object) queryParameter);
        return queryParameter;
    }

    /* renamed from: g */
    private static Bundle m3533g(String str) {
        Bundle bundle = new Bundle();
        if (str == null) {
            return bundle;
        }
        for (String str2 : str.split("&")) {
            String[] split = str2.split("=");
            bundle.putString(split[0], split[1]);
        }
        return bundle;
    }

    /* renamed from: g */
    private void m3534g() {
        if (this.f3484g != null) {
            try {
                this.f3484g.hide();
            } catch (Exception e) {
                C1105a.m4049a((Throwable) e);
            }
        }
    }

    /* renamed from: h */
    private void m3537h() {
        m3529e("cancel");
    }

    /* renamed from: i */
    private static /* synthetic */ String m3538i(String str) {
        String queryParameter = Uri.parse(str.replace('#', '?')).getQueryParameter("access_token");
        C1105a.m4061b((Object) "token", (Object) queryParameter);
        return queryParameter;
    }

    /* renamed from: i */
    private boolean m3539i() {
        if (this.f3486l) {
            return m3517a(this.f3479a, this.f3483f, this.f3481c, this.f3487m);
        }
        return false;
    }

    /* renamed from: j */
    private void m3540j() {
        C1105a.m4041a((Object) "web auth");
        Bundle bundle = new Bundle();
        bundle.putString("client_id", this.f3483f);
        bundle.putString(InterfaceC3057b.c.f11209c, "user_agent");
        if (this.f3481c != null) {
            bundle.putString("scope", this.f3481c);
        }
        bundle.putString("redirect_uri", f3474j);
        String str = "https://graph.facebook.com/oauth/authorize?" + m3511a(bundle);
        a aVar = new a(this, (byte) 0);
        this.f3484g = new DialogC1103c(this.f3479a, str, aVar);
        this.f3484g.f3662a = this.f3485h;
        this.f3484g.setOnCancelListener(aVar);
        m3547e();
        if (!this.f3482d || this.f3480b != null) {
            C1105a.m4041a((Object) "auth hide");
            if (this.f3484g != null) {
                try {
                    this.f3484g.hide();
                } catch (Exception e) {
                    C1105a.m4049a((Throwable) e);
                }
            }
        }
        this.f3484g.m3977a();
        C1105a.m4041a((Object) "auth started");
    }

    /* renamed from: k */
    private String m3541k() {
        return PreferenceManager.getDefaultSharedPreferences(this.f3479a).getString(f3476n, null);
    }

    /* renamed from: l */
    private String m3542l() {
        return PreferenceManager.getDefaultSharedPreferences(this.f3479a).getString(f3477o, null);
    }

    /* renamed from: m */
    private boolean m3543m() {
        if (f3478p == null) {
            Intent intent = new Intent();
            intent.setClassName("com.facebook.katana", "com.facebook.katana.ProxyAuth");
            f3478p = Boolean.valueOf(m3518a(this.f3479a, intent));
        }
        return f3478p.booleanValue();
    }

    /* renamed from: n */
    private static void m3544n() {
    }

    @Override // com.p058c.p059a.AbstractC1089a
    /* renamed from: a */
    public final String mo3498a(String str) {
        StringBuilder sb;
        String str2;
        if (str.indexOf(63) == -1) {
            sb = new StringBuilder(String.valueOf(str));
            str2 = "?";
        } else {
            sb = new StringBuilder(String.valueOf(str));
            str2 = "&";
        }
        sb.append(str2);
        return String.valueOf(sb.toString()) + "access_token=" + this.f3480b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m3545a(String str, String str2) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(this.f3479a).edit();
        edit.putString(f3476n, str).putString(f3477o, str2);
        C1105a.m4032a(edit);
    }

    @Override // com.p058c.p059a.AbstractC1089a
    /* renamed from: a */
    public final boolean mo3504a() {
        return this.f3480b != null;
    }

    @Override // com.p058c.p059a.AbstractC1089a
    /* renamed from: a */
    public final boolean mo3505a(AbstractRunnableC1095a<?, ?> abstractRunnableC1095a, C1097c c1097c) {
        int i = c1097c.f3595i;
        if (i == 200) {
            return false;
        }
        String str = c1097c.f3609w;
        if (str != null && str.contains("OAuthException")) {
            C1105a.m4041a((Object) "fb token expired");
            return true;
        }
        String str2 = abstractRunnableC1095a.f3566c;
        if (i == 400 && (str2.endsWith("/likes") || str2.endsWith("/comments") || str2.endsWith("/checkins"))) {
            return false;
        }
        if (i == 403 && (str2.endsWith("/feed") || str2.contains("method=delete"))) {
            return false;
        }
        return i == 400 || i == 401 || i == 403;
    }

    @Override // com.p058c.p059a.AbstractC1089a
    /* renamed from: b */
    public final String mo3506b(String str) {
        return mo3498a(str);
    }

    @Override // com.p058c.p059a.AbstractC1089a
    /* renamed from: b */
    protected final void mo3507b() {
        if (this.f3479a.isFinishing()) {
            return;
        }
        boolean m3517a = !this.f3486l ? false : m3517a(this.f3479a, this.f3483f, this.f3481c, this.f3487m);
        C1105a.m4061b("authing", Boolean.valueOf(m3517a));
        if (m3517a) {
            return;
        }
        m3540j();
    }

    @Override // com.p058c.p059a.AbstractC1089a
    /* renamed from: b */
    public final boolean mo3508b(final AbstractRunnableC1095a<?, ?> abstractRunnableC1095a) {
        C1105a.m4041a((Object) "reauth requested");
        this.f3480b = null;
        C1105a.m4045a(new Runnable() { // from class: com.c.a.c.1
            @Override // java.lang.Runnable
            public final void run() {
                C1091c.this.m3501a(abstractRunnableC1095a);
            }
        });
        return false;
    }

    @Override // com.p058c.p059a.AbstractC1089a
    /* renamed from: c */
    public final void mo3509c() {
        this.f3480b = null;
        CookieSyncManager.createInstance(this.f3479a);
        CookieManager.getInstance().removeAllCookie();
        m3545a((String) null, (String) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final void m3546d() {
        if (this.f3484g != null) {
            new C1088a(this.f3479a).m3745b((Dialog) this.f3484g);
            this.f3484g = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final void m3547e() {
        if (this.f3484g != null) {
            new C1088a(this.f3479a).m3741a((Dialog) this.f3484g);
        }
    }
}
