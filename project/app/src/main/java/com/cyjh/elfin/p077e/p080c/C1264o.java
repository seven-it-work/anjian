package com.cyjh.elfin.p077e.p080c;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1171n;
import com.cyjh.elfin.entity.Script;
import com.cyjh.elfin.p073a.C1225b;
import com.cyjh.elfin.p073a.InterfaceC1224a;
import com.google.protobuf.ByteString;
import com.hjol.R;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.nio.ByteBuffer;

/* renamed from: com.cyjh.elfin.e.c.o */
/* loaded from: classes.dex */
public class C1264o {

    /* renamed from: a */
    public static final String f4731a = "o";

    /* renamed from: b */
    public static final String f4732b = "script_version";

    /* renamed from: c */
    private static long f4733c;

    /* renamed from: a */
    public static Bitmap m5782a(int i, int i2, ByteString byteString) {
        Bitmap bitmap;
        ByteArrayOutputStream byteArrayOutputStream;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        } catch (Exception e) {
            e = e;
            bitmap = null;
        }
        try {
            bitmap.copyPixelsFromBuffer(ByteBuffer.wrap(byteString.toByteArray()));
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            return bitmap;
        } catch (Exception e2) {
            e = e2;
            e.printStackTrace();
            return bitmap;
        }
    }

    /* renamed from: a */
    public static String m5783a(Context context) {
        try {
            return context.getFilesDir() + File.separator + C1225b.f4506au;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* renamed from: a */
    public static String m5784a(Context context, boolean z) {
        return C1171n.m4456a(C1171n.m4463b(z ? m5783a(context) : context.getFilesDir().getAbsolutePath(), InterfaceC1224a.f4450r), "GBK");
    }

    /* renamed from: a */
    public static boolean m5785a() {
        if ((System.currentTimeMillis() - f4733c) / 1000 <= C1225b.f4507av) {
            return false;
        }
        f4733c = System.currentTimeMillis();
        return true;
    }

    /* renamed from: b */
    public static String m5786b(Context context) {
        return C1171n.m4464b(C1171n.m4463b(context.getFilesDir().getAbsolutePath(), InterfaceC1224a.f4452t));
    }

    /* renamed from: b */
    public static String m5787b(Context context, boolean z) {
        if (!z) {
            return C1261l.m5750a(context, InterfaceC1224a.f4453u);
        }
        return C1261l.m5751a(new File(m5783a(context) + File.separator + InterfaceC1224a.f4453u));
    }

    /* renamed from: c */
    public static int m5788c(Context context) {
        Long valueOf;
        Long valueOf2;
        String m5787b = m5787b(context, false);
        String m5787b2 = m5787b(context, true);
        try {
            valueOf = TextUtils.isEmpty(m5787b) ? 0L : Long.valueOf(Long.parseLong(m5787b));
            valueOf2 = TextUtils.isEmpty(m5787b2) ? 0L : Long.valueOf(Long.parseLong(m5787b2));
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (valueOf2.longValue() > valueOf.longValue()) {
            return 1;
        }
        if (valueOf2.longValue() < valueOf.longValue()) {
            return -1;
        }
        return 0;
    }

    /* renamed from: c */
    public static boolean m5789c(Context context, boolean z) {
        String m5792e = m5792e(context, z);
        C1151ad.m4325c(f4731a, "isValidAppId --> scriptAppId=" + m5792e);
        return context.getString(R.string.elfin_appid).equals(m5792e);
    }

    /* renamed from: d */
    private static String m5790d(Context context, boolean z) {
        Script m5749a;
        try {
            if (z) {
                m5749a = C1261l.m5749a(new FileInputStream(new File(m5783a(context) + File.separator + InterfaceC1224a.f4447o)));
            } else {
                m5749a = C1261l.m5749a(context.getAssets().open(InterfaceC1224a.f4447o));
            }
            return m5749a.getId();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: d */
    private static boolean m5791d(Context context) {
        String m5790d = m5790d(context, false);
        String m5790d2 = m5790d(context, true);
        C1151ad.m4325c(f4731a, "localScriptId=" + m5790d + ",sdcardScriptId=" + m5790d2);
        return m5790d.equals(m5790d2);
    }

    /* renamed from: e */
    private static String m5792e(Context context, boolean z) {
        Script m5749a;
        try {
            if (z) {
                m5749a = C1261l.m5749a(new FileInputStream(new File(m5783a(context) + File.separator + InterfaceC1224a.f4447o)));
            } else {
                m5749a = C1261l.m5749a(context.getAssets().open(InterfaceC1224a.f4447o));
            }
            return m5749a.getSelId();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
