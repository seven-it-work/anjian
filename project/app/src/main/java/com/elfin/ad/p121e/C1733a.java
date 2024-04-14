package com.elfin.ad.p121e;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.cyjh.common.util.C1154ag;
import com.cyjh.http.bean.response.BackgroundSetAdInfo;
import com.cyjh.http.bean.response.FlySettingInfo;
import com.elfin.ad.C1716R;
import com.elfin.ad.C1717a;
import com.elfin.ad.p118b.C1727b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* renamed from: com.elfin.ad.e.a */
/* loaded from: classes.dex */
public class C1733a {

    /* renamed from: e */
    private static C1733a f6805e = null;

    /* renamed from: f */
    private static final int f6806f = 32;

    /* renamed from: b */
    public BackgroundSetAdInfo f6808b;

    /* renamed from: d */
    public int f6810d;

    /* renamed from: g */
    private FlySettingInfo f6811g;

    /* renamed from: c */
    public List<FlySettingInfo> f6809c = new ArrayList();

    /* renamed from: a */
    public List<BackgroundSetAdInfo> f6807a = new ArrayList();

    private C1733a() {
    }

    /* renamed from: a */
    public static C1733a m7908a() {
        if (f6805e == null) {
            synchronized (C1733a.class) {
                if (f6805e == null) {
                    f6805e = new C1733a();
                }
            }
        }
        return f6805e;
    }

    /* renamed from: a */
    public final C1727b m7909a(int i, String str) {
        C1727b c1727b = new C1727b();
        if (this.f6809c == null || this.f6809c.size() <= 0) {
            c1727b.f6773a = true;
            c1727b.f6774b = str;
            return c1727b;
        }
        Iterator<FlySettingInfo> it = this.f6809c.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            FlySettingInfo next = it.next();
            if (i == next.AdType) {
                this.f6811g = next;
                break;
            }
        }
        c1727b.f6773a = this.f6811g.Active == 1 && ((double) (new Random().nextInt(100) + 1)) < this.f6811g.Probability;
        String str2 = this.f6811g.FlyKey;
        if (TextUtils.isEmpty(str2) && str2.length() != 32) {
            str2 = str;
        }
        c1727b.f6774b = str2;
        return c1727b;
    }

    /* renamed from: a */
    public final void m7910a(Context context) {
        String str = this.f6808b.LinkUrl;
        int i = this.f6808b.OpenMethod;
        String str2 = this.f6808b.Title;
        if (i == 3) {
            if (TextUtils.isEmpty(str) || !str.startsWith("http")) {
                C1154ag.m4344b(C1717a.m7823a().f6726a, C1717a.m7823a().f6726a.getResources().getString(C1716R.string.link_url_error));
                return;
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.addFlags(268435456);
            context.startActivity(intent);
            return;
        }
        try {
            Intent intent2 = new Intent(context, Class.forName("com.cyjh.elfin.ui.activity.H5LinkJumpPageActivity"));
            intent2.addFlags(268435456);
            intent2.putExtra("com.cyjh.elfin.ui.activity.H5LinkJumpPageActivity", str2);
            intent2.putExtra("H5LinkJumpPageActivity", str);
            context.startActivity(intent2);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public final boolean m7911a(int i) {
        if (this.f6807a == null || this.f6807a.size() <= 0) {
            return false;
        }
        Iterator<BackgroundSetAdInfo> it = this.f6807a.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            BackgroundSetAdInfo next = it.next();
            if (next.AdType == i) {
                this.f6808b = next;
                if (new Random().nextInt(100) + 1 < this.f6808b.Probability) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: b */
    public final boolean m7912b() {
        return this.f6810d == 1;
    }
}
