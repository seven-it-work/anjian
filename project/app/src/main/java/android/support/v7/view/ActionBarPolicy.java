package android.support.v7.view;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.C0328R;
import android.view.ViewConfiguration;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class ActionBarPolicy {
    private Context mContext;

    private ActionBarPolicy(Context context) {
        this.mContext = context;
    }

    public static ActionBarPolicy get(Context context) {
        return new ActionBarPolicy(context);
    }

    public boolean enableHomeButtonByDefault() {
        return this.mContext.getApplicationInfo().targetSdkVersion < 14;
    }

    public int getEmbeddedMenuWidthLimit() {
        return this.mContext.getResources().getDisplayMetrics().widthPixels / 2;
    }

    public int getMaxActionButtons() {
        Configuration configuration = this.mContext.getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        int i2 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i > 600) {
            return 5;
        }
        if (i > 960 && i2 > 720) {
            return 5;
        }
        if (i > 720 && i2 > 960) {
            return 5;
        }
        if (i >= 500) {
            return 4;
        }
        if (i > 640 && i2 > 480) {
            return 4;
        }
        if (i <= 480 || i2 <= 640) {
            return i >= 360 ? 3 : 2;
        }
        return 4;
    }

    public int getStackedTabMaxWidth() {
        return this.mContext.getResources().getDimensionPixelSize(C0328R.dimen.abc_action_bar_stacked_tab_max_width);
    }

    public int getTabContainerHeight() {
        TypedArray obtainStyledAttributes = this.mContext.obtainStyledAttributes(null, C0328R.styleable.ActionBar, C0328R.attr.actionBarStyle, 0);
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(C0328R.styleable.ActionBar_height, 0);
        Resources resources = this.mContext.getResources();
        if (!hasEmbeddedTabs()) {
            layoutDimension = Math.min(layoutDimension, resources.getDimensionPixelSize(C0328R.dimen.abc_action_bar_stacked_max_height));
        }
        obtainStyledAttributes.recycle();
        return layoutDimension;
    }

    public boolean hasEmbeddedTabs() {
        return this.mContext.getResources().getBoolean(C0328R.bool.abc_action_bar_embed_tabs);
    }

    public boolean showsOverflowMenuButton() {
        return Build.VERSION.SDK_INT >= 19 || !ViewConfiguration.get(this.mContext).hasPermanentMenuKey();
    }
}
