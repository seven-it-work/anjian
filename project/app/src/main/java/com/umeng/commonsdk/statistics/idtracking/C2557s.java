package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.os.Environment;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import java.io.File;
import java.io.FileInputStream;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: com.umeng.commonsdk.statistics.idtracking.s */
/* loaded from: classes.dex */
public class C2557s extends AbstractC2539a {

    /* renamed from: a */
    private static final String f9849a = "utdid";

    /* renamed from: b */
    private static final String f9850b = "android.permission.WRITE_EXTERNAL_STORAGE";

    /* renamed from: c */
    private static final Pattern f9851c = Pattern.compile("UTDID\">([^<]+)");

    /* renamed from: d */
    private Context f9852d;

    public C2557s(Context context) {
        super(f9849a);
        this.f9852d = context;
    }

    /* renamed from: b */
    private String m11418b(String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = f9851c.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return null;
    }

    /* renamed from: g */
    private String m11419g() {
        File m11420h = m11420h();
        if (m11420h == null || !m11420h.exists()) {
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(m11420h);
            try {
                return m11418b(HelperUtils.readStreamToString(fileInputStream));
            } finally {
                HelperUtils.safeClose(fileInputStream);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: h */
    private File m11420h() {
        if (DeviceConfig.checkPermission(this.f9852d, f9850b) && Environment.getExternalStorageState().equals("mounted")) {
            try {
                return new File(Environment.getExternalStorageDirectory().getCanonicalPath(), ".UTSystemConfig/Global/Alvin2.xml");
            } catch (Exception unused) {
            }
        }
        return null;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2539a
    /* renamed from: f */
    public String mo11375f() {
        try {
            return (String) Class.forName("com.ut.device.UTDevice").getMethod("getUtdid", Context.class).invoke(null, this.f9852d);
        } catch (Exception unused) {
            return m11419g();
        }
    }
}
