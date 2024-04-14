package com.cyjh.elfin.floatingwindowprocess.p084d;

import android.text.TextUtils;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.p071f.InterfaceC1142a;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1152ae;
import com.cyjh.common.util.C1153af;
import com.cyjh.common.util.C1154ag;
import com.cyjh.common.util.C1162e;
import com.cyjh.common.util.C1175r;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.ParamsWrap;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1285c;
import com.cyjh.elfin.p073a.InterfaceC1224a;
import com.cyjh.elfin.p076d.C1238c;
import com.cyjh.elfin.p077e.p080c.C1255f;
import com.cyjh.elfin.p077e.p080c.C1260k;
import com.cyjh.elfin.p077e.p080c.C1261l;
import com.cyjh.elfin.p077e.p080c.C1263n;
import com.cyjh.http.bean.request.UpdateRequestInfo;
import com.cyjh.http.bean.response.ScriptStartRunResponse;
import com.cyjh.http.bean.response.VersionUpdateInfo;
import com.cyjh.http.p096c.p098b.C1543a;
import com.cyjh.http.p096c.p099c.C1546c;
import com.cyjh.http.p104e.C1579a;
import com.hjol.R;

/* renamed from: com.cyjh.elfin.floatingwindowprocess.d.a */
/* loaded from: classes.dex */
public final class C1288a {

    /* renamed from: a */
    private static final String f4863a = "ScriptRunHelper";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.floatingwindowprocess.d.a$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static class AnonymousClass1 implements C1543a.a {

        /* renamed from: a */
        final /* synthetic */ a f4864a;

        AnonymousClass1(a aVar) {
            this.f4864a = aVar;
        }

        @Override // com.cyjh.http.p096c.p098b.C1543a.a
        /* renamed from: a */
        public final void mo5930a(VersionUpdateInfo versionUpdateInfo) {
            C1151ad.m4325c(C1288a.f4863a, "onUpdateHas");
            if (versionUpdateInfo == null) {
                C1288a.m5973b(this.f4864a);
                return;
            }
            C1255f.m5689a();
            C1255f.m5690a(AppContext.m5350a(), "updateVersionRequest onUpdateHas --> versionUpdateInfo.UpgradeMode=" + versionUpdateInfo.UpgradeMode);
            if (versionUpdateInfo.UpgradeMode != 2 || (5 != versionUpdateInfo.UpdateType && 3 != versionUpdateInfo.UpdateType)) {
                C1288a.m5973b(this.f4864a);
                return;
            }
            C1153af.m4332a().m4336a(versionUpdateInfo.AppVersion);
            int i = C1263n.f4713e;
            if (3 == versionUpdateInfo.UpdateType) {
                i = C1263n.f4712d;
            }
            C1263n.m5764a().m5772a(AppContext.m5350a(), C1285c.m5955f().f4851a.getId(), i).m5773a(versionUpdateInfo.UpdateUrl);
        }

        @Override // com.cyjh.http.p096c.p098b.C1543a.a
        /* renamed from: b */
        public final void mo5931b(VersionUpdateInfo versionUpdateInfo) {
            C1151ad.m4325c(C1288a.f4863a, "onConnectStudioSocket");
        }

        @Override // com.cyjh.http.p096c.p098b.C1543a.a
        /* renamed from: c */
        public final void mo5932c(VersionUpdateInfo versionUpdateInfo) {
            C1151ad.m4325c(C1288a.f4863a, "onUpdateOtherInfo");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.floatingwindowprocess.d.a$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public static class AnonymousClass2 implements C1546c.b {

        /* renamed from: a */
        final /* synthetic */ a f4865a;

        AnonymousClass2(a aVar) {
            this.f4865a = aVar;
        }

        @Override // com.cyjh.http.p096c.p099c.C1546c.b
        /* renamed from: a */
        public final void mo5976a() {
            C1151ad.m4325c(C1288a.f4863a, "runScriptOperate --> onCallbackFail");
            C1255f.m5689a();
            C1255f.m5690a(AppContext.m5350a(), "ElfinFloatView onCallbackFail --> ");
            C1152ae.m4331b(AppContext.m5350a(), "runScriptOperate --> 准备工作失败");
            if (this.f4865a != null) {
                this.f4865a.mo5978a();
            }
        }

        @Override // com.cyjh.http.p096c.p099c.C1546c.b
        /* renamed from: a */
        public final void mo5977a(Object obj) {
            int i;
            AppContext m5350a;
            StringBuilder sb;
            C1151ad.m4325c(C1288a.f4863a, "runScriptOperate --> onCallbackSuc");
            C1152ae.m4331b(AppContext.m5350a(), "runScriptOperate --> 准备启动引擎");
            if (this.f4865a != null) {
                a aVar = this.f4865a;
                Boolean.valueOf(true);
                aVar.mo5979b();
            }
            String str = (String) obj;
            C1255f.m5689a();
            C1255f.m5690a(AppContext.m5350a(), "ElfinFloatView onCallbackSuc --> data=" + str);
            if (!TextUtils.isEmpty(str)) {
                ScriptStartRunResponse scriptStartRunResponse = (ScriptStartRunResponse) C1175r.m4522a(str, ScriptStartRunResponse.class);
                if (scriptStartRunResponse == null || scriptStartRunResponse.Code != 200) {
                    if (scriptStartRunResponse.Code == 1401 || 1400 == scriptStartRunResponse.Code) {
                        C1238c.m5531a().f4607a = "";
                        C1579a.m7029b(InterfaceC1133a.f3976ay + C1132a.m4196c(), AppContext.m5350a());
                    }
                    if (scriptStartRunResponse != null) {
                        C1154ag.m4344b(AppContext.m5350a(), scriptStartRunResponse.Message);
                        C1255f.m5689a();
                        C1255f.m5690a(AppContext.m5350a(), "ElfinFloatView onCallbackSuc --> " + scriptStartRunResponse.Message);
                    } else {
                        AppContext m5350a2 = AppContext.m5350a();
                        i = R.string.json_parse_exception;
                        C1154ag.m4343b(m5350a2, (int) R.string.json_parse_exception);
                        C1255f.m5689a();
                        m5350a = AppContext.m5350a();
                        sb = new StringBuilder("ElfinFloatView onCallbackSuc --> ");
                    }
                } else {
                    if (!TextUtils.isEmpty(scriptStartRunResponse.Data.ScriptEncryptKey)) {
                        ParamsWrap.getParamsWrap().setScriptEncryptKey(scriptStartRunResponse.Data.ScriptEncryptKey);
                    }
                    if (!TextUtils.isEmpty(scriptStartRunResponse.Data.ExpireTime)) {
                        try {
                            C1238c.m5531a().f4608b = Long.parseLong(scriptStartRunResponse.Data.ExpireTime);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    if (C1285c.m5955f().f4853d == 1) {
                        C1255f.m5689a();
                        C1255f.m5690a(AppContext.m5350a(), "ElfinFloatView onCallbackSuc --> runScript");
                        C1289b.m6001j();
                        C1289b.m5993c();
                    }
                }
                C1546c.m6918a().m6927d();
            }
            AppContext m5350a3 = AppContext.m5350a();
            i = R.string.json_data_null;
            C1154ag.m4343b(m5350a3, (int) R.string.json_data_null);
            C1255f.m5689a();
            m5350a = AppContext.m5350a();
            sb = new StringBuilder("ElfinFloatView onCallbackFail --> ");
            sb.append(AppContext.m5350a().getString(i));
            C1255f.m5690a(m5350a, sb.toString());
            C1546c.m6918a().m6927d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.floatingwindowprocess.d.a$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public static class AnonymousClass3 implements C1546c.b {
        @Override // com.cyjh.http.p096c.p099c.C1546c.b
        /* renamed from: a */
        public final void mo5976a() {
            C1151ad.m4325c(C1288a.f4863a, "runScriptOperate --> onCallbackFail");
        }

        @Override // com.cyjh.http.p096c.p099c.C1546c.b
        /* renamed from: a */
        public final void mo5977a(Object obj) {
            C1151ad.m4325c(C1288a.f4863a, "runScriptOperate --> onCallbackSuc");
            String str = (String) obj;
            C1255f.m5689a();
            C1255f.m5690a(AppContext.m5350a(), "ElfinFloatView onCallbackSuc --> data=" + str);
            if (TextUtils.isEmpty(str)) {
                C1255f.m5689a();
                C1255f.m5690a(AppContext.m5350a(), "ElfinFloatView onCallbackFail --> " + AppContext.m5350a().getString(R.string.json_data_null));
                return;
            }
            ScriptStartRunResponse scriptStartRunResponse = (ScriptStartRunResponse) C1175r.m4522a(str, ScriptStartRunResponse.class);
            if (scriptStartRunResponse == null || scriptStartRunResponse.Code != 200 || TextUtils.isEmpty(scriptStartRunResponse.Data.ScriptEncryptKey)) {
                return;
            }
            ParamsWrap.getParamsWrap().setScriptEncryptKey(scriptStartRunResponse.Data.ScriptEncryptKey);
            C1260k.m5740a(scriptStartRunResponse.Data.ScriptEncryptKey);
        }
    }

    /* renamed from: com.cyjh.elfin.floatingwindowprocess.d.a$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo5978a();

        /* renamed from: b */
        void mo5979b();
    }

    /* renamed from: a */
    private static void m5969a() {
        C1546c m6918a = C1546c.m6918a();
        m6918a.f5833c = new AnonymousClass3();
        m6918a.m6924a(AppContext.m5350a(), C1238c.m5531a().m5543b(), C1285c.m5955f().f4851a.getId(), InterfaceC1133a.f3917S);
    }

    /* renamed from: a */
    public static void m5970a(final InterfaceC1142a<Boolean> interfaceC1142a) {
        C1546c m6918a = C1546c.m6918a();
        m6918a.f5833c = new C1546c.b() { // from class: com.cyjh.elfin.floatingwindowprocess.d.a.4
            @Override // com.cyjh.http.p096c.p099c.C1546c.b
            /* renamed from: a */
            public final void mo5976a() {
            }

            /* JADX WARN: Code restructure failed: missing block: B:25:0x00be, code lost:
            
                if (com.cyjh.elfin.floatingwindowprocess.p084d.C1289b.m5992b() != false) goto L37;
             */
            @Override // com.cyjh.http.p096c.p099c.C1546c.b
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void mo5977a(java.lang.Object r5) {
                /*
                    r4 = this;
                    java.lang.String r5 = (java.lang.String) r5
                    boolean r0 = android.text.TextUtils.isEmpty(r5)
                    r1 = 1
                    if (r0 != 0) goto Lc1
                    java.lang.Class<com.cyjh.http.bean.response.ScriptStartRunResponse> r0 = com.cyjh.http.bean.response.ScriptStartRunResponse.class
                    java.lang.Object r5 = com.cyjh.common.util.C1175r.m4522a(r5, r0)
                    com.cyjh.http.bean.response.ScriptStartRunResponse r5 = (com.cyjh.http.bean.response.ScriptStartRunResponse) r5
                    int r0 = r5.Code
                    r2 = 200(0xc8, float:2.8E-43)
                    if (r0 != r2) goto L2b
                    com.cyjh.common.f.a r0 = com.cyjh.common.p071f.InterfaceC1142a.this
                    r1 = 0
                    java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
                    r0.mo4231a(r1)
                    com.cyjh.elfin.entity.ParamsWrap r0 = com.cyjh.elfin.entity.ParamsWrap.getParamsWrap()
                    com.cyjh.http.bean.response.ScriptStartRunInfo r5 = r5.Data
                    r0.mStartRunResponseInfo = r5
                    goto Lda
                L2b:
                    com.cyjh.common.f.a r0 = com.cyjh.common.p071f.InterfaceC1142a.this
                    java.lang.Boolean r2 = java.lang.Boolean.valueOf(r1)
                    r0.mo4231a(r2)
                    if (r5 == 0) goto Lad
                    java.lang.String r0 = "zzz"
                    java.lang.StringBuilder r2 = new java.lang.StringBuilder
                    java.lang.String r3 = "AppContext--onStartScript message:"
                    r2.<init>(r3)
                    java.lang.String r3 = r5.Message
                    r2.append(r3)
                    java.lang.String r2 = r2.toString()
                    android.util.Log.e(r0, r2)
                    int r0 = r5.Code
                    java.lang.String r2 = r5.Message
                    r3 = 1100(0x44c, float:1.541E-42)
                    if (r3 == r0) goto L72
                    r3 = 1200(0x4b0, float:1.682E-42)
                    if (r3 == r0) goto L72
                    r3 = 1201(0x4b1, float:1.683E-42)
                    if (r3 == r0) goto L72
                    r3 = 1202(0x4b2, float:1.684E-42)
                    if (r3 == r0) goto L72
                    r3 = 1203(0x4b3, float:1.686E-42)
                    if (r3 == r0) goto L72
                    r3 = 1300(0x514, float:1.822E-42)
                    if (r3 != r0) goto L68
                    goto L72
                L68:
                    com.cyjh.elfin.base.AppContext r0 = com.cyjh.elfin.base.AppContext.m5350a()
                    java.lang.String r5 = r5.Message
                    com.cyjh.common.util.C1154ag.m4344b(r0, r5)
                    goto Lb7
                L72:
                    boolean r5 = com.cyjh.elfin.p085ui.p086a.DialogC1319g.f5054a
                    if (r5 == 0) goto L88
                    boolean r5 = com.cyjh.elfin.p085ui.p086a.DialogC1319g.f5055c
                    if (r5 != 0) goto L88
                    org.greenrobot.eventbus.c r5 = org.greenrobot.eventbus.C2772c.m12482a()
                    com.cyjh.elfin.entity.MsgItem r0 = new com.cyjh.elfin.entity.MsgItem
                    r3 = 1005(0x3ed, float:1.408E-42)
                    r0.<init>(r3)
                    r5.m12506c(r0)
                L88:
                    boolean r5 = com.cyjh.elfin.p085ui.p086a.DialogC1319g.f5054a
                    if (r5 != 0) goto La0
                    com.cyjh.elfin.ui.a.g r5 = new com.cyjh.elfin.ui.a.g
                    com.cyjh.elfin.base.AppContext r0 = com.cyjh.elfin.base.AppContext.m5350a()
                    r5.<init>(r0, r1, r2)
                    com.cyjh.elfin.floatingwindowprocess.d.a$4$1 r0 = new com.cyjh.elfin.floatingwindowprocess.d.a$4$1
                    r0.<init>()
                    r5.f5056b = r0
                    r5.show()
                    goto Lb7
                La0:
                    org.greenrobot.eventbus.c r5 = org.greenrobot.eventbus.C2772c.m12482a()
                    com.cyjh.elfin.entity.MsgItem$UpdateMessageToDialog r0 = new com.cyjh.elfin.entity.MsgItem$UpdateMessageToDialog
                    r0.<init>(r2)
                    r5.m12506c(r0)
                    goto Lb7
                Lad:
                    com.cyjh.elfin.base.AppContext r5 = com.cyjh.elfin.base.AppContext.m5350a()
                    r0 = 2131296452(0x7f0900c4, float:1.8210821E38)
                    com.cyjh.common.util.C1154ag.m4343b(r5, r0)
                Lb7:
                    com.cyjh.elfin.floatingwindowprocess.p084d.C1289b.m6001j()
                    boolean r5 = com.cyjh.elfin.floatingwindowprocess.p084d.C1289b.m5992b()
                    if (r5 == 0) goto Lda
                    goto Ld4
                Lc1:
                    com.cyjh.common.f.a r5 = com.cyjh.common.p071f.InterfaceC1142a.this
                    java.lang.Boolean r0 = java.lang.Boolean.valueOf(r1)
                    r5.mo4231a(r0)
                    com.cyjh.elfin.base.AppContext r5 = com.cyjh.elfin.base.AppContext.m5350a()
                    r0 = 2131296451(0x7f0900c3, float:1.821082E38)
                    com.cyjh.common.util.C1154ag.m4343b(r5, r0)
                Ld4:
                    com.cyjh.elfin.floatingwindowprocess.p084d.C1289b.m6001j()
                    com.cyjh.elfin.floatingwindowprocess.p084d.C1289b.m5995d()
                Lda:
                    com.cyjh.http.c.c.c r5 = com.cyjh.http.p096c.p099c.C1546c.m6918a()
                    r5.m6927d()
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.cyjh.elfin.floatingwindowprocess.p084d.C1288a.AnonymousClass4.mo5977a(java.lang.Object):void");
            }
        };
        m6918a.m6924a(AppContext.m5350a(), C1238c.m5531a().m5543b(), C1285c.m5955f().f4851a.getId(), InterfaceC1133a.f3916R);
    }

    /* renamed from: a */
    public static void m5971a(a aVar) {
        C1255f.m5689a();
        C1255f.m5690a(AppContext.m5350a(), "updateVersionRequest --> ");
        String m5750a = C1261l.m5750a(AppContext.m5350a(), InterfaceC1224a.f4453u);
        String m4370a = C1162e.m4370a(AppContext.m5350a());
        UpdateRequestInfo updateRequestInfo = new UpdateRequestInfo();
        updateRequestInfo.ScriptId = C1285c.m5955f().f4851a.getId();
        updateRequestInfo.DeviceName = m4370a;
        updateRequestInfo.ScriptVersion = Integer.parseInt(m5750a);
        updateRequestInfo.IsScriptHotUpgrade = 1;
        updateRequestInfo.AppVersion = C1162e.m4382b();
        C1151ad.m4325c(f4863a, "updateVersionRequest --> 1 ScriptId=" + updateRequestInfo.ScriptId + ",DeviceName=" + updateRequestInfo.DeviceName + " AppVersion:" + updateRequestInfo.AppVersion);
        C1543a m6898a = C1543a.m6898a();
        m6898a.f5824c = new AnonymousClass1(aVar);
        m6898a.m6902a(false, AppContext.m5350a(), updateRequestInfo);
    }

    /* renamed from: a */
    public static void m5972a(C1546c.a aVar) {
        C1546c m6918a = C1546c.m6918a();
        m6918a.f5832b = aVar;
        m6918a.m6923a(AppContext.m5350a(), ParamsWrap.getParamsWrap().mStartRunResponseInfo.RunGuid);
    }

    /* renamed from: b */
    static /* synthetic */ void m5973b(a aVar) {
        C1546c m6918a = C1546c.m6918a();
        m6918a.f5833c = new AnonymousClass2(aVar);
        m6918a.m6924a(AppContext.m5350a(), C1238c.m5531a().m5543b(), C1285c.m5955f().f4851a.getId(), InterfaceC1133a.f3917S);
    }

    /* renamed from: c */
    private static void m5974c(a aVar) {
        C1255f.m5689a();
        C1255f.m5690a(AppContext.m5350a(), "updateVersionRequest --> ");
        String m5750a = C1261l.m5750a(AppContext.m5350a(), InterfaceC1224a.f4453u);
        String m4370a = C1162e.m4370a(AppContext.m5350a());
        UpdateRequestInfo updateRequestInfo = new UpdateRequestInfo();
        updateRequestInfo.ScriptId = C1285c.m5955f().f4851a.getId();
        updateRequestInfo.DeviceName = m4370a;
        updateRequestInfo.ScriptVersion = Integer.parseInt(m5750a);
        updateRequestInfo.IsScriptHotUpgrade = 1;
        updateRequestInfo.AppVersion = C1162e.m4382b();
        C1151ad.m4325c(f4863a, "updateVersionRequest --> 1 ScriptId=" + updateRequestInfo.ScriptId + ",DeviceName=" + updateRequestInfo.DeviceName + " AppVersion:" + updateRequestInfo.AppVersion);
        C1543a m6898a = C1543a.m6898a();
        m6898a.f5824c = new AnonymousClass1(aVar);
        m6898a.m6902a(false, AppContext.m5350a(), updateRequestInfo);
    }

    /* renamed from: d */
    private static void m5975d(a aVar) {
        C1546c m6918a = C1546c.m6918a();
        m6918a.f5833c = new AnonymousClass2(aVar);
        m6918a.m6924a(AppContext.m5350a(), C1238c.m5531a().m5543b(), C1285c.m5955f().f4851a.getId(), InterfaceC1133a.f3917S);
    }
}
