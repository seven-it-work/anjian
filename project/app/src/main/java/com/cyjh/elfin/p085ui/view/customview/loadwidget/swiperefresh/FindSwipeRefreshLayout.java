package com.cyjh.elfin.p085ui.view.customview.loadwidget.swiperefresh;

import android.content.Context;
import android.util.AttributeSet;
import com.hjol.R;

/* loaded from: classes.dex */
public class FindSwipeRefreshLayout extends ReHeadDefaultSwipeRefreshLayout {
    public FindSwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.cyjh.elfin.p085ui.view.customview.loadwidget.swiperefresh.ReDefaultSwipeRefreshLayout
    /* renamed from: f */
    public final void mo6600f() {
        setColorSchemeResources(R.color.blue);
        this.f5505a = (BaseListView) findViewById(R.id.comm_refresh_lv);
        this.f5505a.addFooterView(new FootView(getContext()), null, false);
    }
}
