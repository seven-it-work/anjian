package com.p058c.p059a;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.preference.PreferenceManager;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.p058c.C1088a;
import com.p058c.DialogC1103c;
import com.p058c.p060b.AbstractRunnableC1095a;
import com.p058c.p060b.C1097c;
import com.p058c.p062d.C1105a;
import java.net.HttpURLConnection;
import oauth.signpost.basic.DefaultOAuthConsumer;
import oauth.signpost.commonshttp.CommonsHttpOAuthConsumer;
import oauth.signpost.commonshttp.CommonsHttpOAuthProvider;
import org.apache.http.HttpRequest;

/* renamed from: com.c.a.e */
/* loaded from: classes.dex */
public final class C1093e extends AbstractC1089a {

    /* renamed from: g */
    private static final String f3499g = "https://api.twitter.com/oauth/request_token";

    /* renamed from: h */
    private static final String f3500h = "https://api.twitter.com/oauth/access_token";

    /* renamed from: i */
    private static final String f3501i = "https://api.twitter.com/oauth/authorize";

    /* renamed from: j */
    private static final String f3502j = "twitter://callback";

    /* renamed from: k */
    private static final String f3503k = "twitter://cancel";

    /* renamed from: l */
    private static final String f3504l = "aq.tw.token";

    /* renamed from: m */
    private static final String f3505m = "aq.tw.secret";

    /* renamed from: a */
    Activity f3506a;

    /* renamed from: b */
    DialogC1103c f3507b;

    /* renamed from: c */
    CommonsHttpOAuthConsumer f3508c;

    /* renamed from: d */
    CommonsHttpOAuthProvider f3509d;

    /* renamed from: e */
    String f3510e = m3570c(f3504l);

    /* renamed from: f */
    String f3511f = m3570c(f3505m);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.c.a.e$a */
    /* loaded from: classes.dex */
    public class a extends AsyncTask<String, String, String> implements DialogInterface.OnCancelListener, Runnable {

        /* renamed from: b */
        private AbstractRunnableC1095a<?, ?> f3513b;

        private a() {
        }

        /* synthetic */ a(C1093e c1093e, byte b2) {
            this();
        }

        /* renamed from: a */
        private String m3585a() {
            try {
                return C1093e.this.f3509d.retrieveRequestToken(C1093e.this.f3508c, C1093e.f3502j);
            } catch (Exception e) {
                C1105a.m4065b(e);
                return null;
            }
        }

        /* renamed from: a */
        private void m3587a(String str) {
            if (str == null) {
                C1093e.m3568b(C1093e.this);
                return;
            }
            C1093e.this.f3507b = new DialogC1103c(C1093e.this.f3506a, str, new c(C1093e.this, (byte) 0));
            C1093e.this.f3507b.setOnCancelListener(this);
            C1093e.m3562a(C1093e.this);
            C1093e.this.f3507b.m3977a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ String doInBackground(String... strArr) {
            return m3585a();
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public final void onCancel(DialogInterface dialogInterface) {
            C1093e.m3568b(C1093e.this);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(String str) {
            String str2 = str;
            if (str2 == null) {
                C1093e.m3568b(C1093e.this);
                return;
            }
            C1093e.this.f3507b = new DialogC1103c(C1093e.this.f3506a, str2, new c(C1093e.this, (byte) 0));
            C1093e.this.f3507b.setOnCancelListener(this);
            C1093e.m3562a(C1093e.this);
            C1093e.this.f3507b.m3977a();
        }

        @Override // java.lang.Runnable
        public final void run() {
            C1093e.this.m3501a(this.f3513b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.c.a.e$b */
    /* loaded from: classes.dex */
    public class b extends AsyncTask<String, String, String> {
        private b() {
        }

        /* synthetic */ b(C1093e c1093e, byte b2) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String doInBackground(String... strArr) {
            try {
                C1093e.this.f3509d.retrieveAccessToken(C1093e.this.f3508c, strArr[0]);
                return "";
            } catch (Exception e) {
                C1105a.m4065b(e);
                return null;
            }
        }

        /* renamed from: a */
        private void m3589a(String str) {
            if (str == null) {
                C1093e.m3568b(C1093e.this);
                return;
            }
            C1093e.this.f3510e = C1093e.this.f3508c.getToken();
            C1093e.this.f3511f = C1093e.this.f3508c.getTokenSecret();
            C1105a.m4061b((Object) "token", (Object) C1093e.this.f3510e);
            C1105a.m4061b((Object) "secret", (Object) C1093e.this.f3511f);
            C1093e.this.m3583a(C1093e.f3504l, C1093e.this.f3510e, C1093e.f3505m, C1093e.this.f3511f);
            C1093e.this.m3584d();
            C1093e.this.m3500a(C1093e.this.f3506a);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(String str) {
            if (str == null) {
                C1093e.m3568b(C1093e.this);
                return;
            }
            C1093e.this.f3510e = C1093e.this.f3508c.getToken();
            C1093e.this.f3511f = C1093e.this.f3508c.getTokenSecret();
            C1105a.m4061b((Object) "token", (Object) C1093e.this.f3510e);
            C1105a.m4061b((Object) "secret", (Object) C1093e.this.f3511f);
            C1093e.this.m3583a(C1093e.f3504l, C1093e.this.f3510e, C1093e.f3505m, C1093e.this.f3511f);
            C1093e.this.m3584d();
            C1093e.this.m3500a(C1093e.this.f3506a);
        }
    }

    /* renamed from: com.c.a.e$c */
    /* loaded from: classes.dex */
    private class c extends WebViewClient {
        private c() {
        }

        /* synthetic */ c(C1093e c1093e, byte b2) {
            this();
        }

        /* renamed from: a */
        private boolean m3590a(String str) {
            byte b2 = 0;
            if (str.startsWith(C1093e.f3502j)) {
                String queryParameter = Uri.parse(str).getQueryParameter("oauth_verifier");
                C1093e.this.m3584d();
                new b(C1093e.this, b2).execute(queryParameter);
                return true;
            }
            if (!str.startsWith(C1093e.f3503k)) {
                return false;
            }
            C1093e.m3568b(C1093e.this);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            C1105a.m4061b((Object) "finished", (Object) str);
            super.onPageFinished(webView, str);
            C1093e.m3562a(C1093e.this);
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            C1105a.m4061b((Object) "started", (Object) str);
            if (m3590a(str)) {
                return;
            }
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            C1093e.m3568b(C1093e.this);
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return m3590a(str);
        }
    }

    private C1093e(Activity activity, String str, String str2) {
        this.f3506a = activity;
        this.f3508c = new CommonsHttpOAuthConsumer(str, str2);
        if (this.f3510e != null && this.f3511f != null) {
            this.f3508c.setTokenWithSecret(this.f3510e, this.f3511f);
        }
        this.f3509d = new CommonsHttpOAuthProvider(f3499g, f3500h, f3501i);
    }

    /* renamed from: a */
    private static String m3561a(String str, String str2) {
        return Uri.parse(str).getQueryParameter(str2);
    }

    /* renamed from: a */
    static /* synthetic */ void m3562a(C1093e c1093e) {
        if (c1093e.f3507b != null) {
            new C1088a(c1093e.f3506a).m3741a((Dialog) c1093e.f3507b);
        }
    }

    /* renamed from: a */
    private void m3566a(boolean z) {
        if (z || this.f3510e == null || this.f3511f == null) {
            mo3507b();
        }
    }

    /* renamed from: b */
    static /* synthetic */ void m3568b(C1093e c1093e) {
        c1093e.m3584d();
        c1093e.m3499a(UiMessage.CommandToUi.Command_Type.GET_ENABLED_VALUE, "cancel");
    }

    /* renamed from: c */
    private String m3570c(String str) {
        return PreferenceManager.getDefaultSharedPreferences(this.f3506a).getString(str, null);
    }

    /* renamed from: e */
    private String m3574e() {
        return this.f3510e;
    }

    /* renamed from: f */
    private String m3576f() {
        return this.f3511f;
    }

    /* renamed from: g */
    private void m3578g() {
        if (this.f3507b != null) {
            new C1088a(this.f3506a).m3741a((Dialog) this.f3507b);
        }
    }

    /* renamed from: h */
    private void m3580h() {
        m3584d();
        m3499a(UiMessage.CommandToUi.Command_Type.GET_ENABLED_VALUE, "cancel");
    }

    /* renamed from: i */
    private static void m3581i() {
    }

    @Override // com.p058c.p059a.AbstractC1089a
    /* renamed from: a */
    public final void mo3502a(AbstractRunnableC1095a<?, ?> abstractRunnableC1095a, HttpURLConnection httpURLConnection) {
        C1105a.m4061b((Object) "apply token multipart", (Object) abstractRunnableC1095a.f3566c);
        DefaultOAuthConsumer defaultOAuthConsumer = new DefaultOAuthConsumer(this.f3508c.getConsumerKey(), this.f3508c.getConsumerSecret());
        defaultOAuthConsumer.setTokenWithSecret(this.f3508c.getToken(), this.f3508c.getTokenSecret());
        try {
            defaultOAuthConsumer.sign(httpURLConnection);
        } catch (Exception e) {
            C1105a.m4065b(e);
        }
    }

    @Override // com.p058c.p059a.AbstractC1089a
    /* renamed from: a */
    public final void mo3503a(AbstractRunnableC1095a<?, ?> abstractRunnableC1095a, HttpRequest httpRequest) {
        C1105a.m4061b((Object) "apply token", (Object) abstractRunnableC1095a.f3566c);
        try {
            this.f3508c.sign(httpRequest);
        } catch (Exception e) {
            C1105a.m4065b(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m3583a(String str, String str2, String str3, String str4) {
        PreferenceManager.getDefaultSharedPreferences(this.f3506a).edit().putString(str, str2).putString(str3, str4).commit();
    }

    @Override // com.p058c.p059a.AbstractC1089a
    /* renamed from: a */
    public final boolean mo3504a() {
        return (this.f3510e == null || this.f3511f == null) ? false : true;
    }

    @Override // com.p058c.p059a.AbstractC1089a
    /* renamed from: a */
    public final boolean mo3505a(AbstractRunnableC1095a<?, ?> abstractRunnableC1095a, C1097c c1097c) {
        int i = c1097c.f3595i;
        return i == 400 || i == 401;
    }

    @Override // com.p058c.p059a.AbstractC1089a
    /* renamed from: b */
    protected final void mo3507b() {
        new a(this, (byte) 0).execute(new String[0]);
    }

    @Override // com.p058c.p059a.AbstractC1089a
    /* renamed from: b */
    public final boolean mo3508b(AbstractRunnableC1095a<?, ?> abstractRunnableC1095a) {
        this.f3510e = null;
        this.f3511f = null;
        m3583a(f3504l, null, f3505m, null);
        new a(this, (byte) 0).f3513b = abstractRunnableC1095a;
        C1105a.m4045a((Runnable) abstractRunnableC1095a);
        return false;
    }

    @Override // com.p058c.p059a.AbstractC1089a
    /* renamed from: c */
    public final void mo3509c() {
        this.f3510e = null;
        this.f3511f = null;
        CookieSyncManager.createInstance(this.f3506a);
        CookieManager.getInstance().removeAllCookie();
        m3583a(f3504l, null, f3505m, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final void m3584d() {
        if (this.f3507b != null) {
            new C1088a(this.f3506a).m3745b((Dialog) this.f3507b);
            this.f3507b = null;
        }
    }
}
