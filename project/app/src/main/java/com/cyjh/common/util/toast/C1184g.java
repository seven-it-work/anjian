package com.cyjh.common.util.toast;

import android.R;
import android.app.Activity;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import java.lang.reflect.Field;

/* renamed from: com.cyjh.common.util.toast.g */
/* loaded from: classes.dex */
public final class C1184g {

    /* renamed from: a */
    private static final int f4136a = -8;

    /* renamed from: b */
    private static long f4137b;

    /* renamed from: c */
    private static int f4138c;

    /* renamed from: com.cyjh.common.util.toast.g$1, reason: invalid class name */
    /* loaded from: classes.dex */
    static class AnonymousClass1 implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        final /* synthetic */ Window f4139a;

        /* renamed from: b */
        final /* synthetic */ int[] f4140b;

        /* renamed from: c */
        final /* synthetic */ a f4141c;

        AnonymousClass1(Window window, int[] iArr, a aVar) {
            this.f4139a = window;
            this.f4140b = iArr;
            this.f4141c = aVar;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            int m4859d = C1184g.m4859d(this.f4139a);
            if (this.f4140b[0] != m4859d) {
                this.f4140b[0] = m4859d;
            }
        }
    }

    /* renamed from: com.cyjh.common.util.toast.g$2, reason: invalid class name */
    /* loaded from: classes.dex */
    static class AnonymousClass2 implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        final /* synthetic */ Window f4142a;

        /* renamed from: b */
        final /* synthetic */ int[] f4143b;

        /* renamed from: c */
        final /* synthetic */ View f4144c;

        /* renamed from: d */
        final /* synthetic */ int f4145d;

        AnonymousClass2(Window window, int[] iArr, View view, int i) {
            this.f4142a = window;
            this.f4143b = iArr;
            this.f4144c = view;
            this.f4145d = i;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            int m4865g = C1184g.m4865g(this.f4142a);
            if (this.f4143b[0] != m4865g) {
                this.f4144c.setPadding(this.f4144c.getPaddingLeft(), this.f4144c.getPaddingTop(), this.f4144c.getPaddingRight(), this.f4145d + C1184g.m4859d(this.f4142a));
                this.f4143b[0] = m4865g;
            }
        }
    }

    /* renamed from: com.cyjh.common.util.toast.g$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void m4867a();
    }

    private C1184g() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: a */
    public static void m4846a() {
        InputMethodManager inputMethodManager = (InputMethodManager) C1194q.m5135a().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        inputMethodManager.toggleSoftInput(0, 0);
    }

    /* renamed from: a */
    public static void m4847a(@NonNull Activity activity) {
        Window window = activity.getWindow();
        InputMethodManager inputMethodManager = (InputMethodManager) C1194q.m5135a().getSystemService("input_method");
        if (inputMethodManager != null) {
            String[] strArr = {"mLastSrvView", "mCurRootView", "mServedView", "mNextServedView"};
            for (int i = 0; i < 4; i++) {
                try {
                    Field declaredField = InputMethodManager.class.getDeclaredField(strArr[i]);
                    if (!declaredField.isAccessible()) {
                        declaredField.setAccessible(true);
                    }
                    Object obj = declaredField.get(inputMethodManager);
                    if ((obj instanceof View) && ((View) obj).getRootView() == window.getDecorView().getRootView()) {
                        declaredField.set(inputMethodManager, null);
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    /* renamed from: a */
    private static void m4848a(@NonNull Activity activity, @NonNull a aVar) {
        Window window = activity.getWindow();
        if ((window.getAttributes().flags & 512) != 0) {
            window.clearFlags(512);
        }
        FrameLayout frameLayout = (FrameLayout) window.findViewById(R.id.content);
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(window, new int[]{m4859d(window)}, aVar);
        frameLayout.getViewTreeObserver().addOnGlobalLayoutListener(anonymousClass1);
        frameLayout.setTag(f4136a, anonymousClass1);
    }

    /* renamed from: a */
    private static void m4849a(@NonNull View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) C1194q.m5135a().getSystemService("input_method");
        if (inputMethodManager != null) {
            view.setFocusable(true);
            view.setFocusableInTouchMode(true);
            view.requestFocus();
            inputMethodManager.showSoftInput(view, 0, new KeyboardUtils$1(new Handler()));
            inputMethodManager.toggleSoftInput(2, 1);
        }
    }

    /* renamed from: a */
    private static void m4850a(@NonNull Window window, @NonNull a aVar) {
        if ((window.getAttributes().flags & 512) != 0) {
            window.clearFlags(512);
        }
        FrameLayout frameLayout = (FrameLayout) window.findViewById(R.id.content);
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(window, new int[]{m4859d(window)}, aVar);
        frameLayout.getViewTreeObserver().addOnGlobalLayoutListener(anonymousClass1);
        frameLayout.setTag(f4136a, anonymousClass1);
    }

    /* renamed from: b */
    private static void m4852b() {
        InputMethodManager inputMethodManager = (InputMethodManager) C1194q.m5135a().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        inputMethodManager.toggleSoftInput(2, 1);
    }

    /* renamed from: b */
    private static void m4853b(@Nullable Activity activity) {
        if (activity == null || m4862e(activity)) {
            return;
        }
        m4846a();
    }

    /* renamed from: b */
    private static void m4854b(@NonNull View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) C1194q.m5135a().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        view.setFocusable(true);
        view.setFocusableInTouchMode(true);
        view.requestFocus();
        inputMethodManager.showSoftInput(view, 0, new KeyboardUtils$1(new Handler()));
        inputMethodManager.toggleSoftInput(2, 1);
    }

    /* renamed from: c */
    private static void m4855c() {
        Log.i("KeyboardUtils", "Please refer to the following code.");
    }

    /* renamed from: c */
    private static void m4856c(@Nullable Activity activity) {
        Window window;
        if (activity == null || (window = activity.getWindow()) == null) {
            return;
        }
        View currentFocus = window.getCurrentFocus();
        if (currentFocus == null) {
            View decorView = window.getDecorView();
            View findViewWithTag = decorView.findViewWithTag("keyboardTagView");
            if (findViewWithTag == null) {
                findViewWithTag = new EditText(window.getContext());
                findViewWithTag.setTag("keyboardTagView");
                ((ViewGroup) decorView).addView(findViewWithTag, 0, 0);
            }
            currentFocus = findViewWithTag;
            currentFocus.requestFocus();
        }
        InputMethodManager inputMethodManager = (InputMethodManager) C1194q.m5135a().getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
        }
    }

    /* renamed from: c */
    private static void m4857c(@NonNull View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) C1194q.m5135a().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    /* renamed from: c */
    private static void m4858c(@Nullable Window window) {
        if (window == null) {
            return;
        }
        View currentFocus = window.getCurrentFocus();
        if (currentFocus == null) {
            View decorView = window.getDecorView();
            View findViewWithTag = decorView.findViewWithTag("keyboardTagView");
            if (findViewWithTag == null) {
                findViewWithTag = new EditText(window.getContext());
                findViewWithTag.setTag("keyboardTagView");
                ((ViewGroup) decorView).addView(findViewWithTag, 0, 0);
            }
            currentFocus = findViewWithTag;
            currentFocus.requestFocus();
        }
        InputMethodManager inputMethodManager = (InputMethodManager) C1194q.m5135a().getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static int m4859d(@NonNull Window window) {
        View decorView = window.getDecorView();
        Rect rect = new Rect();
        decorView.getWindowVisibleDisplayFrame(rect);
        Log.d("KeyboardUtils", "getDecorViewInvisibleHeight: " + (decorView.getBottom() - rect.bottom));
        int abs = Math.abs(decorView.getBottom() - rect.bottom);
        if (abs > C1196s.m5201c() + C1196s.m5193b()) {
            return abs - f4138c;
        }
        f4138c = abs;
        return 0;
    }

    /* renamed from: d */
    private static void m4860d(@Nullable Activity activity) {
        if (activity == null) {
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (Math.abs(elapsedRealtime - f4137b) > 500 && m4862e(activity)) {
            m4846a();
        }
        f4137b = elapsedRealtime;
    }

    /* renamed from: e */
    private static void m4861e(@NonNull Window window) {
        View findViewById = window.findViewById(R.id.content);
        if (findViewById == null) {
            return;
        }
        Object tag = findViewById.getTag(f4136a);
        if (!(tag instanceof ViewTreeObserver.OnGlobalLayoutListener) || Build.VERSION.SDK_INT < 16) {
            return;
        }
        findViewById.getViewTreeObserver().removeOnGlobalLayoutListener((ViewTreeObserver.OnGlobalLayoutListener) tag);
    }

    /* renamed from: e */
    private static boolean m4862e(@NonNull Activity activity) {
        return m4859d(activity.getWindow()) > 0;
    }

    /* renamed from: f */
    private static void m4863f(@NonNull Activity activity) {
        Window window = activity.getWindow();
        window.setSoftInputMode(window.getAttributes().softInputMode & (-17));
        FrameLayout frameLayout = (FrameLayout) window.findViewById(R.id.content);
        View childAt = frameLayout.getChildAt(0);
        frameLayout.getViewTreeObserver().addOnGlobalLayoutListener(new AnonymousClass2(window, new int[]{m4865g(window)}, childAt, childAt.getPaddingBottom()));
    }

    /* renamed from: f */
    private static void m4864f(@NonNull Window window) {
        window.setSoftInputMode(window.getAttributes().softInputMode & (-17));
        FrameLayout frameLayout = (FrameLayout) window.findViewById(R.id.content);
        View childAt = frameLayout.getChildAt(0);
        frameLayout.getViewTreeObserver().addOnGlobalLayoutListener(new AnonymousClass2(window, new int[]{m4865g(window)}, childAt, childAt.getPaddingBottom()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public static int m4865g(Window window) {
        View findViewById = window.findViewById(R.id.content);
        if (findViewById == null) {
            return 0;
        }
        Rect rect = new Rect();
        findViewById.getWindowVisibleDisplayFrame(rect);
        Log.d("KeyboardUtils", "getContentViewInvisibleHeight: " + (findViewById.getBottom() - rect.bottom));
        int abs = Math.abs(findViewById.getBottom() - rect.bottom);
        if (abs <= C1196s.m5193b() + C1196s.m5201c()) {
            return 0;
        }
        return abs;
    }

    /* renamed from: h */
    private static void m4866h(@NonNull Window window) {
        InputMethodManager inputMethodManager = (InputMethodManager) C1194q.m5135a().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        String[] strArr = {"mLastSrvView", "mCurRootView", "mServedView", "mNextServedView"};
        for (int i = 0; i < 4; i++) {
            try {
                Field declaredField = InputMethodManager.class.getDeclaredField(strArr[i]);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                Object obj = declaredField.get(inputMethodManager);
                if ((obj instanceof View) && ((View) obj).getRootView() == window.getDecorView().getRootView()) {
                    declaredField.set(inputMethodManager, null);
                }
            } catch (Throwable unused) {
            }
        }
    }
}
