package com.bumptech.glide.request.target;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.C1047o;
import com.bumptech.glide.request.p056a.InterfaceC1055f;

/* loaded from: classes.dex */
public final class PreloadTarget<Z> extends SimpleTarget<Z> {
    private static final Handler HANDLER = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.bumptech.glide.request.target.PreloadTarget.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            ((PreloadTarget) message.obj).clear();
            return true;
        }
    });
    private static final int MESSAGE_CLEAR = 1;
    private final C1047o requestManager;

    private PreloadTarget(C1047o c1047o, int i, int i2) {
        super(i, i2);
        this.requestManager = c1047o;
    }

    public static <Z> PreloadTarget<Z> obtain(C1047o c1047o, int i, int i2) {
        return new PreloadTarget<>(c1047o, i, i2);
    }

    final void clear() {
        this.requestManager.m3214a((Target<?>) this);
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void onResourceReady(@NonNull Z z, @Nullable InterfaceC1055f<? super Z> interfaceC1055f) {
        HANDLER.obtainMessage(1, this).sendToTarget();
    }
}
