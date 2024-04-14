package android.support.v4.content.res;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.FontRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.util.Preconditions;
import android.util.TypedValue;

/* loaded from: classes.dex */
public final class ResourcesCompat {
    private static final String TAG = "ResourcesCompat";

    /* loaded from: classes.dex */
    public static abstract class FontCallback {
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final void callbackFailAsync(final int i, @Nullable Handler handler) {
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            handler.post(new Runnable() { // from class: android.support.v4.content.res.ResourcesCompat.FontCallback.2
                @Override // java.lang.Runnable
                public void run() {
                    FontCallback.this.onFontRetrievalFailed(i);
                }
            });
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final void callbackSuccessAsync(final Typeface typeface, @Nullable Handler handler) {
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            handler.post(new Runnable() { // from class: android.support.v4.content.res.ResourcesCompat.FontCallback.1
                @Override // java.lang.Runnable
                public void run() {
                    FontCallback.this.onFontRetrieved(typeface);
                }
            });
        }

        public abstract void onFontRetrievalFailed(int i);

        public abstract void onFontRetrieved(@NonNull Typeface typeface);
    }

    private ResourcesCompat() {
    }

    @ColorInt
    public static int getColor(@NonNull Resources resources, @ColorRes int i, @Nullable Resources.Theme theme) throws Resources.NotFoundException {
        return Build.VERSION.SDK_INT >= 23 ? resources.getColor(i, theme) : resources.getColor(i);
    }

    @Nullable
    public static ColorStateList getColorStateList(@NonNull Resources resources, @ColorRes int i, @Nullable Resources.Theme theme) throws Resources.NotFoundException {
        return Build.VERSION.SDK_INT >= 23 ? resources.getColorStateList(i, theme) : resources.getColorStateList(i);
    }

    @Nullable
    public static Drawable getDrawable(@NonNull Resources resources, @DrawableRes int i, @Nullable Resources.Theme theme) throws Resources.NotFoundException {
        return Build.VERSION.SDK_INT >= 21 ? resources.getDrawable(i, theme) : resources.getDrawable(i);
    }

    @Nullable
    public static Drawable getDrawableForDensity(@NonNull Resources resources, @DrawableRes int i, int i2, @Nullable Resources.Theme theme) throws Resources.NotFoundException {
        return Build.VERSION.SDK_INT >= 21 ? resources.getDrawableForDensity(i, i2, theme) : Build.VERSION.SDK_INT >= 15 ? resources.getDrawableForDensity(i, i2) : resources.getDrawable(i);
    }

    @Nullable
    public static Typeface getFont(@NonNull Context context, @FontRes int i) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return loadFont(context, i, new TypedValue(), 0, null, null, false);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static Typeface getFont(@NonNull Context context, @FontRes int i, TypedValue typedValue, int i2, @Nullable FontCallback fontCallback) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return loadFont(context, i, typedValue, i2, fontCallback, null, true);
    }

    public static void getFont(@NonNull Context context, @FontRes int i, @NonNull FontCallback fontCallback, @Nullable Handler handler) throws Resources.NotFoundException {
        Preconditions.checkNotNull(fontCallback);
        if (context.isRestricted()) {
            fontCallback.callbackFailAsync(-4, handler);
        } else {
            loadFont(context, i, new TypedValue(), 0, fontCallback, handler, false);
        }
    }

    private static Typeface loadFont(@NonNull Context context, int i, TypedValue typedValue, int i2, @Nullable FontCallback fontCallback, @Nullable Handler handler, boolean z) {
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        Typeface loadFont = loadFont(context, resources, typedValue, i, i2, fontCallback, handler, z);
        if (loadFont != null || fontCallback != null) {
            return loadFont;
        }
        throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i) + " could not be retrieved.");
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.graphics.Typeface loadFont(@android.support.annotation.NonNull android.content.Context r14, android.content.res.Resources r15, android.util.TypedValue r16, int r17, int r18, @android.support.annotation.Nullable android.support.v4.content.res.ResourcesCompat.FontCallback r19, @android.support.annotation.Nullable android.os.Handler r20, boolean r21) {
        /*
            r3 = r15
            r1 = r16
            r4 = r17
            r5 = r18
            r9 = r19
            r10 = r20
            java.lang.CharSequence r2 = r1.string
            if (r2 != 0) goto L3b
            android.content.res.Resources$NotFoundException r2 = new android.content.res.Resources$NotFoundException
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r6 = "Resource \""
            r5.<init>(r6)
            java.lang.String r3 = r3.getResourceName(r4)
            r5.append(r3)
            java.lang.String r3 = "\" ("
            r5.append(r3)
            java.lang.String r3 = java.lang.Integer.toHexString(r17)
            r5.append(r3)
            java.lang.String r3 = ") is not a Font: "
            r5.append(r3)
            r5.append(r1)
            java.lang.String r1 = r5.toString()
            r2.<init>(r1)
            throw r2
        L3b:
            java.lang.CharSequence r1 = r1.string
            java.lang.String r11 = r1.toString()
            java.lang.String r1 = "res/"
            boolean r1 = r11.startsWith(r1)
            r12 = 0
            r13 = -3
            if (r1 != 0) goto L51
            if (r9 == 0) goto L50
            r9.callbackFailAsync(r13, r10)
        L50:
            return r12
        L51:
            android.graphics.Typeface r1 = android.support.v4.graphics.TypefaceCompat.findFromCache(r3, r4, r5)
            if (r1 == 0) goto L5d
            if (r9 == 0) goto L5c
            r9.callbackSuccessAsync(r1, r10)
        L5c:
            return r1
        L5d:
            java.lang.String r1 = r11.toLowerCase()     // Catch: java.io.IOException -> L9b org.xmlpull.v1.XmlPullParserException -> La7
            java.lang.String r2 = ".xml"
            boolean r1 = r1.endsWith(r2)     // Catch: java.io.IOException -> L9b org.xmlpull.v1.XmlPullParserException -> La7
            if (r1 == 0) goto L8a
            android.content.res.XmlResourceParser r1 = r3.getXml(r4)     // Catch: java.io.IOException -> L9b org.xmlpull.v1.XmlPullParserException -> La7
            android.support.v4.content.res.FontResourcesParserCompat$FamilyResourceEntry r2 = android.support.v4.content.res.FontResourcesParserCompat.parse(r1, r3)     // Catch: java.io.IOException -> L9b org.xmlpull.v1.XmlPullParserException -> La7
            if (r2 != 0) goto L80
            java.lang.String r1 = "ResourcesCompat"
            java.lang.String r2 = "Failed to find font-family tag"
            android.util.Log.e(r1, r2)     // Catch: java.io.IOException -> L9b org.xmlpull.v1.XmlPullParserException -> La7
            if (r9 == 0) goto L7f
            r9.callbackFailAsync(r13, r10)     // Catch: java.io.IOException -> L9b org.xmlpull.v1.XmlPullParserException -> La7
        L7f:
            return r12
        L80:
            r1 = r14
            r6 = r9
            r7 = r10
            r8 = r21
            android.graphics.Typeface r1 = android.support.v4.graphics.TypefaceCompat.createFromResourcesFamilyXml(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.io.IOException -> L9b org.xmlpull.v1.XmlPullParserException -> La7
            return r1
        L8a:
            r1 = r14
            android.graphics.Typeface r1 = android.support.v4.graphics.TypefaceCompat.createFromResourcesFontFile(r1, r3, r4, r11, r5)     // Catch: java.io.IOException -> L9b org.xmlpull.v1.XmlPullParserException -> La7
            if (r9 == 0) goto L9a
            if (r1 == 0) goto L97
            r9.callbackSuccessAsync(r1, r10)     // Catch: java.io.IOException -> L9b org.xmlpull.v1.XmlPullParserException -> La7
            return r1
        L97:
            r9.callbackFailAsync(r13, r10)     // Catch: java.io.IOException -> L9b org.xmlpull.v1.XmlPullParserException -> La7
        L9a:
            return r1
        L9b:
            r0 = move-exception
            r1 = r0
            java.lang.String r2 = "ResourcesCompat"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "Failed to read xml resource "
            r3.<init>(r4)
            goto Lb2
        La7:
            r0 = move-exception
            r1 = r0
            java.lang.String r2 = "ResourcesCompat"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "Failed to parse xml resource "
            r3.<init>(r4)
        Lb2:
            r3.append(r11)
            java.lang.String r3 = r3.toString()
            android.util.Log.e(r2, r3, r1)
            if (r9 == 0) goto Lc1
            r9.callbackFailAsync(r13, r10)
        Lc1:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.content.res.ResourcesCompat.loadFont(android.content.Context, android.content.res.Resources, android.util.TypedValue, int, int, android.support.v4.content.res.ResourcesCompat$FontCallback, android.os.Handler, boolean):android.graphics.Typeface");
    }
}
