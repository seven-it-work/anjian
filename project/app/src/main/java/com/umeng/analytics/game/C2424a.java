package com.umeng.analytics.game;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.pro.C2444s;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.io.Serializable;

/* renamed from: com.umeng.analytics.game.a */
/* loaded from: classes.dex */
public class C2424a {

    /* renamed from: a */
    public String f8894a;

    /* renamed from: b */
    public String f8895b;

    /* renamed from: c */
    private Context f8896c;

    /* renamed from: d */
    private final String f8897d = "um_g_cache";

    /* renamed from: e */
    private final String f8898e = "single_level";

    /* renamed from: f */
    private final String f8899f = "stat_player_level";

    /* renamed from: g */
    private final String f8900g = "stat_game_level";

    /* renamed from: h */
    private a f8901h = null;

    /* renamed from: com.umeng.analytics.game.a$a */
    /* loaded from: classes.dex */
    static class a implements Serializable {

        /* renamed from: a */
        private static final long f8902a = 20140327;

        /* renamed from: b */
        private String f8903b;

        /* renamed from: c */
        private long f8904c;

        /* renamed from: d */
        private long f8905d;

        public a(String str) {
            this.f8903b = str;
        }

        /* renamed from: a */
        public void m10444a() {
            this.f8905d = System.currentTimeMillis();
        }

        /* renamed from: a */
        public boolean m10445a(String str) {
            return this.f8903b.equals(str);
        }

        /* renamed from: b */
        public void m10446b() {
            this.f8904c += System.currentTimeMillis() - this.f8905d;
            this.f8905d = 0L;
        }

        /* renamed from: c */
        public void m10447c() {
            m10444a();
        }

        /* renamed from: d */
        public void m10448d() {
            m10446b();
        }

        /* renamed from: e */
        public long m10449e() {
            return this.f8904c;
        }

        /* renamed from: f */
        public String m10450f() {
            return this.f8903b;
        }
    }

    public C2424a(Context context) {
        this.f8896c = context;
    }

    /* renamed from: a */
    public a m10440a(String str) {
        this.f8901h = new a(str);
        this.f8901h.m10444a();
        return this.f8901h;
    }

    /* renamed from: a */
    public void m10441a() {
        try {
            if (this.f8901h != null) {
                this.f8901h.m10446b();
                SharedPreferences.Editor edit = this.f8896c.getSharedPreferences("um_g_cache", 0).edit();
                edit.putString("single_level", C2444s.m10621a(this.f8901h));
                edit.putString("stat_player_level", this.f8895b);
                edit.putString("stat_game_level", this.f8894a);
                edit.commit();
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: b */
    public a m10442b(String str) {
        if (this.f8901h != null) {
            this.f8901h.m10448d();
            if (this.f8901h.m10445a(str)) {
                a aVar = this.f8901h;
                this.f8901h = null;
                return aVar;
            }
        }
        return null;
    }

    /* renamed from: b */
    public void m10443b() {
        SharedPreferences sharedPreferences;
        try {
            SharedPreferences preferenceWrapper = PreferenceWrapper.getInstance(this.f8896c, "um_g_cache");
            String string = preferenceWrapper.getString("single_level", null);
            if (!TextUtils.isEmpty(string)) {
                this.f8901h = (a) C2444s.m10620a(string);
                if (this.f8901h != null) {
                    this.f8901h.m10447c();
                }
            }
            if (TextUtils.isEmpty(this.f8895b)) {
                this.f8895b = preferenceWrapper.getString("stat_player_level", null);
                if (this.f8895b == null && (sharedPreferences = PreferenceWrapper.getDefault(this.f8896c)) != null) {
                    this.f8895b = sharedPreferences.getString("userlevel", null);
                }
            }
            if (this.f8894a == null) {
                this.f8894a = preferenceWrapper.getString("stat_game_level", null);
            }
        } catch (Throwable unused) {
        }
    }
}
