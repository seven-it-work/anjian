package com.hlzn.socketclient;

import android.text.TextUtils;
import com.hlzn.socketclient.p167f.C2159d;
import com.hlzn.socketclient.service.SocketService;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.hlzn.socketclient.e */
/* loaded from: classes.dex */
public class C2152e {

    /* renamed from: a */
    public final String f8140a = C2152e.class.getSimpleName();

    /* renamed from: b */
    public Map<String, C2150d> f8141b = new ConcurrentHashMap();

    /* renamed from: c */
    public SocketService f8142c;

    public C2152e(SocketService socketService) {
        this.f8142c = socketService;
    }

    /* renamed from: b */
    private void m9538b(String str) {
        if (str == null) {
            return;
        }
        if (!this.f8141b.containsKey(str)) {
            this.f8141b.put(str, new C2150d(this.f8142c, str));
        }
        C2159d.m9593b(this.f8140a, "add --> 添加消息到发送超时管理器 rpcId=" + str);
    }

    /* renamed from: a */
    public final synchronized void m9539a() {
        Iterator<Map.Entry<String, C2150d>> it = this.f8141b.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().cancel();
        }
    }

    /* renamed from: a */
    public final void m9540a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        C2159d.m9593b(this.f8140a, "remove --> 从发送消息管理器移除消息 rpcId=" + str);
        C2150d remove = this.f8141b.remove(str);
        if (remove != null) {
            remove.cancel();
        }
    }
}
