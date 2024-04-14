package com.iflytek.voiceads.download;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.download.C2261d;
import com.iflytek.voiceads.utils.C2313g;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.iflytek.voiceads.download.o */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2275o extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ C2261d f8540a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2275o(C2261d c2261d) {
        this.f8540a = c2261d;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        HashMap hashMap;
        HashMap hashMap2;
        if ("android.intent.action.PACKAGE_ADDED".equals(intent.getAction())) {
            C2313g.m10136a(SDKConstants.TAG, "app add" + intent.getDataString());
            hashMap = this.f8540a.f8483d;
            for (Map.Entry entry : hashMap.entrySet()) {
                if (((C2261d.b) entry.getValue()).f8519h == 1) {
                    C2313g.m10136a(SDKConstants.TAG, ((C2261d.b) entry.getValue()).f8514c + "//" + intent.getDataString());
                    if (intent.getDataString().contains(((C2261d.b) entry.getValue()).f8514c) || "noPackage".equals(((C2261d.b) entry.getValue()).f8514c)) {
                        ((C2261d.b) entry.getValue()).f8519h = 2;
                        this.f8540a.m9931a(((C2261d.b) entry.getValue()).f8518g);
                    }
                    hashMap2 = this.f8540a.f8483d;
                    hashMap2.remove(((C2261d.b) entry.getValue()).f8513b);
                    C2313g.m10136a(SDKConstants.TAG, "安装完成监控");
                }
            }
            this.f8540a.m9939c();
        }
    }
}
