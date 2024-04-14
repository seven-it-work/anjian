package com.bumptech.glide.load.p049d.p052c;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.DrawableRes;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.res.ResourcesCompat;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.view.ContextThemeWrapper;

/* renamed from: com.bumptech.glide.load.d.c.a */
/* loaded from: classes.dex */
public final class C0995a {

    /* renamed from: a */
    private static volatile boolean f3111a = true;

    private C0995a() {
    }

    /* renamed from: a */
    public static Drawable m2965a(Context context, @DrawableRes int i, @Nullable Resources.Theme theme) {
        return m2967a(context, context, i, theme);
    }

    /* renamed from: a */
    public static Drawable m2966a(Context context, Context context2, @DrawableRes int i) {
        return m2967a(context, context2, i, null);
    }

    /* renamed from: a */
    private static Drawable m2967a(Context context, Context context2, @DrawableRes int i, @Nullable Resources.Theme theme) {
        try {
            if (f3111a) {
                return AppCompatResources.getDrawable(theme != null ? new ContextThemeWrapper(context2, theme) : context2, i);
            }
        } catch (Resources.NotFoundException unused) {
        } catch (IllegalStateException e) {
            if (context.getPackageName().equals(context2.getPackageName())) {
                throw e;
            }
            return ContextCompat.getDrawable(context2, i);
        } catch (NoClassDefFoundError unused2) {
            f3111a = false;
        }
        if (theme == null) {
            theme = context2.getTheme();
        }
        return ResourcesCompat.getDrawable(context2.getResources(), i, theme);
    }

    /* renamed from: b */
    private static Drawable m2968b(Context context, @DrawableRes int i, @Nullable Resources.Theme theme) {
        if (theme != null) {
            context = new ContextThemeWrapper(context, theme);
        }
        return AppCompatResources.getDrawable(context, i);
    }

    /* renamed from: c */
    private static Drawable m2969c(Context context, @DrawableRes int i, @Nullable Resources.Theme theme) {
        return ResourcesCompat.getDrawable(context.getResources(), i, theme);
    }
}
