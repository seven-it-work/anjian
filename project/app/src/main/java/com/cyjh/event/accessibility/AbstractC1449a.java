package com.cyjh.event.accessibility;

import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.cyjh.event.accessibility.a */
/* loaded from: classes.dex */
public abstract class AbstractC1449a<T> {

    /* renamed from: c */
    public static Rect f5576c = new Rect();

    /* renamed from: d */
    public static final String f5577d = "android.view.View";

    /* renamed from: e */
    public static final String f5578e = "android.widget.TextView";

    /* renamed from: f */
    public static final String f5579f = "android.widget.ImageView";

    /* renamed from: g */
    public static final String f5580g = "android.widget.Button";

    /* renamed from: h */
    public static final String f5581h = "android.widget.ImageButton";

    /* renamed from: i */
    public static final String f5582i = "android.widget.EditText";

    /* renamed from: j */
    public static final String f5583j = "android.widget.ListView";

    /* renamed from: k */
    public static final String f5584k = "android.widget.LinearLayout";

    /* renamed from: l */
    public static final String f5585l = "android.view.ViewGroup";

    /* renamed from: m */
    public static final String f5586m = "com.android.systemui";

    /* renamed from: a */
    protected final boolean f5587a;

    /* renamed from: b */
    protected final T f5588b;

    /* renamed from: com.cyjh.event.accessibility.a$a */
    /* loaded from: classes.dex */
    private static class a extends AbstractC1449a<String> {
        public a(@NonNull String str, boolean z) {
            super(str, z, (byte) 0);
        }

        @Override // com.cyjh.event.accessibility.AbstractC1449a
        @RequiresApi(api = 14)
        /* renamed from: a */
        public final boolean mo6683a(AccessibilityNodeInfo accessibilityNodeInfo) {
            return this.f5587a ? accessibilityNodeInfo.getClassName().toString().equals(this.f5588b) : accessibilityNodeInfo.getClassName().toString().contains((CharSequence) this.f5588b);
        }
    }

    /* renamed from: com.cyjh.event.accessibility.a$b */
    /* loaded from: classes.dex */
    private static class b extends AbstractC1449a<String> {
        private b(@NonNull String str, boolean z) {
            super(str, z, (byte) 0);
        }

        /* synthetic */ b(String str, boolean z, byte b2) {
            this(str, z);
        }

        @Override // com.cyjh.event.accessibility.AbstractC1449a
        @RequiresApi(api = 14)
        /* renamed from: a */
        public final boolean mo6683a(AccessibilityNodeInfo accessibilityNodeInfo) {
            CharSequence contentDescription = accessibilityNodeInfo.getContentDescription();
            return this.f5587a ? contentDescription != null && contentDescription.toString().equals(this.f5588b) : contentDescription != null && contentDescription.toString().contains((CharSequence) this.f5588b);
        }
    }

    /* renamed from: com.cyjh.event.accessibility.a$c */
    /* loaded from: classes.dex */
    private static class c extends AbstractC1449a<String> implements d {
        private c(@NonNull String str) {
            super(str, true, (byte) 0);
        }

        /* synthetic */ c(String str, byte b2) {
            this(str);
        }

        @Override // com.cyjh.event.accessibility.AbstractC1449a
        /* renamed from: a */
        public final boolean mo6683a(AccessibilityNodeInfo accessibilityNodeInfo) {
            return true;
        }

        @Override // com.cyjh.event.accessibility.AbstractC1449a.d
        @RequiresApi(api = 18)
        @Nullable
        /* renamed from: b */
        public final AccessibilityNodeInfo mo6684b(AccessibilityNodeInfo accessibilityNodeInfo) {
            List<AccessibilityNodeInfo> findAccessibilityNodeInfosByViewId = accessibilityNodeInfo.findAccessibilityNodeInfosByViewId((String) this.f5588b);
            if (findAccessibilityNodeInfosByViewId == null || findAccessibilityNodeInfosByViewId.size() == 0) {
                return null;
            }
            for (int i = 1; i < findAccessibilityNodeInfosByViewId.size(); i++) {
                findAccessibilityNodeInfosByViewId.get(i).recycle();
            }
            return findAccessibilityNodeInfosByViewId.get(0);
        }

        @Override // com.cyjh.event.accessibility.AbstractC1449a.d
        @RequiresApi(api = 18)
        @Nullable
        /* renamed from: c */
        public final List<AccessibilityNodeInfo> mo6685c(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.findAccessibilityNodeInfosByViewId((String) this.f5588b);
        }
    }

    /* renamed from: com.cyjh.event.accessibility.a$d */
    /* loaded from: classes.dex */
    public interface d {
        @Nullable
        /* renamed from: b */
        AccessibilityNodeInfo mo6684b(AccessibilityNodeInfo accessibilityNodeInfo);

        @Nullable
        /* renamed from: c */
        List<AccessibilityNodeInfo> mo6685c(AccessibilityNodeInfo accessibilityNodeInfo);
    }

    /* renamed from: com.cyjh.event.accessibility.a$e */
    /* loaded from: classes.dex */
    private static class e extends AbstractC1449a<Rect> {
        public e(@NonNull Rect rect) {
            super(rect, true, (byte) 0);
        }

        @Override // com.cyjh.event.accessibility.AbstractC1449a
        @RequiresApi(api = 14)
        /* renamed from: a */
        public final boolean mo6683a(AccessibilityNodeInfo accessibilityNodeInfo) {
            accessibilityNodeInfo.getBoundsInScreen(f5576c);
            return ((Rect) this.f5588b).contains(f5576c);
        }
    }

    /* renamed from: com.cyjh.event.accessibility.a$f */
    /* loaded from: classes.dex */
    private static class f extends AbstractC1449a<String> implements d {
        private f(@NonNull String str, boolean z) {
            super(str, z, (byte) 0);
        }

        /* synthetic */ f(String str, boolean z, byte b2) {
            this(str, z);
        }

        @Override // com.cyjh.event.accessibility.AbstractC1449a
        /* renamed from: a */
        public final boolean mo6683a(AccessibilityNodeInfo accessibilityNodeInfo) {
            return true;
        }

        @Override // com.cyjh.event.accessibility.AbstractC1449a.d
        @RequiresApi(api = 14)
        @Nullable
        /* renamed from: b */
        public final AccessibilityNodeInfo mo6684b(AccessibilityNodeInfo accessibilityNodeInfo) {
            List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText = accessibilityNodeInfo.findAccessibilityNodeInfosByText((String) this.f5588b);
            AccessibilityNodeInfo accessibilityNodeInfo2 = null;
            if (findAccessibilityNodeInfosByText == null || findAccessibilityNodeInfosByText.size() == 0) {
                return null;
            }
            if (!this.f5587a) {
                return findAccessibilityNodeInfosByText.get(0);
            }
            for (AccessibilityNodeInfo accessibilityNodeInfo3 : findAccessibilityNodeInfosByText) {
                if (accessibilityNodeInfo2 == null && accessibilityNodeInfo3.getText() != null && ((String) this.f5588b).equals(accessibilityNodeInfo3.getText().toString())) {
                    accessibilityNodeInfo2 = accessibilityNodeInfo3;
                } else {
                    accessibilityNodeInfo3.recycle();
                }
            }
            return accessibilityNodeInfo2;
        }

        @Override // com.cyjh.event.accessibility.AbstractC1449a.d
        @RequiresApi(api = 14)
        @Nullable
        /* renamed from: c */
        public final List<AccessibilityNodeInfo> mo6685c(AccessibilityNodeInfo accessibilityNodeInfo) {
            List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText = accessibilityNodeInfo.findAccessibilityNodeInfosByText((String) this.f5588b);
            if (findAccessibilityNodeInfosByText == null || findAccessibilityNodeInfosByText.size() == 0) {
                return null;
            }
            if (!this.f5587a) {
                return findAccessibilityNodeInfosByText;
            }
            ArrayList arrayList = new ArrayList();
            for (AccessibilityNodeInfo accessibilityNodeInfo2 : findAccessibilityNodeInfosByText) {
                if (accessibilityNodeInfo2.getText() == null || !((String) this.f5588b).equals(accessibilityNodeInfo2.getText().toString())) {
                    accessibilityNodeInfo2.recycle();
                } else {
                    arrayList.add(accessibilityNodeInfo2);
                }
            }
            return arrayList;
        }
    }

    /* renamed from: com.cyjh.event.accessibility.a$g */
    /* loaded from: classes.dex */
    private static class g extends AbstractC1449a<String> {
        private g(@NonNull String str, boolean z) {
            super(str, z, (byte) 0);
        }

        /* synthetic */ g(String str, boolean z, byte b2) {
            this(str, z);
        }

        @Override // com.cyjh.event.accessibility.AbstractC1449a
        @RequiresApi(api = 14)
        /* renamed from: a */
        public final boolean mo6683a(AccessibilityNodeInfo accessibilityNodeInfo) {
            CharSequence text = accessibilityNodeInfo.getText();
            return this.f5587a ? text != null && text.toString().equals(this.f5588b) : text != null && text.toString().contains((CharSequence) this.f5588b);
        }
    }

    private AbstractC1449a(@NonNull T t, boolean z) {
        this.f5588b = t;
        this.f5587a = z;
    }

    /* synthetic */ AbstractC1449a(Object obj, boolean z, byte b2) {
        this(obj, z);
    }

    /* renamed from: a */
    private static AbstractC1449a m6675a(@NonNull Rect rect) {
        return new e(rect);
    }

    /* renamed from: a */
    private static AbstractC1449a m6676a(@NonNull String str) {
        return new c(str, (byte) 0);
    }

    /* renamed from: a */
    private static AbstractC1449a m6677a(String str, String str2) {
        return new c(str + ":id/" + str2, (byte) 0);
    }

    /* renamed from: a */
    private static AbstractC1449a m6678a(@NonNull String str, boolean z) {
        return new f(str, z, (byte) 0);
    }

    /* renamed from: b */
    private static AbstractC1449a m6679b(@NonNull String str) {
        return new a(str, true);
    }

    /* renamed from: b */
    private static AbstractC1449a m6680b(@NonNull String str, boolean z) {
        return new g(str, z, (byte) 0);
    }

    /* renamed from: c */
    private static AbstractC1449a m6681c(@NonNull String str, boolean z) {
        return new b(str, z, (byte) 0);
    }

    /* renamed from: d */
    private static AbstractC1449a m6682d(@NonNull String str, boolean z) {
        return new a(str, z);
    }

    /* renamed from: a */
    public abstract boolean mo6683a(AccessibilityNodeInfo accessibilityNodeInfo);
}
