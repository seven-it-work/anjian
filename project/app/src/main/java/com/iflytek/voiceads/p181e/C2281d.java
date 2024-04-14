package com.iflytek.voiceads.p181e;

import android.graphics.Bitmap;
import com.iflytek.voiceads.p171b.C2212a;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.iflytek.voiceads.e.d */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2281d implements C2212a.a {

    /* renamed from: a */
    final /* synthetic */ C2278a f8556a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2281d(C2278a c2278a) {
        this.f8556a = c2278a;
    }

    @Override // com.iflytek.voiceads.p171b.C2212a.a
    /* renamed from: a */
    public void mo9787a(Bitmap bitmap) {
        if (bitmap == null || this.f8556a.f8543a == null) {
            return;
        }
        this.f8556a.f8543a.f8721V.setImageBitmap(bitmap);
    }
}
