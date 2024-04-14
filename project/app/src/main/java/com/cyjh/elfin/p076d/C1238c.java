package com.cyjh.elfin.p076d;

import android.annotation.SuppressLint;
import android.graphics.Color;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.BackgroundColorSpan;
import android.text.style.StyleSpan;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1154ag;
import com.cyjh.common.util.C1169l;
import com.cyjh.common.util.C1175r;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.ParamsWrap;
import com.cyjh.http.bean.response.RegCodeStatusInfo;
import com.cyjh.http.p104e.C1579a;
import com.hjol.R;

/* renamed from: com.cyjh.elfin.d.c */
/* loaded from: classes.dex */
public class C1238c {

    /* renamed from: d */
    public static boolean f4604d = true;

    /* renamed from: e */
    private static final String f4605e = "PayModelManager";

    /* renamed from: f */
    private static C1238c f4606f;

    /* renamed from: a */
    public String f4607a;

    /* renamed from: g */
    private int f4610g;

    /* renamed from: b */
    public long f4608b = -1;

    /* renamed from: c */
    public int f4609c = -1;

    /* renamed from: h */
    private boolean f4611h = false;

    /* renamed from: a */
    private static SpannableString m5530a(String str, String str2, String str3, String str4) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        int indexOf = str.indexOf(str2);
        int length = (str2.length() + indexOf) - 2;
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new StyleSpan(1), indexOf, length, 17);
        spannableString.setSpan(new BackgroundColorSpan(Color.parseColor("#2964AA")), indexOf, length, 17);
        if (TextUtils.isEmpty(str3)) {
            return spannableString;
        }
        int indexOf2 = str.indexOf(str3);
        int length2 = (str3.length() + indexOf2) - 2;
        spannableString.setSpan(new StyleSpan(1), indexOf2, length2, 17);
        spannableString.setSpan(new BackgroundColorSpan(Color.parseColor("#2964AA")), indexOf2, length2, 17);
        if (TextUtils.isEmpty(str4)) {
            return spannableString;
        }
        int indexOf3 = str.indexOf(str4);
        int length3 = (str4.length() + indexOf3) - 1;
        spannableString.setSpan(new StyleSpan(1), indexOf3, length3, 17);
        spannableString.setSpan(new BackgroundColorSpan(Color.parseColor("#2964AA")), indexOf3, length3, 17);
        return spannableString;
    }

    /* renamed from: a */
    public static C1238c m5531a() {
        if (f4606f == null) {
            synchronized (C1238c.class) {
                if (f4606f == null) {
                    C1238c c1238c = new C1238c();
                    f4606f = c1238c;
                    return c1238c;
                }
            }
        }
        return f4606f;
    }

    /* renamed from: a */
    private void m5532a(int i) {
        this.f4610g = i;
    }

    /* renamed from: a */
    private void m5533a(long j) {
        this.f4608b = j;
    }

    /* renamed from: a */
    private void m5534a(String str) {
        this.f4607a = str;
    }

    /* renamed from: b */
    private static String m5535b(long j) {
        return C1169l.m4449a(AppContext.m5350a(), j);
    }

    /* renamed from: d */
    private long m5536d() {
        return this.f4608b;
    }

    /* renamed from: e */
    private String m5537e() {
        SpannableString spannableString;
        if (!TextUtils.isEmpty(this.f4607a) && this.f4608b != -1) {
            long currentTimeMillis = (this.f4608b - (System.currentTimeMillis() / 1000)) / 60;
            return currentTimeMillis > 0 ? C1169l.m4449a(AppContext.m5350a(), currentTimeMillis) : "";
        }
        if (ParamsWrap.getParamsWrap().onceTryMinute <= 0) {
            this.f4609c = 3;
            return AppContext.m5350a().getString(R.string.optionfragment_duetime_no);
        }
        this.f4609c = 1;
        String format = String.format(AppContext.m5350a().getString(R.string.optionfragment_unpaid), Integer.valueOf(ParamsWrap.getParamsWrap().onceTryMinute));
        String str = ParamsWrap.getParamsWrap().onceTryMinute + "分钟";
        if (TextUtils.isEmpty(str)) {
            spannableString = null;
        } else {
            int indexOf = format.indexOf(str);
            int length = (str.length() + indexOf) - 2;
            SpannableString spannableString2 = new SpannableString(format);
            spannableString2.setSpan(new StyleSpan(1), indexOf, length, 17);
            spannableString2.setSpan(new BackgroundColorSpan(Color.parseColor("#2964AA")), indexOf, length, 17);
            if (!TextUtils.isEmpty("")) {
                int indexOf2 = format.indexOf("");
                int length2 = ("".length() + indexOf2) - 2;
                spannableString2.setSpan(new StyleSpan(1), indexOf2, length2, 17);
                spannableString2.setSpan(new BackgroundColorSpan(Color.parseColor("#2964AA")), indexOf2, length2, 17);
                if (!TextUtils.isEmpty("")) {
                    int indexOf3 = format.indexOf("");
                    int length3 = ("".length() + indexOf3) - 1;
                    spannableString2.setSpan(new StyleSpan(1), indexOf3, length3, 17);
                    spannableString2.setSpan(new BackgroundColorSpan(Color.parseColor("#2964AA")), indexOf3, length3, 17);
                }
            }
            spannableString = spannableString2;
        }
        return spannableString.toString();
    }

    @SuppressLint({"StringFormatMatches"})
    /* renamed from: f */
    private String m5538f() {
        SpannableString spannableString;
        if (ParamsWrap.getParamsWrap().onceTryMinute <= 0) {
            this.f4609c = 3;
            return AppContext.m5350a().getString(R.string.optionfragment_duetime_no);
        }
        this.f4609c = 1;
        String format = String.format(AppContext.m5350a().getString(R.string.optionfragment_unpaid), Integer.valueOf(ParamsWrap.getParamsWrap().onceTryMinute));
        String str = ParamsWrap.getParamsWrap().onceTryMinute + "分钟";
        if (TextUtils.isEmpty(str)) {
            spannableString = null;
        } else {
            int indexOf = format.indexOf(str);
            int length = (str.length() + indexOf) - 2;
            SpannableString spannableString2 = new SpannableString(format);
            spannableString2.setSpan(new StyleSpan(1), indexOf, length, 17);
            spannableString2.setSpan(new BackgroundColorSpan(Color.parseColor("#2964AA")), indexOf, length, 17);
            if (!TextUtils.isEmpty("")) {
                int indexOf2 = format.indexOf("");
                int length2 = ("".length() + indexOf2) - 2;
                spannableString2.setSpan(new StyleSpan(1), indexOf2, length2, 17);
                spannableString2.setSpan(new BackgroundColorSpan(Color.parseColor("#2964AA")), indexOf2, length2, 17);
                if (!TextUtils.isEmpty("")) {
                    int indexOf3 = format.indexOf("");
                    int length3 = ("".length() + indexOf3) - 1;
                    spannableString2.setSpan(new StyleSpan(1), indexOf3, length3, 17);
                    spannableString2.setSpan(new BackgroundColorSpan(Color.parseColor("#2964AA")), indexOf3, length3, 17);
                }
            }
            spannableString = spannableString2;
        }
        return spannableString.toString();
    }

    /* renamed from: g */
    private String m5539g() {
        long currentTimeMillis = (this.f4608b - (System.currentTimeMillis() / 1000)) / 60;
        return currentTimeMillis > 0 ? C1169l.m4449a(AppContext.m5350a(), currentTimeMillis) : "";
    }

    /* renamed from: h */
    private int m5540h() {
        return this.f4610g;
    }

    /* renamed from: i */
    private void m5541i() {
        if (f4604d) {
            long currentTimeMillis = (this.f4608b - (System.currentTimeMillis() / 1000)) / 60;
            if (currentTimeMillis > 0) {
                C1154ag.m4344b(AppContext.m5350a(), "注册码" + C1169l.m4449a(AppContext.m5350a(), currentTimeMillis));
            }
        }
    }

    /* renamed from: j */
    private void m5542j() {
        this.f4609c = 0;
    }

    /* renamed from: b */
    public final String m5543b() {
        if (!TextUtils.isEmpty(this.f4607a)) {
            return this.f4607a;
        }
        if (this.f4611h) {
            return "";
        }
        m5544c();
        return TextUtils.isEmpty(this.f4607a) ? "" : this.f4607a;
    }

    /* renamed from: c */
    public final void m5544c() {
        String m7016a = C1579a.m7016a(InterfaceC1133a.f3975ax + C1132a.m4196c(), AppContext.m5350a());
        String m7016a2 = C1579a.m7016a(InterfaceC1133a.f3976ay + C1132a.m4196c(), AppContext.m5350a());
        if (TextUtils.isEmpty(m7016a2)) {
            this.f4607a = m7016a;
            return;
        }
        RegCodeStatusInfo regCodeStatusInfo = (RegCodeStatusInfo) C1175r.m4522a(m7016a2, RegCodeStatusInfo.class);
        if (regCodeStatusInfo != null) {
            this.f4607a = regCodeStatusInfo.regCode;
        }
    }
}
