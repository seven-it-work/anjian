package com.zbar.p185a.p187b;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.os.Vibrator;
import com.cyjh.common.util.C1154ag;
import com.cyjh.elfin.p085ui.activity.SweepCodeActivity;
import com.hjol.R;
import com.zbar.p185a.p186a.C2578c;

/* renamed from: com.zbar.a.b.a */
/* loaded from: classes.dex */
public final class HandlerC2581a extends Handler {

    /* renamed from: a */
    C2583c f10008a;

    /* renamed from: b */
    SweepCodeActivity f10009b;

    /* renamed from: c */
    public int f10010c;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* renamed from: com.zbar.a.b.a$a */
    /* loaded from: classes.dex */
    public static final class a {
        public static final int PREVIEW$65384932 = 1;
        public static final int SUCCESS$65384932 = 2;
        public static final int DONE$65384932 = 3;
        private static final /* synthetic */ int[] $VALUES$4ec8d709 = {PREVIEW$65384932, SUCCESS$65384932, DONE$65384932};

        private a(String str, int i) {
        }

        public static int[] values$63e95f78() {
            return (int[]) $VALUES$4ec8d709.clone();
        }
    }

    public HandlerC2581a(SweepCodeActivity sweepCodeActivity) {
        this.f10008a = null;
        this.f10009b = null;
        this.f10009b = sweepCodeActivity;
        this.f10008a = new C2583c(sweepCodeActivity);
        this.f10008a.start();
        this.f10010c = a.SUCCESS$65384932;
        C2578c m11635a = C2578c.m11635a();
        if (m11635a.f9993c != null && !m11635a.f9995e) {
            m11635a.f9993c.startPreview();
            m11635a.f9995e = true;
        }
        m11656b();
    }

    /* renamed from: a */
    private void m11655a() {
        this.f10010c = a.DONE$65384932;
        C2578c m11635a = C2578c.m11635a();
        if (m11635a.f9993c != null && m11635a.f9995e) {
            if (!m11635a.f9996f) {
                m11635a.f9993c.setPreviewCallback(null);
            }
            m11635a.f9993c.stopPreview();
            m11635a.f9997g.m11654a(null, 0);
            m11635a.f9998h.m11623a(null, 0);
            m11635a.f9995e = false;
        }
        removeMessages(R.id.decode_succeeded);
        removeMessages(R.id.decode_failed);
        removeMessages(R.id.decode);
        removeMessages(R.id.auto_focus);
    }

    /* renamed from: b */
    private void m11656b() {
        if (this.f10010c == a.SUCCESS$65384932) {
            this.f10010c = a.PREVIEW$65384932;
            C2578c.m11635a().m11644a(this.f10008a.m11658a());
            C2578c.m11635a().m11645b(this);
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        switch (message.what) {
            case R.id.auto_focus /* 2131755012 */:
                if (this.f10010c == a.PREVIEW$65384932) {
                    C2578c.m11635a().m11645b(this);
                    return;
                }
                return;
            case R.id.decode_failed /* 2131755014 */:
                break;
            case R.id.decode_succeeded /* 2131755015 */:
                this.f10010c = a.SUCCESS$65384932;
                SweepCodeActivity sweepCodeActivity = this.f10009b;
                String str = (String) message.obj;
                sweepCodeActivity.f5229e.m11660a();
                if (sweepCodeActivity.f5231g && sweepCodeActivity.f5233i != null) {
                    sweepCodeActivity.f5233i.start();
                }
                if (sweepCodeActivity.f5232h) {
                    ((Vibrator) sweepCodeActivity.getSystemService("vibrator")).vibrate(200L);
                }
                sweepCodeActivity.m6362b();
                sweepCodeActivity.f5227c.clearAnimation();
                if (str == null) {
                    C1154ag.m4343b(sweepCodeActivity, (int) R.string.sweep_error_tips);
                    break;
                } else {
                    Intent intent = new Intent();
                    intent.putExtra("SWEEP_RESULT_BACK", str);
                    sweepCodeActivity.setResult(-1, intent);
                    sweepCodeActivity.finish();
                    break;
                }
            case R.id.restart_preview /* 2131755029 */:
                m11656b();
                return;
            default:
                return;
        }
        this.f10010c = a.PREVIEW$65384932;
        C2578c.m11635a().m11644a(this.f10008a.m11658a());
    }
}
