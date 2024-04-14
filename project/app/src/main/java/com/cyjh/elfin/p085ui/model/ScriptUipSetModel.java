package com.cyjh.elfin.p085ui.model;

import android.app.Application;
import android.arch.lifecycle.AndroidViewModel;
import android.arch.lifecycle.MutableLiveData;
import android.content.res.AssetManager;
import android.os.AsyncTask;
import android.support.annotation.NonNull;
import com.cyjh.common.util.C1171n;
import com.cyjh.common.util.C1172o;
import com.cyjh.elfin.entity.ParamsWrap;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1285c;
import com.cyjh.elfin.p073a.InterfaceC1224a;
import com.cyjh.elfin.p077e.p080c.C1264o;
import com.cyjh.feedback.lib.p092d.C1462a;
import com.cyjh.feedback.lib.p092d.C1463b;
import com.elfin.engin.C1752d;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public class ScriptUipSetModel extends AndroidViewModel {

    /* renamed from: a */
    public RunnableC1409b f5417a;

    /* renamed from: b */
    public MutableLiveData<Integer> f5418b;

    /* renamed from: c */
    private AsyncTaskC1408a f5419c;

    /* renamed from: d */
    private AsyncTaskC1410c f5420d;

    /* renamed from: com.cyjh.elfin.ui.model.ScriptUipSetModel$a */
    /* loaded from: classes.dex */
    private static class AsyncTaskC1408a extends AsyncTask<InputStream, Void, Boolean> {

        /* renamed from: a */
        private File[] f5421a;

        /* renamed from: b */
        private WeakReference<ScriptUipSetModel> f5422b;

        private AsyncTaskC1408a(ScriptUipSetModel scriptUipSetModel, File... fileArr) {
            this.f5422b = new WeakReference<>(scriptUipSetModel);
            this.f5421a = fileArr;
        }

        /* synthetic */ AsyncTaskC1408a(ScriptUipSetModel scriptUipSetModel, File[] fileArr, byte b2) {
            this(scriptUipSetModel, fileArr);
        }

        /* renamed from: a */
        private Boolean m6508a(InputStream... inputStreamArr) {
            C1171n.m4467b(new File("/sdcard/elf11.txt"), "copyScriptFiles doInBackground 1\n", "UTF-8");
            for (int i = 0; i < inputStreamArr.length; i++) {
                if (inputStreamArr[i] != null) {
                    C1172o.m4486a(inputStreamArr[i], this.f5421a[i]);
                }
            }
            C1171n.m4467b(new File("/sdcard/elf11.txt"), "copyScriptFiles doInBackground 2\n", "UTF-8");
            if (this.f5422b.get() != null && C1285c.m5955f().f4851a.getUipFile().exists() && C1285c.m5955f().f4851a.getUipFile().length() > 0) {
                C1752d.m8030a(this.f5421a[0].getAbsolutePath(), ParamsWrap.getParamsWrap().getScriptEncryptKey());
            }
            C1171n.m4467b(new File("/sdcard/elf11.txt"), "copyScriptFiles doInBackground 3\n", "UTF-8");
            return true;
        }

        /* renamed from: a */
        private void m6509a() {
            C1171n.m4467b(new File("/sdcard/elf11.txt"), "copyScriptFiles onPostExecute 1\n", "UTF-8");
            ScriptUipSetModel scriptUipSetModel = this.f5422b.get();
            if (scriptUipSetModel != null) {
                scriptUipSetModel.f5418b.postValue(0);
            }
            C1171n.m4467b(new File("/sdcard/elf11.txt"), "copyScriptFiles onPostExecute 2\n", "UTF-8");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Boolean doInBackground(InputStream[] inputStreamArr) {
            InputStream[] inputStreamArr2 = inputStreamArr;
            C1171n.m4467b(new File("/sdcard/elf11.txt"), "copyScriptFiles doInBackground 1\n", "UTF-8");
            for (int i = 0; i < inputStreamArr2.length; i++) {
                if (inputStreamArr2[i] != null) {
                    C1172o.m4486a(inputStreamArr2[i], this.f5421a[i]);
                }
            }
            C1171n.m4467b(new File("/sdcard/elf11.txt"), "copyScriptFiles doInBackground 2\n", "UTF-8");
            if (this.f5422b.get() != null && C1285c.m5955f().f4851a.getUipFile().exists() && C1285c.m5955f().f4851a.getUipFile().length() > 0) {
                C1752d.m8030a(this.f5421a[0].getAbsolutePath(), ParamsWrap.getParamsWrap().getScriptEncryptKey());
            }
            C1171n.m4467b(new File("/sdcard/elf11.txt"), "copyScriptFiles doInBackground 3\n", "UTF-8");
            return true;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Boolean bool) {
            C1171n.m4467b(new File("/sdcard/elf11.txt"), "copyScriptFiles onPostExecute 1\n", "UTF-8");
            ScriptUipSetModel scriptUipSetModel = this.f5422b.get();
            if (scriptUipSetModel != null) {
                scriptUipSetModel.f5418b.postValue(0);
            }
            C1171n.m4467b(new File("/sdcard/elf11.txt"), "copyScriptFiles onPostExecute 2\n", "UTF-8");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.elfin.ui.model.ScriptUipSetModel$b */
    /* loaded from: classes.dex */
    public class RunnableC1409b implements Runnable {
        private RunnableC1409b() {
        }

        public /* synthetic */ RunnableC1409b(ScriptUipSetModel scriptUipSetModel, byte b2) {
            this();
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                ScriptUipSetModel.this.m6507c();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.cyjh.elfin.ui.model.ScriptUipSetModel$c */
    /* loaded from: classes.dex */
    private static class AsyncTaskC1410c extends AsyncTask<Void, Void, Boolean> {

        /* renamed from: a */
        private File f5424a;

        /* renamed from: b */
        private File f5425b;

        /* renamed from: c */
        private WeakReference<ScriptUipSetModel> f5426c;

        private AsyncTaskC1410c(ScriptUipSetModel scriptUipSetModel, File... fileArr) {
            this.f5426c = new WeakReference<>(scriptUipSetModel);
            this.f5424a = fileArr[0];
            this.f5425b = fileArr[1];
        }

        /* synthetic */ AsyncTaskC1410c(ScriptUipSetModel scriptUipSetModel, File[] fileArr, byte b2) {
            this(scriptUipSetModel, fileArr);
        }

        /* renamed from: a */
        private Boolean m6510a() {
            if (this.f5426c.get() != null && this.f5425b.exists() && this.f5425b.length() > 0) {
                C1752d.m8030a(this.f5424a.getAbsolutePath(), ParamsWrap.getParamsWrap().getScriptEncryptKey());
            }
            return true;
        }

        /* renamed from: b */
        private void m6511b() {
            ScriptUipSetModel scriptUipSetModel = this.f5426c.get();
            if (scriptUipSetModel != null) {
                scriptUipSetModel.f5418b.postValue(0);
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Boolean doInBackground(Void[] voidArr) {
            if (this.f5426c.get() != null && this.f5425b.exists() && this.f5425b.length() > 0) {
                C1752d.m8030a(this.f5424a.getAbsolutePath(), ParamsWrap.getParamsWrap().getScriptEncryptKey());
            }
            return true;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Boolean bool) {
            ScriptUipSetModel scriptUipSetModel = this.f5426c.get();
            if (scriptUipSetModel != null) {
                scriptUipSetModel.f5418b.postValue(0);
            }
        }
    }

    public ScriptUipSetModel(@NonNull Application application) {
        super(application);
        this.f5418b = new MutableLiveData<>();
    }

    /* renamed from: d */
    private MutableLiveData<Integer> m6501d() {
        return this.f5418b;
    }

    /* renamed from: e */
    private void m6502e() {
        byte b2 = 0;
        if (C1285c.m5955f().f4852c) {
            C1171n.m4467b(new File("/sdcard/elf11.txt"), "sdCardScriptFiles\n", "UTF-8");
            String m5783a = C1264o.m5783a(getApplication());
            try {
                this.f5420d = new AsyncTaskC1410c(this, new File[]{new File(m5783a, InterfaceC1224a.f4446n), new File(m5783a, InterfaceC1224a.f4450r)}, b2);
                this.f5420d.executeOnExecutor(Executors.newCachedThreadPool(), new Void[0]);
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        C1171n.m4467b(new File("/sdcard/elf11.txt"), "copyScriptFiles\n", "UTF-8");
        C1171n.m4467b(new File("/sdcard/elf11.txt"), "copyScriptFiles start\n", "UTF-8");
        AssetManager assets = getApplication().getAssets();
        File lcFile = C1285c.m5955f().f4851a.getLcFile();
        File propFile = C1285c.m5955f().f4851a.getPropFile();
        File atcFile = C1285c.m5955f().f4851a.getAtcFile();
        File uipFile = C1285c.m5955f().f4851a.getUipFile();
        File rtdFile = C1285c.m5955f().f4851a.getRtdFile();
        C1171n.m4467b(new File("/sdcard/elf11.txt"), "lcFile = " + lcFile.getAbsolutePath() + "\npropFile = " + propFile.getAbsolutePath() + "\natcFile = " + atcFile.getAbsolutePath() + "\nuipFile = " + uipFile.getAbsolutePath() + "\nrtdFile = " + rtdFile.getAbsolutePath() + "\n", "UTF-8");
        try {
            InputStream open = assets.open(InterfaceC1224a.f4446n);
            InputStream open2 = assets.open(InterfaceC1224a.f4447o);
            InputStream open3 = assets.open(InterfaceC1224a.f4448p);
            InputStream open4 = assets.open(InterfaceC1224a.f4450r);
            InputStream open5 = assets.open(InterfaceC1224a.f4451s);
            this.f5419c = new AsyncTaskC1408a(this, new File[]{lcFile, propFile, atcFile, rtdFile, uipFile}, b2);
            this.f5419c.executeOnExecutor(Executors.newCachedThreadPool(), open, open2, open3, open5, open4);
        } catch (IOException e2) {
            C1171n.m4467b(new File("/sdcard/elf11.txt"), "copyScriptFiles error" + e2.getMessage() + "\n", "UTF-8");
            e2.printStackTrace();
        }
    }

    /* renamed from: f */
    private static void m6503f() {
    }

    /* renamed from: g */
    private void m6504g() {
        this.f5417a = new RunnableC1409b(this, (byte) 0);
        C1463b.m6773a().m6772a(this.f5417a);
    }

    /* renamed from: a */
    public final void m6505a() {
        String m5783a = C1264o.m5783a(getApplication());
        try {
            this.f5420d = new AsyncTaskC1410c(this, new File[]{new File(m5783a, InterfaceC1224a.f4446n), new File(m5783a, InterfaceC1224a.f4450r)}, (byte) 0);
            this.f5420d.executeOnExecutor(Executors.newCachedThreadPool(), new Void[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public final void m6506b() {
        C1171n.m4467b(new File("/sdcard/elf11.txt"), "copyScriptFiles start\n", "UTF-8");
        AssetManager assets = getApplication().getAssets();
        File lcFile = C1285c.m5955f().f4851a.getLcFile();
        File propFile = C1285c.m5955f().f4851a.getPropFile();
        File atcFile = C1285c.m5955f().f4851a.getAtcFile();
        File uipFile = C1285c.m5955f().f4851a.getUipFile();
        File rtdFile = C1285c.m5955f().f4851a.getRtdFile();
        C1171n.m4467b(new File("/sdcard/elf11.txt"), "lcFile = " + lcFile.getAbsolutePath() + "\npropFile = " + propFile.getAbsolutePath() + "\natcFile = " + atcFile.getAbsolutePath() + "\nuipFile = " + uipFile.getAbsolutePath() + "\nrtdFile = " + rtdFile.getAbsolutePath() + "\n", "UTF-8");
        try {
            InputStream open = assets.open(InterfaceC1224a.f4446n);
            InputStream open2 = assets.open(InterfaceC1224a.f4447o);
            InputStream open3 = assets.open(InterfaceC1224a.f4448p);
            InputStream open4 = assets.open(InterfaceC1224a.f4450r);
            InputStream open5 = assets.open(InterfaceC1224a.f4451s);
            this.f5419c = new AsyncTaskC1408a(this, new File[]{lcFile, propFile, atcFile, rtdFile, uipFile}, (byte) 0);
            this.f5419c.executeOnExecutor(Executors.newCachedThreadPool(), open, open2, open3, open5, open4);
        } catch (IOException e) {
            C1171n.m4467b(new File("/sdcard/elf11.txt"), "copyScriptFiles error" + e.getMessage() + "\n", "UTF-8");
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public final void m6507c() throws Exception {
        if (this.f5418b != null) {
            this.f5418b.postValue(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.arch.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
        if (this.f5417a != null) {
            C1462a m6773a = C1463b.m6773a();
            RunnableC1409b runnableC1409b = this.f5417a;
            if (runnableC1409b != null) {
                m6773a.f5674a.remove(runnableC1409b);
            }
        }
        if (this.f5419c != null) {
            this.f5419c.cancel(false);
            this.f5419c = null;
        }
    }
}
