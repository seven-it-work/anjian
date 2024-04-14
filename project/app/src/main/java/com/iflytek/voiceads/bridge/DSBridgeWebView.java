package com.iflytek.voiceads.bridge;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.webkit.CookieManager;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.utils.C2313g;
import java.io.File;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: assets/AdDex.4.0.1.dex */
public class DSBridgeWebView extends WebView {

    /* renamed from: c */
    private static boolean f8315c = false;

    /* renamed from: a */
    Map<Integer, InterfaceC2233n> f8316a;

    /* renamed from: b */
    public WebViewClient f8317b;

    /* renamed from: d */
    private Map<String, Object> f8318d;

    /* renamed from: e */
    private String f8319e;

    /* renamed from: f */
    private int f8320f;

    /* renamed from: g */
    private WebChromeClient f8321g;

    /* renamed from: h */
    private InterfaceC2234o f8322h;

    /* renamed from: i */
    private volatile boolean f8323i;

    /* renamed from: j */
    private InterfaceC2219c f8324j;

    /* renamed from: k */
    private ArrayList<C2217a> f8325k;

    /* renamed from: l */
    private C2218b f8326l;

    /* renamed from: m */
    private Handler f8327m;

    /* renamed from: n */
    private WebChromeClient f8328n;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.iflytek.voiceads.bridge.DSBridgeWebView$a */
    /* loaded from: assets/AdDex.4.0.1.dex */
    public static class C2217a {

        /* renamed from: a */
        private String f8329a;

        /* renamed from: b */
        private int f8330b;

        /* renamed from: c */
        private String f8331c;

        C2217a(String str, int i, Object[] objArr) {
            this.f8329a = new JSONArray((Collection) Arrays.asList(objArr == null ? new Object[0] : objArr)).toString();
            this.f8330b = i;
            this.f8331c = str;
        }

        public String toString() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("method", this.f8331c);
                jSONObject.put("callbackId", this.f8330b);
                jSONObject.put("data", this.f8329a);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return jSONObject.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.iflytek.voiceads.bridge.DSBridgeWebView$b */
    /* loaded from: assets/AdDex.4.0.1.dex */
    public class C2218b {
        private C2218b() {
        }

        /* synthetic */ C2218b(DSBridgeWebView dSBridgeWebView, C2222c c2222c) {
            this();
        }

        /* renamed from: a */
        private void m9824a(String str) {
            if (DSBridgeWebView.f8315c) {
                DSBridgeWebView.this.m9821a(String.format("alert('%s')", "DEBUG ERR MSG:\\n" + str.replaceAll("\\'", "\\\\'")));
            }
        }

        /* renamed from: a */
        public String m9825a(String str, String str2) {
            Method method;
            boolean z;
            String jSONObject;
            String[] m9809b = DSBridgeWebView.this.m9809b(str.trim());
            String str3 = m9809b[1];
            Object obj = DSBridgeWebView.this.f8318d.get(m9809b[0]);
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("code", -1);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            if (obj == null) {
                m9824a("Js bridge  called, but can't find a corresponded JavascriptInterface object , please check your code!");
                return jSONObject2.toString();
            }
            try {
                JSONObject jSONObject3 = new JSONObject(str2);
                String string = jSONObject3.has("_dscbstub") ? jSONObject3.getString("_dscbstub") : null;
                Object obj2 = jSONObject3.has("data") ? jSONObject3.get("data") : null;
                Class<?> cls = obj.getClass();
                try {
                    method = cls.getMethod(str3, Object.class, InterfaceC2220a.class);
                    z = true;
                } catch (Exception e2) {
                    try {
                        method = cls.getMethod(str3, Object.class);
                        z = false;
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        method = null;
                        z = false;
                    }
                }
                if (method == null) {
                    m9824a("Not find method \"" + str3 + "\" implementation! please check if the  signature or namespace of the method is right ");
                    return jSONObject2.toString();
                }
                if (Build.VERSION.SDK_INT >= 17 && ((JavascriptInterface) method.getAnnotation(JavascriptInterface.class)) == null) {
                    m9824a("Method " + str3 + " is not invoked, since  it is not declared with JavascriptInterface annotation! ");
                    return jSONObject2.toString();
                }
                method.setAccessible(true);
                try {
                    if (z) {
                        method.invoke(obj, obj2, new C2232m(this, string));
                        jSONObject = jSONObject2.toString();
                    } else {
                        Object invoke = method.invoke(obj, obj2);
                        jSONObject2.put("code", 0);
                        jSONObject2.put("data", invoke);
                        jSONObject = jSONObject2.toString();
                    }
                    return jSONObject;
                } catch (Exception e4) {
                    e4.printStackTrace();
                    m9824a(String.format("Call failed：The parameter of \"%s\" in Java is invalid.", str3));
                    return jSONObject2.toString();
                }
            } catch (JSONException e5) {
                m9824a(String.format("The argument of \"%s\" must be a JSON object string!", str3));
                e5.printStackTrace();
                return jSONObject2.toString();
            }
        }
    }

    /* renamed from: com.iflytek.voiceads.bridge.DSBridgeWebView$c */
    /* loaded from: assets/AdDex.4.0.1.dex */
    public interface InterfaceC2219c {
    }

    public DSBridgeWebView(Context context) {
        super(context);
        this.f8318d = new HashMap();
        this.f8320f = 0;
        this.f8323i = true;
        this.f8324j = null;
        this.f8326l = new C2218b(this, null);
        this.f8327m = new Handler(Looper.getMainLooper());
        this.f8316a = new HashMap();
        this.f8328n = new C2227h(this);
        this.f8317b = new C2231l(this);
        m9805b();
    }

    public DSBridgeWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8318d = new HashMap();
        this.f8320f = 0;
        this.f8323i = true;
        this.f8324j = null;
        this.f8326l = new C2218b(this, null);
        this.f8327m = new Handler(Looper.getMainLooper());
        this.f8316a = new HashMap();
        this.f8328n = new C2227h(this);
        this.f8317b = new C2231l(this);
        m9805b();
    }

    /* renamed from: a */
    private void m9799a(C2217a c2217a) {
        m9821a(String.format("window._handleMessageFromNative(%s)", c2217a.toString()));
    }

    /* renamed from: a */
    private void m9802a(Runnable runnable) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            this.f8327m.post(runnable);
        }
    }

    /* renamed from: b */
    private void m9805b() {
        this.f8319e = getContext().getFilesDir().getAbsolutePath() + "/webcache";
        WebSettings settings = getSettings();
        settings.setDomStorageEnabled(true);
        if (Build.VERSION.SDK_INT >= 21) {
            CookieManager.getInstance().setAcceptThirdPartyCookies(this, true);
            settings.setMixedContentMode(0);
        }
        settings.setUserAgentString(settings.getUserAgentString() + " iflytek_webview");
        settings.setAllowFileAccess(false);
        settings.setAppCacheEnabled(false);
        settings.setCacheMode(2);
        settings.setJavaScriptEnabled(true);
        settings.setLoadWithOverviewMode(true);
        settings.setAppCachePath(this.f8319e);
        settings.setUseWideViewPort(true);
        super.setWebChromeClient(this.f8328n);
        super.setWebViewClient(this.f8317b);
        m9811c();
        if (Build.VERSION.SDK_INT > 16) {
            super.addJavascriptInterface(this.f8326l, "_dsbridge");
        } else {
            settings.setUserAgentString(settings.getUserAgentString() + " _dsbridge");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public String[] m9809b(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        String str2 = "";
        if (lastIndexOf != -1) {
            str2 = str.substring(0, lastIndexOf);
            str = str.substring(lastIndexOf + 1);
        }
        return new String[]{str2, str};
    }

    /* renamed from: c */
    private void m9811c() {
        m9820a(new C2222c(this), "_dsb");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m9813c(String str) {
        if (Build.VERSION.SDK_INT >= 19) {
            super.evaluateJavascript(str, null);
        } else {
            super.loadUrl("javascript:" + str);
        }
    }

    /* renamed from: a */
    public void m9818a(InterfaceC2234o interfaceC2234o) {
        this.f8322h = interfaceC2234o;
    }

    /* renamed from: a */
    public void m9819a(File file) {
        if (!file.exists()) {
            C2313g.m10138b(SDKConstants.TAG, "delete file no exists " + file.getAbsolutePath());
            return;
        }
        if (file.isFile()) {
            file.delete();
        } else if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                m9819a(file2);
            }
        }
        file.delete();
    }

    /* renamed from: a */
    public void m9820a(Object obj, String str) {
        if (str == null) {
            str = "";
        }
        if (obj != null) {
            this.f8318d.put(str, obj);
        }
    }

    /* renamed from: a */
    public void m9821a(String str) {
        m9802a(new RunnableC2223d(this, str));
    }

    /* renamed from: a */
    public synchronized <T> void m9822a(String str, Object[] objArr, InterfaceC2233n<T> interfaceC2233n) {
        int i = this.f8320f + 1;
        this.f8320f = i;
        C2217a c2217a = new C2217a(str, i, objArr);
        if (interfaceC2233n != null) {
            this.f8316a.put(Integer.valueOf(c2217a.f8330b), interfaceC2233n);
        }
        if (this.f8325k != null) {
            this.f8325k.add(c2217a);
        } else {
            m9799a(c2217a);
        }
    }

    @Override // android.webkit.WebView
    public void clearCache(boolean z) {
        super.clearCache(z);
        CookieManager.getInstance().removeAllCookie();
        Context context = getContext();
        try {
            context.deleteDatabase("webview.db");
            context.deleteDatabase("webviewCache.db");
        } catch (Exception e) {
            e.printStackTrace();
        }
        File file = new File(this.f8319e);
        File file2 = new File(context.getCacheDir().getAbsolutePath() + "/webviewCache");
        if (file2.exists()) {
            m9819a(file2);
        }
        if (file.exists()) {
            m9819a(file);
        }
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        m9802a(new RunnableC2224e(this, str));
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str, Map<String, String> map) {
        m9802a(new RunnableC2225f(this, str, map));
    }

    @Override // android.webkit.WebView
    public void reload() {
        m9802a(new RunnableC2226g(this));
    }

    @Override // android.webkit.WebView
    public void setWebChromeClient(WebChromeClient webChromeClient) {
        this.f8321g = webChromeClient;
    }
}
