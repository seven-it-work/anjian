package com.p058c.p062d;

import android.app.Activity;
import android.app.Dialog;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.Gallery;
import android.widget.ListAdapter;
import android.widget.ProgressBar;
import com.p058c.C1088a;
import com.p058c.p060b.C1098d;
import java.io.File;
import java.util.Comparator;

/* renamed from: com.c.d.c */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC1107c implements TextWatcher, View.OnClickListener, View.OnLongClickListener, AbsListView.OnScrollListener, AdapterView.OnItemClickListener, AdapterView.OnItemSelectedListener, Runnable, Comparator<File> {

    /* renamed from: a */
    protected static final int f3711a = 1;

    /* renamed from: b */
    protected static final int f3712b = 2;

    /* renamed from: c */
    public AbsListView.OnScrollListener f3713c;

    /* renamed from: d */
    private Object f3714d;

    /* renamed from: e */
    private String f3715e;

    /* renamed from: f */
    private Object[] f3716f;

    /* renamed from: g */
    private boolean f3717g;

    /* renamed from: h */
    private Class<?>[] f3718h;

    /* renamed from: i */
    private int f3719i;

    /* renamed from: k */
    private int f3721k;

    /* renamed from: l */
    private AdapterView.OnItemSelectedListener f3722l;

    /* renamed from: j */
    private int f3720j = 0;

    /* renamed from: m */
    private boolean f3723m = false;

    /* renamed from: a */
    private int m4081a() {
        return this.f3720j;
    }

    /* renamed from: a */
    private static int m4082a(File file, File file2) {
        long lastModified = file.lastModified();
        long lastModified2 = file2.lastModified();
        if (lastModified2 > lastModified) {
            return 1;
        }
        return lastModified2 == lastModified ? 0 : -1;
    }

    /* renamed from: a */
    private Object m4083a(Object... objArr) {
        if (this.f3715e != null) {
            if (this.f3716f != null) {
                objArr = this.f3716f;
            }
            Object[] objArr2 = objArr;
            Object obj = this.f3714d;
            return C1105a.m4027a(obj == null ? this : obj, this.f3715e, this.f3717g, true, this.f3718h, objArr2);
        }
        if (this.f3719i == 0) {
            return null;
        }
        switch (this.f3719i) {
            case 1:
                C1105a.m4060b((File) this.f3716f[0], (byte[]) this.f3716f[1]);
                return null;
            case 2:
                C1105a.m4037a((File) this.f3716f[0], ((Long) this.f3716f[1]).longValue(), ((Long) this.f3716f[2]).longValue());
                return null;
            default:
                return null;
        }
    }

    /* renamed from: a */
    private void m4084a(AbsListView.OnScrollListener onScrollListener) {
        this.f3713c = onScrollListener;
    }

    /* renamed from: a */
    private void m4085a(AbsListView absListView, int i) {
        int count = absListView.getCount();
        int lastVisiblePosition = absListView.getLastVisiblePosition();
        if (i != 0 || count != lastVisiblePosition + 1) {
            this.f3721k = -1;
        } else if (lastVisiblePosition != this.f3721k) {
            this.f3721k = lastVisiblePosition;
            m4083a(absListView, Integer.valueOf(i));
        }
    }

    /* renamed from: a */
    private static void m4086a(ExpandableListView expandableListView, int i) {
        expandableListView.setTag(InterfaceC1108d.f3725B, Integer.valueOf(i));
        if (i == 0) {
            int firstVisiblePosition = expandableListView.getFirstVisiblePosition();
            int lastVisiblePosition = expandableListView.getLastVisiblePosition() - firstVisiblePosition;
            ExpandableListAdapter expandableListAdapter = expandableListView.getExpandableListAdapter();
            for (int i2 = 0; i2 <= lastVisiblePosition; i2++) {
                long expandableListPosition = expandableListView.getExpandableListPosition(i2 + firstVisiblePosition);
                int packedPositionGroup = ExpandableListView.getPackedPositionGroup(expandableListPosition);
                int packedPositionChild = ExpandableListView.getPackedPositionChild(expandableListPosition);
                if (packedPositionGroup >= 0) {
                    View childAt = expandableListView.getChildAt(i2);
                    Long l = (Long) childAt.getTag(InterfaceC1108d.f3725B);
                    if (l != null && l.longValue() == expandableListPosition) {
                        if (packedPositionChild == -1) {
                            expandableListAdapter.getGroupView(packedPositionGroup, expandableListView.isGroupExpanded(packedPositionGroup), childAt, expandableListView);
                        } else {
                            expandableListAdapter.getChildView(packedPositionGroup, packedPositionChild, packedPositionChild == expandableListAdapter.getChildrenCount(packedPositionGroup) - 1, childAt, expandableListView);
                        }
                        childAt.setTag(InterfaceC1108d.f3725B, null);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    private void m4087a(Gallery gallery) {
        this.f3722l = gallery.getOnItemSelectedListener();
        this.f3723m = true;
        gallery.setOnItemSelectedListener(this);
    }

    /* renamed from: a */
    public static void m4088a(Object obj, String str, boolean z) {
        if (obj != null) {
            if (!(obj instanceof View)) {
                if (obj instanceof Dialog) {
                    Dialog dialog = (Dialog) obj;
                    C1088a c1088a = new C1088a(dialog.getContext());
                    if (z) {
                        c1088a.m3741a(dialog);
                        return;
                    } else {
                        c1088a.m3745b(dialog);
                        return;
                    }
                }
                if (obj instanceof Activity) {
                    Activity activity = (Activity) obj;
                    activity.setProgressBarIndeterminateVisibility(z);
                    activity.setProgressBarVisibility(z);
                    if (z) {
                        activity.setProgress(0);
                        return;
                    }
                    return;
                }
                return;
            }
            View view = (View) obj;
            ProgressBar progressBar = obj instanceof ProgressBar ? (ProgressBar) obj : null;
            if (z) {
                view.setTag(InterfaceC1108d.f3762y, str);
                view.setVisibility(0);
                if (progressBar != null) {
                    progressBar.setProgress(0);
                    progressBar.setMax(100);
                    return;
                }
                return;
            }
            Object tag = view.getTag(InterfaceC1108d.f3762y);
            if (tag == null || tag.equals(str)) {
                view.setTag(InterfaceC1108d.f3762y, null);
                if (progressBar == null || progressBar.isIndeterminate()) {
                    view.setVisibility(8);
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m4089a(int i, int i2, View view, ViewGroup viewGroup, String str) {
        if (str == null || C1098d.m3931d(str)) {
            return false;
        }
        AbsListView absListView = (AbsListView) viewGroup;
        if (((AbsListView.OnScrollListener) viewGroup.getTag(InterfaceC1108d.f3763z)) == null) {
            ViewOnClickListenerC1107c viewOnClickListenerC1107c = new ViewOnClickListenerC1107c();
            absListView.setOnScrollListener(viewOnClickListenerC1107c);
            viewGroup.setTag(InterfaceC1108d.f3763z, viewOnClickListenerC1107c);
        }
        Integer num = (Integer) absListView.getTag(InterfaceC1108d.f3725B);
        if (num == null || num.intValue() == 0 || num.intValue() == 1) {
            return false;
        }
        long j = i2;
        if (viewGroup instanceof ExpandableListView) {
            j = ExpandableListView.getPackedPositionForChild(i, i2);
        }
        view.setTag(InterfaceC1108d.f3725B, Long.valueOf(j));
        return true;
    }

    /* renamed from: a */
    public static boolean m4090a(int i, View view, ViewGroup viewGroup, String str) {
        if (!(viewGroup instanceof Gallery)) {
            return m4089a(-2, i, view, viewGroup, str);
        }
        if (str == null || C1098d.m3931d(str)) {
            return false;
        }
        Gallery gallery = (Gallery) viewGroup;
        Integer num = (Integer) gallery.getTag(InterfaceC1108d.f3725B);
        if (num == null) {
            num = 0;
            gallery.setTag(InterfaceC1108d.f3725B, 0);
            gallery.setCallbackDuringFling(false);
            ViewOnClickListenerC1107c viewOnClickListenerC1107c = new ViewOnClickListenerC1107c();
            viewOnClickListenerC1107c.f3722l = gallery.getOnItemSelectedListener();
            viewOnClickListenerC1107c.f3723m = true;
            gallery.setOnItemSelectedListener(viewOnClickListenerC1107c);
        }
        int lastVisiblePosition = ((gallery.getLastVisiblePosition() - gallery.getFirstVisiblePosition()) / 2) + 1;
        int intValue = num.intValue() - lastVisiblePosition;
        int intValue2 = num.intValue() + lastVisiblePosition;
        if (intValue < 0) {
            intValue2 -= intValue;
            intValue = 0;
        }
        if (i < intValue || i > intValue2) {
            view.setTag(InterfaceC1108d.f3725B, null);
            return true;
        }
        view.setTag(InterfaceC1108d.f3725B, Integer.valueOf(i));
        return false;
    }

    /* renamed from: a */
    public static boolean m4091a(View view, ViewGroup viewGroup, String str) {
        return m4090a(-1, view, viewGroup, str);
    }

    /* renamed from: b */
    private static void m4092b(AbsListView absListView, int i) {
        absListView.setTag(InterfaceC1108d.f3725B, Integer.valueOf(i));
        if (i == 0) {
            int firstVisiblePosition = absListView.getFirstVisiblePosition();
            int lastVisiblePosition = absListView.getLastVisiblePosition() - firstVisiblePosition;
            ListAdapter listAdapter = (ListAdapter) absListView.getAdapter();
            for (int i2 = 0; i2 <= lastVisiblePosition; i2++) {
                long j = i2 + firstVisiblePosition;
                View childAt = absListView.getChildAt(i2);
                if (((Number) childAt.getTag(InterfaceC1108d.f3725B)) != null) {
                    listAdapter.getView((int) j, childAt, absListView);
                    childAt.setTag(InterfaceC1108d.f3725B, null);
                }
            }
        }
    }

    /* renamed from: b */
    private static boolean m4093b(int i, View view, ViewGroup viewGroup, String str) {
        if (str == null || C1098d.m3931d(str)) {
            return false;
        }
        Gallery gallery = (Gallery) viewGroup;
        Integer num = (Integer) gallery.getTag(InterfaceC1108d.f3725B);
        if (num == null) {
            num = 0;
            gallery.setTag(InterfaceC1108d.f3725B, 0);
            gallery.setCallbackDuringFling(false);
            ViewOnClickListenerC1107c viewOnClickListenerC1107c = new ViewOnClickListenerC1107c();
            viewOnClickListenerC1107c.f3722l = gallery.getOnItemSelectedListener();
            viewOnClickListenerC1107c.f3723m = true;
            gallery.setOnItemSelectedListener(viewOnClickListenerC1107c);
        }
        int lastVisiblePosition = ((gallery.getLastVisiblePosition() - gallery.getFirstVisiblePosition()) / 2) + 1;
        int intValue = num.intValue() - lastVisiblePosition;
        int intValue2 = num.intValue() + lastVisiblePosition;
        if (intValue < 0) {
            intValue2 -= intValue;
            intValue = 0;
        }
        if (i < intValue || i > intValue2) {
            view.setTag(InterfaceC1108d.f3725B, null);
            return true;
        }
        view.setTag(InterfaceC1108d.f3725B, Integer.valueOf(i));
        return false;
    }

    /* renamed from: a */
    public final ViewOnClickListenerC1107c m4094a(int i, Object... objArr) {
        this.f3719i = i;
        this.f3716f = objArr;
        return this;
    }

    /* renamed from: a */
    public final ViewOnClickListenerC1107c m4095a(Object obj, String str, Class<?>[] clsArr) {
        this.f3714d = obj;
        this.f3715e = str;
        this.f3717g = true;
        this.f3718h = clsArr;
        return this;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(File file, File file2) {
        long lastModified = file.lastModified();
        long lastModified2 = file2.lastModified();
        if (lastModified2 > lastModified) {
            return 1;
        }
        return lastModified2 == lastModified ? 0 : -1;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        m4083a(view);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        m4083a(adapterView, view, Integer.valueOf(i), Long.valueOf(j));
    }

    /* JADX WARN: Type inference failed for: r12v4, types: [android.widget.Adapter] */
    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        m4083a(adapterView, view, Integer.valueOf(i), Long.valueOf(j));
        if (this.f3722l != null) {
            this.f3722l.onItemSelected(adapterView, view, i, j);
        }
        if (!this.f3723m || ((Integer) adapterView.getTag(InterfaceC1108d.f3725B)).intValue() == i) {
            return;
        }
        ?? adapter = adapterView.getAdapter();
        adapterView.setTag(InterfaceC1108d.f3725B, Integer.valueOf(i));
        int childCount = adapterView.getChildCount();
        int firstVisiblePosition = adapterView.getFirstVisiblePosition();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = adapterView.getChildAt(i2);
            int i3 = firstVisiblePosition + i2;
            Integer num = (Integer) childAt.getTag(InterfaceC1108d.f3725B);
            if (num == null || num.intValue() != i3) {
                adapter.getView(i3, childAt, adapterView);
            }
        }
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        Object m4083a = m4083a(view);
        if (m4083a instanceof Boolean) {
            return ((Boolean) m4083a).booleanValue();
        }
        return false;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView<?> adapterView) {
        if (this.f3722l != null) {
            this.f3722l.onNothingSelected(adapterView);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
        m4085a(absListView, this.f3720j);
        if (this.f3713c != null) {
            this.f3713c.onScroll(absListView, i, i2, i3);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i) {
        int i2;
        View view;
        this.f3720j = i;
        m4085a(absListView, i);
        if (absListView instanceof ExpandableListView) {
            ExpandableListView expandableListView = (ExpandableListView) absListView;
            expandableListView.setTag(InterfaceC1108d.f3725B, Integer.valueOf(i));
            if (i == 0) {
                int firstVisiblePosition = expandableListView.getFirstVisiblePosition();
                int lastVisiblePosition = expandableListView.getLastVisiblePosition() - firstVisiblePosition;
                ExpandableListAdapter expandableListAdapter = expandableListView.getExpandableListAdapter();
                int i3 = 0;
                while (i3 <= lastVisiblePosition) {
                    long expandableListPosition = expandableListView.getExpandableListPosition(i3 + firstVisiblePosition);
                    int packedPositionGroup = ExpandableListView.getPackedPositionGroup(expandableListPosition);
                    int packedPositionChild = ExpandableListView.getPackedPositionChild(expandableListPosition);
                    if (packedPositionGroup >= 0) {
                        View childAt = expandableListView.getChildAt(i3);
                        Long l = (Long) childAt.getTag(InterfaceC1108d.f3725B);
                        if (l != null && l.longValue() == expandableListPosition) {
                            if (packedPositionChild == -1) {
                                expandableListAdapter.getGroupView(packedPositionGroup, expandableListView.isGroupExpanded(packedPositionGroup), childAt, expandableListView);
                                view = childAt;
                                i2 = i3;
                            } else {
                                view = childAt;
                                i2 = i3;
                                expandableListAdapter.getChildView(packedPositionGroup, packedPositionChild, packedPositionChild == expandableListAdapter.getChildrenCount(packedPositionGroup) - 1, childAt, expandableListView);
                            }
                            view.setTag(InterfaceC1108d.f3725B, null);
                            i3 = i2 + 1;
                        }
                    }
                    i2 = i3;
                    i3 = i2 + 1;
                }
            }
        } else {
            absListView.setTag(InterfaceC1108d.f3725B, Integer.valueOf(i));
            if (i == 0) {
                int firstVisiblePosition2 = absListView.getFirstVisiblePosition();
                int lastVisiblePosition2 = absListView.getLastVisiblePosition() - firstVisiblePosition2;
                ListAdapter listAdapter = (ListAdapter) absListView.getAdapter();
                for (int i4 = 0; i4 <= lastVisiblePosition2; i4++) {
                    long j = i4 + firstVisiblePosition2;
                    View childAt2 = absListView.getChildAt(i4);
                    if (((Number) childAt2.getTag(InterfaceC1108d.f3725B)) != null) {
                        listAdapter.getView((int) j, childAt2, absListView);
                        childAt2.setTag(InterfaceC1108d.f3725B, null);
                    }
                }
            }
        }
        if (this.f3713c != null) {
            this.f3713c.onScrollStateChanged(absListView, i);
        }
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        m4083a(charSequence, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    @Override // java.lang.Runnable
    public final void run() {
        m4083a(new Object[0]);
    }
}
