package com.cyjh.mobileanjian.ipc;

import com.cyjh.mobileanjian.ipc.interfaces.OnRootApplyCallback;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/* renamed from: com.cyjh.mobileanjian.ipc.d */
/* loaded from: classes.dex */
public final class C1589d {

    /* renamed from: a */
    public static C1589d f5963a = null;

    /* renamed from: h */
    private static final String f5964h = "echo \"rootOK\"\n";

    /* renamed from: b */
    OnRootApplyCallback f5965b = null;

    /* renamed from: c */
    public a f5966c = null;

    /* renamed from: d */
    public boolean f5967d = false;

    /* renamed from: e */
    public DataOutputStream f5968e = null;

    /* renamed from: f */
    InputStream f5969f = null;

    /* renamed from: g */
    Process f5970g = null;

    /* renamed from: com.cyjh.mobileanjian.ipc.d$1, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 extends Thread {

        /* renamed from: a */
        final /* synthetic */ Process f5971a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, Process process) {
            super(str);
            this.f5971a = process;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x001a, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x001b, code lost:
        
            r0.printStackTrace();
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x001e, code lost:
        
            return;
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void run() {
            /*
                r2 = this;
                java.io.InputStreamReader r0 = new java.io.InputStreamReader
                java.lang.Process r1 = r2.f5971a
                java.io.InputStream r1 = r1.getErrorStream()
                r0.<init>(r1)
                java.io.BufferedReader r1 = new java.io.BufferedReader
                r1.<init>(r0)
            L10:
                java.lang.String r0 = r1.readLine()     // Catch: java.lang.Throwable -> L1f java.io.IOException -> L29
                if (r0 != 0) goto L10
                r1.close()     // Catch: java.io.IOException -> L1a
                return
            L1a:
                r0 = move-exception
                r0.printStackTrace()
                return
            L1f:
                r0 = move-exception
                r1.close()     // Catch: java.io.IOException -> L24
                goto L28
            L24:
                r1 = move-exception
                r1.printStackTrace()
            L28:
                throw r0
            L29:
                r1.close()     // Catch: java.io.IOException -> L2d
                return
            L2d:
                r0 = move-exception
                r0.printStackTrace()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.cyjh.mobileanjian.ipc.C1589d.AnonymousClass1.run():void");
        }
    }

    /* renamed from: com.cyjh.mobileanjian.ipc.d$2, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass2 extends Thread {

        /* renamed from: a */
        final /* synthetic */ boolean f5973a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(String str, boolean z) {
            super(str);
            this.f5973a = z;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(C1589d.this.f5969f));
            while (true) {
                try {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine != null) {
                            if (readLine.equals("rootOK")) {
                                C1589d.this.f5967d = true;
                                if (C1589d.this.f5965b != null) {
                                    C1589d.this.f5965b.onObtained();
                                }
                                if (this.f5973a) {
                                }
                            }
                        }
                        try {
                            bufferedReader.close();
                            return;
                        } catch (IOException e) {
                            e.printStackTrace();
                            return;
                        }
                    } catch (IOException e2) {
                        e2.printStackTrace();
                        try {
                            bufferedReader.close();
                            return;
                        } catch (IOException e3) {
                            e3.printStackTrace();
                            return;
                        }
                    }
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                    throw th;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.mobileanjian.ipc.d$a */
    /* loaded from: classes.dex */
    public class a extends Thread {
        private a() {
        }

        /* synthetic */ a(C1589d c1589d, byte b2) {
            this();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                C1589d.this.f5970g = Runtime.getRuntime().exec("su");
                C1589d.this.f5968e = new DataOutputStream(C1589d.this.f5970g.getOutputStream());
                C1589d.this.f5969f = C1589d.this.f5970g.getInputStream();
                C1589d.this.f5968e.writeBytes(C1589d.f5964h);
                C1589d.this.f5968e.flush();
                C1589d c1589d = C1589d.this;
                new AnonymousClass1("", C1589d.this.f5970g);
                AnonymousClass2 anonymousClass2 = new AnonymousClass2("", false);
                anonymousClass2.start();
                try {
                    anonymousClass2.join();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                new StringBuilder("go straight here, mRoot = ").append(c1589d.f5967d);
                if (c1589d.f5967d) {
                    return;
                }
                c1589d.f5970g.destroy();
                if (c1589d.f5965b != null) {
                    c1589d.f5965b.onRefused();
                }
                try {
                    c1589d.f5968e.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            } catch (IOException e3) {
                if (C1589d.this.f5970g != null) {
                    C1589d.this.f5970g.destroy();
                }
                if (C1589d.this.f5965b != null) {
                    C1589d.this.f5965b.onRefused();
                }
                e3.printStackTrace();
            }
        }
    }

    /* renamed from: a */
    public static synchronized C1589d m7132a() {
        C1589d c1589d;
        synchronized (C1589d.class) {
            if (f5963a == null) {
                f5963a = new C1589d();
            }
            c1589d = f5963a;
        }
        return c1589d;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0024 -> B:8:0x0027). Please submit an issue!!! */
    /* renamed from: a */
    private void m7137a(Process process, boolean z) {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1("", process);
        AnonymousClass2 anonymousClass2 = new AnonymousClass2("", z);
        if (z) {
            anonymousClass1.start();
        }
        anonymousClass2.start();
        try {
            if (z) {
                try {
                    anonymousClass1.join();
                } catch (InterruptedException unused) {
                }
                anonymousClass2.join();
            } else {
                anonymousClass2.join();
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        new StringBuilder("go straight here, mRoot = ").append(this.f5967d);
        if (this.f5967d) {
            return;
        }
        this.f5970g.destroy();
        if (this.f5965b != null) {
            this.f5965b.onRefused();
        }
        try {
            this.f5968e.close();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: b */
    private static /* synthetic */ void m7139b(C1589d c1589d, Process process) {
        new AnonymousClass1("", process);
        AnonymousClass2 anonymousClass2 = new AnonymousClass2("", false);
        anonymousClass2.start();
        try {
            anonymousClass2.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        new StringBuilder("go straight here, mRoot = ").append(c1589d.f5967d);
        if (c1589d.f5967d) {
            return;
        }
        c1589d.f5970g.destroy();
        if (c1589d.f5965b != null) {
            c1589d.f5965b.onRefused();
        }
        try {
            c1589d.f5968e.close();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: b */
    private boolean m7140b() {
        return this.f5967d;
    }

    /* renamed from: c */
    private void m7142c() {
        if (this.f5967d) {
            m7147a("exit");
            if (this.f5966c.isAlive()) {
                this.f5966c.interrupt();
            }
            try {
                this.f5968e.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        f5963a = null;
    }

    /* renamed from: d */
    private void m7144d() {
        this.f5966c = new a(this, (byte) 0);
        this.f5966c.start();
    }

    /* renamed from: e */
    private static /* synthetic */ boolean m7145e(C1589d c1589d) {
        c1589d.f5967d = true;
        return true;
    }

    /* renamed from: a */
    public final void m7146a(OnRootApplyCallback onRootApplyCallback) {
        if (this.f5967d) {
            onRootApplyCallback.onObtained();
            return;
        }
        this.f5965b = onRootApplyCallback;
        this.f5966c = new a(this, (byte) 0);
        this.f5966c.start();
    }

    /* renamed from: a */
    public final boolean m7147a(String str) {
        if (!this.f5967d) {
            return false;
        }
        try {
            this.f5968e.write(str.getBytes());
            this.f5968e.write("\n".getBytes());
            this.f5968e.flush();
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return true;
        }
    }
}
