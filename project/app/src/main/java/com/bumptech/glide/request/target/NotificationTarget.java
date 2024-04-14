package com.bumptech.glide.request.target;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.RemoteViews;
import com.bumptech.glide.request.p056a.InterfaceC1055f;
import com.bumptech.glide.util.C1084i;

/* loaded from: classes.dex */
public class NotificationTarget extends SimpleTarget<Bitmap> {
    private final Context context;
    private final Notification notification;
    private final int notificationId;
    private final String notificationTag;
    private final RemoteViews remoteViews;
    private final int viewId;

    public NotificationTarget(Context context, int i, int i2, int i3, RemoteViews remoteViews, Notification notification, int i4, String str) {
        super(i, i2);
        this.context = (Context) C1084i.m3470a(context, "Context must not be null!");
        this.notification = (Notification) C1084i.m3470a(notification, "Notification object can not be null!");
        this.remoteViews = (RemoteViews) C1084i.m3470a(remoteViews, "RemoteViews object can not be null!");
        this.viewId = i3;
        this.notificationId = i4;
        this.notificationTag = str;
    }

    public NotificationTarget(Context context, int i, RemoteViews remoteViews, Notification notification, int i2) {
        this(context, i, remoteViews, notification, i2, null);
    }

    public NotificationTarget(Context context, int i, RemoteViews remoteViews, Notification notification, int i2, String str) {
        this(context, Integer.MIN_VALUE, Integer.MIN_VALUE, i, remoteViews, notification, i2, str);
    }

    private void update() {
        ((NotificationManager) C1084i.m3470a((NotificationManager) this.context.getSystemService("notification"), "Argument must not be null")).notify(this.notificationTag, this.notificationId, this.notification);
    }

    public void onResourceReady(@NonNull Bitmap bitmap, @Nullable InterfaceC1055f<? super Bitmap> interfaceC1055f) {
        this.remoteViews.setImageViewBitmap(this.viewId, bitmap);
        update();
    }

    @Override // com.bumptech.glide.request.target.Target
    public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable InterfaceC1055f interfaceC1055f) {
        onResourceReady((Bitmap) obj, (InterfaceC1055f<? super Bitmap>) interfaceC1055f);
    }
}
