package com.iflytek.voiceads.view;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.iflytek.voiceads.listener.InternalListener;

/* loaded from: classes.dex */
public abstract class AdLayout extends RelativeLayout {
    private final int DESTROY;
    private boolean hasDestroyed;
    private AdLayoutHandler layoutHandler;
    protected InternalListener mInternalListener;

    /* loaded from: classes.dex */
    private class AdLayoutHandler extends Handler {
        public AdLayoutHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what != 1) {
                return;
            }
            AdLayout.this.destroy();
        }
    }

    public AdLayout(Context context) {
        super(context);
        this.DESTROY = 1;
        this.hasDestroyed = false;
        this.mInternalListener = new InternalListener() { // from class: com.iflytek.voiceads.view.AdLayout.1
            @Override // com.iflytek.voiceads.listener.InternalListener
            public boolean onAdDestroy() {
                if (AdLayout.this.hasDestroyed) {
                    return false;
                }
                AdLayout.this.hasDestroyed = true;
                if (AdLayout.this.layoutHandler != null) {
                    AdLayout.this.layoutHandler.sendEmptyMessage(1);
                }
                return true;
            }
        };
        this.layoutHandler = new AdLayoutHandler(context.getMainLooper());
    }

    public synchronized void destroy() {
        if (getParent() != null) {
            ((ViewGroup) getParent()).removeView(this);
        }
        removeAllViews();
        setVisibility(8);
    }
}
