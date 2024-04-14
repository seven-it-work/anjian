package com.cyjh.common.util;

import android.content.Context;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

/* renamed from: com.cyjh.common.util.t */
/* loaded from: classes.dex */
public final class C1177t {

    /* renamed from: f */
    private static C1177t f4115f = null;

    /* renamed from: g */
    private static final int f4116g = 1;

    /* renamed from: h */
    private static final int f4117h = 0;

    /* renamed from: a */
    Context f4118a;

    /* renamed from: b */
    a f4119b;

    /* renamed from: c */
    volatile boolean f4120c;

    /* renamed from: d */
    String f4121d;

    /* renamed from: e */
    Handler f4122e = new Handler(Looper.getMainLooper()) { // from class: com.cyjh.common.util.t.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            super.handleMessage(message);
            if (C1177t.this.f4119b != null) {
                int i = message.what;
                if (message.what == 0) {
                    message.obj.toString();
                }
            }
        }
    };

    /* renamed from: com.cyjh.common.util.t$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void m4542a();

        /* renamed from: b */
        void m4543b();
    }

    private C1177t(Context context) {
        this.f4118a = context;
    }

    /* renamed from: a */
    public static C1177t m4533a(Context context) {
        if (f4115f == null) {
            f4115f = new C1177t(context);
        }
        return f4115f;
    }

    /* renamed from: a */
    private void m4534a(a aVar) {
        this.f4119b = aVar;
    }

    /* renamed from: a */
    public final C1177t m4540a(final String str, final String str2) {
        new Thread(new Runnable() { // from class: com.cyjh.common.util.t.2
            @Override // java.lang.Runnable
            public final void run() {
                C1177t.this.m4541a(C1177t.this.f4118a, str, str2);
                (C1177t.this.f4120c ? C1177t.this.f4122e.obtainMessage(1) : C1177t.this.f4122e.obtainMessage(0, C1177t.this.f4121d)).sendToTarget();
            }
        }).start();
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m4541a(Context context, String str, String str2) {
        try {
            String[] list = context.getAssets().list(str);
            if (list.length > 0) {
                File file = new File(Environment.getExternalStorageDirectory(), str2);
                if (!file.exists()) {
                    file.mkdirs();
                }
                for (String str3 : list) {
                    if (str.equals("")) {
                        m4541a(context, str3, str2 + File.separator + str3);
                    } else {
                        m4541a(context, str + File.separator + str3, str2 + File.separator + str3);
                    }
                }
            } else {
                File file2 = new File(Environment.getExternalStorageDirectory(), str2);
                InputStream open = context.getAssets().open(str);
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = open.read(bArr);
                    if (read == -1) {
                        break;
                    } else {
                        fileOutputStream.write(bArr, 0, read);
                    }
                }
                fileOutputStream.flush();
                open.close();
                fileOutputStream.close();
            }
            this.f4120c = true;
        } catch (Exception e) {
            e.printStackTrace();
            this.f4121d = e.getMessage();
            this.f4120c = false;
        }
    }
}
