package com.cyjh.elfin.p085ui.model;

import android.app.Application;
import android.arch.lifecycle.AndroidViewModel;
import android.arch.lifecycle.MutableLiveData;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.util.Log;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1175r;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.MsgItem;
import com.cyjh.elfin.p076d.C1238c;
import com.cyjh.elfin.p077e.p080c.C1260k;
import com.cyjh.feedback.lib.p092d.C1463b;
import com.cyjh.http.bean.response.BaseResponseInfo;
import com.cyjh.http.bean.response.BindRegCodeResponse;
import com.cyjh.http.bean.response.RegCodeInfoResponse;
import com.cyjh.http.bean.response.RegCodeStatusInfo;
import com.cyjh.http.p096c.p099c.C1548e;
import com.cyjh.http.p096c.p099c.C1557n;
import com.cyjh.http.p096c.p100d.InterfaceC1564b;
import com.cyjh.http.p096c.p100d.InterfaceC1569g;
import com.cyjh.http.p101d.p103b.C1577c;
import com.cyjh.http.p104e.C1579a;
import com.elfin.engin.C1752d;
import org.greenrobot.eventbus.C2772c;

/* loaded from: classes.dex */
public class RegCodeModel extends AndroidViewModel implements InterfaceC1564b, InterfaceC1569g {

    /* renamed from: c */
    private static final String f5410c = "RegCodeModel";

    /* renamed from: a */
    public MutableLiveData<BaseResponseInfo> f5411a;

    /* renamed from: b */
    public MutableLiveData<RegCodeInfoResponse> f5412b;

    /* renamed from: d */
    private C1548e f5413d;

    /* renamed from: e */
    private C1557n f5414e;

    /* renamed from: f */
    private String f5415f;

    public RegCodeModel(@NonNull Application application) {
        super(application);
        this.f5411a = new MutableLiveData<>();
        this.f5412b = new MutableLiveData<>();
    }

    /* renamed from: a */
    private MutableLiveData<BaseResponseInfo> m6491a() {
        return this.f5411a;
    }

    /* renamed from: b */
    private MutableLiveData<RegCodeInfoResponse> m6493b() {
        return this.f5412b;
    }

    @Override // com.cyjh.http.p096c.p100d.InterfaceC1564b
    /* renamed from: a */
    public final void mo6494a(BaseResponseInfo baseResponseInfo) {
        C1238c.m5531a().f4608b = 0L;
        this.f5415f = "";
        this.f5411a.postValue(baseResponseInfo);
    }

    @Override // com.cyjh.http.p096c.p100d.InterfaceC1564b
    /* renamed from: a */
    public final void mo6495a(BindRegCodeResponse bindRegCodeResponse) {
        if (200 != bindRegCodeResponse.Code) {
            mo6494a(new BaseResponseInfo(bindRegCodeResponse.Code, bindRegCodeResponse.Message));
            if (bindRegCodeResponse.Code == 1401 && TextUtils.equals(this.f5415f, C1238c.m5531a().m5543b())) {
                Log.e("zzz", "RegisterCodeActivationFragment:onBindSuc注册码过期，清空注册码");
                this.f5415f = "";
                C1238c.m5531a().f4607a = "";
                C1752d.m8029a(C1238c.m5531a().m5543b());
                C1579a.m7029b(InterfaceC1133a.f3976ay + C1132a.m4196c(), AppContext.m5350a());
                return;
            }
            return;
        }
        BindRegCodeResponse.RegCodeTimeInfo regCodeTimeInfo = bindRegCodeResponse.Data;
        long j = regCodeTimeInfo.ExpireTime;
        long j2 = regCodeTimeInfo.ServerTimestamp;
        C1238c.m5531a().f4608b = j;
        C1151ad.m4325c(f5410c, "onBindSuc --> expireTime=" + j + ",serverTimestamp=" + j2 + ",dueTime=" + ((j - j2) / 60));
        C1463b.m6773a().m6772a(new Runnable() { // from class: com.cyjh.elfin.ui.model.RegCodeModel.1
            @Override // java.lang.Runnable
            public final void run() {
                RegCodeStatusInfo regCodeStatusInfo = new RegCodeStatusInfo();
                regCodeStatusInfo.status = 1;
                regCodeStatusInfo.regCode = RegCodeModel.this.f5415f;
                String m4523a = C1175r.m4523a(regCodeStatusInfo);
                C1579a.m7018a(RegCodeModel.this.getApplication(), InterfaceC1133a.f3976ay + C1132a.m4196c(), m4523a);
                C1260k.m5735a(201);
            }
        });
        C1238c.m5531a().f4607a = this.f5415f;
        C2772c.m12482a().m12506c(new MsgItem.BindRegCodeBus(j));
        this.f5411a.postValue(new BaseResponseInfo(bindRegCodeResponse.Code, bindRegCodeResponse.Message));
    }

    @Override // com.cyjh.http.p096c.p100d.InterfaceC1569g
    /* renamed from: a */
    public final void mo6496a(RegCodeInfoResponse regCodeInfoResponse) {
        this.f5412b.postValue(regCodeInfoResponse);
    }

    /* renamed from: a */
    public final void m6497a(String str) {
        if (this.f5414e == null) {
            this.f5414e = new C1557n(this);
        }
        this.f5414e.m6964a(str, C1238c.m5531a().m5543b(), getApplication());
    }

    /* renamed from: a */
    public final void m6498a(String str, int i) {
        if (this.f5413d == null) {
            this.f5413d = new C1548e(this);
        }
        this.f5415f = str;
        this.f5413d.m6931a(str, getApplication(), i, C1238c.m5531a().m5543b());
    }

    @Override // com.cyjh.http.p096c.p100d.InterfaceC1569g
    /* renamed from: b */
    public final void mo6499b(String str) {
        this.f5412b.postValue(new RegCodeInfoResponse(0, str));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.arch.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
        if (this.f5413d != null) {
            C1577c.m7005a().m7010a(this.f5413d.getClass().getCanonicalName());
        }
        if (this.f5414e != null) {
            C1577c.m7005a().m7010a(this.f5414e.getClass().getCanonicalName());
        }
    }
}
