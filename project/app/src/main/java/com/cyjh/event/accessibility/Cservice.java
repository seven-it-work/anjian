package com.cyjh.event.accessibility;

import android.accessibilityservice.AccessibilityService;
import android.accessibilityservice.GestureDescription;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.graphics.Path;
import android.graphics.Rect;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.view.KeyEvent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityWindowInfo;
import com.cyjh.event.accessibility.AbstractC1449a;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.slf4j.Marker;

/* loaded from: classes.dex */
public class Cservice extends AccessibilityService {

    /* renamed from: a */
    public static Cservice f5574a;

    /* renamed from: b */
    private final String f5575b = getClass().getName();

    @RequiresApi(api = 14)
    /* renamed from: a */
    private static AccessibilityNodeInfo m6658a(AccessibilityNodeInfo accessibilityNodeInfo, @NonNull AbstractC1449a... abstractC1449aArr) {
        boolean z;
        if (accessibilityNodeInfo == null) {
            return null;
        }
        if (abstractC1449aArr.length == 0) {
            throw new InvalidParameterException("AbstractTF不允许传空");
        }
        for (int i = 0; i < accessibilityNodeInfo.getChildCount(); i++) {
            AccessibilityNodeInfo child = accessibilityNodeInfo.getChild(i);
            if (child != null) {
                int length = abstractC1449aArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        z = true;
                        break;
                    }
                    if (!abstractC1449aArr[i2].mo6683a(child)) {
                        z = false;
                        break;
                    }
                    i2++;
                }
                if (z) {
                    return child;
                }
                AccessibilityNodeInfo m6658a = m6658a(child, abstractC1449aArr);
                child.recycle();
                if (m6658a != null) {
                    return m6658a;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RequiresApi(api = 16)
    @Nullable
    /* renamed from: a */
    private AccessibilityNodeInfo m6659a(@NonNull AbstractC1449a... abstractC1449aArr) {
        AccessibilityNodeInfo m6658a;
        boolean z;
        if (abstractC1449aArr.length == 0) {
            throw new InvalidParameterException("AbstractTF不允许传空");
        }
        AccessibilityNodeInfo rootInActiveWindow = getRootInActiveWindow();
        AccessibilityNodeInfo accessibilityNodeInfo = null;
        if (rootInActiveWindow == null) {
            return null;
        }
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < abstractC1449aArr.length; i3++) {
            if (abstractC1449aArr[i3] instanceof AbstractC1449a.d) {
                i++;
                i2 = i3;
            }
        }
        switch (i) {
            case 0:
                m6658a = m6658a(rootInActiveWindow, abstractC1449aArr);
                break;
            case 1:
                if (abstractC1449aArr.length != 1) {
                    List<AccessibilityNodeInfo> mo6685c = ((AbstractC1449a.d) abstractC1449aArr[i2]).mo6685c(rootInActiveWindow);
                    if (mo6685c == null || mo6685c.size() == 0) {
                        rootInActiveWindow.recycle();
                        return null;
                    }
                    for (AccessibilityNodeInfo accessibilityNodeInfo2 : mo6685c) {
                        if (accessibilityNodeInfo == null) {
                            int length = abstractC1449aArr.length;
                            int i4 = 0;
                            while (true) {
                                if (i4 >= length) {
                                    z = true;
                                } else if (abstractC1449aArr[i4].mo6683a(accessibilityNodeInfo2)) {
                                    i4++;
                                } else {
                                    z = false;
                                }
                            }
                            if (z) {
                                accessibilityNodeInfo = accessibilityNodeInfo2;
                            }
                        }
                        accessibilityNodeInfo2.recycle();
                    }
                    rootInActiveWindow.recycle();
                    return accessibilityNodeInfo;
                }
                m6658a = ((AbstractC1449a.d) abstractC1449aArr[i2]).mo6684b(rootInActiveWindow);
                break;
                break;
            default:
                throw new RuntimeException("由于时间有限，并且多了也没什么用，所以IdTF和TextTF只能有一个");
        }
        rootInActiveWindow.recycle();
        return m6658a;
    }

    /* renamed from: a */
    public static String m6660a(int i) {
        return (i < 7 || i > 16) ? (i < 29 || i > 54) ? i == 17 ? Marker.ANY_MARKER : i == 18 ? "#" : i == 55 ? "," : i == 56 ? "." : i == 68 ? "`" : i == 69 ? "-" : i == 70 ? "=" : i == 71 ? "[" : i == 72 ? "]" : i == 73 ? "\\" : i == 74 ? ";" : i == 75 ? "'" : i == 76 ? "/" : i == 77 ? "@" : "" : String.valueOf((char) (i + 36)) : Integer.toString(i - 7);
    }

    @RequiresApi(24)
    /* renamed from: a */
    private void m6661a(int i, int i2) {
        Path path = new Path();
        float f = (float) (i - 1);
        float f2 = (float) (i2 - 1);
        path.moveTo(f, f2);
        float f3 = i;
        path.lineTo(f3, f2);
        float f4 = i2;
        path.lineTo(f3, f4);
        path.lineTo(f, f4);
        dispatchGesture(new GestureDescription.Builder().addStroke(new GestureDescription.StrokeDescription(path, 0L, 1000L)).build(), null, null);
    }

    @RequiresApi(api = 24)
    /* renamed from: a */
    private void m6662a(int i, int i2, int i3, int i4, int i5) {
        Path path = new Path();
        path.moveTo(i, i2);
        path.lineTo(i3, i4);
        m6673a(path, i5);
    }

    /* renamed from: a */
    private void m6663a(int i, Context context) {
        if (Build.VERSION.SDK_INT >= 16) {
            if (i == 26) {
                performGlobalAction(6);
                return;
            }
            switch (i) {
                case 3:
                    performGlobalAction(2);
                    return;
                case 4:
                    performGlobalAction(1);
                    return;
                default:
                    if (m6660a(i).isEmpty()) {
                        return;
                    }
                    m6674a(m6660a(i), context);
                    return;
            }
        }
    }

    @RequiresApi(api = 14)
    /* renamed from: a */
    private static void m6664a(List<AccessibilityNodeInfo> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<AccessibilityNodeInfo> it = list.iterator();
        while (it.hasNext()) {
            it.next().recycle();
        }
    }

    @RequiresApi(api = 14)
    /* renamed from: a */
    private static void m6665a(List<AccessibilityNodeInfo> list, AccessibilityNodeInfo accessibilityNodeInfo, @NonNull AbstractC1449a... abstractC1449aArr) {
        boolean z;
        if (accessibilityNodeInfo == null || list == null) {
            return;
        }
        if (abstractC1449aArr.length == 0) {
            throw new InvalidParameterException("AbstractTF不允许传空");
        }
        for (int i = 0; i < accessibilityNodeInfo.getChildCount(); i++) {
            AccessibilityNodeInfo child = accessibilityNodeInfo.getChild(i);
            if (child != null) {
                int length = abstractC1449aArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        z = true;
                        break;
                    } else {
                        if (!abstractC1449aArr[i2].mo6683a(child)) {
                            z = false;
                            break;
                        }
                        i2++;
                    }
                }
                if (z) {
                    list.add(child);
                } else {
                    m6665a(list, child, abstractC1449aArr);
                    child.recycle();
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m6666a() {
        return f5574a != null;
    }

    @RequiresApi(api = 14)
    /* renamed from: a */
    private static boolean m6667a(AccessibilityNodeInfo accessibilityNodeInfo) {
        if (accessibilityNodeInfo == null) {
            return false;
        }
        if (accessibilityNodeInfo.isClickable()) {
            accessibilityNodeInfo.performAction(16);
            return true;
        }
        AccessibilityNodeInfo parent = accessibilityNodeInfo.getParent();
        if (parent == null) {
            return false;
        }
        boolean m6667a = m6667a(parent);
        parent.recycle();
        return m6667a;
    }

    @RequiresApi(api = 14)
    /* renamed from: a */
    private boolean m6668a(AccessibilityNodeInfo accessibilityNodeInfo, String str, Context context) {
        if (accessibilityNodeInfo.getChildCount() != 0) {
            for (int i = 0; i < accessibilityNodeInfo.getChildCount(); i++) {
                if (accessibilityNodeInfo.getChild(i) != null) {
                    m6668a(accessibilityNodeInfo.getChild(i), str, context);
                }
            }
        } else if (accessibilityNodeInfo != null && accessibilityNodeInfo.isFocused() && accessibilityNodeInfo.getClassName().toString().compareTo(AbstractC1449a.f5582i) == 0) {
            ((ClipboardManager) context.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("复制", str));
            accessibilityNodeInfo.performAction(1);
            accessibilityNodeInfo.performAction(32768);
            accessibilityNodeInfo.recycle();
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    @RequiresApi(api = 16)
    /* renamed from: b */
    private List<AccessibilityNodeInfo> m6669b(@NonNull AbstractC1449a... abstractC1449aArr) {
        boolean z;
        if (abstractC1449aArr.length == 0) {
            throw new InvalidParameterException("AbstractTF不允许传空");
        }
        ArrayList arrayList = new ArrayList();
        AccessibilityNodeInfo rootInActiveWindow = getRootInActiveWindow();
        if (rootInActiveWindow == null) {
            return arrayList;
        }
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < abstractC1449aArr.length; i3++) {
            if (abstractC1449aArr[i3] instanceof AbstractC1449a.d) {
                i++;
                i2 = i3;
            }
        }
        switch (i) {
            case 0:
                m6665a(arrayList, rootInActiveWindow, abstractC1449aArr);
                break;
            case 1:
                List<AccessibilityNodeInfo> mo6685c = ((AbstractC1449a.d) abstractC1449aArr[i2]).mo6685c(rootInActiveWindow);
                if (mo6685c != null && mo6685c.size() != 0) {
                    if (abstractC1449aArr.length == 1) {
                        arrayList.addAll(mo6685c);
                        break;
                    } else {
                        for (AccessibilityNodeInfo accessibilityNodeInfo : mo6685c) {
                            int length = abstractC1449aArr.length;
                            int i4 = 0;
                            while (true) {
                                if (i4 >= length) {
                                    z = true;
                                } else if (abstractC1449aArr[i4].mo6683a(accessibilityNodeInfo)) {
                                    i4++;
                                } else {
                                    z = false;
                                }
                            }
                            if (z) {
                                arrayList.add(accessibilityNodeInfo);
                            } else {
                                accessibilityNodeInfo.recycle();
                            }
                        }
                        break;
                    }
                }
                break;
            default:
                throw new RuntimeException("由于时间有限，并且多了也没什么用，所以IdTF和TextTF只能有一个");
        }
        rootInActiveWindow.recycle();
        return arrayList;
    }

    @RequiresApi(24)
    /* renamed from: b */
    private void m6670b(AccessibilityNodeInfo accessibilityNodeInfo) {
        Rect rect = AbstractC1449a.f5576c;
        accessibilityNodeInfo.getBoundsInScreen(rect);
        m6672a(rect.centerX(), rect.centerY(), 100);
    }

    /* renamed from: b */
    private AccessibilityNodeInfo[] m6671b() {
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 21) {
            Iterator<AccessibilityWindowInfo> it = getWindows().iterator();
            while (it.hasNext()) {
                AccessibilityNodeInfo root = it.next().getRoot();
                if (root != null) {
                    arrayList.add(root);
                }
            }
        } else if (Build.VERSION.SDK_INT >= 16) {
            arrayList.add(getRootInActiveWindow());
        }
        return (AccessibilityNodeInfo[]) arrayList.toArray(new AccessibilityNodeInfo[arrayList.size()]);
    }

    @RequiresApi(24)
    /* renamed from: a */
    public final void m6672a(int i, int i2, int i3) {
        Path path = new Path();
        path.moveTo((float) (i - 1), (float) (i2 - 1));
        path.lineTo(i + 1, i2 + 1);
        dispatchGesture(new GestureDescription.Builder().addStroke(new GestureDescription.StrokeDescription(path, 50L, i3)).build(), null, null);
    }

    @RequiresApi(24)
    /* renamed from: a */
    public final void m6673a(Path path, long j) {
        dispatchGesture(new GestureDescription.Builder().addStroke(new GestureDescription.StrokeDescription(path, 0L, j)).build(), null, null);
    }

    /* renamed from: a */
    public final void m6674a(String str, Context context) {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 21) {
            Iterator<AccessibilityWindowInfo> it = getWindows().iterator();
            while (it.hasNext()) {
                AccessibilityNodeInfo root = it.next().getRoot();
                if (root != null) {
                    arrayList.add(root);
                }
            }
        } else if (Build.VERSION.SDK_INT >= 16) {
            arrayList.add(getRootInActiveWindow());
        }
        AccessibilityNodeInfo[] accessibilityNodeInfoArr = (AccessibilityNodeInfo[]) arrayList.toArray(new AccessibilityNodeInfo[arrayList.size()]);
        int length = accessibilityNodeInfoArr.length;
        for (int i = 0; i < length && !m6668a(accessibilityNodeInfoArr[i], str, context); i++) {
        }
    }

    @Override // android.accessibilityservice.AccessibilityService
    @RequiresApi(api = 16)
    public void onAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        f5574a = null;
    }

    @Override // android.accessibilityservice.AccessibilityService
    public void onInterrupt() {
        f5574a = null;
    }

    @Override // android.accessibilityservice.AccessibilityService
    protected boolean onKeyEvent(KeyEvent keyEvent) {
        System.out.println("哈哈哈哈" + keyEvent);
        return super.onKeyEvent(keyEvent);
    }

    @Override // android.accessibilityservice.AccessibilityService
    protected void onServiceConnected() {
        super.onServiceConnected();
        f5574a = this;
    }
}
