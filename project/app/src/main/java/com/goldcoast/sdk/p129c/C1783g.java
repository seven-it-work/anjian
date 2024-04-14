package com.goldcoast.sdk.p129c;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

/* renamed from: com.goldcoast.sdk.c.g */
/* loaded from: classes.dex */
public final class C1783g {

    /* renamed from: a */
    private static C1783g f7012a;

    /* renamed from: b */
    private static Context f7013b;

    /* renamed from: c */
    private static boolean f7014c;

    private C1783g() {
    }

    /* renamed from: a */
    public static C1783g m8120a() {
        if (f7012a == null) {
            f7012a = new C1783g();
        }
        return f7012a;
    }

    /* renamed from: a */
    public static void m8121a(Context context) {
        f7013b = context;
    }

    /* renamed from: a */
    public static void m8122a(String str) {
        if (f7014c) {
            Log.i("GOLD_COAST", str);
        }
    }

    /* renamed from: b */
    public static void m8123b(String str) {
        try {
            FileWriter fileWriter = new FileWriter(new File(f7013b.getFilesDir().getAbsolutePath() + File.separator + "dump"), true);
            fileWriter.write(str);
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
