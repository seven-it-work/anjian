package com.elfin.engin;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.cyjh.common.util.C1176s;
import com.cyjh.elfin.util.IpcSwap;
import com.cyjh.mobileanjian.ipc.uip.UisScriptRunner;
import com.cyjh.mq.sdk.MqBridge;
import com.cyjh.mq.sdk.entity.Script4Run;
import com.cyjh.mq.service.IpcService;
import com.elfin.engin.C1750c;
import com.elfin.engin.p124b.C1748b;
import com.elfin.engin.p124b.C1749c;
import com.elfin.engin.p124b.p125a.InterfaceC1747a;
import com.goldcoast.sdk.domain.EntryPoint;
import java.io.File;

/* renamed from: com.elfin.engin.d */
/* loaded from: classes.dex */
public final class C1752d {
    /* renamed from: a */
    public static InterfaceC1747a m8024a(Context context, String str, String str2, String str3) {
        Log.e("a111111", "getScriptModel " + str2 + C1176s.a.f4108a + str + C1176s.a.f4108a + str3);
        File file = new File(str2);
        return (str2 == null || !file.exists() || file.length() <= 0) ? new C1748b(context, str, str3) : new C1749c(context, str2, str3);
    }

    /* renamed from: a */
    private static void m8025a(int i) {
        AbstractC1745b abstractC1745b;
        C1750c m8005a = C1750c.m8005a();
        m8005a.f6895c = i;
        if (m8005a.f6895c == 0) {
            if (m8005a.f6896d == null) {
                m8005a.f6896d = new C1754f();
            }
            abstractC1745b = m8005a.f6896d;
        } else {
            if (m8005a.f6897e == null) {
                m8005a.f6897e = new C1755g();
            }
            abstractC1745b = m8005a.f6897e;
        }
        m8005a.f6894b = abstractC1745b;
    }

    /* renamed from: a */
    private static void m8026a(Application application) {
        C1750c m8005a = C1750c.m8005a();
        EntryPoint.init(application, "", null, 10, (byte) 0);
        m8005a.f6896d = new C1754f();
        m8005a.f6894b = m8005a.f6896d;
    }

    /* renamed from: a */
    private static void m8027a(Application application, String str, String str2, InterfaceC1753e interfaceC1753e) {
        C1750c m8005a = C1750c.m8005a();
        m8005a.f6898f = interfaceC1753e;
        MqBridge.init(application, str, str2, m8005a.f6899g, new C1750c.AnonymousClass7(application), m8005a.f6900h);
        m8005a.f6894b.mo7981a(m8005a.f6903k);
        AbstractC1745b abstractC1745b = m8005a.f6894b;
        abstractC1745b.mo7980a().setOnScriptListener(m8005a.f6901i);
    }

    /* renamed from: a */
    public static void m8028a(Context context) {
        context.stopService(new Intent(context, (Class<?>) IpcService.class));
    }

    /* renamed from: a */
    public static void m8029a(String str) {
        C1750c m8005a = C1750c.m8005a();
        if (m8005a.f6894b != null) {
            m8005a.f6894b.mo7983a(str);
        }
    }

    /* renamed from: a */
    public static void m8030a(String str, String str2) {
        Log.e("zzz", "runScript--startLoop:" + str + ", scriptEncryptKey:" + str2);
        UisScriptRunner.getInstance().startLoop(str, str2);
    }

    /* renamed from: a */
    private static void m8031a(String str, String str2, String str3) {
        C1750c m8005a = C1750c.m8005a();
        m8005a.f6894b.mo7984a(str, str2, str3, m8005a.f6902j);
    }

    /* renamed from: a */
    private static void m8032a(String str, String str2, String str3, int i, long j, String str4, String str5, String str6) {
        C1750c m8005a = C1750c.m8005a();
        Script4Run script4Run = new Script4Run();
        script4Run.setLcPath(str);
        script4Run.setAtcPath(str2);
        script4Run.setConfigPath(str3);
        script4Run.setScriptEncryptKey(str4);
        script4Run.trialTime = i;
        script4Run.encryptKey = j;
        Log.e("zzz", "runScript--script4Run.scripyEncryptKey:" + script4Run.getScriptEncryptKey());
        script4Run.appId = str5;
        script4Run.username = str6;
        script4Run.encrypt = true;
        if (m8005a.f6894b != null) {
            m8005a.f6894b.m7982a(script4Run);
        }
    }

    /* renamed from: a */
    private static void m8033a(String str, String str2, String str3, String str4) {
        C1750c m8005a = C1750c.m8005a();
        Script4Run script4Run = new Script4Run();
        script4Run.setLcPath(str);
        script4Run.setAtcPath(str2);
        script4Run.setConfigPath(str3);
        script4Run.setScriptEncryptKey(str4);
        if (m8005a.f6894b != null) {
            m8005a.f6894b.m7982a(script4Run);
        }
    }

    /* renamed from: a */
    public static void m8034a(boolean z, int i, int i2, int i3, int i4) {
        C1750c m8005a = C1750c.m8005a();
        if (m8005a.f6894b != null) {
            m8005a.f6894b.mo7985a(z, i, i2, i3, i4);
        }
    }

    /* renamed from: a */
    public static boolean m8035a() {
        C1750c m8005a = C1750c.m8005a();
        if (m8005a.f6894b != null) {
            return m8005a.f6894b.mo7980a().isScriptStarted();
        }
        return false;
    }

    /* renamed from: b */
    private static String m8036b(String str) {
        return IpcSwap.checkTemplateReq(str);
    }

    /* renamed from: b */
    private static void m8037b() {
        C1750c m8005a = C1750c.m8005a();
        if (m8005a.f6894b != null) {
            m8005a.f6894b.mo7981a(m8005a.f6903k);
            m8005a.f6894b.mo7980a().start();
        }
    }

    /* renamed from: c */
    private static String m8038c(String str) {
        return IpcSwap.startAppReq(str);
    }

    /* renamed from: c */
    private static void m8039c() {
        C1750c m8005a = C1750c.m8005a();
        if (m8005a.f6894b != null) {
            m8005a.f6894b.mo7980a().pause();
        }
    }

    /* renamed from: d */
    private static void m8040d() {
        C1750c m8005a = C1750c.m8005a();
        if (m8005a.f6894b != null) {
            m8005a.f6894b.mo7980a().resume();
        }
    }

    /* renamed from: e */
    private static void m8041e() {
        C1750c m8005a = C1750c.m8005a();
        if (m8005a.f6894b != null) {
            m8005a.f6894b.mo7980a().stop();
        }
    }

    /* renamed from: f */
    private static boolean m8042f() {
        return C1750c.m8005a().f6893a;
    }

    /* renamed from: g */
    private static void m8043g() {
        C1750c.m8005a().f6893a = false;
    }

    /* renamed from: h */
    private static void m8044h() {
        UisScriptRunner.getInstance().stopLoop();
    }

    /* renamed from: i */
    private static void m8045i() {
        MqBridge.exit();
    }
}
