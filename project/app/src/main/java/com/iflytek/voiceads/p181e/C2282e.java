package com.iflytek.voiceads.p181e;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.webkit.URLUtil;
import com.iflytek.voiceads.config.AdKeys;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.conn.VideoDataRef;
import com.iflytek.voiceads.download.C2261d;
import com.iflytek.voiceads.listener.IFLYVideoListener;
import com.iflytek.voiceads.p173d.C2239a;
import com.iflytek.voiceads.p173d.C2240b;
import com.iflytek.voiceads.param.C2290a;
import com.iflytek.voiceads.param.C2292c;
import com.iflytek.voiceads.request.C2302e;
import com.iflytek.voiceads.utils.C2308b;
import com.iflytek.voiceads.utils.C2313g;
import com.iflytek.voiceads.utils.C2316j;
import org.json.JSONArray;

/* renamed from: com.iflytek.voiceads.e.e */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2282e extends VideoDataRef {

    /* renamed from: a */
    private Context f8557a;

    /* renamed from: b */
    private C2239a f8558b;

    /* renamed from: c */
    private C2240b f8559c;

    /* renamed from: d */
    private String f8560d;

    /* renamed from: e */
    private C2290a f8561e;

    /* renamed from: f */
    private IFLYVideoListener f8562f;

    /* renamed from: g */
    private boolean f8563g = false;

    /* renamed from: h */
    private boolean f8564h = false;

    public C2282e(Context context, C2240b c2240b, C2290a c2290a, IFLYVideoListener iFLYVideoListener) {
        this.f8557a = context;
        this.f8559c = c2240b;
        this.f8558b = c2240b.f8421f;
        this.f8560d = c2240b.f8418c;
        this.f8561e = c2290a;
        this.f8562f = iFLYVideoListener;
    }

    /* renamed from: a */
    private void m10009a() {
        String str = this.f8558b.f8387L;
        if (TextUtils.isEmpty(this.f8558b.f8386K)) {
            m10010a(str);
            return;
        }
        String str2 = this.f8558b.f8386K;
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str2));
        if (!C2308b.m10117a(str2) || !C2308b.m10114a(this.f8557a.getApplicationContext(), intent)) {
            m10010a(str);
            C2316j.m10152b(C2292c.f8615b + "type=NotInstall&sid=" + this.f8560d);
            return;
        }
        try {
            intent.addFlags(32768);
            intent.addFlags(268435456);
            this.f8557a.startActivity(intent);
            C2316j.m10152b(C2292c.f8615b + "type=DeepLink&sid=" + this.f8560d);
        } catch (Exception e) {
            C2316j.m10152b(C2292c.f8615b + "type=DeepFail&sid=" + this.f8560d);
            C2313g.m10138b(SDKConstants.TAG, "video deep" + e.getMessage());
        }
    }

    /* renamed from: a */
    private void m10010a(String str) {
        if (!URLUtil.isValidUrl(str) || str.equals("about:blank")) {
            C2313g.m10136a(SDKConstants.TAG, "Invalid click url: " + str);
            return;
        }
        switch (getActionType()) {
            case 3:
                m10011b("");
                return;
            default:
                C2302e.m10109a(this.f8557a, str, this.f8561e, this.f8560d);
                C2316j.m10152b(C2292c.f8615b + "type=H5Open&sid=" + this.f8560d);
                return;
        }
    }

    /* renamed from: b */
    private void m10011b(String str) {
        C2261d m9914a = C2261d.m9914a(this.f8557a.getApplicationContext());
        m9914a.m9948a(this.f8562f);
        m9914a.m9949a(this.f8561e.m10033c(AdKeys.DOWNLOAD_ALERT));
        if (TextUtils.isEmpty(str)) {
            m9914a.m9946a(this.f8557a, this.f8558b, new Object[0]);
            C2313g.m10136a(SDKConstants.TAG, "startVideoDownload");
        } else {
            m9914a.m9946a(this.f8557a, this.f8558b, str);
            C2313g.m10136a(SDKConstants.TAG, "startVideoDownload with url");
        }
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public void downloadApp() {
        if (TextUtils.isEmpty(this.f8558b.f8409t)) {
            return;
        }
        m10011b(this.f8558b.f8409t);
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public int getActionType() {
        return this.f8558b.f8388M;
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public String getAdSourceMark() {
        return this.f8558b.f8389N;
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public String getBrand() {
        return this.f8558b.f8381F;
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public String getContent() {
        return this.f8558b.f8404o;
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public String getCtatext() {
        return this.f8558b.f8405p;
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public String getDesc() {
        return this.f8558b.f8402m;
    }

    @Override // com.iflytek.voiceads.conn.VideoDataRef
    public int getDuration() {
        if (this.f8558b.f8399j == null || !this.f8558b.f8399j.has("duration")) {
            return 0;
        }
        return this.f8558b.f8399j.optInt("duration");
    }

    @Override // com.iflytek.voiceads.conn.VideoDataRef
    public int getHeight() {
        if (this.f8558b.f8399j == null || !this.f8558b.f8399j.has("height")) {
            return 0;
        }
        return this.f8558b.f8399j.optInt("height");
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public String getIconUrl() {
        return (this.f8558b.f8403n == null || !this.f8558b.f8403n.has("url")) ? "" : this.f8558b.f8403n.optString("url");
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public String getImgUrl() {
        return (this.f8558b.f8395f == null || !this.f8558b.f8395f.has("url")) ? "" : this.f8558b.f8395f.optString("url");
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public String getRequestID() {
        return this.f8559c.f8417b;
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public int getTemplateID() {
        return this.f8558b.f8390a;
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public String getTitle() {
        return this.f8558b.f8401l;
    }

    @Override // com.iflytek.voiceads.conn.VideoDataRef
    public int getWidth() {
        if (this.f8558b.f8399j == null || !this.f8558b.f8399j.has("width")) {
            return 0;
        }
        return this.f8558b.f8399j.optInt("width");
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public boolean isExposured() {
        return this.f8563g;
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public boolean onClick(View view) {
        try {
            m10009a();
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "video clk urls" + e.getMessage());
        }
        if (this.f8564h) {
            return true;
        }
        if (this.f8563g) {
            C2316j.m10151a(this.f8558b.f8385J.optJSONArray("click_urls"), this.f8557a, 2);
            this.f8564h = true;
            return true;
        }
        return false;
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public boolean onExposure(View view) {
        if (this.f8563g) {
            C2313g.m10136a(SDKConstants.TAG, "已曝光");
            return true;
        }
        boolean m10113a = C2308b.m10113a(this.f8557a);
        boolean m10118b = C2308b.m10118b(this.f8557a);
        boolean z = view.getVisibility() == 0;
        boolean isShown = view.isShown();
        boolean m10115a = C2308b.m10115a(this.f8557a, view);
        C2313g.m10136a(SDKConstants.TAG, "曝光失败-: B:" + m10113a + " L:" + m10118b + " V:" + z + " S:" + isShown + " I:" + m10115a);
        if (m10113a || m10118b || !z || !isShown || !m10115a) {
            return false;
        }
        try {
            JSONArray m10150a = C2316j.m10150a(this.f8561e.m10035e(AdKeys.AUCTION_PRICE), this.f8558b.f8385J.optJSONArray("impress_urls"));
            if (m10150a == null) {
                C2313g.m10136a(SDKConstants.TAG, "impArray null");
                return false;
            }
            this.f8563g = true;
            C2313g.m10136a(SDKConstants.TAG, "曝光成功");
            C2316j.m10151a(m10150a, this.f8557a, 1);
            return true;
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "video imp urls" + e.getMessage());
            return false;
        }
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public void showIntroduce() {
        if (TextUtils.isEmpty(this.f8558b.f8410u)) {
            return;
        }
        C2302e.m10109a(this.f8557a, this.f8558b.f8410u, this.f8561e, this.f8560d);
    }
}
