package com.cyjh.common.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView;
import android.view.View;

/* loaded from: classes.dex */
public class MyItemDecoration extends RecyclerView.ItemDecoration {

    /* renamed from: a */
    private Paint f4313a;

    /* renamed from: b */
    private Drawable f4314b;

    /* renamed from: c */
    private int f4315c;

    /* renamed from: d */
    private int f4316d;

    /* renamed from: e */
    private int f4317e;

    private MyItemDecoration(Context context, int i) {
        this.f4316d = 1;
        this.f4317e = 1;
        m5278a(context, i);
    }

    private MyItemDecoration(Context context, int i, int i2, int i3) {
        this.f4316d = 1;
        this.f4317e = 1;
        this.f4315c = i2;
        this.f4316d = i3;
        m5278a(context, i);
    }

    /* renamed from: a */
    private void m5276a(int i) {
        this.f4313a.setColor(i);
    }

    /* renamed from: a */
    private void m5277a(Context context) {
        this.f4313a = new Paint();
        this.f4313a.setFlags(1);
        this.f4313a.setStyle(Paint.Style.FILL);
        this.f4313a.setColor(context.getResources().getColor(this.f4315c));
    }

    /* renamed from: a */
    private void m5278a(Context context, int i) {
        this.f4317e = i;
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("请输入正确的参数");
        }
        this.f4317e = i;
        this.f4313a = new Paint();
        this.f4313a.setFlags(1);
        this.f4313a.setStyle(Paint.Style.FILL);
        this.f4313a.setColor(context.getResources().getColor(this.f4315c));
    }

    /* renamed from: a */
    private void m5279a(Canvas canvas, RecyclerView recyclerView) {
        int paddingLeft = recyclerView.getPaddingLeft();
        int measuredWidth = recyclerView.getMeasuredWidth() - recyclerView.getPaddingRight();
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            canvas.drawRect(paddingLeft, childAt.getBottom() + ((RecyclerView.LayoutParams) childAt.getLayoutParams()).bottomMargin, measuredWidth, this.f4316d + r4, this.f4313a);
        }
    }

    /* renamed from: b */
    private void m5280b(Canvas canvas, RecyclerView recyclerView) {
        int paddingTop = recyclerView.getPaddingTop();
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            canvas.drawRect(childAt.getRight() + ((RecyclerView.LayoutParams) childAt.getLayoutParams()).rightMargin, paddingTop, this.f4316d + r5, childAt.getBottom(), this.f4313a);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        super.getItemOffsets(rect, view, recyclerView, state);
        if (this.f4317e == 1) {
            rect.set(0, 0, 0, this.f4316d);
        } else {
            rect.set(0, 0, this.f4316d, 0);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        super.onDraw(canvas, recyclerView, state);
        int i = 0;
        if (this.f4317e == 0) {
            int paddingTop = recyclerView.getPaddingTop();
            int childCount = recyclerView.getChildCount();
            while (i < childCount) {
                View childAt = recyclerView.getChildAt(i);
                canvas.drawRect(childAt.getRight() + ((RecyclerView.LayoutParams) childAt.getLayoutParams()).rightMargin, paddingTop, this.f4316d + r4, childAt.getBottom(), this.f4313a);
                i++;
            }
            return;
        }
        int paddingLeft = recyclerView.getPaddingLeft();
        int measuredWidth = recyclerView.getMeasuredWidth() - recyclerView.getPaddingRight();
        int childCount2 = recyclerView.getChildCount();
        while (i < childCount2) {
            View childAt2 = recyclerView.getChildAt(i);
            canvas.drawRect(paddingLeft, childAt2.getBottom() + ((RecyclerView.LayoutParams) childAt2.getLayoutParams()).bottomMargin, measuredWidth, this.f4316d + r3, this.f4313a);
            i++;
        }
    }
}
