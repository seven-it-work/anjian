package com.lidroid.xutils.bitmap;

import android.widget.AbsListView;
import com.lidroid.xutils.task.TaskHandler;

/* loaded from: classes.dex */
public class PauseOnScrollListener implements AbsListView.OnScrollListener {
    private final AbsListView.OnScrollListener externalListener;
    private final boolean pauseOnFling;
    private final boolean pauseOnScroll;
    private TaskHandler taskHandler;

    public PauseOnScrollListener(TaskHandler taskHandler, boolean z, boolean z2) {
        this(taskHandler, z, z2, null);
    }

    public PauseOnScrollListener(TaskHandler taskHandler, boolean z, boolean z2, AbsListView.OnScrollListener onScrollListener) {
        this.taskHandler = taskHandler;
        this.pauseOnScroll = z;
        this.pauseOnFling = z2;
        this.externalListener = onScrollListener;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        if (this.externalListener != null) {
            this.externalListener.onScroll(absListView, i, i2, i3);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:3:0x0006, code lost:
    
        if (r1.pauseOnFling != false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000d, code lost:
    
        r1.taskHandler.pause();
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x000b, code lost:
    
        if (r1.pauseOnScroll != false) goto L9;
     */
    @Override // android.widget.AbsListView.OnScrollListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onScrollStateChanged(android.widget.AbsListView r2, int r3) {
        /*
            r1 = this;
            switch(r3) {
                case 0: goto L13;
                case 1: goto L9;
                case 2: goto L4;
                default: goto L3;
            }
        L3:
            goto L18
        L4:
            boolean r0 = r1.pauseOnFling
            if (r0 == 0) goto L18
            goto Ld
        L9:
            boolean r0 = r1.pauseOnScroll
            if (r0 == 0) goto L18
        Ld:
            com.lidroid.xutils.task.TaskHandler r0 = r1.taskHandler
            r0.pause()
            goto L18
        L13:
            com.lidroid.xutils.task.TaskHandler r0 = r1.taskHandler
            r0.resume()
        L18:
            android.widget.AbsListView$OnScrollListener r0 = r1.externalListener
            if (r0 == 0) goto L21
            android.widget.AbsListView$OnScrollListener r0 = r1.externalListener
            r0.onScrollStateChanged(r2, r3)
        L21:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lidroid.xutils.bitmap.PauseOnScrollListener.onScrollStateChanged(android.widget.AbsListView, int):void");
    }
}
