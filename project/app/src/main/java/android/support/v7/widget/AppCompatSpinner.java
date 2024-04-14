package android.support.v7.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.DrawableRes;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.TintableBackgroundView;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.C0328R;
import android.support.v7.content.res.AppCompatResources;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;

/* loaded from: classes.dex */
public class AppCompatSpinner extends Spinner implements TintableBackgroundView {
    private static final int[] ATTRS_ANDROID_SPINNERMODE = {R.attr.spinnerMode};
    private static final int MAX_ITEMS_MEASURED = 15;
    private static final int MODE_DIALOG = 0;
    private static final int MODE_DROPDOWN = 1;
    private static final int MODE_THEME = -1;
    private static final String TAG = "AppCompatSpinner";
    private final AppCompatBackgroundHelper mBackgroundTintHelper;
    private int mDropDownWidth;
    private ForwardingListener mForwardingListener;
    private DropdownPopup mPopup;
    private final Context mPopupContext;
    private final boolean mPopupSet;
    private SpinnerAdapter mTempAdapter;
    private final Rect mTempRect;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class DropDownAdapter implements ListAdapter, SpinnerAdapter {
        private SpinnerAdapter mAdapter;
        private ListAdapter mListAdapter;

        public DropDownAdapter(@Nullable SpinnerAdapter spinnerAdapter, @Nullable Resources.Theme theme) {
            this.mAdapter = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.mListAdapter = (ListAdapter) spinnerAdapter;
            }
            if (theme != null) {
                if (Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof android.widget.ThemedSpinnerAdapter)) {
                    android.widget.ThemedSpinnerAdapter themedSpinnerAdapter = (android.widget.ThemedSpinnerAdapter) spinnerAdapter;
                    if (themedSpinnerAdapter.getDropDownViewTheme() != theme) {
                        themedSpinnerAdapter.setDropDownViewTheme(theme);
                        return;
                    }
                    return;
                }
                if (spinnerAdapter instanceof ThemedSpinnerAdapter) {
                    ThemedSpinnerAdapter themedSpinnerAdapter2 = (ThemedSpinnerAdapter) spinnerAdapter;
                    if (themedSpinnerAdapter2.getDropDownViewTheme() == null) {
                        themedSpinnerAdapter2.setDropDownViewTheme(theme);
                    }
                }
            }
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.mListAdapter;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (this.mAdapter == null) {
                return 0;
            }
            return this.mAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            if (this.mAdapter == null) {
                return null;
            }
            return this.mAdapter.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            if (this.mAdapter == null) {
                return null;
            }
            return this.mAdapter.getItem(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            if (this.mAdapter == null) {
                return -1L;
            }
            return this.mAdapter.getItemId(i);
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            return getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            return this.mAdapter != null && this.mAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i) {
            ListAdapter listAdapter = this.mListAdapter;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            if (this.mAdapter != null) {
                this.mAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            if (this.mAdapter != null) {
                this.mAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class DropdownPopup extends ListPopupWindow {
        ListAdapter mAdapter;
        private CharSequence mHintText;
        private final Rect mVisibleRect;

        public DropdownPopup(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.mVisibleRect = new Rect();
            setAnchorView(AppCompatSpinner.this);
            setModal(true);
            setPromptPosition(0);
            setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: android.support.v7.widget.AppCompatSpinner.DropdownPopup.1
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                    AppCompatSpinner.this.setSelection(i2);
                    if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                        AppCompatSpinner.this.performItemClick(view, i2, DropdownPopup.this.mAdapter.getItemId(i2));
                    }
                    DropdownPopup.this.dismiss();
                }
            });
        }

        void computeContentWidth() {
            int i;
            Drawable background = getBackground();
            int i2 = 0;
            if (background != null) {
                background.getPadding(AppCompatSpinner.this.mTempRect);
                i2 = ViewUtils.isLayoutRtl(AppCompatSpinner.this) ? AppCompatSpinner.this.mTempRect.right : -AppCompatSpinner.this.mTempRect.left;
            } else {
                Rect rect = AppCompatSpinner.this.mTempRect;
                AppCompatSpinner.this.mTempRect.right = 0;
                rect.left = 0;
            }
            int paddingLeft = AppCompatSpinner.this.getPaddingLeft();
            int paddingRight = AppCompatSpinner.this.getPaddingRight();
            int width = AppCompatSpinner.this.getWidth();
            if (AppCompatSpinner.this.mDropDownWidth == -2) {
                int compatMeasureContentWidth = AppCompatSpinner.this.compatMeasureContentWidth((SpinnerAdapter) this.mAdapter, getBackground());
                int i3 = (AppCompatSpinner.this.getContext().getResources().getDisplayMetrics().widthPixels - AppCompatSpinner.this.mTempRect.left) - AppCompatSpinner.this.mTempRect.right;
                if (compatMeasureContentWidth > i3) {
                    compatMeasureContentWidth = i3;
                }
                i = Math.max(compatMeasureContentWidth, (width - paddingLeft) - paddingRight);
            } else {
                i = AppCompatSpinner.this.mDropDownWidth == -1 ? (width - paddingLeft) - paddingRight : AppCompatSpinner.this.mDropDownWidth;
            }
            setContentWidth(i);
            setHorizontalOffset(ViewUtils.isLayoutRtl(AppCompatSpinner.this) ? i2 + ((width - paddingRight) - getWidth()) : i2 + paddingLeft);
        }

        public CharSequence getHintText() {
            return this.mHintText;
        }

        boolean isVisibleToUser(View view) {
            return ViewCompat.isAttachedToWindow(view) && view.getGlobalVisibleRect(this.mVisibleRect);
        }

        @Override // android.support.v7.widget.ListPopupWindow
        public void setAdapter(ListAdapter listAdapter) {
            super.setAdapter(listAdapter);
            this.mAdapter = listAdapter;
        }

        public void setPromptText(CharSequence charSequence) {
            this.mHintText = charSequence;
        }

        @Override // android.support.v7.widget.ListPopupWindow, android.support.v7.view.menu.ShowableListMenu
        public void show() {
            ViewTreeObserver viewTreeObserver;
            boolean isShowing = isShowing();
            computeContentWidth();
            setInputMethodMode(2);
            super.show();
            getListView().setChoiceMode(1);
            setSelection(AppCompatSpinner.this.getSelectedItemPosition());
            if (isShowing || (viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver()) == null) {
                return;
            }
            final ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: android.support.v7.widget.AppCompatSpinner.DropdownPopup.2
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    if (!DropdownPopup.this.isVisibleToUser(AppCompatSpinner.this)) {
                        DropdownPopup.this.dismiss();
                    } else {
                        DropdownPopup.this.computeContentWidth();
                        DropdownPopup.super.show();
                    }
                }
            };
            viewTreeObserver.addOnGlobalLayoutListener(onGlobalLayoutListener);
            setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: android.support.v7.widget.AppCompatSpinner.DropdownPopup.3
                @Override // android.widget.PopupWindow.OnDismissListener
                public void onDismiss() {
                    ViewTreeObserver viewTreeObserver2 = AppCompatSpinner.this.getViewTreeObserver();
                    if (viewTreeObserver2 != null) {
                        viewTreeObserver2.removeGlobalOnLayoutListener(onGlobalLayoutListener);
                    }
                }
            });
        }
    }

    public AppCompatSpinner(Context context) {
        this(context, (AttributeSet) null);
    }

    public AppCompatSpinner(Context context, int i) {
        this(context, null, C0328R.attr.spinnerStyle, i);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0328R.attr.spinnerStyle);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, -1);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, attributeSet, i, i2, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0053, code lost:
    
        if (r12 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0055, code lost:
    
        r12.recycle();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0067, code lost:
    
        if (r12 == null) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public AppCompatSpinner(android.content.Context r8, android.util.AttributeSet r9, int r10, int r11, android.content.res.Resources.Theme r12) {
        /*
            r7 = this;
            r7.<init>(r8, r9, r10)
            android.graphics.Rect r0 = new android.graphics.Rect
            r0.<init>()
            r7.mTempRect = r0
            int[] r0 = android.support.v7.appcompat.C0328R.styleable.Spinner
            r1 = 0
            android.support.v7.widget.TintTypedArray r0 = android.support.v7.widget.TintTypedArray.obtainStyledAttributes(r8, r9, r0, r10, r1)
            android.support.v7.widget.AppCompatBackgroundHelper r2 = new android.support.v7.widget.AppCompatBackgroundHelper
            r2.<init>(r7)
            r7.mBackgroundTintHelper = r2
            r2 = 0
            if (r12 == 0) goto L21
            android.support.v7.view.ContextThemeWrapper r3 = new android.support.v7.view.ContextThemeWrapper
            r3.<init>(r8, r12)
            goto L38
        L21:
            int r12 = android.support.v7.appcompat.C0328R.styleable.Spinner_popupTheme
            int r12 = r0.getResourceId(r12, r1)
            if (r12 == 0) goto L2f
            android.support.v7.view.ContextThemeWrapper r3 = new android.support.v7.view.ContextThemeWrapper
            r3.<init>(r8, r12)
            goto L38
        L2f:
            int r12 = android.os.Build.VERSION.SDK_INT
            r3 = 23
            if (r12 >= r3) goto L37
            r3 = r8
            goto L38
        L37:
            r3 = r2
        L38:
            r7.mPopupContext = r3
            android.content.Context r12 = r7.mPopupContext
            r3 = 1
            if (r12 == 0) goto La9
            r12 = -1
            if (r11 != r12) goto L71
            int[] r12 = android.support.v7.widget.AppCompatSpinner.ATTRS_ANDROID_SPINNERMODE     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
            android.content.res.TypedArray r12 = r8.obtainStyledAttributes(r9, r12, r10, r1)     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
            boolean r4 = r12.hasValue(r1)     // Catch: java.lang.Exception -> L59 java.lang.Throwable -> L6a
            if (r4 == 0) goto L53
            int r4 = r12.getInt(r1, r1)     // Catch: java.lang.Exception -> L59 java.lang.Throwable -> L6a
            r11 = r4
        L53:
            if (r12 == 0) goto L71
        L55:
            r12.recycle()
            goto L71
        L59:
            r4 = move-exception
            goto L60
        L5b:
            r8 = move-exception
            r12 = r2
            goto L6b
        L5e:
            r4 = move-exception
            r12 = r2
        L60:
            java.lang.String r5 = "AppCompatSpinner"
            java.lang.String r6 = "Could not read android:spinnerMode"
            android.util.Log.i(r5, r6, r4)     // Catch: java.lang.Throwable -> L6a
            if (r12 == 0) goto L71
            goto L55
        L6a:
            r8 = move-exception
        L6b:
            if (r12 == 0) goto L70
            r12.recycle()
        L70:
            throw r8
        L71:
            if (r11 != r3) goto La9
            android.support.v7.widget.AppCompatSpinner$DropdownPopup r11 = new android.support.v7.widget.AppCompatSpinner$DropdownPopup
            android.content.Context r12 = r7.mPopupContext
            r11.<init>(r12, r9, r10)
            android.content.Context r12 = r7.mPopupContext
            int[] r4 = android.support.v7.appcompat.C0328R.styleable.Spinner
            android.support.v7.widget.TintTypedArray r12 = android.support.v7.widget.TintTypedArray.obtainStyledAttributes(r12, r9, r4, r10, r1)
            int r1 = android.support.v7.appcompat.C0328R.styleable.Spinner_android_dropDownWidth
            r4 = -2
            int r1 = r12.getLayoutDimension(r1, r4)
            r7.mDropDownWidth = r1
            int r1 = android.support.v7.appcompat.C0328R.styleable.Spinner_android_popupBackground
            android.graphics.drawable.Drawable r1 = r12.getDrawable(r1)
            r11.setBackgroundDrawable(r1)
            int r1 = android.support.v7.appcompat.C0328R.styleable.Spinner_android_prompt
            java.lang.String r1 = r0.getString(r1)
            r11.setPromptText(r1)
            r12.recycle()
            r7.mPopup = r11
            android.support.v7.widget.AppCompatSpinner$1 r12 = new android.support.v7.widget.AppCompatSpinner$1
            r12.<init>(r7)
            r7.mForwardingListener = r12
        La9:
            int r11 = android.support.v7.appcompat.C0328R.styleable.Spinner_android_entries
            java.lang.CharSequence[] r11 = r0.getTextArray(r11)
            if (r11 == 0) goto Lc1
            android.widget.ArrayAdapter r12 = new android.widget.ArrayAdapter
            r1 = 17367048(0x1090008, float:2.5162948E-38)
            r12.<init>(r8, r1, r11)
            int r8 = android.support.v7.appcompat.C0328R.layout.support_simple_spinner_dropdown_item
            r12.setDropDownViewResource(r8)
            r7.setAdapter(r12)
        Lc1:
            r0.recycle()
            r7.mPopupSet = r3
            android.widget.SpinnerAdapter r8 = r7.mTempAdapter
            if (r8 == 0) goto Ld1
            android.widget.SpinnerAdapter r8 = r7.mTempAdapter
            r7.setAdapter(r8)
            r7.mTempAdapter = r2
        Ld1:
            android.support.v7.widget.AppCompatBackgroundHelper r8 = r7.mBackgroundTintHelper
            r8.loadFromAttributes(r9, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.AppCompatSpinner.<init>(android.content.Context, android.util.AttributeSet, int, int, android.content.res.Resources$Theme):void");
    }

    int compatMeasureContentWidth(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        View view = null;
        int i2 = 0;
        for (int max2 = Math.max(0, max - (15 - (min - max))); max2 < min; max2++) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            if (itemViewType != i) {
                view = null;
                i = itemViewType;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i2 = Math.max(i2, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return i2;
        }
        drawable.getPadding(this.mTempRect);
        return i2 + this.mTempRect.left + this.mTempRect.right;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.mBackgroundTintHelper != null) {
            this.mBackgroundTintHelper.applySupportBackgroundTint();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        if (this.mPopup != null) {
            return this.mPopup.getHorizontalOffset();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownHorizontalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        if (this.mPopup != null) {
            return this.mPopup.getVerticalOffset();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownVerticalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        if (this.mPopup != null) {
            return this.mDropDownWidth;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownWidth();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        if (this.mPopup != null) {
            return this.mPopup.getBackground();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getPopupBackground();
        }
        return null;
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        if (this.mPopup != null) {
            return this.mPopupContext;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            return super.getPopupContext();
        }
        return null;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        return this.mPopup != null ? this.mPopup.getHintText() : super.getPrompt();
    }

    @Override // android.support.v4.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ColorStateList getSupportBackgroundTintList() {
        if (this.mBackgroundTintHelper != null) {
            return this.mBackgroundTintHelper.getSupportBackgroundTintList();
        }
        return null;
    }

    @Override // android.support.v4.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (this.mBackgroundTintHelper != null) {
            return this.mBackgroundTintHelper.getSupportBackgroundTintMode();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mPopup == null || !this.mPopup.isShowing()) {
            return;
        }
        this.mPopup.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.mPopup == null || View.MeasureSpec.getMode(i) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), compatMeasureContentWidth(getAdapter(), getBackground())), View.MeasureSpec.getSize(i)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mForwardingListener == null || !this.mForwardingListener.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        if (this.mPopup == null) {
            return super.performClick();
        }
        if (this.mPopup.isShowing()) {
            return true;
        }
        this.mPopup.show();
        return true;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.mPopupSet) {
            this.mTempAdapter = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.mPopup != null) {
            this.mPopup.setAdapter(new DropDownAdapter(spinnerAdapter, (this.mPopupContext == null ? getContext() : this.mPopupContext).getTheme()));
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.mBackgroundTintHelper != null) {
            this.mBackgroundTintHelper.onSetBackgroundDrawable(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        if (this.mBackgroundTintHelper != null) {
            this.mBackgroundTintHelper.onSetBackgroundResource(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i) {
        if (this.mPopup != null) {
            this.mPopup.setHorizontalOffset(i);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownHorizontalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i) {
        if (this.mPopup != null) {
            this.mPopup.setVerticalOffset(i);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownVerticalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i) {
        if (this.mPopup != null) {
            this.mDropDownWidth = i;
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownWidth(i);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        if (this.mPopup != null) {
            this.mPopup.setBackgroundDrawable(drawable);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(@DrawableRes int i) {
        setPopupBackgroundDrawable(AppCompatResources.getDrawable(getPopupContext(), i));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        if (this.mPopup != null) {
            this.mPopup.setPromptText(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // android.support.v4.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (this.mBackgroundTintHelper != null) {
            this.mBackgroundTintHelper.setSupportBackgroundTintList(colorStateList);
        }
    }

    @Override // android.support.v4.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.mBackgroundTintHelper != null) {
            this.mBackgroundTintHelper.setSupportBackgroundTintMode(mode);
        }
    }
}
