package com.cyjh.elfin.p085ui.view.customview.loadwidget.swiperefresh;

import android.content.Context;
import android.support.v4.widget.SwipeRefreshLayout;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import com.cyjh.elfin.p085ui.view.customview.p088a.InterfaceC1429c;
import com.cyjh.elfin.p085ui.view.customview.p088a.InterfaceC1431e;

/* loaded from: classes.dex */
public abstract class ReDefaultSwipeRefreshLayout extends SwipeRefreshLayout implements InterfaceC1431e {

    /* renamed from: a */
    protected BaseListView f5505a;

    /* renamed from: b */
    private int f5506b;

    /* renamed from: c */
    private float f5507c;

    /* renamed from: d */
    private InterfaceC1436a f5508d;

    /* renamed from: com.cyjh.elfin.ui.view.customview.loadwidget.swiperefresh.ReDefaultSwipeRefreshLayout$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1436a {
        /* renamed from: a */
        void m6606a();
    }

    public ReDefaultSwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    private void m6603a(int i, int i2) {
        BaseListView baseListView = this.f5505a;
        baseListView.f5493a = i;
        BaseListView.f5492b = i2;
        baseListView.setScrollLoad(true);
    }

    /* renamed from: a */
    private void m6604a(View view) {
        this.f5505a.addHeaderView(view);
    }

    /* renamed from: a */
    private void m6605a(InterfaceC1429c interfaceC1429c, SwipeRefreshLayout.OnRefreshListener onRefreshListener) {
        if (interfaceC1429c != null) {
            this.f5505a.setIListViewCallBack(interfaceC1429c);
        }
        if (onRefreshListener != null) {
            setOnRefreshListener(onRefreshListener);
        }
    }

    @Override // com.cyjh.elfin.p085ui.view.customview.p088a.InterfaceC1431e
    /* renamed from: a */
    public final void mo6577a() {
        setRefreshing(false);
        this.f5505a.mo6577a();
    }

    @Override // com.cyjh.elfin.p085ui.view.customview.p088a.InterfaceC1431e
    /* renamed from: b */
    public final void mo6578b() {
        setRefreshing(false);
        this.f5505a.mo6578b();
    }

    @Override // com.cyjh.elfin.p085ui.view.customview.p088a.InterfaceC1431e
    /* renamed from: c */
    public final void mo6579c() {
        setRefreshing(false);
        this.f5505a.mo6579c();
    }

    @Override // com.cyjh.elfin.p085ui.view.customview.p088a.InterfaceC1431e
    /* renamed from: d */
    public final void mo6580d() {
        setRefreshing(false);
        this.f5505a.mo6580d();
    }

    @Override // com.cyjh.elfin.p085ui.view.customview.p088a.InterfaceC1431e
    /* renamed from: e */
    public final void mo6581e() {
        setRefreshing(false);
        this.f5505a.mo6581e();
    }

    /* renamed from: f */
    public abstract void mo6600f();

    public BaseListView getListView() {
        return this.f5505a;
    }

    @Override // android.support.v4.widget.SwipeRefreshLayout, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f5507c = motionEvent.getX();
            InterfaceC1436a interfaceC1436a = this.f5508d;
        } else if (action == 2 && Math.abs(motionEvent.getX() - this.f5507c) > this.f5506b + 60) {
            return false;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void setAdapter(BaseAdapter baseAdapter) {
        this.f5505a.setAdapter((ListAdapter) baseAdapter);
    }

    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        if (onItemClickListener != null) {
            this.f5505a.setOnItemClickListener(onItemClickListener);
        }
    }

    public void setTouchCallBackListener(InterfaceC1436a interfaceC1436a) {
        this.f5508d = interfaceC1436a;
    }
}
