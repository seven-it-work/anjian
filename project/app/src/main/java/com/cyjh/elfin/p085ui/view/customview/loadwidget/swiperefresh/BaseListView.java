package com.cyjh.elfin.p085ui.view.customview.loadwidget.swiperefresh;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ListView;
import com.cyjh.elfin.p085ui.view.customview.p088a.C1432f;
import com.cyjh.elfin.p085ui.view.customview.p088a.InterfaceC1429c;
import com.cyjh.elfin.p085ui.view.customview.p088a.InterfaceC1431e;

/* loaded from: classes.dex */
public class BaseListView extends ListView implements AbsListView.OnScrollListener, InterfaceC1431e {

    /* renamed from: b */
    static int f5492b = 5;

    /* renamed from: a */
    int f5493a;

    /* renamed from: c */
    private boolean f5494c;

    /* renamed from: d */
    private int f5495d;

    /* renamed from: e */
    private BaseFootView f5496e;

    /* renamed from: f */
    private InterfaceC1429c f5497f;

    /* renamed from: g */
    private int f5498g;

    /* renamed from: h */
    private int f5499h;

    /* renamed from: i */
    private int f5500i;

    /* renamed from: j */
    private InterfaceC1434a f5501j;

    /* renamed from: com.cyjh.elfin.ui.view.customview.loadwidget.swiperefresh.BaseListView$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1434a {
        /* renamed from: a */
        void m6598a();

        /* renamed from: b */
        void m6599b();
    }

    public BaseListView(Context context) {
        super(context);
        this.f5494c = false;
        this.f5495d = C1432f.NON$476dec0e;
        this.f5493a = 10;
        setOnScrollListener(this);
    }

    public BaseListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5494c = false;
        this.f5495d = C1432f.NON$476dec0e;
        this.f5493a = 10;
        setOnScrollListener(this);
    }

    public BaseListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f5494c = false;
        this.f5495d = C1432f.NON$476dec0e;
        this.f5493a = 10;
        setOnScrollListener(this);
    }

    /* renamed from: a */
    private void m6590a(int i, int i2) {
        this.f5493a = i;
        f5492b = i2;
        setScrollLoad(true);
    }

    /* renamed from: a */
    private void m6591a(View view) {
        addFooterView(view, null, false);
    }

    /* renamed from: b */
    private void m6592b(View view) {
        if (this.f5496e != null) {
            BaseFootView baseFootView = this.f5496e;
            this.f5496e = null;
            removeFooterView(baseFootView);
        }
        addFooterView(view, null, false);
    }

    /* renamed from: f */
    private void m6593f() {
        setOnScrollListener(this);
    }

    /* renamed from: g */
    private boolean m6594g() {
        if (this.f5496e == null) {
            return false;
        }
        BaseFootView baseFootView = this.f5496e;
        this.f5496e = null;
        return removeFooterView(baseFootView);
    }

    /* renamed from: h */
    private void m6595h() {
        if (this.f5500i == 0) {
            return;
        }
        if (!(this.f5499h - this.f5498g < f5492b) || this.f5497f == null || this.f5495d == C1432f.LOADING$476dec0e) {
            return;
        }
        this.f5495d = C1432f.LOADING$476dec0e;
    }

    /* renamed from: i */
    private void m6596i() {
        if (this.f5497f == null || this.f5495d == C1432f.LOADING$476dec0e) {
            return;
        }
        this.f5495d = C1432f.LOADING$476dec0e;
    }

    /* renamed from: j */
    private boolean m6597j() {
        return this.f5494c;
    }

    @Override // com.cyjh.elfin.p085ui.view.customview.p088a.InterfaceC1431e
    /* renamed from: a */
    public final void mo6577a() {
        this.f5495d = C1432f.FAILED$476dec0e;
        if (this.f5496e != null) {
            this.f5496e.mo6577a();
        }
    }

    @Override // android.widget.ListView
    public void addFooterView(View view, Object obj, boolean z) {
        if ((view instanceof BaseFootView) && this.f5496e == null) {
            this.f5496e = (BaseFootView) view;
            this.f5496e.setCallBack(this.f5497f);
        }
        super.addFooterView(view, obj, z);
    }

    @Override // com.cyjh.elfin.p085ui.view.customview.p088a.InterfaceC1431e
    /* renamed from: b */
    public final void mo6578b() {
        this.f5495d = C1432f.NON$476dec0e;
        if (this.f5496e != null) {
            this.f5496e.mo6578b();
        }
    }

    @Override // com.cyjh.elfin.p085ui.view.customview.p088a.InterfaceC1431e
    /* renamed from: c */
    public final void mo6579c() {
        this.f5495d = C1432f.COMPLETE$476dec0e;
        if (this.f5496e != null) {
            this.f5496e.mo6579c();
        }
    }

    @Override // com.cyjh.elfin.p085ui.view.customview.p088a.InterfaceC1431e
    /* renamed from: d */
    public final void mo6580d() {
        this.f5495d = C1432f.EMPTY$476dec0e;
        if (this.f5496e != null) {
            this.f5496e.mo6580d();
        }
    }

    @Override // com.cyjh.elfin.p085ui.view.customview.p088a.InterfaceC1431e
    /* renamed from: e */
    public final void mo6581e() {
        this.f5495d = C1432f.NON$476dec0e;
        if (this.f5496e != null) {
            this.f5496e.mo6581e();
        }
    }

    public BaseFootView getFootView() {
        return this.f5496e;
    }

    public int getPageSize() {
        return this.f5493a;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        if (this.f5494c) {
            this.f5498g = i + i2;
            this.f5499h = i3;
            if (this.f5500i != 0) {
                if (!(this.f5499h - this.f5498g < f5492b) || this.f5497f == null || this.f5495d == C1432f.LOADING$476dec0e) {
                    return;
                }
                this.f5495d = C1432f.LOADING$476dec0e;
            }
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        this.f5500i = i;
    }

    @Override // android.widget.ListView
    public boolean removeFooterView(View view) {
        if (this.f5496e == view) {
            this.f5496e = null;
        }
        return super.removeFooterView(view);
    }

    public void setIListViewCallBack(InterfaceC1429c interfaceC1429c) {
        this.f5497f = interfaceC1429c;
        this.f5496e.setCallBack(this.f5497f);
    }

    public void setScrollLoad(boolean z) {
        this.f5494c = z;
    }

    public void setmListViewScrollListener(InterfaceC1434a interfaceC1434a) {
        this.f5501j = interfaceC1434a;
    }
}
