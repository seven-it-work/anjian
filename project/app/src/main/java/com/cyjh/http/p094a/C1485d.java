package com.cyjh.http.p094a;

import android.content.Context;
import android.os.AsyncTask;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1158ak;
import com.cyjh.common.util.C1171n;
import com.cyjh.http.p104e.C1580b;
import java.io.File;
import java.util.concurrent.Executors;

/* renamed from: com.cyjh.http.a.d */
/* loaded from: classes.dex */
public class C1485d {

    /* renamed from: c */
    private static String f5795c = "d";

    /* renamed from: d */
    private static C1485d f5796d;

    /* renamed from: a */
    public Context f5797a;

    /* renamed from: b */
    C1580b.a f5798b = new C1580b.a() { // from class: com.cyjh.http.a.d.1
        @Override // com.cyjh.http.p104e.C1580b.a
        /* renamed from: a */
        public final void mo5779a(int i) {
        }

        @Override // com.cyjh.http.p104e.C1580b.a
        /* renamed from: a */
        public final void mo5780a(File file) {
            C1151ad.m4325c(C1485d.f5795c, "onDownloadSuccess --> file=" + file.getName());
            new a(file).executeOnExecutor(Executors.newCachedThreadPool(), new Void[0]);
        }

        @Override // com.cyjh.http.p104e.C1580b.a
        /* renamed from: a */
        public final void mo5781a(Exception exc) {
            C1151ad.m4325c(C1485d.f5795c, "onDownloadFailed --> exception=" + exc.getMessage());
            if (C1485d.this.f5799e != null) {
                C1485d.this.f5799e.mo5935c();
            }
        }
    };

    /* renamed from: e */
    private c f5799e;

    /* renamed from: com.cyjh.http.a.d$a */
    /* loaded from: classes.dex */
    private class a extends AsyncTask<Void, Void, Boolean> {

        /* renamed from: b */
        private File f5802b;

        public a(File file) {
            this.f5802b = file;
        }

        /* renamed from: a */
        private Boolean m6880a() {
            boolean m4347a = C1158ak.m4347a(this.f5802b, C1171n.m4452a(C1485d.this.f5797a, InterfaceC1133a.f3940aO));
            C1171n.m4470c(this.f5802b);
            C1151ad.m4325c(C1485d.f5795c, "DeleteZipTask doInBackground --> result=" + m4347a);
            return Boolean.valueOf(m4347a);
        }

        /* renamed from: a */
        private void m6881a(Boolean bool) {
            super.onPostExecute(bool);
            if (C1485d.this.f5799e != null) {
                if (bool.booleanValue()) {
                    C1485d.this.f5799e.mo5934b();
                } else {
                    C1485d.this.f5799e.mo5935c();
                }
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Boolean doInBackground(Void[] voidArr) {
            boolean m4347a = C1158ak.m4347a(this.f5802b, C1171n.m4452a(C1485d.this.f5797a, InterfaceC1133a.f3940aO));
            C1171n.m4470c(this.f5802b);
            C1151ad.m4325c(C1485d.f5795c, "DeleteZipTask doInBackground --> result=" + m4347a);
            return Boolean.valueOf(m4347a);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Boolean bool) {
            Boolean bool2 = bool;
            super.onPostExecute(bool2);
            if (C1485d.this.f5799e != null) {
                if (bool2.booleanValue()) {
                    C1485d.this.f5799e.mo5934b();
                } else {
                    C1485d.this.f5799e.mo5935c();
                }
            }
        }
    }

    /* renamed from: com.cyjh.http.a.d$b */
    /* loaded from: classes.dex */
    private class b extends AsyncTask<String, Void, Void> {

        /* renamed from: b */
        private Context f5804b;

        public b(Context context) {
            this.f5804b = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(String... strArr) {
            try {
                File m4452a = C1171n.m4452a(this.f5804b, InterfaceC1133a.f3940aO);
                File file = new File(m4452a, InterfaceC1133a.f3941aP);
                File file2 = new File(m4452a, InterfaceC1133a.f3941aP);
                C1171n.m4470c(file);
                C1171n.m4470c(file2);
                String substring = strArr[0].substring(strArr[0].lastIndexOf("/"));
                File m4454a = C1171n.m4454a(strArr[1], substring);
                C1151ad.m4325c(C1485d.f5795c, "LibraryDownloadTask doInBackground --> zipName=" + substring + ", file path = " + m4454a.getAbsolutePath());
                C1580b.m7055a().m7059a(strArr[0], m4454a.getParentFile().getAbsolutePath(), m4454a.getName(), -1, C1485d.this.f5798b);
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
    }

    /* renamed from: com.cyjh.http.a.d$c */
    /* loaded from: classes.dex */
    public interface c {
        /* renamed from: a */
        void mo5933a();

        /* renamed from: b */
        void mo5934b();

        /* renamed from: c */
        void mo5935c();
    }

    private C1485d() {
    }

    /* renamed from: a */
    public static C1485d m6873a() {
        if (f5796d == null) {
            synchronized (C1485d.class) {
                if (f5796d == null) {
                    f5796d = new C1485d();
                }
            }
        }
        return f5796d;
    }

    /* renamed from: a */
    private C1485d m6874a(Context context) {
        this.f5797a = context;
        return this;
    }

    /* renamed from: a */
    private void m6875a(String str) {
        if (m6879b()) {
            if (this.f5799e != null) {
                this.f5799e.mo5933a();
                return;
            }
            return;
        }
        String str2 = this.f5797a.getPackageName() + File.separator + InterfaceC1133a.f3940aO;
        C1151ad.m4325c(f5795c, "libraryDownloadTask --> path=" + str2);
        new b(this.f5797a).executeOnExecutor(Executors.newCachedThreadPool(), str, str2);
    }

    /* renamed from: a */
    public final void m6878a(String str, c cVar) {
        C1151ad.m4325c(f5795c, "download --> url=" + str);
        this.f5799e = cVar;
        if (m6879b()) {
            if (this.f5799e != null) {
                this.f5799e.mo5933a();
                return;
            }
            return;
        }
        String str2 = this.f5797a.getPackageName() + File.separator + InterfaceC1133a.f3940aO;
        C1151ad.m4325c(f5795c, "libraryDownloadTask --> path=" + str2);
        new b(this.f5797a).executeOnExecutor(Executors.newCachedThreadPool(), str, str2);
    }

    /* renamed from: b */
    public final boolean m6879b() {
        String str = this.f5797a.getFilesDir() + File.separator + InterfaceC1133a.f3940aO;
        File file = new File(str, InterfaceC1133a.f3941aP);
        File file2 = new File(str, InterfaceC1133a.f3942aQ);
        return file.exists() && file.length() > 0 && file2.exists() && file2.length() > 0;
    }
}
