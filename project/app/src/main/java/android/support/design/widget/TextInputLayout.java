package android.support.design.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.annotation.StyleRes;
import android.support.annotation.VisibleForTesting;
import android.support.design.C0035R;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.Space;
import android.support.v4.widget.TextViewCompat;
import android.support.v4.widget.ViewGroupUtils;
import android.support.v7.appcompat.C0328R;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.widget.AppCompatDrawableManager;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.TintTypedArray;
import android.support.v7.widget.WithHint;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.ViewStructure;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AccelerateInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;

/* loaded from: classes.dex */
public class TextInputLayout extends LinearLayout implements WithHint {
    private static final int ANIMATION_DURATION = 200;
    private static final int INVALID_MAX_LENGTH = -1;
    private static final String LOG_TAG = "TextInputLayout";
    private ValueAnimator mAnimator;
    final CollapsingTextHelper mCollapsingTextHelper;
    boolean mCounterEnabled;
    private int mCounterMaxLength;
    private int mCounterOverflowTextAppearance;
    private boolean mCounterOverflowed;
    private int mCounterTextAppearance;
    private TextView mCounterView;
    private ColorStateList mDefaultTextColor;
    EditText mEditText;
    private CharSequence mError;
    private boolean mErrorEnabled;
    private boolean mErrorShown;
    private int mErrorTextAppearance;
    TextView mErrorView;
    private ColorStateList mFocusedTextColor;
    private boolean mHasPasswordToggleTintList;
    private boolean mHasPasswordToggleTintMode;
    private boolean mHasReconstructedEditTextBackground;
    private CharSequence mHint;
    private boolean mHintAnimationEnabled;
    private boolean mHintEnabled;
    private boolean mHintExpanded;
    private boolean mInDrawableStateChanged;
    private LinearLayout mIndicatorArea;
    private int mIndicatorsAdded;
    private final FrameLayout mInputFrame;
    private Drawable mOriginalEditTextEndDrawable;
    private CharSequence mOriginalHint;
    private CharSequence mPasswordToggleContentDesc;
    private Drawable mPasswordToggleDrawable;
    private Drawable mPasswordToggleDummyDrawable;
    private boolean mPasswordToggleEnabled;
    private ColorStateList mPasswordToggleTintList;
    private PorterDuff.Mode mPasswordToggleTintMode;
    private CheckableImageButton mPasswordToggleView;
    private boolean mPasswordToggledVisible;
    private boolean mRestoringSavedState;
    private Paint mTmpPaint;
    private final Rect mTmpRect;
    private Typeface mTypeface;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: android.support.design.widget.TextInputLayout.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        CharSequence error;
        boolean isPasswordToggledVisible;

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.error = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.isPasswordToggledVisible = parcel.readInt() == 1;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.error) + "}";
        }

        @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            TextUtils.writeToParcel(this.error, parcel, i);
            parcel.writeInt(this.isPasswordToggledVisible ? 1 : 0);
        }
    }

    /* loaded from: classes.dex */
    private class TextInputAccessibilityDelegate extends AccessibilityDelegateCompat {
        TextInputAccessibilityDelegate() {
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(TextInputLayout.class.getSimpleName());
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setClassName(TextInputLayout.class.getSimpleName());
            CharSequence text = TextInputLayout.this.mCollapsingTextHelper.getText();
            if (!TextUtils.isEmpty(text)) {
                accessibilityNodeInfoCompat.setText(text);
            }
            if (TextInputLayout.this.mEditText != null) {
                accessibilityNodeInfoCompat.setLabelFor(TextInputLayout.this.mEditText);
            }
            CharSequence text2 = TextInputLayout.this.mErrorView != null ? TextInputLayout.this.mErrorView.getText() : null;
            if (TextUtils.isEmpty(text2)) {
                return;
            }
            accessibilityNodeInfoCompat.setContentInvalid(true);
            accessibilityNodeInfoCompat.setError(text2);
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            CharSequence text = TextInputLayout.this.mCollapsingTextHelper.getText();
            if (TextUtils.isEmpty(text)) {
                return;
            }
            accessibilityEvent.getText().add(text);
        }
    }

    public TextInputLayout(Context context) {
        this(context, null);
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TextInputLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.mTmpRect = new Rect();
        this.mCollapsingTextHelper = new CollapsingTextHelper(this);
        ThemeUtils.checkAppCompatTheme(context);
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        this.mInputFrame = new FrameLayout(context);
        this.mInputFrame.setAddStatesFromChildren(true);
        addView(this.mInputFrame);
        this.mCollapsingTextHelper.setTextSizeInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
        this.mCollapsingTextHelper.setPositionInterpolator(new AccelerateInterpolator());
        this.mCollapsingTextHelper.setCollapsedTextGravity(8388659);
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, C0035R.styleable.TextInputLayout, i, C0035R.style.Widget_Design_TextInputLayout);
        this.mHintEnabled = obtainStyledAttributes.getBoolean(C0035R.styleable.TextInputLayout_hintEnabled, true);
        setHint(obtainStyledAttributes.getText(C0035R.styleable.TextInputLayout_android_hint));
        this.mHintAnimationEnabled = obtainStyledAttributes.getBoolean(C0035R.styleable.TextInputLayout_hintAnimationEnabled, true);
        if (obtainStyledAttributes.hasValue(C0035R.styleable.TextInputLayout_android_textColorHint)) {
            ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(C0035R.styleable.TextInputLayout_android_textColorHint);
            this.mFocusedTextColor = colorStateList;
            this.mDefaultTextColor = colorStateList;
        }
        if (obtainStyledAttributes.getResourceId(C0035R.styleable.TextInputLayout_hintTextAppearance, -1) != -1) {
            setHintTextAppearance(obtainStyledAttributes.getResourceId(C0035R.styleable.TextInputLayout_hintTextAppearance, 0));
        }
        this.mErrorTextAppearance = obtainStyledAttributes.getResourceId(C0035R.styleable.TextInputLayout_errorTextAppearance, 0);
        boolean z = obtainStyledAttributes.getBoolean(C0035R.styleable.TextInputLayout_errorEnabled, false);
        boolean z2 = obtainStyledAttributes.getBoolean(C0035R.styleable.TextInputLayout_counterEnabled, false);
        setCounterMaxLength(obtainStyledAttributes.getInt(C0035R.styleable.TextInputLayout_counterMaxLength, -1));
        this.mCounterTextAppearance = obtainStyledAttributes.getResourceId(C0035R.styleable.TextInputLayout_counterTextAppearance, 0);
        this.mCounterOverflowTextAppearance = obtainStyledAttributes.getResourceId(C0035R.styleable.TextInputLayout_counterOverflowTextAppearance, 0);
        this.mPasswordToggleEnabled = obtainStyledAttributes.getBoolean(C0035R.styleable.TextInputLayout_passwordToggleEnabled, false);
        this.mPasswordToggleDrawable = obtainStyledAttributes.getDrawable(C0035R.styleable.TextInputLayout_passwordToggleDrawable);
        this.mPasswordToggleContentDesc = obtainStyledAttributes.getText(C0035R.styleable.TextInputLayout_passwordToggleContentDescription);
        if (obtainStyledAttributes.hasValue(C0035R.styleable.TextInputLayout_passwordToggleTint)) {
            this.mHasPasswordToggleTintList = true;
            this.mPasswordToggleTintList = obtainStyledAttributes.getColorStateList(C0035R.styleable.TextInputLayout_passwordToggleTint);
        }
        if (obtainStyledAttributes.hasValue(C0035R.styleable.TextInputLayout_passwordToggleTintMode)) {
            this.mHasPasswordToggleTintMode = true;
            this.mPasswordToggleTintMode = ViewUtils.parseTintMode(obtainStyledAttributes.getInt(C0035R.styleable.TextInputLayout_passwordToggleTintMode, -1), null);
        }
        obtainStyledAttributes.recycle();
        setErrorEnabled(z);
        setCounterEnabled(z2);
        applyPasswordToggleTint();
        if (ViewCompat.getImportantForAccessibility(this) == 0) {
            ViewCompat.setImportantForAccessibility(this, 1);
        }
        ViewCompat.setAccessibilityDelegate(this, new TextInputAccessibilityDelegate());
    }

    private void addIndicator(TextView textView, int i) {
        if (this.mIndicatorArea == null) {
            this.mIndicatorArea = new LinearLayout(getContext());
            this.mIndicatorArea.setOrientation(0);
            addView(this.mIndicatorArea, -1, -2);
            this.mIndicatorArea.addView(new Space(getContext()), new LinearLayout.LayoutParams(0, 0, 1.0f));
            if (this.mEditText != null) {
                adjustIndicatorPadding();
            }
        }
        this.mIndicatorArea.setVisibility(0);
        this.mIndicatorArea.addView(textView, i);
        this.mIndicatorsAdded++;
    }

    private void adjustIndicatorPadding() {
        ViewCompat.setPaddingRelative(this.mIndicatorArea, ViewCompat.getPaddingStart(this.mEditText), 0, ViewCompat.getPaddingEnd(this.mEditText), this.mEditText.getPaddingBottom());
    }

    private void applyPasswordToggleTint() {
        if (this.mPasswordToggleDrawable != null) {
            if (this.mHasPasswordToggleTintList || this.mHasPasswordToggleTintMode) {
                this.mPasswordToggleDrawable = DrawableCompat.wrap(this.mPasswordToggleDrawable).mutate();
                if (this.mHasPasswordToggleTintList) {
                    DrawableCompat.setTintList(this.mPasswordToggleDrawable, this.mPasswordToggleTintList);
                }
                if (this.mHasPasswordToggleTintMode) {
                    DrawableCompat.setTintMode(this.mPasswordToggleDrawable, this.mPasswordToggleTintMode);
                }
                if (this.mPasswordToggleView == null || this.mPasswordToggleView.getDrawable() == this.mPasswordToggleDrawable) {
                    return;
                }
                this.mPasswordToggleView.setImageDrawable(this.mPasswordToggleDrawable);
            }
        }
    }

    private static boolean arrayContains(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    private void collapseHint(boolean z) {
        if (this.mAnimator != null && this.mAnimator.isRunning()) {
            this.mAnimator.cancel();
        }
        if (z && this.mHintAnimationEnabled) {
            animateToExpansionFraction(1.0f);
        } else {
            this.mCollapsingTextHelper.setExpansionFraction(1.0f);
        }
        this.mHintExpanded = false;
    }

    private void ensureBackgroundDrawableStateWorkaround() {
        Drawable background;
        int i = Build.VERSION.SDK_INT;
        if ((i != 21 && i != 22) || (background = this.mEditText.getBackground()) == null || this.mHasReconstructedEditTextBackground) {
            return;
        }
        Drawable newDrawable = background.getConstantState().newDrawable();
        if (background instanceof DrawableContainer) {
            this.mHasReconstructedEditTextBackground = DrawableUtils.setContainerConstantState((DrawableContainer) background, newDrawable.getConstantState());
        }
        if (this.mHasReconstructedEditTextBackground) {
            return;
        }
        ViewCompat.setBackground(this.mEditText, newDrawable);
        this.mHasReconstructedEditTextBackground = true;
    }

    private void expandHint(boolean z) {
        if (this.mAnimator != null && this.mAnimator.isRunning()) {
            this.mAnimator.cancel();
        }
        if (z && this.mHintAnimationEnabled) {
            animateToExpansionFraction(0.0f);
        } else {
            this.mCollapsingTextHelper.setExpansionFraction(0.0f);
        }
        this.mHintExpanded = true;
    }

    private boolean hasPasswordTransformation() {
        return this.mEditText != null && (this.mEditText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void passwordVisibilityToggleRequested(boolean z) {
        boolean z2;
        if (this.mPasswordToggleEnabled) {
            int selectionEnd = this.mEditText.getSelectionEnd();
            if (hasPasswordTransformation()) {
                this.mEditText.setTransformationMethod(null);
                z2 = true;
            } else {
                this.mEditText.setTransformationMethod(PasswordTransformationMethod.getInstance());
                z2 = false;
            }
            this.mPasswordToggledVisible = z2;
            this.mPasswordToggleView.setChecked(this.mPasswordToggledVisible);
            if (z) {
                this.mPasswordToggleView.jumpDrawablesToCurrentState();
            }
            this.mEditText.setSelection(selectionEnd);
        }
    }

    private static void recursiveSetEnabled(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                recursiveSetEnabled((ViewGroup) childAt, z);
            }
        }
    }

    private void removeIndicator(TextView textView) {
        if (this.mIndicatorArea != null) {
            this.mIndicatorArea.removeView(textView);
            int i = this.mIndicatorsAdded - 1;
            this.mIndicatorsAdded = i;
            if (i == 0) {
                this.mIndicatorArea.setVisibility(8);
            }
        }
    }

    private void setEditText(EditText editText) {
        if (this.mEditText != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (!(editText instanceof TextInputEditText)) {
            Log.i(LOG_TAG, "EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.mEditText = editText;
        if (!hasPasswordTransformation()) {
            this.mCollapsingTextHelper.setTypefaces(this.mEditText.getTypeface());
        }
        this.mCollapsingTextHelper.setExpandedTextSize(this.mEditText.getTextSize());
        int gravity = this.mEditText.getGravity();
        this.mCollapsingTextHelper.setCollapsedTextGravity((gravity & (-113)) | 48);
        this.mCollapsingTextHelper.setExpandedTextGravity(gravity);
        this.mEditText.addTextChangedListener(new TextWatcher() { // from class: android.support.design.widget.TextInputLayout.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                TextInputLayout.this.updateLabelState(!TextInputLayout.this.mRestoringSavedState);
                if (TextInputLayout.this.mCounterEnabled) {
                    TextInputLayout.this.updateCounter(editable.length());
                }
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        });
        if (this.mDefaultTextColor == null) {
            this.mDefaultTextColor = this.mEditText.getHintTextColors();
        }
        if (this.mHintEnabled && TextUtils.isEmpty(this.mHint)) {
            this.mOriginalHint = this.mEditText.getHint();
            setHint(this.mOriginalHint);
            this.mEditText.setHint((CharSequence) null);
        }
        if (this.mCounterView != null) {
            updateCounter(this.mEditText.getText().length());
        }
        if (this.mIndicatorArea != null) {
            adjustIndicatorPadding();
        }
        updatePasswordToggleView();
        updateLabelState(false, true);
    }

    private void setError(@Nullable final CharSequence charSequence, boolean z) {
        ViewPropertyAnimator listener;
        this.mError = charSequence;
        if (!this.mErrorEnabled) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        this.mErrorShown = !TextUtils.isEmpty(charSequence);
        this.mErrorView.animate().cancel();
        if (!this.mErrorShown) {
            if (this.mErrorView.getVisibility() == 0) {
                if (z) {
                    listener = this.mErrorView.animate().alpha(0.0f).setDuration(200L).setInterpolator(AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR).setListener(new AnimatorListenerAdapter() { // from class: android.support.design.widget.TextInputLayout.3
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            TextInputLayout.this.mErrorView.setText(charSequence);
                            TextInputLayout.this.mErrorView.setVisibility(4);
                        }
                    });
                    listener.start();
                } else {
                    this.mErrorView.setText(charSequence);
                    this.mErrorView.setVisibility(4);
                }
            }
            updateEditTextBackground();
            updateLabelState(z);
        }
        this.mErrorView.setText(charSequence);
        this.mErrorView.setVisibility(0);
        if (!z) {
            this.mErrorView.setAlpha(1.0f);
            updateEditTextBackground();
            updateLabelState(z);
        } else {
            if (this.mErrorView.getAlpha() == 1.0f) {
                this.mErrorView.setAlpha(0.0f);
            }
            listener = this.mErrorView.animate().alpha(1.0f).setDuration(200L).setInterpolator(AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR).setListener(new AnimatorListenerAdapter() { // from class: android.support.design.widget.TextInputLayout.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    TextInputLayout.this.mErrorView.setVisibility(0);
                }
            });
            listener.start();
            updateEditTextBackground();
            updateLabelState(z);
        }
    }

    private void setHintInternal(CharSequence charSequence) {
        this.mHint = charSequence;
        this.mCollapsingTextHelper.setText(charSequence);
    }

    private boolean shouldShowPasswordIcon() {
        if (this.mPasswordToggleEnabled) {
            return hasPasswordTransformation() || this.mPasswordToggledVisible;
        }
        return false;
    }

    private void updateEditTextBackground() {
        Drawable background;
        if (this.mEditText == null || (background = this.mEditText.getBackground()) == null) {
            return;
        }
        ensureBackgroundDrawableStateWorkaround();
        if (android.support.v7.widget.DrawableUtils.canSafelyMutateDrawable(background)) {
            background = background.mutate();
        }
        if (this.mErrorShown && this.mErrorView != null) {
            background.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(this.mErrorView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else if (this.mCounterOverflowed && this.mCounterView != null) {
            background.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(this.mCounterView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            DrawableCompat.clearColorFilter(background);
            this.mEditText.refreshDrawableState();
        }
    }

    private void updateInputLayoutMargins() {
        int i;
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mInputFrame.getLayoutParams();
        if (this.mHintEnabled) {
            if (this.mTmpPaint == null) {
                this.mTmpPaint = new Paint();
            }
            this.mTmpPaint.setTypeface(this.mCollapsingTextHelper.getCollapsedTypeface());
            this.mTmpPaint.setTextSize(this.mCollapsingTextHelper.getCollapsedTextSize());
            i = (int) (-this.mTmpPaint.ascent());
        } else {
            i = 0;
        }
        if (i != layoutParams.topMargin) {
            layoutParams.topMargin = i;
            this.mInputFrame.requestLayout();
        }
    }

    private void updatePasswordToggleView() {
        if (this.mEditText == null) {
            return;
        }
        if (!shouldShowPasswordIcon()) {
            if (this.mPasswordToggleView != null && this.mPasswordToggleView.getVisibility() == 0) {
                this.mPasswordToggleView.setVisibility(8);
            }
            if (this.mPasswordToggleDummyDrawable != null) {
                Drawable[] compoundDrawablesRelative = TextViewCompat.getCompoundDrawablesRelative(this.mEditText);
                if (compoundDrawablesRelative[2] == this.mPasswordToggleDummyDrawable) {
                    TextViewCompat.setCompoundDrawablesRelative(this.mEditText, compoundDrawablesRelative[0], compoundDrawablesRelative[1], this.mOriginalEditTextEndDrawable, compoundDrawablesRelative[3]);
                    this.mPasswordToggleDummyDrawable = null;
                    return;
                }
                return;
            }
            return;
        }
        if (this.mPasswordToggleView == null) {
            this.mPasswordToggleView = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(C0035R.layout.design_text_input_password_icon, (ViewGroup) this.mInputFrame, false);
            this.mPasswordToggleView.setImageDrawable(this.mPasswordToggleDrawable);
            this.mPasswordToggleView.setContentDescription(this.mPasswordToggleContentDesc);
            this.mInputFrame.addView(this.mPasswordToggleView);
            this.mPasswordToggleView.setOnClickListener(new View.OnClickListener() { // from class: android.support.design.widget.TextInputLayout.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TextInputLayout.this.passwordVisibilityToggleRequested(false);
                }
            });
        }
        if (this.mEditText != null && ViewCompat.getMinimumHeight(this.mEditText) <= 0) {
            this.mEditText.setMinimumHeight(ViewCompat.getMinimumHeight(this.mPasswordToggleView));
        }
        this.mPasswordToggleView.setVisibility(0);
        this.mPasswordToggleView.setChecked(this.mPasswordToggledVisible);
        if (this.mPasswordToggleDummyDrawable == null) {
            this.mPasswordToggleDummyDrawable = new ColorDrawable();
        }
        this.mPasswordToggleDummyDrawable.setBounds(0, 0, this.mPasswordToggleView.getMeasuredWidth(), 1);
        Drawable[] compoundDrawablesRelative2 = TextViewCompat.getCompoundDrawablesRelative(this.mEditText);
        if (compoundDrawablesRelative2[2] != this.mPasswordToggleDummyDrawable) {
            this.mOriginalEditTextEndDrawable = compoundDrawablesRelative2[2];
        }
        TextViewCompat.setCompoundDrawablesRelative(this.mEditText, compoundDrawablesRelative2[0], compoundDrawablesRelative2[1], this.mPasswordToggleDummyDrawable, compoundDrawablesRelative2[3]);
        this.mPasswordToggleView.setPadding(this.mEditText.getPaddingLeft(), this.mEditText.getPaddingTop(), this.mEditText.getPaddingRight(), this.mEditText.getPaddingBottom());
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        this.mInputFrame.addView(view, layoutParams2);
        this.mInputFrame.setLayoutParams(layoutParams);
        updateInputLayoutMargins();
        setEditText((EditText) view);
    }

    @VisibleForTesting
    void animateToExpansionFraction(float f) {
        if (this.mCollapsingTextHelper.getExpansionFraction() == f) {
            return;
        }
        if (this.mAnimator == null) {
            this.mAnimator = new ValueAnimator();
            this.mAnimator.setInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
            this.mAnimator.setDuration(200L);
            this.mAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.support.design.widget.TextInputLayout.5
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    TextInputLayout.this.mCollapsingTextHelper.setExpansionFraction(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            });
        }
        this.mAnimator.setFloatValues(this.mCollapsingTextHelper.getExpansionFraction(), f);
        this.mAnimator.start();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        if (this.mOriginalHint == null || this.mEditText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        CharSequence hint = this.mEditText.getHint();
        this.mEditText.setHint(this.mOriginalHint);
        try {
            super.dispatchProvideAutofillStructure(viewStructure, i);
        } finally {
            this.mEditText.setHint(hint);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        this.mRestoringSavedState = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.mRestoringSavedState = false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.mHintEnabled) {
            this.mCollapsingTextHelper.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.mInDrawableStateChanged) {
            return;
        }
        this.mInDrawableStateChanged = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        updateLabelState(ViewCompat.isLaidOut(this) && isEnabled());
        updateEditTextBackground();
        if (this.mCollapsingTextHelper != null ? this.mCollapsingTextHelper.setState(drawableState) | false : false) {
            invalidate();
        }
        this.mInDrawableStateChanged = false;
    }

    public int getCounterMaxLength() {
        return this.mCounterMaxLength;
    }

    @Nullable
    public EditText getEditText() {
        return this.mEditText;
    }

    @Nullable
    public CharSequence getError() {
        if (this.mErrorEnabled) {
            return this.mError;
        }
        return null;
    }

    @Override // android.support.v7.widget.WithHint
    @Nullable
    public CharSequence getHint() {
        if (this.mHintEnabled) {
            return this.mHint;
        }
        return null;
    }

    @Nullable
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.mPasswordToggleContentDesc;
    }

    @Nullable
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.mPasswordToggleDrawable;
    }

    @NonNull
    public Typeface getTypeface() {
        return this.mTypeface;
    }

    public boolean isCounterEnabled() {
        return this.mCounterEnabled;
    }

    public boolean isErrorEnabled() {
        return this.mErrorEnabled;
    }

    public boolean isHintAnimationEnabled() {
        return this.mHintAnimationEnabled;
    }

    public boolean isHintEnabled() {
        return this.mHintEnabled;
    }

    @VisibleForTesting
    final boolean isHintExpanded() {
        return this.mHintExpanded;
    }

    public boolean isPasswordVisibilityToggleEnabled() {
        return this.mPasswordToggleEnabled;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (!this.mHintEnabled || this.mEditText == null) {
            return;
        }
        Rect rect = this.mTmpRect;
        ViewGroupUtils.getDescendantRect(this, this.mEditText, rect);
        int compoundPaddingLeft = rect.left + this.mEditText.getCompoundPaddingLeft();
        int compoundPaddingRight = rect.right - this.mEditText.getCompoundPaddingRight();
        this.mCollapsingTextHelper.setExpandedBounds(compoundPaddingLeft, rect.top + this.mEditText.getCompoundPaddingTop(), compoundPaddingRight, rect.bottom - this.mEditText.getCompoundPaddingBottom());
        this.mCollapsingTextHelper.setCollapsedBounds(compoundPaddingLeft, getPaddingTop(), compoundPaddingRight, (i4 - i2) - getPaddingBottom());
        this.mCollapsingTextHelper.recalculate();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        updatePasswordToggleView();
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setError(savedState.error);
        if (savedState.isPasswordToggledVisible) {
            passwordVisibilityToggleRequested(true);
        }
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.mErrorShown) {
            savedState.error = getError();
        }
        savedState.isPasswordToggledVisible = this.mPasswordToggledVisible;
        return savedState;
    }

    public void setCounterEnabled(boolean z) {
        if (this.mCounterEnabled != z) {
            if (z) {
                this.mCounterView = new AppCompatTextView(getContext());
                this.mCounterView.setId(C0035R.id.textinput_counter);
                if (this.mTypeface != null) {
                    this.mCounterView.setTypeface(this.mTypeface);
                }
                this.mCounterView.setMaxLines(1);
                try {
                    TextViewCompat.setTextAppearance(this.mCounterView, this.mCounterTextAppearance);
                } catch (Exception unused) {
                    TextViewCompat.setTextAppearance(this.mCounterView, C0328R.style.TextAppearance_AppCompat_Caption);
                    this.mCounterView.setTextColor(ContextCompat.getColor(getContext(), C0328R.color.error_color_material));
                }
                addIndicator(this.mCounterView, -1);
                updateCounter(this.mEditText == null ? 0 : this.mEditText.getText().length());
            } else {
                removeIndicator(this.mCounterView);
                this.mCounterView = null;
            }
            this.mCounterEnabled = z;
        }
    }

    public void setCounterMaxLength(int i) {
        if (this.mCounterMaxLength != i) {
            if (i <= 0) {
                i = -1;
            }
            this.mCounterMaxLength = i;
            if (this.mCounterEnabled) {
                updateCounter(this.mEditText == null ? 0 : this.mEditText.getText().length());
            }
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        recursiveSetEnabled(this, z);
        super.setEnabled(z);
    }

    public void setError(@Nullable CharSequence charSequence) {
        setError(charSequence, ViewCompat.isLaidOut(this) && isEnabled() && (this.mErrorView == null || !TextUtils.equals(this.mErrorView.getText(), charSequence)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004c, code lost:
    
        if (r5.mErrorView.getTextColors().getDefaultColor() == (-65281)) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void setErrorEnabled(boolean r6) {
        /*
            r5 = this;
            boolean r0 = r5.mErrorEnabled
            if (r0 == r6) goto L8a
            android.widget.TextView r0 = r5.mErrorView
            if (r0 == 0) goto L11
            android.widget.TextView r0 = r5.mErrorView
            android.view.ViewPropertyAnimator r0 = r0.animate()
            r0.cancel()
        L11:
            r0 = 0
            if (r6 == 0) goto L7b
            android.support.v7.widget.AppCompatTextView r1 = new android.support.v7.widget.AppCompatTextView
            android.content.Context r2 = r5.getContext()
            r1.<init>(r2)
            r5.mErrorView = r1
            android.widget.TextView r1 = r5.mErrorView
            int r2 = android.support.design.C0035R.id.textinput_error
            r1.setId(r2)
            android.graphics.Typeface r1 = r5.mTypeface
            if (r1 == 0) goto L31
            android.widget.TextView r1 = r5.mErrorView
            android.graphics.Typeface r2 = r5.mTypeface
            r1.setTypeface(r2)
        L31:
            r1 = 1
            android.widget.TextView r2 = r5.mErrorView     // Catch: java.lang.Exception -> L51
            int r3 = r5.mErrorTextAppearance     // Catch: java.lang.Exception -> L51
            android.support.v4.widget.TextViewCompat.setTextAppearance(r2, r3)     // Catch: java.lang.Exception -> L51
            int r2 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L51
            r3 = 23
            if (r2 < r3) goto L4f
            android.widget.TextView r2 = r5.mErrorView     // Catch: java.lang.Exception -> L51
            android.content.res.ColorStateList r2 = r2.getTextColors()     // Catch: java.lang.Exception -> L51
            int r2 = r2.getDefaultColor()     // Catch: java.lang.Exception -> L51
            r3 = -65281(0xffffffffffff00ff, float:NaN)
            if (r2 != r3) goto L4f
            goto L51
        L4f:
            r2 = 0
            goto L52
        L51:
            r2 = 1
        L52:
            if (r2 == 0) goto L6a
            android.widget.TextView r2 = r5.mErrorView
            int r3 = android.support.v7.appcompat.C0328R.style.TextAppearance_AppCompat_Caption
            android.support.v4.widget.TextViewCompat.setTextAppearance(r2, r3)
            android.widget.TextView r2 = r5.mErrorView
            android.content.Context r3 = r5.getContext()
            int r4 = android.support.v7.appcompat.C0328R.color.error_color_material
            int r3 = android.support.v4.content.ContextCompat.getColor(r3, r4)
            r2.setTextColor(r3)
        L6a:
            android.widget.TextView r2 = r5.mErrorView
            r3 = 4
            r2.setVisibility(r3)
            android.widget.TextView r2 = r5.mErrorView
            android.support.v4.view.ViewCompat.setAccessibilityLiveRegion(r2, r1)
            android.widget.TextView r1 = r5.mErrorView
            r5.addIndicator(r1, r0)
            goto L88
        L7b:
            r5.mErrorShown = r0
            r5.updateEditTextBackground()
            android.widget.TextView r0 = r5.mErrorView
            r5.removeIndicator(r0)
            r0 = 0
            r5.mErrorView = r0
        L88:
            r5.mErrorEnabled = r6
        L8a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.TextInputLayout.setErrorEnabled(boolean):void");
    }

    public void setErrorTextAppearance(@StyleRes int i) {
        this.mErrorTextAppearance = i;
        if (this.mErrorView != null) {
            TextViewCompat.setTextAppearance(this.mErrorView, i);
        }
    }

    public void setHint(@Nullable CharSequence charSequence) {
        if (this.mHintEnabled) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z) {
        this.mHintAnimationEnabled = z;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.mHintEnabled) {
            this.mHintEnabled = z;
            CharSequence hint = this.mEditText.getHint();
            if (!this.mHintEnabled) {
                if (!TextUtils.isEmpty(this.mHint) && TextUtils.isEmpty(hint)) {
                    this.mEditText.setHint(this.mHint);
                }
                setHintInternal(null);
            } else if (!TextUtils.isEmpty(hint)) {
                if (TextUtils.isEmpty(this.mHint)) {
                    setHint(hint);
                }
                this.mEditText.setHint((CharSequence) null);
            }
            if (this.mEditText != null) {
                updateInputLayoutMargins();
            }
        }
    }

    public void setHintTextAppearance(@StyleRes int i) {
        this.mCollapsingTextHelper.setCollapsedTextAppearance(i);
        this.mFocusedTextColor = this.mCollapsingTextHelper.getCollapsedTextColor();
        if (this.mEditText != null) {
            updateLabelState(false);
            updateInputLayoutMargins();
        }
    }

    public void setPasswordVisibilityToggleContentDescription(@StringRes int i) {
        setPasswordVisibilityToggleContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setPasswordVisibilityToggleContentDescription(@Nullable CharSequence charSequence) {
        this.mPasswordToggleContentDesc = charSequence;
        if (this.mPasswordToggleView != null) {
            this.mPasswordToggleView.setContentDescription(charSequence);
        }
    }

    public void setPasswordVisibilityToggleDrawable(@DrawableRes int i) {
        setPasswordVisibilityToggleDrawable(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    public void setPasswordVisibilityToggleDrawable(@Nullable Drawable drawable) {
        this.mPasswordToggleDrawable = drawable;
        if (this.mPasswordToggleView != null) {
            this.mPasswordToggleView.setImageDrawable(drawable);
        }
    }

    public void setPasswordVisibilityToggleEnabled(boolean z) {
        if (this.mPasswordToggleEnabled != z) {
            this.mPasswordToggleEnabled = z;
            if (!z && this.mPasswordToggledVisible && this.mEditText != null) {
                this.mEditText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
            this.mPasswordToggledVisible = false;
            updatePasswordToggleView();
        }
    }

    public void setPasswordVisibilityToggleTintList(@Nullable ColorStateList colorStateList) {
        this.mPasswordToggleTintList = colorStateList;
        this.mHasPasswordToggleTintList = true;
        applyPasswordToggleTint();
    }

    public void setPasswordVisibilityToggleTintMode(@Nullable PorterDuff.Mode mode) {
        this.mPasswordToggleTintMode = mode;
        this.mHasPasswordToggleTintMode = true;
        applyPasswordToggleTint();
    }

    public void setTypeface(@Nullable Typeface typeface) {
        if ((this.mTypeface == null || this.mTypeface.equals(typeface)) && (this.mTypeface != null || typeface == null)) {
            return;
        }
        this.mTypeface = typeface;
        this.mCollapsingTextHelper.setTypefaces(typeface);
        if (this.mCounterView != null) {
            this.mCounterView.setTypeface(typeface);
        }
        if (this.mErrorView != null) {
            this.mErrorView.setTypeface(typeface);
        }
    }

    void updateCounter(int i) {
        boolean z = this.mCounterOverflowed;
        if (this.mCounterMaxLength == -1) {
            this.mCounterView.setText(String.valueOf(i));
            this.mCounterOverflowed = false;
        } else {
            this.mCounterOverflowed = i > this.mCounterMaxLength;
            if (z != this.mCounterOverflowed) {
                TextViewCompat.setTextAppearance(this.mCounterView, this.mCounterOverflowed ? this.mCounterOverflowTextAppearance : this.mCounterTextAppearance);
            }
            this.mCounterView.setText(getContext().getString(C0035R.string.character_counter_pattern, Integer.valueOf(i), Integer.valueOf(this.mCounterMaxLength)));
        }
        if (this.mEditText == null || z == this.mCounterOverflowed) {
            return;
        }
        updateLabelState(false);
        updateEditTextBackground();
    }

    void updateLabelState(boolean z) {
        updateLabelState(z, false);
    }

    void updateLabelState(boolean z, boolean z2) {
        CollapsingTextHelper collapsingTextHelper;
        ColorStateList colorStateList;
        boolean isEnabled = isEnabled();
        boolean z3 = (this.mEditText == null || TextUtils.isEmpty(this.mEditText.getText())) ? false : true;
        boolean arrayContains = arrayContains(getDrawableState(), R.attr.state_focused);
        boolean isEmpty = true ^ TextUtils.isEmpty(getError());
        if (this.mDefaultTextColor != null) {
            this.mCollapsingTextHelper.setExpandedTextColor(this.mDefaultTextColor);
        }
        if (isEnabled && this.mCounterOverflowed && this.mCounterView != null) {
            collapsingTextHelper = this.mCollapsingTextHelper;
            colorStateList = this.mCounterView.getTextColors();
        } else {
            if (!isEnabled || !arrayContains || this.mFocusedTextColor == null) {
                if (this.mDefaultTextColor != null) {
                    collapsingTextHelper = this.mCollapsingTextHelper;
                    colorStateList = this.mDefaultTextColor;
                }
                if (!z3 || (isEnabled() && (arrayContains || isEmpty))) {
                    if (!z2 || this.mHintExpanded) {
                        collapseHint(z);
                    }
                    return;
                }
                if (z2 || !this.mHintExpanded) {
                    expandHint(z);
                    return;
                }
                return;
            }
            collapsingTextHelper = this.mCollapsingTextHelper;
            colorStateList = this.mFocusedTextColor;
        }
        collapsingTextHelper.setCollapsedTextColor(colorStateList);
        if (z3) {
        }
        if (z2) {
        }
        collapseHint(z);
    }
}
