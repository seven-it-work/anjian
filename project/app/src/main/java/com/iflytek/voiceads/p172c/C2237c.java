package com.iflytek.voiceads.p172c;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.webkit.URLUtil;
import com.iflytek.voiceads.bean.AdAudio;
import com.iflytek.voiceads.bean.AudioMonitor;
import com.iflytek.voiceads.config.AdKeys;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.conn.NativeDataRef;
import com.iflytek.voiceads.download.C2261d;
import com.iflytek.voiceads.listener.IFLYNativeListener;
import com.iflytek.voiceads.p173d.C2239a;
import com.iflytek.voiceads.p173d.C2240b;
import com.iflytek.voiceads.param.C2290a;
import com.iflytek.voiceads.param.C2292c;
import com.iflytek.voiceads.request.C2302e;
import com.iflytek.voiceads.utils.C2308b;
import com.iflytek.voiceads.utils.C2313g;
import com.iflytek.voiceads.utils.C2316j;
import com.umeng.analytics.pro.C2427b;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

/* renamed from: com.iflytek.voiceads.c.c */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2237c extends NativeDataRef {

    /* renamed from: a */
    private Context f8367a;

    /* renamed from: b */
    private C2239a f8368b;

    /* renamed from: c */
    private C2240b f8369c;

    /* renamed from: d */
    private String f8370d;

    /* renamed from: e */
    private C2290a f8371e;

    /* renamed from: f */
    private IFLYNativeListener f8372f;

    /* renamed from: g */
    private boolean f8373g = false;

    /* renamed from: h */
    private boolean f8374h = false;

    public C2237c(Context context, C2240b c2240b, C2290a c2290a, IFLYNativeListener iFLYNativeListener) {
        this.f8367a = context;
        this.f8369c = c2240b;
        this.f8368b = c2240b.f8421f;
        this.f8370d = c2240b.f8418c;
        this.f8371e = c2290a;
        this.f8372f = iFLYNativeListener;
    }

    /* renamed from: a */
    private void m9842a() {
        String str = this.f8368b.f8387L;
        if (TextUtils.isEmpty(this.f8368b.f8386K)) {
            m9843a(str);
            return;
        }
        String str2 = this.f8368b.f8386K;
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str2));
        if (!C2308b.m10117a(str2) || !C2308b.m10114a(this.f8367a.getApplicationContext(), intent)) {
            m9843a(str);
            C2316j.m10152b(C2292c.f8615b + "type=NotInstall&sid=" + this.f8370d);
            return;
        }
        try {
            intent.addFlags(32768);
            intent.addFlags(268435456);
            this.f8367a.startActivity(intent);
            C2316j.m10152b(C2292c.f8615b + "type=DeepLink&sid=" + this.f8370d);
        } catch (Exception e) {
            C2316j.m10152b(C2292c.f8615b + "type=DeepFail&sid=" + this.f8370d);
            C2313g.m10138b(SDKConstants.TAG, "native deep" + e.getMessage());
        }
    }

    /* renamed from: a */
    private void m9843a(String str) {
        if (!URLUtil.isValidUrl(str) || str.equals("about:blank")) {
            C2313g.m10136a(SDKConstants.TAG, "Invalid click url: " + str);
            return;
        }
        switch (getActionType()) {
            case 3:
                m9844b("");
                return;
            default:
                C2302e.m10109a(this.f8367a, str, this.f8371e, this.f8370d);
                C2316j.m10152b(C2292c.f8615b + "type=H5Open&sid=" + this.f8370d);
                return;
        }
    }

    /* renamed from: b */
    private void m9844b(String str) {
        C2261d m9914a = C2261d.m9914a(this.f8367a.getApplicationContext());
        m9914a.m9948a(this.f8372f);
        m9914a.m9949a(this.f8371e.m10033c(AdKeys.DOWNLOAD_ALERT));
        if (TextUtils.isEmpty(str)) {
            m9914a.m9946a(this.f8367a, this.f8368b, new Object[0]);
            C2313g.m10136a(SDKConstants.TAG, "startNativeDownload");
        } else {
            m9914a.m9946a(this.f8367a, this.f8368b, str);
            C2313g.m10136a(SDKConstants.TAG, "startNativeDownload with url");
        }
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public void downloadApp() {
        if (TextUtils.isEmpty(this.f8368b.f8409t)) {
            return;
        }
        m9844b(this.f8368b.f8409t);
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public int getActionType() {
        return this.f8368b.f8388M;
    }

    @Override // com.iflytek.voiceads.conn.NativeDataRef
    public AdAudio getAdAudio() {
        if (this.f8368b.f8400k == null) {
            return null;
        }
        AdAudio adAudio = new AdAudio();
        adAudio.url = this.f8368b.f8400k.optString("url");
        if (this.f8368b.f8400k.has("duration")) {
            adAudio.duration = this.f8368b.f8400k.optInt("duration");
        }
        if (this.f8368b.f8400k.has("bitrate")) {
            adAudio.bitrate = this.f8368b.f8400k.optInt("bitrate");
        }
        if (this.f8368b.f8400k.has("format")) {
            adAudio.format = this.f8368b.f8400k.optInt("format");
        }
        if (!this.f8368b.f8400k.has(C2427b.f8993q)) {
            return adAudio;
        }
        adAudio.cacheDeadLine = this.f8368b.f8400k.optLong(C2427b.f8993q);
        return adAudio;
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public String getAdSourceMark() {
        return this.f8368b.f8389N;
    }

    @Override // com.iflytek.voiceads.conn.NativeDataRef
    public String getAddress() {
        return this.f8368b.f8378C;
    }

    @Override // com.iflytek.voiceads.conn.NativeDataRef
    public String getAppName() {
        return this.f8368b.f8406q;
    }

    @Override // com.iflytek.voiceads.conn.NativeDataRef
    public double getAppSize() {
        return this.f8368b.f8412w;
    }

    @Override // com.iflytek.voiceads.conn.NativeDataRef
    public String getAppVer() {
        return this.f8368b.f8411v;
    }

    @Override // com.iflytek.voiceads.conn.NativeDataRef
    public AudioMonitor getAudioMonitor() {
        if (this.f8368b.f8400k == null || this.f8368b.f8385J == null) {
            return null;
        }
        AudioMonitor audioMonitor = new AudioMonitor();
        audioMonitor.start_urls = this.f8368b.f8385J.optJSONArray("start_urls");
        audioMonitor.first_quartile_urls = this.f8368b.f8385J.optJSONArray("first_quartile_urls");
        audioMonitor.mid_point_urls = this.f8368b.f8385J.optJSONArray("mid_point_urls");
        audioMonitor.third_quartile_urls = this.f8368b.f8385J.optJSONArray("third_quartile_urls");
        audioMonitor.complete_urls = this.f8368b.f8385J.optJSONArray("complete_urls");
        audioMonitor.pause_urls = this.f8368b.f8385J.optJSONArray("pause_urls");
        audioMonitor.resume_urls = this.f8368b.f8385J.optJSONArray("resume_urls");
        audioMonitor.skip_urls = this.f8368b.f8385J.optJSONArray("skip_urls");
        audioMonitor.mute_urls = this.f8368b.f8385J.optJSONArray("mute_urls");
        audioMonitor.unmute_urls = this.f8368b.f8385J.optJSONArray("unmute_urls");
        audioMonitor.replay_urls = this.f8368b.f8385J.optJSONArray("replay_urls");
        audioMonitor.close_urls = this.f8368b.f8385J.optJSONArray("close_linear_urls");
        return audioMonitor;
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public String getBrand() {
        return this.f8368b.f8381F;
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public String getContent() {
        return this.f8368b.f8404o;
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public String getCtatext() {
        return this.f8368b.f8405p;
    }

    @Override // com.iflytek.voiceads.conn.NativeDataRef
    public double getCurrentPrice() {
        return this.f8368b.f8376A;
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public String getDesc() {
        return this.f8368b.f8402m;
    }

    @Override // com.iflytek.voiceads.conn.NativeDataRef
    public ArrayList<String> getDisplayLabels() {
        if (this.f8368b.f8382G == null) {
            return null;
        }
        JSONArray jSONArray = this.f8368b.f8382G;
        ArrayList<String> arrayList = new ArrayList<>();
        int i = 0;
        while (i < jSONArray.length()) {
            int i2 = i + 1;
            try {
                arrayList.add(jSONArray.getString(i));
                i = i2;
            } catch (JSONException e) {
                C2313g.m10138b(SDKConstants.TAG, "get labels" + e.getMessage());
                i = i2;
            }
        }
        return arrayList;
    }

    @Override // com.iflytek.voiceads.conn.NativeDataRef
    public int getDownloads() {
        return this.f8368b.f8407r;
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public String getIconUrl() {
        return (this.f8368b.f8403n == null || !this.f8368b.f8403n.has("url")) ? "" : this.f8368b.f8403n.optString("url");
    }

    @Override // com.iflytek.voiceads.conn.NativeDataRef
    public List<String> getImgList() {
        ArrayList arrayList = new ArrayList();
        if (this.f8368b.f8396g != null && this.f8368b.f8396g.has("url")) {
            arrayList.add(this.f8368b.f8396g.optString("url"));
        }
        if (this.f8368b.f8397h != null && this.f8368b.f8397h.has("url")) {
            arrayList.add(this.f8368b.f8397h.optString("url"));
        }
        if (this.f8368b.f8398i != null && this.f8368b.f8398i.has("url")) {
            arrayList.add(this.f8368b.f8398i.optString("url"));
        }
        return arrayList;
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public String getImgUrl() {
        return (this.f8368b.f8395f == null || !this.f8368b.f8395f.has("url")) ? "" : this.f8368b.f8395f.optString("url");
    }

    @Override // com.iflytek.voiceads.conn.NativeDataRef
    public int getLikes() {
        return this.f8368b.f8414y;
    }

    @Override // com.iflytek.voiceads.conn.NativeDataRef
    public double getOriginalPrice() {
        return this.f8368b.f8415z;
    }

    @Override // com.iflytek.voiceads.conn.NativeDataRef
    public String getPhone() {
        return this.f8368b.f8413x;
    }

    @Override // com.iflytek.voiceads.conn.NativeDataRef
    public String getRating() {
        return this.f8368b.f8408s;
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public String getRequestID() {
        return this.f8369c.f8417b;
    }

    @Override // com.iflytek.voiceads.conn.NativeDataRef
    public String getSponsored() {
        return this.f8368b.f8377B;
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public int getTemplateID() {
        return this.f8368b.f8390a;
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public String getTitle() {
        return this.f8368b.f8401l;
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public boolean isExposured() {
        return this.f8373g;
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public boolean onClick(View view) {
        m9842a();
        if (this.f8374h) {
            return true;
        }
        try {
            if (this.f8373g) {
                C2316j.m10151a(this.f8368b.f8385J.optJSONArray("click_urls"), this.f8367a, 2);
                this.f8374h = true;
                return true;
            }
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "native clk urls" + e.getMessage());
        }
        return false;
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public boolean onExposure(View view) {
        if (this.f8373g) {
            C2313g.m10136a(SDKConstants.TAG, "已曝光");
            return true;
        }
        if (!this.f8371e.m10033c(AdKeys.LOCK_SCREEN_AD) && C2308b.m10118b(this.f8367a)) {
            C2313g.m10136a(SDKConstants.TAG, "曝光失败-L");
            return false;
        }
        boolean m10113a = C2308b.m10113a(this.f8367a);
        boolean z = view.getVisibility() == 0;
        boolean isShown = view.isShown();
        boolean m10115a = C2308b.m10115a(this.f8367a, view);
        C2313g.m10136a(SDKConstants.TAG, "曝光失败-: B:" + m10113a + " V:" + z + " S:" + isShown + " I:" + m10115a);
        if (m10113a || !z || !isShown || !m10115a) {
            return false;
        }
        try {
            JSONArray m10150a = C2316j.m10150a(this.f8371e.m10035e(AdKeys.AUCTION_PRICE), this.f8368b.f8385J.optJSONArray("impress_urls"));
            if (m10150a == null) {
                C2313g.m10136a(SDKConstants.TAG, "impArray null");
                return false;
            }
            this.f8373g = true;
            C2313g.m10136a(SDKConstants.TAG, "曝光成功");
            C2316j.m10151a(m10150a, this.f8367a, 1);
            return true;
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "native imp urls" + e.getMessage());
            return false;
        }
    }

    @Override // com.iflytek.voiceads.conn.BaseDataRef
    public void showIntroduce() {
        if (TextUtils.isEmpty(this.f8368b.f8410u)) {
            return;
        }
        C2302e.m10109a(this.f8367a, this.f8368b.f8410u, this.f8371e, this.f8370d);
    }
}
