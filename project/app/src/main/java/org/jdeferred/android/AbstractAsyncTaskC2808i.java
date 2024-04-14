package org.jdeferred.android;

import android.os.AsyncTask;
import java.util.concurrent.CancellationException;
import org.jdeferred.InterfaceC2818e;
import org.jdeferred.InterfaceC2829p;
import org.jdeferred.p208a.C2794d;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* renamed from: org.jdeferred.android.i */
/* loaded from: classes2.dex */
public abstract class AbstractAsyncTaskC2808i<Params, Progress, Result> extends AsyncTask<Params, Progress, Result> {

    /* renamed from: a */
    protected final Logger f10644a;

    /* renamed from: b */
    final C2794d<Result, Throwable, Progress> f10645b;

    /* renamed from: c */
    final int f10646c;

    /* renamed from: d */
    private Throwable f10647d;

    public AbstractAsyncTaskC2808i() {
        this.f10644a = LoggerFactory.getLogger(AbstractAsyncTaskC2808i.class);
        this.f10645b = new C2794d<>();
        this.f10646c = InterfaceC2818e.a.DEFAULT$273301ba;
    }

    private AbstractAsyncTaskC2808i(int i) {
        this.f10644a = LoggerFactory.getLogger(AbstractAsyncTaskC2808i.class);
        this.f10645b = new C2794d<>();
        this.f10646c = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private void m12668a(Progress progress) {
        publishProgress(progress);
    }

    /* renamed from: b */
    private InterfaceC2829p<Result, Throwable, Progress> m12669b() {
        return this.f10645b;
    }

    /* renamed from: c */
    private int m12670c() {
        return this.f10646c;
    }

    /* renamed from: a */
    protected abstract Result m12671a() throws Exception;

    @Override // android.os.AsyncTask
    protected final Result doInBackground(Params... paramsArr) {
        try {
            return m12671a();
        } catch (Throwable th) {
            this.f10647d = th;
            return null;
        }
    }

    @Override // android.os.AsyncTask
    protected final void onCancelled() {
        this.f10645b.mo12648b((C2794d<Result, Throwable, Progress>) new CancellationException());
    }

    @Override // android.os.AsyncTask
    protected final void onCancelled(Result result) {
        this.f10645b.mo12648b((C2794d<Result, Throwable, Progress>) new CancellationException());
    }

    @Override // android.os.AsyncTask
    protected final void onPostExecute(Result result) {
        if (this.f10647d != null) {
            this.f10645b.mo12648b((C2794d<Result, Throwable, Progress>) this.f10647d);
        } else {
            this.f10645b.mo12646a((C2794d<Result, Throwable, Progress>) result);
        }
    }

    @Override // android.os.AsyncTask
    protected final void onProgressUpdate(Progress... progressArr) {
        if (progressArr == null || progressArr.length == 0) {
            this.f10645b.mo12649c(null);
        } else if (progressArr.length > 0) {
            this.f10644a.warn("There were multiple progress values.  Only the first one was used!");
            this.f10645b.mo12649c(progressArr[0]);
        }
    }
}
