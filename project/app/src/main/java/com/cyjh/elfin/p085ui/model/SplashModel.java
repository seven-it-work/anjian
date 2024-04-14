package com.cyjh.elfin.p085ui.model;

import android.app.Application;
import android.arch.lifecycle.AndroidViewModel;
import android.arch.lifecycle.LiveData;
import android.arch.lifecycle.MutableLiveData;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.util.Log;
import com.core.p063a.C1115b;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1171n;
import com.cyjh.common.util.C1175r;
import com.cyjh.common.util.C1201x;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.ParamsWrap;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1285c;
import com.cyjh.elfin.floatingwindowprocess.p084d.C1289b;
import com.cyjh.elfin.floatingwindowprocess.service.FloatingWindowService;
import com.cyjh.elfin.p073a.C1225b;
import com.cyjh.elfin.p073a.C1226c;
import com.cyjh.elfin.p076d.C1238c;
import com.cyjh.elfin.p077e.p080c.C1260k;
import com.cyjh.elfin.util.IpcSwap;
import com.cyjh.feedback.lib.p092d.C1463b;
import com.cyjh.http.bean.request.BaseRequestValueInfo;
import com.cyjh.http.bean.request.StartAppRequestInfo;
import com.cyjh.http.bean.response.AppRelatedInfo;
import com.cyjh.http.bean.response.AppStartupResponse;
import com.cyjh.http.bean.response.AuthorRelatedInfo;
import com.cyjh.http.bean.response.DomainResult;
import com.cyjh.http.bean.response.PhoneConfig;
import com.cyjh.http.bean.response.ScriptStartRunResponse;
import com.cyjh.http.bean.response.TemplateResponse;
import com.cyjh.http.p094a.C1484c;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p096c.p099c.C1544a;
import com.cyjh.http.p096c.p099c.C1546c;
import com.cyjh.http.p104e.C1580b;
import com.elfin.ad.p121e.C1733a;
import com.hjol.R;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;
import p003b.C0494ac;

/* loaded from: classes.dex */
public class SplashModel extends AndroidViewModel {

    /* renamed from: a */
    public static final int f5427a = -1;

    /* renamed from: b */
    public static final int f5428b = 19;

    /* renamed from: c */
    public static final int f5429c = 20;

    /* renamed from: d */
    public static final int f5430d = 21;

    /* renamed from: e */
    public static final int f5431e = 0;

    /* renamed from: f */
    public static final int f5432f = 1;

    /* renamed from: g */
    public static final int f5433g = 2;

    /* renamed from: h */
    public static final int f5434h = 3;

    /* renamed from: k */
    private static final String f5435k = "SplashModel";

    /* renamed from: i */
    public MutableLiveData<C1416a> f5436i;

    /* renamed from: j */
    public MutableLiveData<PhoneConfig> f5437j;

    /* renamed from: l */
    private long f5438l;

    /* renamed from: m */
    private long f5439m;

    /* renamed from: n */
    private int f5440n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.ui.model.SplashModel$2 */
    /* loaded from: classes.dex */
    public final class C14122 implements C1580b.a {

        /* renamed from: a */
        final /* synthetic */ PhoneConfig f5442a;

        /* renamed from: b */
        final /* synthetic */ String f5443b;

        C14122(PhoneConfig phoneConfig, String str) {
            this.f5442a = phoneConfig;
            this.f5443b = str;
        }

        @Override // com.cyjh.http.p104e.C1580b.a
        /* renamed from: a */
        public final void mo5779a(int i) {
        }

        @Override // com.cyjh.http.p104e.C1580b.a
        /* renamed from: a */
        public final void mo5780a(File file) {
            C1151ad.m4325c(SplashModel.f5435k, "ddyGuideImagePreLoad --> onDownloadSuccess --> file=" + file.getAbsolutePath());
            this.f5442a.setImageUrl(this.f5443b);
            SplashModel.this.f5437j.postValue(this.f5442a);
        }

        @Override // com.cyjh.http.p104e.C1580b.a
        /* renamed from: a */
        public final void mo5781a(Exception exc) {
            C1151ad.m4325c(SplashModel.f5435k, "ddyGuideImagePreLoad --> onDownloadFailed --> ex=" + exc.getMessage());
            SplashModel.this.f5437j.postValue(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.ui.model.SplashModel$3 */
    /* loaded from: classes.dex */
    public final class C14133 implements C1546c.b {
        C14133() {
        }

        @Override // com.cyjh.http.p096c.p099c.C1546c.b
        /* renamed from: a */
        public final void mo5976a() {
            SplashModel.this.f5436i.postValue(new C1416a(1));
        }

        @Override // com.cyjh.http.p096c.p099c.C1546c.b
        /* renamed from: a */
        public final void mo5977a(Object obj) {
            C1151ad.m4325c(SplashModel.f5435k, "runScriptOperate --> onCallbackSuc");
            String str = (String) obj;
            if (!TextUtils.isEmpty(str)) {
                ScriptStartRunResponse scriptStartRunResponse = (ScriptStartRunResponse) C1175r.m4522a(str, ScriptStartRunResponse.class);
                if (scriptStartRunResponse != null && !TextUtils.isEmpty(scriptStartRunResponse.Data.ScriptEncryptKey)) {
                    ParamsWrap.getParamsWrap().setScriptEncryptKey(scriptStartRunResponse.Data.ScriptEncryptKey);
                    C1260k.m5740a(scriptStartRunResponse.Data.ScriptEncryptKey);
                    C1285c.m5955f().m5962a();
                }
                SplashModel.this.f5436i.postValue(new C1416a(1));
            }
            C1546c.m6918a().m6927d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.ui.model.SplashModel$5 */
    /* loaded from: classes.dex */
    public final class RunnableC14155 implements Runnable {
        RunnableC14155() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                BaseRequestValueInfo m6893b = C1487a.m6886a().m6893b(SplashModel.this.getApplication());
                SplashModel.this.f5439m = C1487a.f5808b;
                StartAppRequestInfo startAppRequestInfo = new StartAppRequestInfo(m6893b);
                startAppRequestInfo.CloudPhoneType = C1484c.m6867a().f5794e;
                SplashModel.m6518a(SplashModel.this, IpcSwap.startAppReq(C1175r.m4523a(startAppRequestInfo)), 20);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.cyjh.elfin.ui.model.SplashModel$a */
    /* loaded from: classes.dex */
    public static class C1416a {

        /* renamed from: a */
        public int f5448a;

        /* renamed from: b */
        public String f5449b;

        /* renamed from: c */
        public int f5450c;

        public C1416a(int i) {
            this.f5448a = i;
        }

        public C1416a(int i, int i2, String str) {
            this.f5448a = i;
            this.f5449b = str;
            this.f5450c = i2;
        }

        public C1416a(int i, String str) {
            this.f5448a = i;
            this.f5449b = str;
        }

        public final String toString() {
            return "AcquireData{code=" + this.f5448a + ", message='" + this.f5449b + "', status=" + this.f5450c + '}';
        }
    }

    public SplashModel(@NonNull Application application) {
        super(application);
        this.f5438l = 0L;
        this.f5439m = 0L;
        this.f5436i = new MutableLiveData<>();
        this.f5437j = new MutableLiveData<>();
        this.f5440n = 0;
    }

    /* renamed from: a */
    static /* synthetic */ int m6512a(SplashModel splashModel) {
        int i = splashModel.f5440n;
        splashModel.f5440n = i + 1;
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x015d, code lost:
    
        r8.f5436i.postValue(new com.cyjh.elfin.p085ui.model.SplashModel.C1416a(r9.Status, r9.Remark));
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x016b, code lost:
    
        return;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m6514a(int r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 386
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.elfin.p085ui.model.SplashModel.m6514a(int, java.lang.String):void");
    }

    /* renamed from: a */
    private void m6515a(long j) {
        if (this.f5438l == j || this.f5438l == 0) {
            return;
        }
        m6526b(0, getApplication().getString(R.string.check_sign_fail));
    }

    /* renamed from: a */
    static /* synthetic */ void m6516a(SplashModel splashModel, PhoneConfig phoneConfig) {
        String imageUrl = phoneConfig.getImageUrl();
        String str = splashModel.getApplication().getCacheDir() + File.separator + C1171n.m4465b(phoneConfig.getImageUrl());
        C1151ad.m4325c(f5435k, "ddyGuideImagePreLoad --> imageUrl=" + phoneConfig.getImageUrl());
        C1580b m7055a = C1580b.m7055a();
        String absolutePath = splashModel.getApplication().getCacheDir().getAbsolutePath();
        String m4465b = C1171n.m4465b(phoneConfig.getImageUrl());
        C14122 c14122 = new C14122(phoneConfig, str);
        C1151ad.m4325c(C1580b.f5890a, "download 1 --> destFileDir=" + absolutePath + ",destFileName=" + m4465b);
        m7055a.f5893c = m7055a.f5892b.mo715a(new C0494ac.a().m599a(imageUrl).m606d());
        m7055a.f5893c.mo568a(new C1580b.AnonymousClass1(c14122, absolutePath, m4465b));
    }

    /* renamed from: a */
    static /* synthetic */ void m6518a(SplashModel splashModel, String str, int i) throws JSONException {
        C1151ad.m4325c(f5435k, "parseJson --> templateResponse=" + str + ",messageNotify=" + i);
        if (TextUtils.isEmpty(str)) {
            splashModel.f5436i.postValue(null);
            return;
        }
        JSONObject jSONObject = new JSONObject(str);
        JSONObject jSONObject2 = jSONObject.getJSONObject("Data");
        int i2 = jSONObject.getInt("Code");
        String string = jSONObject.getString(C1225b.f4512d);
        if ((i2 != 200 || TextUtils.isEmpty(jSONObject2.toString())) && (i2 == 1100 || i2 == 1200 || i2 == 1300 || i2 == 604 || i2 == 602)) {
            splashModel.m6526b(0, string);
        } else {
            splashModel.m6514a(i, jSONObject2.toString());
        }
    }

    /* renamed from: a */
    private void m6519a(AppStartupResponse appStartupResponse) {
        AuthorRelatedInfo authorRelatedInfo = appStartupResponse.AuthorInfo;
        if (authorRelatedInfo.ServicePackStatus == 0) {
            m6526b(authorRelatedInfo.ServicePackStatus, authorRelatedInfo.ServicePackPrompt);
            return;
        }
        ParamsWrap.getParamsWrap().engineToken = authorRelatedInfo.EngineToken;
        AppRelatedInfo appRelatedInfo = appStartupResponse.AppInfo;
        ParamsWrap.getParamsWrap().dailyTryTimes = appRelatedInfo.DailyTryTimes;
        ParamsWrap.getParamsWrap().feedbackTips = appRelatedInfo.FeedbackTips;
        ParamsWrap.getParamsWrap().onceTryMinute = appRelatedInfo.OnceTryMinute;
        ParamsWrap.getParamsWrap().unbindDeductHours = appRelatedInfo.UnbindDeductHours;
        C1733a.m7908a().f6810d = authorRelatedInfo.IsFreeAd;
        if (!TextUtils.isEmpty(appRelatedInfo.ScriptKey)) {
            try {
                long parseLong = Long.parseLong(appRelatedInfo.ScriptKey);
                AppContext m5350a = AppContext.m5350a();
                Intent intent = new Intent(m5350a, (Class<?>) FloatingWindowService.class);
                intent.putExtra(C1115b.f3800g, 202);
                intent.putExtra("tokenKey", parseLong);
                if (Build.VERSION.SDK_INT >= 26) {
                    m5350a.startForegroundService(intent);
                } else {
                    m5350a.startService(intent);
                }
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }
        ParamsWrap.getParamsWrap().crateCollect();
        if (appRelatedInfo.BuyRegCodeConfig != null) {
            ParamsWrap.getParamsWrap().mBuyRegCodeConfigInfos.addAll(appRelatedInfo.BuyRegCodeConfig);
        }
        if (appRelatedInfo.FlySetting != null) {
            C1733a.m7908a().f6809c.addAll(appRelatedInfo.FlySetting);
        }
        if (appRelatedInfo.RecommendSetting != null) {
            ParamsWrap.getParamsWrap().mRecommendSettingInfos.addAll(appRelatedInfo.RecommendSetting);
        }
        if (authorRelatedInfo.AdList != null) {
            C1733a.m7908a().f6807a.addAll(authorRelatedInfo.AdList);
        }
        if (authorRelatedInfo.ServicePackStatus == 1) {
            C1546c m6918a = C1546c.m6918a();
            m6918a.f5833c = new C14133();
            m6918a.m6924a(AppContext.m5350a(), C1238c.m5531a().m5543b(), C1285c.m5955f().f4851a.getId(), InterfaceC1133a.f3917S);
        } else if (authorRelatedInfo.ServicePackStatus == 2) {
            this.f5436i.postValue(new C1416a(3, authorRelatedInfo.ServicePackStatus, authorRelatedInfo.ServicePackPrompt));
        }
    }

    /* renamed from: a */
    private void m6520a(PhoneConfig phoneConfig) {
        String imageUrl = phoneConfig.getImageUrl();
        String str = getApplication().getCacheDir() + File.separator + C1171n.m4465b(phoneConfig.getImageUrl());
        C1151ad.m4325c(f5435k, "ddyGuideImagePreLoad --> imageUrl=" + phoneConfig.getImageUrl());
        C1580b m7055a = C1580b.m7055a();
        String absolutePath = getApplication().getCacheDir().getAbsolutePath();
        String m4465b = C1171n.m4465b(phoneConfig.getImageUrl());
        C14122 c14122 = new C14122(phoneConfig, str);
        C1151ad.m4325c(C1580b.f5890a, "download 1 --> destFileDir=" + absolutePath + ",destFileName=" + m4465b);
        m7055a.f5893c = m7055a.f5892b.mo715a(new C0494ac.a().m599a(imageUrl).m606d());
        m7055a.f5893c.mo568a(new C1580b.AnonymousClass1(c14122, absolutePath, m4465b));
    }

    /* renamed from: a */
    private void m6521a(TemplateResponse templateResponse) {
        C1487a.m6886a().f5813e = templateResponse.TemplateType;
        if (templateResponse.Status == 0 || templateResponse.Status == 2) {
            this.f5436i.postValue(new C1416a(templateResponse.Status, templateResponse.Remark));
        } else if (templateResponse.Status == 1) {
            m6514a(21, (String) null);
        } else {
            m6526b(0, "templateVerifySuccess - fail");
        }
    }

    /* renamed from: a */
    private void m6522a(String str) {
        TemplateResponse templateResponse = (TemplateResponse) C1175r.m4522a(str, TemplateResponse.class);
        if (templateResponse == null) {
            m6526b(0, "模板无数据");
            return;
        }
        if (this.f5438l != templateResponse.ClientTimestamp) {
            m6515a(templateResponse.ClientTimestamp);
            return;
        }
        C1487a.m6886a().f5813e = templateResponse.TemplateType;
        if (templateResponse.Status == 0 || templateResponse.Status == 2) {
            this.f5436i.postValue(new C1416a(templateResponse.Status, templateResponse.Remark));
        } else if (templateResponse.Status == 1) {
            m6514a(21, (String) null);
        } else {
            m6526b(0, "templateVerifySuccess - fail");
        }
    }

    /* renamed from: a */
    private void m6523a(String str, int i) throws JSONException {
        C1151ad.m4325c(f5435k, "parseJson --> templateResponse=" + str + ",messageNotify=" + i);
        if (TextUtils.isEmpty(str)) {
            this.f5436i.postValue(null);
            return;
        }
        JSONObject jSONObject = new JSONObject(str);
        JSONObject jSONObject2 = jSONObject.getJSONObject("Data");
        int i2 = jSONObject.getInt("Code");
        String string = jSONObject.getString(C1225b.f4512d);
        if ((i2 != 200 || TextUtils.isEmpty(jSONObject2.toString())) && (i2 == 1100 || i2 == 1200 || i2 == 1300 || i2 == 604 || i2 == 602)) {
            m6526b(0, string);
        } else {
            m6514a(i, jSONObject2.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m6526b(int i, String str) {
        this.f5436i.postValue(new C1416a(0, i, str));
    }

    /* renamed from: b */
    private void m6527b(String str) {
        AppStartupResponse appStartupResponse = (AppStartupResponse) C1175r.m4522a(str, AppStartupResponse.class);
        if (appStartupResponse == null) {
            m6526b(0, "startupResponse - startup - fail");
            return;
        }
        if (this.f5439m != appStartupResponse.ClientTimestamp) {
            m6515a(appStartupResponse.ClientTimestamp);
            return;
        }
        AuthorRelatedInfo authorRelatedInfo = appStartupResponse.AuthorInfo;
        if (authorRelatedInfo.ServicePackStatus == 0) {
            m6526b(authorRelatedInfo.ServicePackStatus, authorRelatedInfo.ServicePackPrompt);
            return;
        }
        ParamsWrap.getParamsWrap().engineToken = authorRelatedInfo.EngineToken;
        AppRelatedInfo appRelatedInfo = appStartupResponse.AppInfo;
        ParamsWrap.getParamsWrap().dailyTryTimes = appRelatedInfo.DailyTryTimes;
        ParamsWrap.getParamsWrap().feedbackTips = appRelatedInfo.FeedbackTips;
        ParamsWrap.getParamsWrap().onceTryMinute = appRelatedInfo.OnceTryMinute;
        ParamsWrap.getParamsWrap().unbindDeductHours = appRelatedInfo.UnbindDeductHours;
        C1733a.m7908a().f6810d = authorRelatedInfo.IsFreeAd;
        if (!TextUtils.isEmpty(appRelatedInfo.ScriptKey)) {
            try {
                long parseLong = Long.parseLong(appRelatedInfo.ScriptKey);
                AppContext m5350a = AppContext.m5350a();
                Intent intent = new Intent(m5350a, (Class<?>) FloatingWindowService.class);
                intent.putExtra(C1115b.f3800g, 202);
                intent.putExtra("tokenKey", parseLong);
                if (Build.VERSION.SDK_INT >= 26) {
                    m5350a.startForegroundService(intent);
                } else {
                    m5350a.startService(intent);
                }
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }
        ParamsWrap.getParamsWrap().crateCollect();
        if (appRelatedInfo.BuyRegCodeConfig != null) {
            ParamsWrap.getParamsWrap().mBuyRegCodeConfigInfos.addAll(appRelatedInfo.BuyRegCodeConfig);
        }
        if (appRelatedInfo.FlySetting != null) {
            C1733a.m7908a().f6809c.addAll(appRelatedInfo.FlySetting);
        }
        if (appRelatedInfo.RecommendSetting != null) {
            ParamsWrap.getParamsWrap().mRecommendSettingInfos.addAll(appRelatedInfo.RecommendSetting);
        }
        if (authorRelatedInfo.AdList != null) {
            C1733a.m7908a().f6807a.addAll(authorRelatedInfo.AdList);
        }
        if (authorRelatedInfo.ServicePackStatus == 1) {
            C1546c m6918a = C1546c.m6918a();
            m6918a.f5833c = new C14133();
            m6918a.m6924a(AppContext.m5350a(), C1238c.m5531a().m5543b(), C1285c.m5955f().f4851a.getId(), InterfaceC1133a.f3917S);
        } else if (authorRelatedInfo.ServicePackStatus == 2) {
            this.f5436i.postValue(new C1416a(3, authorRelatedInfo.ServicePackStatus, authorRelatedInfo.ServicePackPrompt));
        }
    }

    /* renamed from: c */
    private LiveData<C1416a> m6528c() {
        return this.f5436i;
    }

    /* renamed from: d */
    private MutableLiveData<PhoneConfig> m6530d() {
        return this.f5437j;
    }

    /* renamed from: e */
    private void m6533e() {
        if (C1201x.m5233a(getApplication())) {
            m6537a();
        } else {
            this.f5436i.postValue(new C1416a(-1));
        }
    }

    /* renamed from: f */
    private void m6534f() {
        C1546c m6918a = C1546c.m6918a();
        m6918a.f5833c = new C14133();
        m6918a.m6924a(AppContext.m5350a(), C1238c.m5531a().m5543b(), C1285c.m5955f().f4851a.getId(), InterfaceC1133a.f3917S);
    }

    /* renamed from: g */
    private void m6535g() {
        C1463b.m6773a().m6772a(new RunnableC14155());
    }

    /* renamed from: h */
    private static void m6536h() {
    }

    /* renamed from: a */
    public final void m6537a() {
        C1544a.m6908a().m6914a(getApplication(), this.f5440n, new C1544a.a() { // from class: com.cyjh.elfin.ui.model.SplashModel.1
            @Override // com.cyjh.http.p096c.p099c.C1544a.a
            /* renamed from: a */
            public final void mo6539a(int i, String str) {
                C1151ad.m4325c(SplashModel.f5435k, "getDomainNameFirst onFailure-->  code=" + i + ",message=" + str);
                C1544a.m6908a().f5828b = null;
                if (i == 1100 || i == 1200 || i == 1300 || i == 604 || i == 602) {
                    SplashModel.this.m6526b(0, str);
                    return;
                }
                SplashModel.m6512a(SplashModel.this);
                if (SplashModel.this.f5440n < 2) {
                    SplashModel.this.m6537a();
                } else {
                    SplashModel.this.m6538b();
                }
            }

            @Override // com.cyjh.http.p096c.p099c.C1544a.a
            /* renamed from: a */
            public final void mo6540a(DomainResult domainResult) {
                C1151ad.m4325c(SplashModel.f5435k, "getDomainNameFirst --> onSuccess domainName=" + domainResult.getAppDomainName() + ",domain2Name=" + domainResult.getApp2DomainName());
                C1132a.f3883b = domainResult.getApiVersionV();
                C1132a.f3885d = domainResult.getApiDescKeys();
                C1132a.f3884c = domainResult.getAuthDescKeys();
                C1226c.f4535a = domainResult.getAppDomainName();
                C1226c.f4536b = domainResult.getAppDomainName();
                C1226c.f4540f = domainResult.getAppDomainName();
                C1132a.m4192a(domainResult.getAppDomainName());
                C1132a.m4197c(domainResult.getApp2DomainName());
                C1132a.m4199d(domainResult.getAppDomainName());
                String str = C1132a.f3883b;
                String[] strArr = C1132a.f3884c;
                AppContext m5350a = AppContext.m5350a();
                Intent intent = new Intent(m5350a, (Class<?>) FloatingWindowService.class);
                intent.putExtra(C1115b.f3800g, 2);
                Bundle bundle = new Bundle();
                bundle.putInt(FloatingWindowService.f4965k, 0);
                bundle.putString(FloatingWindowService.f4969o, C1132a.m4203h());
                bundle.putString(FloatingWindowService.f4964j, str);
                bundle.putStringArray(FloatingWindowService.f4970p, strArr);
                intent.putExtra(FloatingWindowService.f4963i, bundle);
                if (Build.VERSION.SDK_INT >= 26) {
                    m5350a.startForegroundService(intent);
                } else {
                    m5350a.startService(intent);
                }
                PhoneConfig m6871a = C1484c.m6867a().m6871a(SplashModel.this.getApplication(), domainResult.getPhoneConfig());
                if (m6871a != null) {
                    SplashModel.m6516a(SplashModel.this, m6871a);
                } else {
                    C1544a.m6908a().f5828b = null;
                    SplashModel.this.m6538b();
                }
            }
        });
    }

    /* renamed from: b */
    public final void m6538b() {
        if (!C1201x.m5233a(getApplication())) {
            this.f5436i.postValue(new C1416a(-1));
            return;
        }
        C1151ad.m4325c(f5435k, "初始化参数，checkTemplateReq验证模版，需要初始化参数");
        C1289b.m6001j();
        String m5964e = C1285c.m5955f().m5964e();
        C1285c.m5955f();
        String m5953c = C1285c.m5953c();
        C1285c.m5955f();
        C1289b.m5985a(m5964e, m5953c, C1285c.m5954d());
        C1463b.m6773a().m6772a(new Runnable() { // from class: com.cyjh.elfin.ui.model.SplashModel.4
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    BaseRequestValueInfo m6893b = C1487a.m6886a().m6893b(SplashModel.this.getApplication());
                    SplashModel.this.f5438l = C1487a.f5808b;
                    String m4523a = C1175r.m4523a(m6893b);
                    C1151ad.m4325c(SplashModel.f5435k, "acquireAppData --> jsonParams=" + m4523a);
                    SplashModel.m6518a(SplashModel.this, IpcSwap.checkTemplateReq(m4523a), 19);
                } catch (Exception e) {
                    e.printStackTrace();
                    Log.e("zzz", "SplashActivity---initAfter()---4" + e.getMessage());
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.arch.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
    }
}
