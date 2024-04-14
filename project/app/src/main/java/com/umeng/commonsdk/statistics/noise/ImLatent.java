package com.umeng.commonsdk.statistics.noise;

import android.content.Context;
import com.umeng.commonsdk.proguard.C2518v;
import com.umeng.commonsdk.statistics.C2529a;
import com.umeng.commonsdk.statistics.common.C2535d;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.idtracking.C2545g;
import com.umeng.commonsdk.statistics.idtracking.Envelope;
import com.umeng.commonsdk.statistics.internal.InterfaceC2564d;
import com.umeng.commonsdk.statistics.internal.StatTracer;

/* loaded from: classes.dex */
public class ImLatent implements InterfaceC2564d {
    private static ImLatent instanse;
    private Context context;
    private StatTracer statTracer;
    private C2535d storeHelper;
    private final int _DEFAULT_HOURS = 360;
    private final int _DEFAULT_MIN_HOURS = 36;
    private final int _DEFAULT_MIN_LATENT = 1;
    private final int _DEFAULT_MAX_LATENT = 1800;
    private final long _ONE_HOURS_IN_MS = 3600000;
    private final long _360HOURS_IN_MS = 1296000000;
    private final long _36HOURS_IN_MS = 129600000;
    private final int LATENT_MAX = 1800000;
    private final int LATENT_WINDOW = 10;
    private long latentHour = 1296000000;
    private int latentWindow = 10;
    private long mDelay = 0;
    private long mElapsed = 0;
    private boolean mLatentActivite = false;
    private Object mLatentLock = new Object();

    private ImLatent(Context context, StatTracer statTracer) {
        this.context = context;
        this.storeHelper = C2535d.m11307a(context);
        this.statTracer = statTracer;
    }

    public static synchronized ImLatent getService(Context context, StatTracer statTracer) {
        ImLatent imLatent;
        synchronized (ImLatent.class) {
            if (instanse == null) {
                ImLatent imLatent2 = new ImLatent(context, statTracer);
                instanse = imLatent2;
                imLatent2.onImprintChanged(C2545g.m11393a(context).m11403b());
            }
            imLatent = instanse;
        }
        return imLatent;
    }

    public long getDelayTime() {
        long j;
        synchronized (this.mLatentLock) {
            j = this.mDelay;
        }
        return j;
    }

    public long getElapsedTime() {
        return this.mElapsed;
    }

    public boolean isLatentActivite() {
        boolean z;
        synchronized (this.mLatentLock) {
            z = this.mLatentActivite;
        }
        return z;
    }

    public void latentDeactivite() {
        synchronized (this.mLatentLock) {
            this.mLatentActivite = false;
        }
    }

    @Override // com.umeng.commonsdk.statistics.internal.InterfaceC2564d
    public void onImprintChanged(C2545g.a aVar) {
        int intValue = Integer.valueOf(aVar.m11408a("latent_hours", "360")).intValue();
        if (intValue <= 36) {
            intValue = 360;
        }
        this.latentHour = intValue * 3600000;
        int intValue2 = Integer.valueOf(aVar.m11408a(C2518v.f9553at, "0")).intValue();
        if (intValue2 <= 0 || intValue2 > 1800) {
            intValue2 = 0;
        }
        if (intValue2 == 0) {
            this.latentWindow = (C2529a.f9726a <= 0 || C2529a.f9726a > 1800000) ? 10 : C2529a.f9726a;
        } else {
            this.latentWindow = intValue2;
        }
    }

    public boolean shouldStartLatency() {
        if (this.storeHelper.m11314c() || this.statTracer.isFirstRequest()) {
            return false;
        }
        synchronized (this.mLatentLock) {
            if (this.mLatentActivite) {
                return false;
            }
            long currentTimeMillis = System.currentTimeMillis() - this.statTracer.getLastReqTime();
            if (currentTimeMillis > this.latentHour) {
                String signature = Envelope.getSignature(this.context);
                synchronized (this.mLatentLock) {
                    this.mDelay = DataHelper.random(this.latentWindow, signature);
                    this.mElapsed = currentTimeMillis;
                    this.mLatentActivite = true;
                }
                return true;
            }
            if (currentTimeMillis <= 129600000) {
                return false;
            }
            synchronized (this.mLatentLock) {
                this.mDelay = 0L;
                this.mElapsed = currentTimeMillis;
                this.mLatentActivite = true;
            }
            return true;
        }
    }
}
