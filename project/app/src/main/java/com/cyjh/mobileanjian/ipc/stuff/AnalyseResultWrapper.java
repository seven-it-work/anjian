package com.cyjh.mobileanjian.ipc.stuff;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.NotificationCompat;
import android.util.Log;
import android.widget.Toast;
import com.goldcoast.sdk.domain.AnalyseResult;

/* loaded from: classes.dex */
public class AnalyseResultWrapper {

    /* renamed from: a */
    private static Context f6131a;

    /* renamed from: b */
    private static Handler f6132b = new Handler() { // from class: com.cyjh.mobileanjian.ipc.stuff.AnalyseResultWrapper.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            super.handleMessage(message);
            String string = message.getData().getString("result");
            int i = message.getData().getInt(NotificationCompat.CATEGORY_STATUS);
            Log.i("MyApp", string);
            if (i == 1) {
                Toast.makeText(AnalyseResultWrapper.f6131a, string, 0).show();
            }
        }
    };

    /* renamed from: a */
    static /* synthetic */ void m7208a(String str, int i) {
        if (f6132b != null) {
            Message obtainMessage = f6132b.obtainMessage();
            Bundle bundle = new Bundle();
            bundle.putString("result", str);
            bundle.putInt(NotificationCompat.CATEGORY_STATUS, i);
            obtainMessage.setData(bundle);
            f6132b.sendMessage(obtainMessage);
        }
    }

    /* renamed from: b */
    private static void m7209b(String str, int i) {
        if (f6132b == null) {
            return;
        }
        Message obtainMessage = f6132b.obtainMessage();
        Bundle bundle = new Bundle();
        bundle.putString("result", str);
        bundle.putInt(NotificationCompat.CATEGORY_STATUS, i);
        obtainMessage.setData(bundle);
        f6132b.sendMessage(obtainMessage);
    }

    public static AnalyseResult resultBuilder(Context context) {
        f6131a = context;
        return new AnalyseResult() { // from class: com.cyjh.mobileanjian.ipc.stuff.AnalyseResultWrapper.2
            @Override // com.goldcoast.sdk.domain.AnalyseResult
            public final void onException(String str) {
                AnalyseResultWrapper.m7208a(str, 3);
            }

            @Override // com.goldcoast.sdk.domain.AnalyseResult
            public final void onFailed(String str) {
                AnalyseResultWrapper.m7208a(str, 1);
            }

            @Override // com.goldcoast.sdk.domain.AnalyseResult
            public final void onProgress(String str) {
                AnalyseResultWrapper.m7208a(str, 2);
            }

            @Override // com.goldcoast.sdk.domain.AnalyseResult
            public final void onSuccess(String str) {
                AnalyseResultWrapper.m7208a(str, 0);
            }
        };
    }

    public static AnalyseResult resultBuilder(Context context, Handler handler) {
        f6131a = context;
        f6132b = null;
        f6132b = handler;
        return resultBuilder(context);
    }
}
