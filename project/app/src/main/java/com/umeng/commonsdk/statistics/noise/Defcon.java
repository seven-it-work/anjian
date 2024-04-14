package com.umeng.commonsdk.statistics.noise;

import android.content.Context;
import com.umeng.commonsdk.amap.UMAmapConfig;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.statistics.idtracking.C2545g;
import com.umeng.commonsdk.statistics.internal.InterfaceC2564d;

/* loaded from: classes.dex */
public class Defcon implements InterfaceC2564d {
    private static final int LEVEL_0 = 0;
    private static final int LEVEL_1 = 1;
    private static final int LEVEL_2 = 2;
    private static final int LEVEL_3 = 3;
    private static final long MILLIS_24_HOURS = 86400000;
    private static final long MILLIS_4_HOURS = 14400000;
    private static final long MILLIS_8_HOURS = 28800000;
    private static Defcon instanse;
    private int mLevel = 0;

    private Defcon() {
    }

    public static synchronized Defcon getService(Context context) {
        Defcon defcon;
        synchronized (Defcon.class) {
            if (instanse == null) {
                instanse = new Defcon();
                instanse.setLevel(Integer.valueOf(UMEnvelopeBuild.imprintProperty(context, "defcon", "0")).intValue());
            }
            defcon = instanse;
        }
        return defcon;
    }

    public int getLevel() {
        return this.mLevel;
    }

    public long getReqInterval() {
        switch (this.mLevel) {
            case 1:
                return MILLIS_4_HOURS;
            case 2:
                return MILLIS_8_HOURS;
            case 3:
                return 86400000L;
            default:
                return 0L;
        }
    }

    public long getRetryInterval() {
        if (this.mLevel == 0) {
            return 0L;
        }
        return UMAmapConfig.AMAP_CACHE_READ_TIME;
    }

    public boolean isOpen() {
        return this.mLevel != 0;
    }

    @Override // com.umeng.commonsdk.statistics.internal.InterfaceC2564d
    public void onImprintChanged(C2545g.a aVar) {
        setLevel(Integer.valueOf(aVar.m11408a("defcon", "0")).intValue());
    }

    public void setLevel(int i) {
        if (i < 0 || i > 3) {
            return;
        }
        this.mLevel = i;
    }
}
