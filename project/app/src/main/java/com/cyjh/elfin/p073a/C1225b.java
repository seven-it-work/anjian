package com.cyjh.elfin.p073a;

import android.content.Context;
import android.os.Environment;
import com.cyjh.common.util.C1147a;
import com.cyjh.elfin.base.AppContext;
import java.io.File;
import java.io.IOException;

/* renamed from: com.cyjh.elfin.a.b */
/* loaded from: classes.dex */
public final class C1225b {

    /* renamed from: A */
    public static final String f4459A = "network_file_is_exist";

    /* renamed from: B */
    public static final String f4460B = "template_apk_req";

    /* renamed from: C */
    public static final String f4461C = "single_apk_req";

    /* renamed from: D */
    public static final String f4462D = "server_time";

    /* renamed from: E */
    public static final String f4463E = "server_time_successful";

    /* renamed from: F */
    public static final String f4464F = "last_ad_id";

    /* renamed from: G */
    public static final String f4465G = "last_ad_link_url";

    /* renamed from: H */
    public static final String f4466H = "last_ad_link_type";

    /* renamed from: I */
    public static final String f4467I = "last_ad_jump_linkurl";

    /* renamed from: J */
    public static final String f4468J = "last_ad_title";

    /* renamed from: K */
    public static final String f4469K = "5000820";

    /* renamed from: L */
    public static final boolean f4470L = true;

    /* renamed from: M */
    public static final boolean f4471M = false;

    /* renamed from: N */
    public static final String f4472N = "1031278";

    /* renamed from: O */
    public static final String f4473O = "andzjjlkp01";

    /* renamed from: P */
    public static final String f4474P = "ANDFZLBDAPI816";

    /* renamed from: Q */
    public static final String f4475Q = "RBKOKIXWV";

    /* renamed from: R */
    public static final String f4476R = "com.cyjh.mobileanjian";

    /* renamed from: S */
    public static final String f4477S = "redirect";

    /* renamed from: T */
    public static final String f4478T = "download";

    /* renamed from: U */
    public static final String f4479U = "redownload";

    /* renamed from: V */
    public static final String f4480V = "SDK20191519030326wbwdvdccwn8sye8";

    /* renamed from: W */
    public static final String f4481W = "POSIDe5v7yvk0jx0m";

    /* renamed from: X */
    public static final String f4482X = ".gif";

    /* renamed from: Y */
    public static final String f4483Y = "http";

    /* renamed from: Z */
    public static final String f4484Z = "1";

    /* renamed from: a */
    public static final String f4485a = "APP";

    /* renamed from: aa */
    public static final String f4486aa = "2";

    /* renamed from: ab */
    public static final String f4487ab = C1147a.m4262c(AppContext.m5350a());

    /* renamed from: ac */
    public static final String f4488ac = "deviceid";

    /* renamed from: ad */
    public static final String f4489ad = "5e1f6df6cc024c80b7e8b86dc670c100";

    /* renamed from: ae */
    public static final String f4490ae = "101477";

    /* renamed from: af */
    public static final String f4491af = "101478";

    /* renamed from: ag */
    public static final String f4492ag = "589ac20e";

    /* renamed from: ah */
    public static final String f4493ah = "F4F04588C1076DA9017964B229D657DA";

    /* renamed from: ai */
    public static final String f4494ai = "94CCB814573108BFBD19D8E2BB45AEE0";

    /* renamed from: aj */
    public static final String f4495aj = "9312C6DA2448C84DB3C4FE8F66E2B394";

    /* renamed from: ak */
    public static final int f4496ak = 10000;

    /* renamed from: al */
    public static final String f4497al = "has_load_splash_first_ad";

    /* renamed from: am */
    public static final String f4498am = "has_load_splash_second_ad";

    /* renamed from: an */
    public static final String f4499an = "has_load_bottom_ad";

    /* renamed from: ao */
    public static final String f4500ao = "2xg8d8ga3z";

    /* renamed from: ap */
    public static final String f4501ap = "b1214d0324681928";

    /* renamed from: aq */
    public static final String f4502aq = "9292308";

    /* renamed from: ar */
    public static final String f4503ar = "9732310";

    /* renamed from: as */
    public static String f4504as = "script";

    /* renamed from: at */
    public static String f4505at = ".config";

    /* renamed from: au */
    public static String f4506au = "assets";

    /* renamed from: av */
    public static int f4507av = 60;

    /* renamed from: aw */
    public static final int f4508aw = 36;

    /* renamed from: ax */
    public static final String f4509ax = "110";

    /* renamed from: b */
    public static final String f4510b = "android";

    /* renamed from: c */
    public static final String f4511c = "msg_data";

    /* renamed from: d */
    public static final String f4512d = "Message";

    /* renamed from: e */
    public static final String f4513e = "red_dot_flag";

    /* renamed from: f */
    public static final String f4514f = "small_red_dot";

    /* renamed from: g */
    public static final int f4515g = 1;

    /* renamed from: h */
    public static final int f4516h = 2;

    /* renamed from: i */
    public static int f4517i = 2;

    /* renamed from: j */
    public static final String f4518j = "ad_old_id";

    /* renamed from: k */
    public static final String f4519k = "ad_new_id";

    /* renamed from: l */
    public static final String f4520l = "new_jump_link";

    /* renamed from: m */
    public static final String f4521m = "old_jump_link";

    /* renamed from: n */
    public static final String f4522n = "ad_is_first";

    /* renamed from: o */
    public static final String f4523o = "is_touch_clicker";

    /* renamed from: p */
    public static final String f4524p = "is_touch_clicker";

    /* renamed from: q */
    public static final String f4525q = "id_description";

    /* renamed from: r */
    public static final String f4526r = "is_clicker_description";

    /* renamed from: s */
    public static final String f4527s = "default_entry_games";

    /* renamed from: t */
    public static final String f4528t = "recommend_games_link";

    /* renamed from: u */
    public static final String f4529u = "app-release.apk";

    /* renamed from: v */
    public static final int f4530v = 1;

    /* renamed from: w */
    public static final String f4531w = "com.cyjh.gundam";

    /* renamed from: x */
    public static final String f4532x = "http://down.nishuoa.com/fengwocps.apk";

    /* renamed from: y */
    public static final String f4533y = "youxifengwo.apk";

    /* renamed from: z */
    public static final String f4534z = "save_network_message";

    /* renamed from: a */
    private static File m5335a() {
        File file = new File(m5336a(AppContext.m5350a()), "NetworkMessage");
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, "NetworkReqLog.txt");
        if (!file2.exists()) {
            try {
                file2.createNewFile();
                return file2;
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return file2;
    }

    /* renamed from: a */
    public static final String m5336a(Context context) {
        return Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + context.getPackageName();
    }

    /* renamed from: b */
    private static File m5337b() {
        File file = new File(m5336a(AppContext.m5350a()), "ErrorMessage");
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(file, "xiaomi4.txt");
    }

    /* renamed from: b */
    private static File m5338b(Context context) {
        if (!Environment.getExternalStorageState().equals("mounted")) {
            return null;
        }
        File file = new File(m5336a(context), "adimg");
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(file, "pic");
    }

    /* renamed from: c */
    private static File m5339c(Context context) {
        File file = new File(m5336a(context), "Info");
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(file, "device_id");
    }
}
