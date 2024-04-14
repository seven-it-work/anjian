package com.cyjh.elfin.sweepcode;

import android.content.Context;
import android.hardware.Camera;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.SurfaceView;

/* loaded from: classes.dex */
public class CameraSurfaceView extends SurfaceView implements SurfaceHolder.Callback {

    /* renamed from: a */
    Context f5013a;

    /* renamed from: b */
    SurfaceHolder f5014b;

    public CameraSurfaceView(Context context) {
        super(context);
        this.f5013a = context;
        m6125a();
    }

    public CameraSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5013a = context;
        m6125a();
    }

    /* renamed from: a */
    private void m6125a() {
        this.f5014b = getHolder();
        this.f5014b.setFormat(-2);
        this.f5014b.setType(3);
        this.f5014b.addCallback(this);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:30|(1:32)(7:43|(8:45|(2:46|(2:48|(1:79)(2:52|53))(1:81))|54|(1:56)(1:77)|57|(2:58|(2:60|(1:73)(2:65|66))(2:75|76))|(1:70)|71)(1:82)|34|35|36|37|38)|33|34|35|36|37|38) */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x01d3, code lost:
    
        r12 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x01d4, code lost:
    
        r12.printStackTrace();
     */
    @Override // android.view.SurfaceHolder.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void surfaceChanged(android.view.SurfaceHolder r12, int r13, int r14, int r15) {
        /*
            Method dump skipped, instructions count: 483
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.elfin.sweepcode.CameraSurfaceView.surfaceChanged(android.view.SurfaceHolder, int, int, int):void");
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        try {
            C1310b.m6134a().f5021a = Camera.open();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        C1310b m6134a = C1310b.m6134a();
        try {
            if (m6134a.f5021a != null) {
                m6134a.f5021a.setPreviewCallback(null);
                m6134a.f5021a.stopPreview();
                m6134a.f5023c = false;
                m6134a.f5021a.release();
                m6134a.f5021a = null;
                m6134a.f5024d.removeCallbacks(null);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
