package com.cyjh.elfin.p085ui.model;

import android.app.Application;
import android.arch.lifecycle.AndroidViewModel;
import android.arch.lifecycle.MutableLiveData;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1175r;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.MsgItem;
import com.cyjh.elfin.p076d.C1238c;
import com.cyjh.http.bean.response.RegCodeInfoResponse;
import com.cyjh.http.bean.response.RegCodeStatusInfo;
import com.cyjh.http.p096c.p099c.C1559p;
import com.cyjh.http.p096c.p100d.InterfaceC1571i;
import com.cyjh.http.p101d.p103b.C1577c;
import com.cyjh.http.p104e.C1579a;
import org.greenrobot.eventbus.C2772c;

/* loaded from: classes.dex */
public class UnRegCodeModel extends AndroidViewModel implements InterfaceC1571i {

    /* renamed from: a */
    public C1559p f5451a;

    /* renamed from: b */
    public String f5452b;

    /* renamed from: c */
    public MutableLiveData<RegCodeInfoResponse> f5453c;

    public UnRegCodeModel(@NonNull Application application) {
        super(application);
        this.f5453c = new MutableLiveData<>();
    }

    /* renamed from: a */
    private MutableLiveData<RegCodeInfoResponse> m6541a() {
        return this.f5453c;
    }

    /* renamed from: b */
    private void m6542b(String str) {
        if (this.f5451a == null) {
            this.f5451a = new C1559p(this);
        }
        this.f5452b = str;
        this.f5451a.m6968a(str, AppContext.m5350a());
    }

    @Override // com.cyjh.http.p096c.p100d.InterfaceC1571i
    /* renamed from: a */
    public final void mo6543a(RegCodeInfoResponse regCodeInfoResponse) {
        if (regCodeInfoResponse.Code == 200) {
            String m5543b = C1238c.m5531a().m5543b();
            if (!TextUtils.isEmpty(m5543b) && TextUtils.equals(m5543b, this.f5452b)) {
                C2772c.m12482a().m12506c(new MsgItem.BindRegCodeBus(-1L));
                RegCodeStatusInfo regCodeStatusInfo = new RegCodeStatusInfo();
                regCodeStatusInfo.status = 2;
                regCodeStatusInfo.regCode = this.f5452b;
                String m4523a = C1175r.m4523a(regCodeStatusInfo);
                C1579a.m7018a(AppContext.m5350a(), InterfaceC1133a.f3976ay + C1132a.m4196c(), m4523a);
            }
        }
        this.f5453c.postValue(regCodeInfoResponse);
    }

    @Override // com.cyjh.http.p096c.p100d.InterfaceC1571i
    /* renamed from: a */
    public final void mo6544a(String str) {
        this.f5453c.postValue(new RegCodeInfoResponse(-1, str));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.arch.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
        if (this.f5451a != null) {
            C1577c.m7005a().m7010a(this.f5451a.getClass().getCanonicalName());
        }
    }
}
