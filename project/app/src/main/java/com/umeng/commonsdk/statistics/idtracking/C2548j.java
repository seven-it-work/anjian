package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.proguard.C2518v;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import java.io.File;

/* renamed from: com.umeng.commonsdk.statistics.idtracking.j */
/* loaded from: classes.dex */
public class C2548j extends AbstractC2539a {

    /* renamed from: a */
    private static final String f9829a = "oldumid";

    /* renamed from: b */
    private Context f9830b;

    /* renamed from: c */
    private String f9831c;

    /* renamed from: d */
    private String f9832d;

    public C2548j(Context context) {
        super(f9829a);
        this.f9831c = null;
        this.f9832d = null;
        this.f9830b = context;
    }

    /* renamed from: b */
    private void m11411b(String str) {
        File file = new File(str);
        if (file.exists()) {
            return;
        }
        file.mkdirs();
    }

    /* renamed from: j */
    private void m11412j() {
        try {
            m11411b("/data/local/tmp/.um");
            HelperUtils.writeFile(new File("/data/local/tmp/.um/sysid.dat"), this.f9832d);
        } catch (Throwable unused) {
        }
    }

    /* renamed from: k */
    private void m11413k() {
        try {
            m11411b("/sdcard/Android/obj/.um");
            HelperUtils.writeFile(new File("/sdcard/Android/obj/.um/sysid.dat"), this.f9832d);
        } catch (Throwable unused) {
        }
    }

    /* renamed from: l */
    private void m11414l() {
        try {
            m11411b("/sdcard/Android/data/.um");
            HelperUtils.writeFile(new File("/sdcard/Android/data/.um/sysid.dat"), this.f9832d);
        } catch (Throwable unused) {
        }
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2539a
    /* renamed from: f */
    public String mo11375f() {
        return this.f9831c;
    }

    /* renamed from: g */
    public boolean m11415g() {
        return m11416h();
    }

    /* renamed from: h */
    public boolean m11416h() {
        this.f9832d = UMEnvelopeBuild.imprintProperty(this.f9830b, C2518v.f9559e, null);
        if (TextUtils.isEmpty(this.f9832d)) {
            return false;
        }
        this.f9832d = DataHelper.encryptBySHA1(this.f9832d);
        String readFile = HelperUtils.readFile(new File("/sdcard/Android/data/.um/sysid.dat"));
        String readFile2 = HelperUtils.readFile(new File("/sdcard/Android/obj/.um/sysid.dat"));
        String readFile3 = HelperUtils.readFile(new File("/data/local/tmp/.um/sysid.dat"));
        if (TextUtils.isEmpty(readFile)) {
            m11414l();
        } else if (!this.f9832d.equals(readFile)) {
            this.f9831c = readFile;
            return true;
        }
        if (TextUtils.isEmpty(readFile2)) {
            m11413k();
        } else if (!this.f9832d.equals(readFile2)) {
            this.f9831c = readFile2;
            return true;
        }
        if (TextUtils.isEmpty(readFile3)) {
            m11412j();
            return false;
        }
        if (this.f9832d.equals(readFile3)) {
            return false;
        }
        this.f9831c = readFile3;
        return true;
    }

    /* renamed from: i */
    public void m11417i() {
        try {
            m11414l();
            m11413k();
            m11412j();
        } catch (Exception unused) {
        }
    }
}
