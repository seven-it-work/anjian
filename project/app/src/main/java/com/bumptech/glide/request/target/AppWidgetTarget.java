package com.bumptech.glide.request.target;

import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.RemoteViews;
import com.bumptech.glide.request.p056a.InterfaceC1055f;
import com.bumptech.glide.util.C1084i;

/* loaded from: classes.dex */
public class AppWidgetTarget extends SimpleTarget<Bitmap> {
    private final ComponentName componentName;
    private final Context context;
    private final RemoteViews remoteViews;
    private final int viewId;
    private final int[] widgetIds;

    public AppWidgetTarget(Context context, int i, int i2, int i3, RemoteViews remoteViews, ComponentName componentName) {
        super(i, i2);
        this.context = (Context) C1084i.m3470a(context, "Context can not be null!");
        this.remoteViews = (RemoteViews) C1084i.m3470a(remoteViews, "RemoteViews object can not be null!");
        this.componentName = (ComponentName) C1084i.m3470a(componentName, "ComponentName can not be null!");
        this.viewId = i3;
        this.widgetIds = null;
    }

    public AppWidgetTarget(Context context, int i, int i2, int i3, RemoteViews remoteViews, int... iArr) {
        super(i, i2);
        if (iArr.length == 0) {
            throw new IllegalArgumentException("WidgetIds must have length > 0");
        }
        this.context = (Context) C1084i.m3470a(context, "Context can not be null!");
        this.remoteViews = (RemoteViews) C1084i.m3470a(remoteViews, "RemoteViews object can not be null!");
        this.widgetIds = (int[]) C1084i.m3470a(iArr, "WidgetIds can not be null!");
        this.viewId = i3;
        this.componentName = null;
    }

    public AppWidgetTarget(Context context, int i, RemoteViews remoteViews, ComponentName componentName) {
        this(context, Integer.MIN_VALUE, Integer.MIN_VALUE, i, remoteViews, componentName);
    }

    public AppWidgetTarget(Context context, int i, RemoteViews remoteViews, int... iArr) {
        this(context, Integer.MIN_VALUE, Integer.MIN_VALUE, i, remoteViews, iArr);
    }

    private void update() {
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(this.context);
        if (this.componentName != null) {
            appWidgetManager.updateAppWidget(this.componentName, this.remoteViews);
        } else {
            appWidgetManager.updateAppWidget(this.widgetIds, this.remoteViews);
        }
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
