package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.C0328R;
import android.support.v7.widget.ActivityChooserView;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AppCompatTextViewAutoSizeHelper {
    private static final int DEFAULT_AUTO_SIZE_GRANULARITY_IN_PX = 1;
    private static final int DEFAULT_AUTO_SIZE_MAX_TEXT_SIZE_IN_SP = 112;
    private static final int DEFAULT_AUTO_SIZE_MIN_TEXT_SIZE_IN_SP = 12;
    private static final String TAG = "ACTVAutoSizeHelper";
    static final float UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE = -1.0f;
    private static final int VERY_WIDE = 1048576;
    private final Context mContext;
    private TextPaint mTempTextPaint;
    private final TextView mTextView;
    private static final RectF TEMP_RECTF = new RectF();
    private static ConcurrentHashMap<String, Method> sTextViewMethodByNameCache = new ConcurrentHashMap<>();
    private int mAutoSizeTextType = 0;
    private boolean mNeedsAutoSizeText = false;
    private float mAutoSizeStepGranularityInPx = UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE;
    private float mAutoSizeMinTextSizeInPx = UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE;
    private float mAutoSizeMaxTextSizeInPx = UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE;
    private int[] mAutoSizeTextSizesInPx = new int[0];
    private boolean mHasPresetAutoSizeValues = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatTextViewAutoSizeHelper(TextView textView) {
        this.mTextView = textView;
        this.mContext = this.mTextView.getContext();
    }

    private int[] cleanupAutoSizePresetSizes(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i : iArr) {
            if (i > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i)) < 0) {
                arrayList.add(Integer.valueOf(i));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr2[i2] = ((Integer) arrayList.get(i2)).intValue();
        }
        return iArr2;
    }

    private void clearAutoSizeConfiguration() {
        this.mAutoSizeTextType = 0;
        this.mAutoSizeMinTextSizeInPx = UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE;
        this.mAutoSizeMaxTextSizeInPx = UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE;
        this.mAutoSizeStepGranularityInPx = UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE;
        this.mAutoSizeTextSizesInPx = new int[0];
        this.mNeedsAutoSizeText = false;
    }

    @RequiresApi(23)
    private StaticLayout createStaticLayoutForMeasuring(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        TextDirectionHeuristic textDirectionHeuristic = (TextDirectionHeuristic) invokeAndReturnWithDefault(this.mTextView, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR);
        StaticLayout.Builder hyphenationFrequency = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.mTempTextPaint, i).setAlignment(alignment).setLineSpacing(this.mTextView.getLineSpacingExtra(), this.mTextView.getLineSpacingMultiplier()).setIncludePad(this.mTextView.getIncludeFontPadding()).setBreakStrategy(this.mTextView.getBreakStrategy()).setHyphenationFrequency(this.mTextView.getHyphenationFrequency());
        if (i2 == -1) {
            i2 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        }
        return hyphenationFrequency.setMaxLines(i2).setTextDirection(textDirectionHeuristic).build();
    }

    private StaticLayout createStaticLayoutForMeasuringPre23(CharSequence charSequence, Layout.Alignment alignment, int i) {
        float floatValue;
        float floatValue2;
        boolean booleanValue;
        if (Build.VERSION.SDK_INT >= 16) {
            floatValue = this.mTextView.getLineSpacingMultiplier();
            floatValue2 = this.mTextView.getLineSpacingExtra();
            booleanValue = this.mTextView.getIncludeFontPadding();
        } else {
            floatValue = ((Float) invokeAndReturnWithDefault(this.mTextView, "getLineSpacingMultiplier", Float.valueOf(1.0f))).floatValue();
            floatValue2 = ((Float) invokeAndReturnWithDefault(this.mTextView, "getLineSpacingExtra", Float.valueOf(0.0f))).floatValue();
            booleanValue = ((Boolean) invokeAndReturnWithDefault(this.mTextView, "getIncludeFontPadding", true)).booleanValue();
        }
        return new StaticLayout(charSequence, this.mTempTextPaint, i, alignment, floatValue, floatValue2, booleanValue);
    }

    private int findLargestTextSizeWhichFits(RectF rectF) {
        int length = this.mAutoSizeTextSizesInPx.length;
        if (length == 0) {
            throw new IllegalStateException("No available text sizes to choose from.");
        }
        int i = length - 1;
        int i2 = 1;
        int i3 = 0;
        while (i2 <= i) {
            int i4 = (i2 + i) / 2;
            if (suggestedSizeFitsInSpace(this.mAutoSizeTextSizesInPx[i4], rectF)) {
                int i5 = i4 + 1;
                i3 = i2;
                i2 = i5;
            } else {
                i3 = i4 - 1;
                i = i3;
            }
        }
        return this.mAutoSizeTextSizesInPx[i3];
    }

    @Nullable
    private Method getTextViewMethod(@NonNull String str) {
        try {
            Method method = sTextViewMethodByNameCache.get(str);
            if (method == null && (method = TextView.class.getDeclaredMethod(str, new Class[0])) != null) {
                method.setAccessible(true);
                sTextViewMethodByNameCache.put(str, method);
            }
            return method;
        } catch (Exception e) {
            Log.w(TAG, "Failed to retrieve TextView#" + str + "() method", e);
            return null;
        }
    }

    private <T> T invokeAndReturnWithDefault(@NonNull Object obj, @NonNull String str, @NonNull T t) {
        try {
            return (T) getTextViewMethod(str).invoke(obj, new Object[0]);
        } catch (Exception e) {
            Log.w(TAG, "Failed to invoke TextView#" + str + "() method", e);
            return t;
        }
    }

    private void setRawTextSize(float f) {
        if (f != this.mTextView.getPaint().getTextSize()) {
            this.mTextView.getPaint().setTextSize(f);
            boolean isInLayout = Build.VERSION.SDK_INT >= 18 ? this.mTextView.isInLayout() : false;
            if (this.mTextView.getLayout() != null) {
                this.mNeedsAutoSizeText = false;
                try {
                    Method textViewMethod = getTextViewMethod("nullLayouts");
                    if (textViewMethod != null) {
                        textViewMethod.invoke(this.mTextView, new Object[0]);
                    }
                } catch (Exception e) {
                    Log.w(TAG, "Failed to invoke TextView#nullLayouts() method", e);
                }
                if (isInLayout) {
                    this.mTextView.forceLayout();
                } else {
                    this.mTextView.requestLayout();
                }
                this.mTextView.invalidate();
            }
        }
    }

    private boolean setupAutoSizeText() {
        if (supportsAutoSizeText() && this.mAutoSizeTextType == 1) {
            if (!this.mHasPresetAutoSizeValues || this.mAutoSizeTextSizesInPx.length == 0) {
                float round = Math.round(this.mAutoSizeMinTextSizeInPx);
                int i = 1;
                while (Math.round(this.mAutoSizeStepGranularityInPx + round) <= Math.round(this.mAutoSizeMaxTextSizeInPx)) {
                    i++;
                    round += this.mAutoSizeStepGranularityInPx;
                }
                int[] iArr = new int[i];
                float f = this.mAutoSizeMinTextSizeInPx;
                for (int i2 = 0; i2 < i; i2++) {
                    iArr[i2] = Math.round(f);
                    f += this.mAutoSizeStepGranularityInPx;
                }
                this.mAutoSizeTextSizesInPx = cleanupAutoSizePresetSizes(iArr);
            }
            this.mNeedsAutoSizeText = true;
        } else {
            this.mNeedsAutoSizeText = false;
        }
        return this.mNeedsAutoSizeText;
    }

    private void setupAutoSizeUniformPresetSizes(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i = 0; i < length; i++) {
                iArr[i] = typedArray.getDimensionPixelSize(i, -1);
            }
            this.mAutoSizeTextSizesInPx = cleanupAutoSizePresetSizes(iArr);
            setupAutoSizeUniformPresetSizesConfiguration();
        }
    }

    private boolean setupAutoSizeUniformPresetSizesConfiguration() {
        this.mHasPresetAutoSizeValues = this.mAutoSizeTextSizesInPx.length > 0;
        if (this.mHasPresetAutoSizeValues) {
            this.mAutoSizeTextType = 1;
            this.mAutoSizeMinTextSizeInPx = this.mAutoSizeTextSizesInPx[0];
            this.mAutoSizeMaxTextSizeInPx = this.mAutoSizeTextSizesInPx[r0 - 1];
            this.mAutoSizeStepGranularityInPx = UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE;
        }
        return this.mHasPresetAutoSizeValues;
    }

    private boolean suggestedSizeFitsInSpace(int i, RectF rectF) {
        CharSequence transformation;
        CharSequence text = this.mTextView.getText();
        TransformationMethod transformationMethod = this.mTextView.getTransformationMethod();
        if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, this.mTextView)) != null) {
            text = transformation;
        }
        int maxLines = Build.VERSION.SDK_INT >= 16 ? this.mTextView.getMaxLines() : -1;
        if (this.mTempTextPaint == null) {
            this.mTempTextPaint = new TextPaint();
        } else {
            this.mTempTextPaint.reset();
        }
        this.mTempTextPaint.set(this.mTextView.getPaint());
        this.mTempTextPaint.setTextSize(i);
        Layout.Alignment alignment = (Layout.Alignment) invokeAndReturnWithDefault(this.mTextView, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL);
        StaticLayout createStaticLayoutForMeasuring = Build.VERSION.SDK_INT >= 23 ? createStaticLayoutForMeasuring(text, alignment, Math.round(rectF.right), maxLines) : createStaticLayoutForMeasuringPre23(text, alignment, Math.round(rectF.right));
        return (maxLines == -1 || (createStaticLayoutForMeasuring.getLineCount() <= maxLines && createStaticLayoutForMeasuring.getLineEnd(createStaticLayoutForMeasuring.getLineCount() - 1) == text.length())) && ((float) createStaticLayoutForMeasuring.getHeight()) <= rectF.bottom;
    }

    private boolean supportsAutoSizeText() {
        return !(this.mTextView instanceof AppCompatEditText);
    }

    private void validateAndSetAutoSizeTextTypeUniformConfiguration(float f, float f2, float f3) throws IllegalArgumentException {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f + "px) is less or equal to (0px)");
        }
        if (f2 <= f) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f2 + "px) is less or equal to minimum auto-size text size (" + f + "px)");
        }
        if (f3 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f3 + "px) is less or equal to (0px)");
        }
        this.mAutoSizeTextType = 1;
        this.mAutoSizeMinTextSizeInPx = f;
        this.mAutoSizeMaxTextSizeInPx = f2;
        this.mAutoSizeStepGranularityInPx = f3;
        this.mHasPresetAutoSizeValues = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void autoSizeText() {
        if (isAutoSizeEnabled()) {
            if (this.mNeedsAutoSizeText) {
                if (this.mTextView.getMeasuredHeight() <= 0 || this.mTextView.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = ((Boolean) invokeAndReturnWithDefault(this.mTextView, "getHorizontallyScrolling", false)).booleanValue() ? 1048576 : (this.mTextView.getMeasuredWidth() - this.mTextView.getTotalPaddingLeft()) - this.mTextView.getTotalPaddingRight();
                int height = (this.mTextView.getHeight() - this.mTextView.getCompoundPaddingBottom()) - this.mTextView.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                synchronized (TEMP_RECTF) {
                    TEMP_RECTF.setEmpty();
                    TEMP_RECTF.right = measuredWidth;
                    TEMP_RECTF.bottom = height;
                    float findLargestTextSizeWhichFits = findLargestTextSizeWhichFits(TEMP_RECTF);
                    if (findLargestTextSizeWhichFits != this.mTextView.getTextSize()) {
                        setTextSizeInternal(0, findLargestTextSizeWhichFits);
                    }
                }
            }
            this.mNeedsAutoSizeText = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getAutoSizeMaxTextSize() {
        return Math.round(this.mAutoSizeMaxTextSizeInPx);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getAutoSizeMinTextSize() {
        return Math.round(this.mAutoSizeMinTextSizeInPx);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getAutoSizeStepGranularity() {
        return Math.round(this.mAutoSizeStepGranularityInPx);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int[] getAutoSizeTextAvailableSizes() {
        return this.mAutoSizeTextSizesInPx;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getAutoSizeTextType() {
        return this.mAutoSizeTextType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean isAutoSizeEnabled() {
        return supportsAutoSizeText() && this.mAutoSizeTextType != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void loadFromAttributes(AttributeSet attributeSet, int i) {
        int resourceId;
        TypedArray obtainStyledAttributes = this.mContext.obtainStyledAttributes(attributeSet, C0328R.styleable.AppCompatTextView, i, 0);
        if (obtainStyledAttributes.hasValue(C0328R.styleable.AppCompatTextView_autoSizeTextType)) {
            this.mAutoSizeTextType = obtainStyledAttributes.getInt(C0328R.styleable.AppCompatTextView_autoSizeTextType, 0);
        }
        float dimension = obtainStyledAttributes.hasValue(C0328R.styleable.AppCompatTextView_autoSizeStepGranularity) ? obtainStyledAttributes.getDimension(C0328R.styleable.AppCompatTextView_autoSizeStepGranularity, UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE) : UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE;
        float dimension2 = obtainStyledAttributes.hasValue(C0328R.styleable.AppCompatTextView_autoSizeMinTextSize) ? obtainStyledAttributes.getDimension(C0328R.styleable.AppCompatTextView_autoSizeMinTextSize, UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE) : UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE;
        float dimension3 = obtainStyledAttributes.hasValue(C0328R.styleable.AppCompatTextView_autoSizeMaxTextSize) ? obtainStyledAttributes.getDimension(C0328R.styleable.AppCompatTextView_autoSizeMaxTextSize, UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE) : UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE;
        if (obtainStyledAttributes.hasValue(C0328R.styleable.AppCompatTextView_autoSizePresetSizes) && (resourceId = obtainStyledAttributes.getResourceId(C0328R.styleable.AppCompatTextView_autoSizePresetSizes, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            setupAutoSizeUniformPresetSizes(obtainTypedArray);
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes.recycle();
        if (!supportsAutoSizeText()) {
            this.mAutoSizeTextType = 0;
            return;
        }
        if (this.mAutoSizeTextType == 1) {
            if (!this.mHasPresetAutoSizeValues) {
                DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
                if (dimension2 == UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE) {
                    dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                }
                if (dimension3 == UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE) {
                    dimension3 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                }
                if (dimension == UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE) {
                    dimension = 1.0f;
                }
                validateAndSetAutoSizeTextTypeUniformConfiguration(dimension2, dimension3, dimension);
            }
            setupAutoSizeText();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (supportsAutoSizeText()) {
            DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
            validateAndSetAutoSizeTextTypeUniformConfiguration(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (setupAutoSizeText()) {
                autoSizeText();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setAutoSizeTextTypeUniformWithPresetSizes(@NonNull int[] iArr, int i) throws IllegalArgumentException {
        if (supportsAutoSizeText()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArr2 = new int[length];
                if (i == 0) {
                    iArr2 = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
                    for (int i2 = 0; i2 < length; i2++) {
                        iArr2[i2] = Math.round(TypedValue.applyDimension(i, iArr[i2], displayMetrics));
                    }
                }
                this.mAutoSizeTextSizesInPx = cleanupAutoSizePresetSizes(iArr2);
                if (!setupAutoSizeUniformPresetSizesConfiguration()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.mHasPresetAutoSizeValues = false;
            }
            if (setupAutoSizeText()) {
                autoSizeText();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (supportsAutoSizeText()) {
            switch (i) {
                case 0:
                    clearAutoSizeConfiguration();
                    return;
                case 1:
                    DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
                    validateAndSetAutoSizeTextTypeUniformConfiguration(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
                    if (setupAutoSizeText()) {
                        autoSizeText();
                        return;
                    }
                    return;
                default:
                    throw new IllegalArgumentException("Unknown auto-size text type: " + i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setTextSizeInternal(int i, float f) {
        setRawTextSize(TypedValue.applyDimension(i, f, (this.mContext == null ? Resources.getSystem() : this.mContext.getResources()).getDisplayMetrics()));
    }
}
