package com.cyjh.elfin.floatingwindowprocess.p083c;

import android.text.TextUtils;
import android.util.Base64;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1153af;
import com.cyjh.common.util.C1172o;
import com.cyjh.common.util.C1175r;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.ParamsWrap;
import com.cyjh.elfin.entity.Script;
import com.cyjh.elfin.floatingwindowprocess.p084d.C1289b;
import com.cyjh.elfin.p073a.C1225b;
import com.cyjh.elfin.p073a.InterfaceC1224a;
import com.cyjh.elfin.p077e.p080c.C1261l;
import com.cyjh.elfin.p077e.p080c.C1264o;
import com.cyjh.http.bean.request.EngineParams;
import com.cyjh.http.p095b.C1487a;
import com.hjol.R;
import java.io.File;
import java.io.FileInputStream;

/* renamed from: com.cyjh.elfin.floatingwindowprocess.c.c */
/* loaded from: classes.dex */
public final class C1285c {

    /* renamed from: b */
    public static boolean f4848b = false;

    /* renamed from: f */
    private static final String f4849f = "RunScriptManager";

    /* renamed from: g */
    private static final C1285c f4850g = new C1285c();

    /* renamed from: a */
    public Script f4851a;

    /* renamed from: c */
    public boolean f4852c;

    /* renamed from: d */
    public int f4853d = 0;

    /* renamed from: e */
    public long f4854e;

    /* renamed from: a */
    private void m5952a(long j) {
        this.f4854e = j;
    }

    /* renamed from: c */
    public static String m5953c() {
        return new String(Base64.decode("LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlDWEFJQkFBS0JnUUNWTkNFeFpsK1NaQVFOaGtSMUtYZGFmdDY0b0c4OEZqeW1QK2lLOWw1VFZ0NytWcFV3CmJKNC9obDlVWHFyRk1Rc3JBbTlkMi80Tk4zTGF6K0t0aFdPQ2pOUkRXZ01nMHhoWFJnNm5zMGhLUkZaQ0Vhc2MKTVg1aW9XMElGZi9XcUZrYVlFbk10Z25KV3JPdlBGUy9GUE5Jazg0VFpBRGZBa3R6U1JKdythTnpGd0lEQVFBQgpBb0dBSWRDWHVUOXZaNWtkUmdkcEduaVVZVUVocnd4RlNZUHNxTzBSQWZXR09UTVdCT1NRbVZIMHA0Y0hzZkptCmw1eGU0SmVEcit6ODdmZmtJdTA4ZllFZXBRNFk1ZU1OSjhUNE8zVjhNbGhxS0FwSlB5VndMTnpkMmZDWGIzdkoKamtVQzArQ0pCNjc2N2VIR29SdmxQVDJUa1VPc3NNTlByaU0wWEs0dDlpUEt6emtDUVFET0s0dTlUZTIzTTdJUQpNZjNTUVRCdHdUK1Npak9IUHg2UVNhT2Vtdkd2TzhneG0wc2EzN1IxZlRVa001WmVWemF2WjVTbkxHbllEaXRjCnh2Q3RRNkJOQWtFQXVVUGZSYVp5OXZDbXNwRTU5VGdjYnVOTnMycHVQWEdocnRaWkh4emlHaXV5aWtwVVQ1TnAKSFF3WXZSbzZYYUFzdVV1RGk5c2pLUDFrQWZkYUFWQnk4d0pCQUtxK25haFYxYjJYN3F4QytyY2FqZ1VYdXBLZQpLamFrSzZmTGxOcFI4RDd6LzhRMW5HblJReDdhWnh4b0xPeE14bGxXSzJLWUFjQ1JXNUFtb2tTY2NURUNRRzMzCjZLN2FKMEdIQlJ2WGNsU3BjczhyWXpMTlNSUjF2NmdkR1plTE9IYWFXNGNVcWNqMlVoMW8wY0psc0NGazgwY2wKbUxiS1k2dHdCUTNadWZZdnY1c0NRQ2FXbjRrRHQ5ampodVAwK1BianpjbDc1TWl4Zm5aUExTaldraHFndjBUTwpPR1c0aU94S3BERjdRMU1CaU1ja3lteml0YWIzR0J5NE93ZDNRQy93bmswPQotLS0tLUVORCBSU0EgUFJJVkFURSBLRVktLS0tLQo=", 0));
    }

    /* renamed from: d */
    public static String m5954d() {
        return new String(Base64.decode("LS0tLS1CRUdJTiBQVUJMSUMgS0VZLS0tLS0KTUlHZk1BMEdDU3FHU0liM0RRRUJBUVVBQTRHTkFEQ0JpUUtCZ1FEUTZhRjF5WFFNMmRTNldsNUlVa3BJQVBhZApQcHl0OHFraFdTRncwT3BtRHhUUEJPbm5GLzNWMEhVYmN1MEUreE81NDJzYkhYMVBZWkQxT1N0SEJZT2N2YzJJCnVLYTdkbC9BL3V5d0haNGZWeFNLWHJnZTNNdXZEWjZrZWZiSkVjRGFDTHVjK1RPdGo3L0hsRHBibEpFN3NSVnQKQ1l4TlFwMFQzYjNPb2t5RG53SURBUUFCCi0tLS0tRU5EIFBVQkxJQyBLRVktLS0tLQo=", 0));
    }

    /* renamed from: f */
    public static C1285c m5955f() {
        return f4850g;
    }

    /* renamed from: g */
    private static void m5956g() {
    }

    /* renamed from: h */
    private Script m5957h() {
        return this.f4851a;
    }

    /* renamed from: i */
    private void m5958i() {
        m5963b();
    }

    /* renamed from: j */
    private static String m5959j() {
        if (C1132a.m4204i().endsWith("/")) {
            return C1132a.m4204i();
        }
        return C1132a.m4204i() + "/";
    }

    /* renamed from: k */
    private boolean m5960k() {
        if (this.f4851a == null || TextUtils.isEmpty(this.f4851a.getAppId())) {
            return this.f4851a != null && TextUtils.isEmpty(this.f4851a.getVersion());
        }
        return true;
    }

    /* renamed from: l */
    private boolean m5961l() {
        return C1264o.m5789c(AppContext.m5350a(), this.f4852c);
    }

    /* renamed from: a */
    public final void m5962a() {
        if (this.f4851a == null) {
            throw new RuntimeException("script info not exist");
        }
        C1151ad.m4325c(f4849f, "initMQScript initScript4Run =" + this.f4851a.toString());
        C1289b.m6001j();
        C1289b.m5986a(this.f4851a.getLcFile().getAbsolutePath(), this.f4851a.getAtcFile().getAbsolutePath(), this.f4851a.getCfgFile().getAbsolutePath(), this.f4854e, ParamsWrap.getParamsWrap().getScriptEncryptKey(), AppContext.m5350a().getString(R.string.pay_appid), AppContext.m5350a().getString(R.string.pay_vsersion));
    }

    /* renamed from: b */
    public final void m5963b() {
        String str = AppContext.m5350a().getFilesDir() + File.separator + C1225b.f4506au;
        File file = new File(str, InterfaceC1224a.f4446n);
        File file2 = new File(str, InterfaceC1224a.f4447o);
        File file3 = new File(str, InterfaceC1224a.f4448p);
        File file4 = new File(str, InterfaceC1224a.f4449q);
        File file5 = new File(str, InterfaceC1224a.f4450r);
        File file6 = new File(str, InterfaceC1224a.f4451s);
        String absolutePath = AppContext.m5350a().getFilesDir().getAbsolutePath();
        File file7 = new File(C1172o.m4483a(absolutePath, InterfaceC1224a.f4446n));
        File file8 = new File(C1172o.m4483a(absolutePath, InterfaceC1224a.f4447o));
        File file9 = new File(C1172o.m4483a(absolutePath, InterfaceC1224a.f4448p));
        File file10 = new File(C1172o.m4483a(absolutePath, InterfaceC1224a.f4449q));
        File file11 = new File(C1172o.m4483a(absolutePath, InterfaceC1224a.f4450r));
        File file12 = new File(C1172o.m4483a(absolutePath, InterfaceC1224a.f4451s));
        File file13 = new File(C1172o.m4483a(absolutePath, InterfaceC1224a.f4452t));
        this.f4852c = file.exists() || file2.exists() || file3.exists() || file4.exists() || file5.exists() || file6.exists();
        C1151ad.m4325c(f4849f, "initMQScript --> 1 isUseSdcardScript=" + this.f4852c);
        if (this.f4852c) {
            if (1 == C1264o.m5788c(AppContext.m5350a())) {
                this.f4852c = true;
            } else {
                this.f4852c = false;
            }
        }
        try {
            this.f4851a = C1261l.m5749a(this.f4852c ? new FileInputStream(file2) : AppContext.m5350a().getAssets().open(InterfaceC1224a.f4447o));
            this.f4851a.setLcFile(this.f4852c ? file : file7);
            Script script = this.f4851a;
            if (!this.f4852c) {
                file2 = file8;
            }
            script.setPropFile(file2);
            Script script2 = this.f4851a;
            if (!this.f4852c) {
                file3 = file9;
            }
            script2.setAtcFile(file3);
            Script script3 = this.f4851a;
            if (!this.f4852c) {
                file4 = file10;
            }
            script3.setUiFile(file4);
            Script script4 = this.f4851a;
            if (this.f4852c) {
                file11 = file5;
            }
            script4.setUipFile(file11);
            Script script5 = this.f4851a;
            if (this.f4852c) {
                file12 = file6;
            }
            script5.setRtdFile(file12);
            this.f4851a.setCfgFile(file13);
            C1153af.m4332a().m4336a(this.f4851a.getVersion());
            if (this.f4852c) {
                C1289b.m6001j();
                C1289b.m5985a(f4850g.m5964e(), m5953c(), m5954d());
            }
            C1151ad.m4325c(f4849f, "initMQScript --> 3 cfgFile absolutePath = " + this.f4851a.getCfgFile().getAbsolutePath() + ",isUseSdcardScript=" + this.f4852c);
            C1151ad.m4325c(f4849f, "initMQScript --> 4 AppId=" + this.f4851a.getAppId() + ",Version=" + this.f4851a.getVersion());
            StringBuilder sb = new StringBuilder("initMQScript --> 5 mScript=");
            sb.append(this.f4851a.toString());
            C1151ad.m4325c(f4849f, sb.toString());
        } catch (Exception e) {
            e.printStackTrace();
            C1151ad.m4325c(f4849f, "initMQScript --> ex= " + e.getMessage());
        }
    }

    /* renamed from: e */
    public final String m5964e() {
        String str;
        EngineParams engineParams = new EngineParams(C1487a.m6886a().m6893b(AppContext.m5350a()));
        engineParams.PackageName = AppContext.m5350a().getPackageName();
        if (C1132a.m4204i().endsWith("/")) {
            str = C1132a.m4204i();
        } else {
            str = C1132a.m4204i() + "/";
        }
        engineParams.BaseURL = str;
        engineParams.PayAppId = this.f4851a.getAppId();
        engineParams.ScriptType = (this.f4851a == null || !TextUtils.isEmpty(this.f4851a.getAppId())) && (this.f4851a == null || !TextUtils.isEmpty(this.f4851a.getVersion()));
        engineParams.AppVersion = (this.f4851a == null || !TextUtils.isEmpty(this.f4851a.getVersion())) ? this.f4851a.getVersion() : AppContext.m5350a().getString(R.string.pay_vsersion);
        engineParams.authDesKeys = C1132a.f3884c;
        return C1175r.m4523a(engineParams);
    }
}
