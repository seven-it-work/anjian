package android.support.design.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.support.annotation.RestrictTo;
import android.support.design.C0035R;
import android.support.v4.content.res.ResourcesCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.appcompat.C0328R;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuView;
import android.support.v7.widget.LinearLayoutCompat;
import android.support.v7.widget.TooltipCompat;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class NavigationMenuItemView extends ForegroundLinearLayout implements MenuView.ItemView {
    private static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    private final AccessibilityDelegateCompat mAccessibilityDelegate;
    private FrameLayout mActionArea;
    boolean mCheckable;
    private Drawable mEmptyDrawable;
    private boolean mHasIconTintList;
    private final int mIconSize;
    private ColorStateList mIconTintList;
    private MenuItemImpl mItemData;
    private boolean mNeedsEmptyIcon;
    private final CheckedTextView mTextView;

    public NavigationMenuItemView(Context context) {
        this(context, null);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mAccessibilityDelegate = new AccessibilityDelegateCompat() { // from class: android.support.design.internal.NavigationMenuItemView.1
            @Override // android.support.v4.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setCheckable(NavigationMenuItemView.this.mCheckable);
            }
        };
        setOrientation(0);
        LayoutInflater.from(context).inflate(C0035R.layout.design_navigation_menu_item, (ViewGroup) this, true);
        this.mIconSize = context.getResources().getDimensionPixelSize(C0035R.dimen.design_navigation_icon_size);
        this.mTextView = (CheckedTextView) findViewById(C0035R.id.design_menu_item_text);
        this.mTextView.setDuplicateParentStateEnabled(true);
        ViewCompat.setAccessibilityDelegate(this.mTextView, this.mAccessibilityDelegate);
    }

    private void adjustAppearance() {
        if (shouldExpandActionArea()) {
            this.mTextView.setVisibility(8);
            if (this.mActionArea != null) {
                LinearLayoutCompat.LayoutParams layoutParams = (LinearLayoutCompat.LayoutParams) this.mActionArea.getLayoutParams();
                layoutParams.width = -1;
                this.mActionArea.setLayoutParams(layoutParams);
                return;
            }
            return;
        }
        this.mTextView.setVisibility(0);
        if (this.mActionArea != null) {
            LinearLayoutCompat.LayoutParams layoutParams2 = (LinearLayoutCompat.LayoutParams) this.mActionArea.getLayoutParams();
            layoutParams2.width = -2;
            this.mActionArea.setLayoutParams(layoutParams2);
        }
    }

    private StateListDrawable createDefaultBackground() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(C0328R.attr.colorControlHighlight, typedValue, true)) {
            return null;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(CHECKED_STATE_SET, new ColorDrawable(typedValue.data));
        stateListDrawable.addState(EMPTY_STATE_SET, new ColorDrawable(0));
        return stateListDrawable;
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.mActionArea == null) {
                this.mActionArea = (FrameLayout) ((ViewStub) findViewById(C0035R.id.design_menu_item_action_area_stub)).inflate();
            }
            this.mActionArea.removeAllViews();
            this.mActionArea.addView(view);
        }
    }

    private boolean shouldExpandActionArea() {
        return this.mItemData.getTitle() == null && this.mItemData.getIcon() == null && this.mItemData.getActionView() != null;
    }

    @Override // android.support.v7.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.mItemData;
    }

    @Override // android.support.v7.view.menu.MenuView.ItemView
    public void initialize(MenuItemImpl menuItemImpl, int i) {
        this.mItemData = menuItemImpl;
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            ViewCompat.setBackground(this, createDefaultBackground());
        }
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setTitle(menuItemImpl.getTitle());
        setIcon(menuItemImpl.getIcon());
        setActionView(menuItemImpl.getActionView());
        setContentDescription(menuItemImpl.getContentDescription());
        TooltipCompat.setTooltipText(this, menuItemImpl.getTooltipText());
        adjustAppearance();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.mItemData != null && this.mItemData.isCheckable() && this.mItemData.isChecked()) {
            mergeDrawableStates(onCreateDrawableState, CHECKED_STATE_SET);
        }
        return onCreateDrawableState;
    }

    @Override // android.support.v7.view.menu.MenuView.ItemView
    public boolean prefersCondensedTitle() {
        return false;
    }

    public void recycle() {
        if (this.mActionArea != null) {
            this.mActionArea.removeAllViews();
        }
        this.mTextView.setCompoundDrawables(null, null, null, null);
    }

    @Override // android.support.v7.view.menu.MenuView.ItemView
    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.mCheckable != z) {
            this.mCheckable = z;
            this.mAccessibilityDelegate.sendAccessibilityEvent(this.mTextView, 2048);
        }
    }

    @Override // android.support.v7.view.menu.MenuView.ItemView
    public void setChecked(boolean z) {
        refreshDrawableState();
        this.mTextView.setChecked(z);
    }

    @Override // android.support.v7.view.menu.MenuView.ItemView
    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            if (this.mHasIconTintList) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = DrawableCompat.wrap(drawable).mutate();
                DrawableCompat.setTintList(drawable, this.mIconTintList);
            }
            drawable.setBounds(0, 0, this.mIconSize, this.mIconSize);
        } else if (this.mNeedsEmptyIcon) {
            if (this.mEmptyDrawable == null) {
                this.mEmptyDrawable = ResourcesCompat.getDrawable(getResources(), C0035R.drawable.navigation_empty_icon, getContext().getTheme());
                if (this.mEmptyDrawable != null) {
                    this.mEmptyDrawable.setBounds(0, 0, this.mIconSize, this.mIconSize);
                }
            }
            drawable = this.mEmptyDrawable;
        }
        TextViewCompat.setCompoundDrawablesRelative(this.mTextView, drawable, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setIconTintList(ColorStateList colorStateList) {
        this.mIconTintList = colorStateList;
        this.mHasIconTintList = this.mIconTintList != null;
        if (this.mItemData != null) {
            setIcon(this.mItemData.getIcon());
        }
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.mNeedsEmptyIcon = z;
    }

    @Override // android.support.v7.view.menu.MenuView.ItemView
    public void setShortcut(boolean z, char c2) {
    }

    public void setTextAppearance(int i) {
        TextViewCompat.setTextAppearance(this.mTextView, i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.mTextView.setTextColor(colorStateList);
    }

    @Override // android.support.v7.view.menu.MenuView.ItemView
    public void setTitle(CharSequence charSequence) {
        this.mTextView.setText(charSequence);
    }

    @Override // android.support.v7.view.menu.MenuView.ItemView
    public boolean showsIcon() {
        return true;
    }
}
