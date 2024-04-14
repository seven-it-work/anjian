package android.support.v7.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.graphics.drawable.AnimatedVectorDrawableCompat;
import android.support.graphics.drawable.VectorDrawableCompat;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.ColorUtils;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.LongSparseArray;
import android.support.v4.util.LruCache;
import android.support.v4.util.SparseArrayCompat;
import android.support.v7.appcompat.C0328R;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class AppCompatDrawableManager {
    private static final boolean DEBUG = false;
    private static AppCompatDrawableManager INSTANCE = null;
    private static final String PLATFORM_VD_CLAZZ = "android.graphics.drawable.VectorDrawable";
    private static final String SKIP_DRAWABLE_TAG = "appcompat_skip_skip";
    private static final String TAG = "AppCompatDrawableManag";
    private ArrayMap<String, InflateDelegate> mDelegates;
    private final Object mDrawableCacheLock = new Object();
    private final WeakHashMap<Context, LongSparseArray<WeakReference<Drawable.ConstantState>>> mDrawableCaches = new WeakHashMap<>(0);
    private boolean mHasCheckedVectorDrawableSetup;
    private SparseArrayCompat<String> mKnownDrawableIdTags;
    private WeakHashMap<Context, SparseArrayCompat<ColorStateList>> mTintLists;
    private TypedValue mTypedValue;
    private static final PorterDuff.Mode DEFAULT_MODE = PorterDuff.Mode.SRC_IN;
    private static final ColorFilterLruCache COLOR_FILTER_CACHE = new ColorFilterLruCache(6);
    private static final int[] COLORFILTER_TINT_COLOR_CONTROL_NORMAL = {C0328R.drawable.abc_textfield_search_default_mtrl_alpha, C0328R.drawable.abc_textfield_default_mtrl_alpha, C0328R.drawable.abc_ab_share_pack_mtrl_alpha};
    private static final int[] TINT_COLOR_CONTROL_NORMAL = {C0328R.drawable.abc_ic_commit_search_api_mtrl_alpha, C0328R.drawable.abc_seekbar_tick_mark_material, C0328R.drawable.abc_ic_menu_share_mtrl_alpha, C0328R.drawable.abc_ic_menu_copy_mtrl_am_alpha, C0328R.drawable.abc_ic_menu_cut_mtrl_alpha, C0328R.drawable.abc_ic_menu_selectall_mtrl_alpha, C0328R.drawable.abc_ic_menu_paste_mtrl_am_alpha};
    private static final int[] COLORFILTER_COLOR_CONTROL_ACTIVATED = {C0328R.drawable.abc_textfield_activated_mtrl_alpha, C0328R.drawable.abc_textfield_search_activated_mtrl_alpha, C0328R.drawable.abc_cab_background_top_mtrl_alpha, C0328R.drawable.abc_text_cursor_material, C0328R.drawable.abc_text_select_handle_left_mtrl_dark, C0328R.drawable.abc_text_select_handle_middle_mtrl_dark, C0328R.drawable.abc_text_select_handle_right_mtrl_dark, C0328R.drawable.abc_text_select_handle_left_mtrl_light, C0328R.drawable.abc_text_select_handle_middle_mtrl_light, C0328R.drawable.abc_text_select_handle_right_mtrl_light};
    private static final int[] COLORFILTER_COLOR_BACKGROUND_MULTIPLY = {C0328R.drawable.abc_popup_background_mtrl_mult, C0328R.drawable.abc_cab_background_internal_bg, C0328R.drawable.abc_menu_hardkey_panel_mtrl_mult};
    private static final int[] TINT_COLOR_CONTROL_STATE_LIST = {C0328R.drawable.abc_tab_indicator_material, C0328R.drawable.abc_textfield_search_material};
    private static final int[] TINT_CHECKABLE_BUTTON_LIST = {C0328R.drawable.abc_btn_check_material, C0328R.drawable.abc_btn_radio_material};

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(11)
    /* loaded from: classes.dex */
    public static class AvdcInflateDelegate implements InflateDelegate {
        AvdcInflateDelegate() {
        }

        @Override // android.support.v7.widget.AppCompatDrawableManager.InflateDelegate
        public Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return AnimatedVectorDrawableCompat.createFromXmlInner(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ColorFilterLruCache extends LruCache<Integer, PorterDuffColorFilter> {
        public ColorFilterLruCache(int i) {
            super(i);
        }

        private static int generateCacheKey(int i, PorterDuff.Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }

        PorterDuffColorFilter get(int i, PorterDuff.Mode mode) {
            return get(Integer.valueOf(generateCacheKey(i, mode)));
        }

        PorterDuffColorFilter put(int i, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return put(Integer.valueOf(generateCacheKey(i, mode)), porterDuffColorFilter);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface InflateDelegate {
        Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class VdcInflateDelegate implements InflateDelegate {
        VdcInflateDelegate() {
        }

        @Override // android.support.v7.widget.AppCompatDrawableManager.InflateDelegate
        public Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return VectorDrawableCompat.createFromXmlInner(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
                return null;
            }
        }
    }

    private void addDelegate(@NonNull String str, @NonNull InflateDelegate inflateDelegate) {
        if (this.mDelegates == null) {
            this.mDelegates = new ArrayMap<>();
        }
        this.mDelegates.put(str, inflateDelegate);
    }

    private boolean addDrawableToCache(@NonNull Context context, long j, @NonNull Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState == null) {
            return false;
        }
        synchronized (this.mDrawableCacheLock) {
            LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.mDrawableCaches.get(context);
            if (longSparseArray == null) {
                longSparseArray = new LongSparseArray<>();
                this.mDrawableCaches.put(context, longSparseArray);
            }
            longSparseArray.put(j, new WeakReference<>(constantState));
        }
        return true;
    }

    private void addTintListToCache(@NonNull Context context, @DrawableRes int i, @NonNull ColorStateList colorStateList) {
        if (this.mTintLists == null) {
            this.mTintLists = new WeakHashMap<>();
        }
        SparseArrayCompat<ColorStateList> sparseArrayCompat = this.mTintLists.get(context);
        if (sparseArrayCompat == null) {
            sparseArrayCompat = new SparseArrayCompat<>();
            this.mTintLists.put(context, sparseArrayCompat);
        }
        sparseArrayCompat.append(i, colorStateList);
    }

    private static boolean arrayContains(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    private void checkVectorDrawableSetup(@NonNull Context context) {
        if (this.mHasCheckedVectorDrawableSetup) {
            return;
        }
        this.mHasCheckedVectorDrawableSetup = true;
        Drawable drawable = getDrawable(context, C0328R.drawable.abc_vector_test);
        if (drawable == null || !isVectorDrawable(drawable)) {
            this.mHasCheckedVectorDrawableSetup = false;
            throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
        }
    }

    private ColorStateList createBorderlessButtonColorStateList(@NonNull Context context) {
        return createButtonColorStateList(context, 0);
    }

    private ColorStateList createButtonColorStateList(@NonNull Context context, @ColorInt int i) {
        int themeAttrColor = ThemeUtils.getThemeAttrColor(context, C0328R.attr.colorControlHighlight);
        return new ColorStateList(new int[][]{ThemeUtils.DISABLED_STATE_SET, ThemeUtils.PRESSED_STATE_SET, ThemeUtils.FOCUSED_STATE_SET, ThemeUtils.EMPTY_STATE_SET}, new int[]{ThemeUtils.getDisabledThemeAttrColor(context, C0328R.attr.colorButtonNormal), ColorUtils.compositeColors(themeAttrColor, i), ColorUtils.compositeColors(themeAttrColor, i), i});
    }

    private static long createCacheKey(TypedValue typedValue) {
        return (typedValue.assetCookie << 32) | typedValue.data;
    }

    private ColorStateList createColoredButtonColorStateList(@NonNull Context context) {
        return createButtonColorStateList(context, ThemeUtils.getThemeAttrColor(context, C0328R.attr.colorAccent));
    }

    private ColorStateList createDefaultButtonColorStateList(@NonNull Context context) {
        return createButtonColorStateList(context, ThemeUtils.getThemeAttrColor(context, C0328R.attr.colorButtonNormal));
    }

    private Drawable createDrawableIfNeeded(@NonNull Context context, @DrawableRes int i) {
        if (this.mTypedValue == null) {
            this.mTypedValue = new TypedValue();
        }
        TypedValue typedValue = this.mTypedValue;
        context.getResources().getValue(i, typedValue, true);
        long createCacheKey = createCacheKey(typedValue);
        Drawable cachedDrawable = getCachedDrawable(context, createCacheKey);
        if (cachedDrawable != null) {
            return cachedDrawable;
        }
        if (i == C0328R.drawable.abc_cab_background_top_material) {
            cachedDrawable = new LayerDrawable(new Drawable[]{getDrawable(context, C0328R.drawable.abc_cab_background_internal_bg), getDrawable(context, C0328R.drawable.abc_cab_background_top_mtrl_alpha)});
        }
        if (cachedDrawable != null) {
            cachedDrawable.setChangingConfigurations(typedValue.changingConfigurations);
            addDrawableToCache(context, createCacheKey, cachedDrawable);
        }
        return cachedDrawable;
    }

    private ColorStateList createSwitchThumbColorStateList(Context context) {
        int[][] iArr = new int[3];
        int[] iArr2 = new int[3];
        ColorStateList themeAttrColorStateList = ThemeUtils.getThemeAttrColorStateList(context, C0328R.attr.colorSwitchThumbNormal);
        if (themeAttrColorStateList == null || !themeAttrColorStateList.isStateful()) {
            iArr[0] = ThemeUtils.DISABLED_STATE_SET;
            iArr2[0] = ThemeUtils.getDisabledThemeAttrColor(context, C0328R.attr.colorSwitchThumbNormal);
            iArr[1] = ThemeUtils.CHECKED_STATE_SET;
            iArr2[1] = ThemeUtils.getThemeAttrColor(context, C0328R.attr.colorControlActivated);
            iArr[2] = ThemeUtils.EMPTY_STATE_SET;
            iArr2[2] = ThemeUtils.getThemeAttrColor(context, C0328R.attr.colorSwitchThumbNormal);
        } else {
            iArr[0] = ThemeUtils.DISABLED_STATE_SET;
            iArr2[0] = themeAttrColorStateList.getColorForState(iArr[0], 0);
            iArr[1] = ThemeUtils.CHECKED_STATE_SET;
            iArr2[1] = ThemeUtils.getThemeAttrColor(context, C0328R.attr.colorControlActivated);
            iArr[2] = ThemeUtils.EMPTY_STATE_SET;
            iArr2[2] = themeAttrColorStateList.getDefaultColor();
        }
        return new ColorStateList(iArr, iArr2);
    }

    private static PorterDuffColorFilter createTintFilter(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return getPorterDuffColorFilter(colorStateList.getColorForState(iArr, 0), mode);
    }

    public static AppCompatDrawableManager get() {
        if (INSTANCE == null) {
            AppCompatDrawableManager appCompatDrawableManager = new AppCompatDrawableManager();
            INSTANCE = appCompatDrawableManager;
            installDefaultInflateDelegates(appCompatDrawableManager);
        }
        return INSTANCE;
    }

    private Drawable getCachedDrawable(@NonNull Context context, long j) {
        synchronized (this.mDrawableCacheLock) {
            LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.mDrawableCaches.get(context);
            if (longSparseArray == null) {
                return null;
            }
            WeakReference<Drawable.ConstantState> weakReference = longSparseArray.get(j);
            if (weakReference != null) {
                Drawable.ConstantState constantState = weakReference.get();
                if (constantState != null) {
                    return constantState.newDrawable(context.getResources());
                }
                longSparseArray.delete(j);
            }
            return null;
        }
    }

    public static PorterDuffColorFilter getPorterDuffColorFilter(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter = COLOR_FILTER_CACHE.get(i, mode);
        if (porterDuffColorFilter != null) {
            return porterDuffColorFilter;
        }
        PorterDuffColorFilter porterDuffColorFilter2 = new PorterDuffColorFilter(i, mode);
        COLOR_FILTER_CACHE.put(i, mode, porterDuffColorFilter2);
        return porterDuffColorFilter2;
    }

    private ColorStateList getTintListFromCache(@NonNull Context context, @DrawableRes int i) {
        SparseArrayCompat<ColorStateList> sparseArrayCompat;
        if (this.mTintLists == null || (sparseArrayCompat = this.mTintLists.get(context)) == null) {
            return null;
        }
        return sparseArrayCompat.get(i);
    }

    static PorterDuff.Mode getTintMode(int i) {
        if (i == C0328R.drawable.abc_switch_thumb_material) {
            return PorterDuff.Mode.MULTIPLY;
        }
        return null;
    }

    private static void installDefaultInflateDelegates(@NonNull AppCompatDrawableManager appCompatDrawableManager) {
        if (Build.VERSION.SDK_INT < 24) {
            appCompatDrawableManager.addDelegate("vector", new VdcInflateDelegate());
            appCompatDrawableManager.addDelegate("animated-vector", new AvdcInflateDelegate());
        }
    }

    private static boolean isVectorDrawable(@NonNull Drawable drawable) {
        return (drawable instanceof VectorDrawableCompat) || PLATFORM_VD_CLAZZ.equals(drawable.getClass().getName());
    }

    private Drawable loadDrawableFromDelegates(@NonNull Context context, @DrawableRes int i) {
        int next;
        if (this.mDelegates == null || this.mDelegates.isEmpty()) {
            return null;
        }
        if (this.mKnownDrawableIdTags != null) {
            String str = this.mKnownDrawableIdTags.get(i);
            if (SKIP_DRAWABLE_TAG.equals(str) || (str != null && this.mDelegates.get(str) == null)) {
                return null;
            }
        } else {
            this.mKnownDrawableIdTags = new SparseArrayCompat<>();
        }
        if (this.mTypedValue == null) {
            this.mTypedValue = new TypedValue();
        }
        TypedValue typedValue = this.mTypedValue;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        long createCacheKey = createCacheKey(typedValue);
        Drawable cachedDrawable = getCachedDrawable(context, createCacheKey);
        if (cachedDrawable != null) {
            return cachedDrawable;
        }
        if (typedValue.string != null && typedValue.string.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i);
                AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                String name = xml.getName();
                this.mKnownDrawableIdTags.append(i, name);
                InflateDelegate inflateDelegate = this.mDelegates.get(name);
                if (inflateDelegate != null) {
                    cachedDrawable = inflateDelegate.createFromXmlInner(context, xml, asAttributeSet, context.getTheme());
                }
                if (cachedDrawable != null) {
                    cachedDrawable.setChangingConfigurations(typedValue.changingConfigurations);
                    addDrawableToCache(context, createCacheKey, cachedDrawable);
                }
            } catch (Exception e) {
                Log.e(TAG, "Exception while inflating drawable", e);
            }
        }
        if (cachedDrawable == null) {
            this.mKnownDrawableIdTags.append(i, SKIP_DRAWABLE_TAG);
        }
        return cachedDrawable;
    }

    private void removeDelegate(@NonNull String str, @NonNull InflateDelegate inflateDelegate) {
        if (this.mDelegates == null || this.mDelegates.get(str) != inflateDelegate) {
            return;
        }
        this.mDelegates.remove(str);
    }

    private static void setPorterDuffColorFilter(Drawable drawable, int i, PorterDuff.Mode mode) {
        if (DrawableUtils.canSafelyMutateDrawable(drawable)) {
            drawable = drawable.mutate();
        }
        if (mode == null) {
            mode = DEFAULT_MODE;
        }
        drawable.setColorFilter(getPorterDuffColorFilter(i, mode));
    }

    private Drawable tintDrawable(@NonNull Context context, @DrawableRes int i, boolean z, @NonNull Drawable drawable) {
        LayerDrawable layerDrawable;
        Drawable findDrawableByLayerId;
        int i2;
        ColorStateList tintList = getTintList(context, i);
        if (tintList == null) {
            if (i == C0328R.drawable.abc_seekbar_track_material) {
                layerDrawable = (LayerDrawable) drawable;
                setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(R.id.background), ThemeUtils.getThemeAttrColor(context, C0328R.attr.colorControlNormal), DEFAULT_MODE);
                findDrawableByLayerId = layerDrawable.findDrawableByLayerId(R.id.secondaryProgress);
                i2 = C0328R.attr.colorControlNormal;
            } else if (i == C0328R.drawable.abc_ratingbar_material || i == C0328R.drawable.abc_ratingbar_indicator_material || i == C0328R.drawable.abc_ratingbar_small_material) {
                layerDrawable = (LayerDrawable) drawable;
                setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(R.id.background), ThemeUtils.getDisabledThemeAttrColor(context, C0328R.attr.colorControlNormal), DEFAULT_MODE);
                findDrawableByLayerId = layerDrawable.findDrawableByLayerId(R.id.secondaryProgress);
                i2 = C0328R.attr.colorControlActivated;
            } else if (!tintDrawableUsingColorFilter(context, i, drawable) && z) {
                return null;
            }
            setPorterDuffColorFilter(findDrawableByLayerId, ThemeUtils.getThemeAttrColor(context, i2), DEFAULT_MODE);
            setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(R.id.progress), ThemeUtils.getThemeAttrColor(context, C0328R.attr.colorControlActivated), DEFAULT_MODE);
            return drawable;
        }
        if (DrawableUtils.canSafelyMutateDrawable(drawable)) {
            drawable = drawable.mutate();
        }
        drawable = DrawableCompat.wrap(drawable);
        DrawableCompat.setTintList(drawable, tintList);
        PorterDuff.Mode tintMode = getTintMode(i);
        if (tintMode != null) {
            DrawableCompat.setTintMode(drawable, tintMode);
            return drawable;
        }
        return drawable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void tintDrawable(Drawable drawable, TintInfo tintInfo, int[] iArr) {
        if (DrawableUtils.canSafelyMutateDrawable(drawable) && drawable.mutate() != drawable) {
            Log.d(TAG, "Mutated drawable is not the same instance as the input.");
            return;
        }
        if (tintInfo.mHasTintList || tintInfo.mHasTintMode) {
            drawable.setColorFilter(createTintFilter(tintInfo.mHasTintList ? tintInfo.mTintList : null, tintInfo.mHasTintMode ? tintInfo.mTintMode : DEFAULT_MODE, iArr));
        } else {
            drawable.clearColorFilter();
        }
        if (Build.VERSION.SDK_INT <= 23) {
            drawable.invalidateSelf();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0061 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean tintDrawableUsingColorFilter(@android.support.annotation.NonNull android.content.Context r6, @android.support.annotation.DrawableRes int r7, @android.support.annotation.NonNull android.graphics.drawable.Drawable r8) {
        /*
            android.graphics.PorterDuff$Mode r0 = android.support.v7.widget.AppCompatDrawableManager.DEFAULT_MODE
            int[] r1 = android.support.v7.widget.AppCompatDrawableManager.COLORFILTER_TINT_COLOR_CONTROL_NORMAL
            boolean r1 = arrayContains(r1, r7)
            r2 = 16842801(0x1010031, float:2.3693695E-38)
            r3 = -1
            r4 = 0
            r5 = 1
            if (r1 == 0) goto L15
            int r2 = android.support.v7.appcompat.C0328R.attr.colorControlNormal
        L12:
            r7 = 1
            r1 = -1
            goto L44
        L15:
            int[] r1 = android.support.v7.widget.AppCompatDrawableManager.COLORFILTER_COLOR_CONTROL_ACTIVATED
            boolean r1 = arrayContains(r1, r7)
            if (r1 == 0) goto L20
            int r2 = android.support.v7.appcompat.C0328R.attr.colorControlActivated
            goto L12
        L20:
            int[] r1 = android.support.v7.widget.AppCompatDrawableManager.COLORFILTER_COLOR_BACKGROUND_MULTIPLY
            boolean r1 = arrayContains(r1, r7)
            if (r1 == 0) goto L2b
            android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.MULTIPLY
            goto L12
        L2b:
            int r1 = android.support.v7.appcompat.C0328R.drawable.abc_list_divider_mtrl_alpha
            if (r7 != r1) goto L3c
            r2 = 16842800(0x1010030, float:2.3693693E-38)
            r7 = 1109603123(0x42233333, float:40.8)
            int r7 = java.lang.Math.round(r7)
            r1 = r7
            r7 = 1
            goto L44
        L3c:
            int r1 = android.support.v7.appcompat.C0328R.drawable.abc_dialog_material_background
            if (r7 != r1) goto L41
            goto L12
        L41:
            r7 = 0
            r1 = -1
            r2 = 0
        L44:
            if (r7 == 0) goto L61
            boolean r7 = android.support.v7.widget.DrawableUtils.canSafelyMutateDrawable(r8)
            if (r7 == 0) goto L50
            android.graphics.drawable.Drawable r8 = r8.mutate()
        L50:
            int r6 = android.support.v7.widget.ThemeUtils.getThemeAttrColor(r6, r2)
            android.graphics.PorterDuffColorFilter r6 = getPorterDuffColorFilter(r6, r0)
            r8.setColorFilter(r6)
            if (r1 == r3) goto L60
            r8.setAlpha(r1)
        L60:
            return r5
        L61:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.AppCompatDrawableManager.tintDrawableUsingColorFilter(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
    }

    public final Drawable getDrawable(@NonNull Context context, @DrawableRes int i) {
        return getDrawable(context, i, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Drawable getDrawable(@NonNull Context context, @DrawableRes int i, boolean z) {
        checkVectorDrawableSetup(context);
        Drawable loadDrawableFromDelegates = loadDrawableFromDelegates(context, i);
        if (loadDrawableFromDelegates == null) {
            loadDrawableFromDelegates = createDrawableIfNeeded(context, i);
        }
        if (loadDrawableFromDelegates == null) {
            loadDrawableFromDelegates = ContextCompat.getDrawable(context, i);
        }
        if (loadDrawableFromDelegates != null) {
            loadDrawableFromDelegates = tintDrawable(context, i, z, loadDrawableFromDelegates);
        }
        if (loadDrawableFromDelegates != null) {
            DrawableUtils.fixDrawable(loadDrawableFromDelegates);
        }
        return loadDrawableFromDelegates;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.content.res.ColorStateList getTintList(@android.support.annotation.NonNull android.content.Context r3, @android.support.annotation.DrawableRes int r4) {
        /*
            r2 = this;
            android.content.res.ColorStateList r0 = r2.getTintListFromCache(r3, r4)
            if (r0 != 0) goto L7a
            int r1 = android.support.v7.appcompat.C0328R.drawable.abc_edit_text_material
            if (r4 != r1) goto L12
            int r0 = android.support.v7.appcompat.C0328R.color.abc_tint_edittext
        Lc:
            android.content.res.ColorStateList r0 = android.support.v7.content.res.AppCompatResources.getColorStateList(r3, r0)
            goto L75
        L12:
            int r1 = android.support.v7.appcompat.C0328R.drawable.abc_switch_track_mtrl_alpha
            if (r4 != r1) goto L19
            int r0 = android.support.v7.appcompat.C0328R.color.abc_tint_switch_track
            goto Lc
        L19:
            int r1 = android.support.v7.appcompat.C0328R.drawable.abc_switch_thumb_material
            if (r4 != r1) goto L22
            android.content.res.ColorStateList r0 = r2.createSwitchThumbColorStateList(r3)
            goto L75
        L22:
            int r1 = android.support.v7.appcompat.C0328R.drawable.abc_btn_default_mtrl_shape
            if (r4 != r1) goto L2b
            android.content.res.ColorStateList r0 = r2.createDefaultButtonColorStateList(r3)
            goto L75
        L2b:
            int r1 = android.support.v7.appcompat.C0328R.drawable.abc_btn_borderless_material
            if (r4 != r1) goto L34
            android.content.res.ColorStateList r0 = r2.createBorderlessButtonColorStateList(r3)
            goto L75
        L34:
            int r1 = android.support.v7.appcompat.C0328R.drawable.abc_btn_colored_material
            if (r4 != r1) goto L3d
            android.content.res.ColorStateList r0 = r2.createColoredButtonColorStateList(r3)
            goto L75
        L3d:
            int r1 = android.support.v7.appcompat.C0328R.drawable.abc_spinner_mtrl_am_alpha
            if (r4 == r1) goto L72
            int r1 = android.support.v7.appcompat.C0328R.drawable.abc_spinner_textfield_background_material
            if (r4 != r1) goto L46
            goto L72
        L46:
            int[] r1 = android.support.v7.widget.AppCompatDrawableManager.TINT_COLOR_CONTROL_NORMAL
            boolean r1 = arrayContains(r1, r4)
            if (r1 == 0) goto L55
            int r0 = android.support.v7.appcompat.C0328R.attr.colorControlNormal
            android.content.res.ColorStateList r0 = android.support.v7.widget.ThemeUtils.getThemeAttrColorStateList(r3, r0)
            goto L75
        L55:
            int[] r1 = android.support.v7.widget.AppCompatDrawableManager.TINT_COLOR_CONTROL_STATE_LIST
            boolean r1 = arrayContains(r1, r4)
            if (r1 == 0) goto L60
            int r0 = android.support.v7.appcompat.C0328R.color.abc_tint_default
            goto Lc
        L60:
            int[] r1 = android.support.v7.widget.AppCompatDrawableManager.TINT_CHECKABLE_BUTTON_LIST
            boolean r1 = arrayContains(r1, r4)
            if (r1 == 0) goto L6b
            int r0 = android.support.v7.appcompat.C0328R.color.abc_tint_btn_checkable
            goto Lc
        L6b:
            int r1 = android.support.v7.appcompat.C0328R.drawable.abc_seekbar_thumb_material
            if (r4 != r1) goto L75
            int r0 = android.support.v7.appcompat.C0328R.color.abc_tint_seek_thumb
            goto Lc
        L72:
            int r0 = android.support.v7.appcompat.C0328R.color.abc_tint_spinner
            goto Lc
        L75:
            if (r0 == 0) goto L7a
            r2.addTintListToCache(r3, r4, r0)
        L7a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.AppCompatDrawableManager.getTintList(android.content.Context, int):android.content.res.ColorStateList");
    }

    public final void onConfigurationChanged(@NonNull Context context) {
        synchronized (this.mDrawableCacheLock) {
            LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.mDrawableCaches.get(context);
            if (longSparseArray != null) {
                longSparseArray.clear();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Drawable onDrawableLoadedFromResources(@NonNull Context context, @NonNull VectorEnabledTintResources vectorEnabledTintResources, @DrawableRes int i) {
        Drawable loadDrawableFromDelegates = loadDrawableFromDelegates(context, i);
        if (loadDrawableFromDelegates == null) {
            loadDrawableFromDelegates = vectorEnabledTintResources.superGetDrawable(i);
        }
        if (loadDrawableFromDelegates != null) {
            return tintDrawable(context, i, false, loadDrawableFromDelegates);
        }
        return null;
    }
}
