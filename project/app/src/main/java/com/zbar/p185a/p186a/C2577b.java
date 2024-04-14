package com.zbar.p185a.p186a;

import android.content.Context;
import android.graphics.Point;
import android.hardware.Camera;
import android.os.Build;
import android.support.v7.widget.ActivityChooserView;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import java.util.regex.Pattern;

/* renamed from: com.zbar.a.a.b */
/* loaded from: classes.dex */
public final class C2577b {

    /* renamed from: a */
    static final String f9982a = "b";

    /* renamed from: g */
    private static final int f9983g = 27;

    /* renamed from: h */
    private static final Pattern f9984h = Pattern.compile(",");

    /* renamed from: b */
    public final Context f9985b;

    /* renamed from: c */
    public Point f9986c;

    /* renamed from: d */
    public Point f9987d;

    /* renamed from: e */
    public int f9988e;

    /* renamed from: f */
    public String f9989f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2577b(Context context) {
        this.f9985b = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m11624a(CharSequence charSequence, int i) {
        int i2 = 0;
        for (String str : f9984h.split(charSequence)) {
            try {
                double parseDouble = Double.parseDouble(str.trim());
                int i3 = (int) (10.0d * parseDouble);
                if (Math.abs(i - parseDouble) < Math.abs(i - i2)) {
                    i2 = i3;
                }
            } catch (NumberFormatException unused) {
                return i;
            }
        }
        return i2;
    }

    /* renamed from: a */
    private Point m11625a() {
        return this.f9987d;
    }

    /* renamed from: a */
    public static Point m11626a(Camera.Parameters parameters, Point point) {
        String str = parameters.get("preview-size-values");
        if (str == null) {
            str = parameters.get("preview-size-value");
        }
        Point m11627a = str != null ? m11627a(str, point) : null;
        return m11627a == null ? new Point((point.x >> 3) << 3, (point.y >> 3) << 3) : m11627a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Point m11627a(CharSequence charSequence, Point point) {
        String[] split = f9984h.split(charSequence);
        int length = split.length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        while (true) {
            if (i >= length) {
                break;
            }
            String trim = split[i].trim();
            int indexOf = trim.indexOf(120);
            if (indexOf >= 0) {
                try {
                    int parseInt = Integer.parseInt(trim.substring(0, indexOf));
                    int parseInt2 = Integer.parseInt(trim.substring(indexOf + 1));
                    int abs = Math.abs(parseInt - point.x) + Math.abs(parseInt2 - point.y);
                    if (abs == 0) {
                        i3 = parseInt2;
                        i2 = parseInt;
                        break;
                    }
                    if (abs < i4) {
                        i3 = parseInt2;
                        i4 = abs;
                        i2 = parseInt;
                    }
                } catch (NumberFormatException unused) {
                    continue;
                }
            }
            i++;
        }
        if (i2 <= 0 || i3 <= 0) {
            return null;
        }
        return new Point(i2, i3);
    }

    /* renamed from: a */
    public static void m11628a(Camera.Parameters parameters) {
        String str;
        int i;
        if (Build.MODEL.contains("Behold II") && C2578c.f9990a == 3) {
            str = "flash-value";
            i = 1;
        } else {
            str = "flash-value";
            i = 2;
        }
        parameters.set(str, i);
        parameters.set("flash-mode", "off");
    }

    /* renamed from: a */
    private void m11629a(Camera camera) {
        Camera.Parameters parameters = camera.getParameters();
        this.f9988e = parameters.getPreviewFormat();
        this.f9989f = parameters.get("preview-format");
        Display defaultDisplay = ((WindowManager) this.f9985b.getSystemService("window")).getDefaultDisplay();
        this.f9986c = new Point(defaultDisplay.getWidth(), defaultDisplay.getHeight());
        Point point = new Point();
        point.x = this.f9986c.x;
        point.y = this.f9986c.y;
        if (this.f9986c.x < this.f9986c.y) {
            point.x = this.f9986c.y;
            point.y = this.f9986c.x;
        }
        String str = parameters.get("preview-size-values");
        if (str == null) {
            str = parameters.get("preview-size-value");
        }
        Point m11627a = str != null ? m11627a(str, point) : null;
        if (m11627a == null) {
            m11627a = new Point((point.x >> 3) << 3, (point.y >> 3) << 3);
        }
        this.f9987d = m11627a;
    }

    /* renamed from: b */
    private Point m11630b() {
        return this.f9986c;
    }

    /* renamed from: b */
    public static void m11631b(Camera.Parameters parameters) {
        String str = parameters.get("zoom-supported");
        if (str == null || Boolean.parseBoolean(str)) {
            String str2 = parameters.get("max-zoom");
            int i = 27;
            if (str2 != null) {
                try {
                    int parseDouble = (int) (Double.parseDouble(str2) * 10.0d);
                    if (27 > parseDouble) {
                        i = parseDouble;
                    }
                } catch (NumberFormatException unused) {
                    Log.w(f9982a, "Bad max-zoom: " + str2);
                }
            }
            String str3 = parameters.get("taking-picture-zoom-max");
            if (str3 != null) {
                try {
                    int parseInt = Integer.parseInt(str3);
                    if (i > parseInt) {
                        i = parseInt;
                    }
                } catch (NumberFormatException unused2) {
                    Log.w(f9982a, "Bad taking-picture-zoom-max: " + str3);
                }
            }
            String str4 = parameters.get("mot-zoom-values");
            if (str4 != null) {
                i = m11624a(str4, i);
            }
            String str5 = parameters.get("mot-zoom-step");
            if (str5 != null) {
                try {
                    int parseDouble2 = (int) (Double.parseDouble(str5.trim()) * 10.0d);
                    if (parseDouble2 > 1) {
                        i -= i % parseDouble2;
                    }
                } catch (NumberFormatException unused3) {
                }
            }
            if (str2 != null || str4 != null) {
                parameters.set("zoom", String.valueOf(i / 10.0d));
            }
            if (str3 != null) {
                parameters.set("taking-picture-zoom", i);
            }
        }
    }

    /* renamed from: b */
    private void m11632b(Camera camera) {
        Camera.Parameters parameters = camera.getParameters();
        parameters.setPreviewSize(this.f9987d.x, this.f9987d.y);
        if (Build.MODEL.contains("Behold II") && C2578c.f9990a == 3) {
            parameters.set("flash-value", 1);
        } else {
            parameters.set("flash-value", 2);
        }
        parameters.set("flash-mode", "off");
        String str = parameters.get("zoom-supported");
        if (str == null || Boolean.parseBoolean(str)) {
            String str2 = parameters.get("max-zoom");
            int i = 27;
            if (str2 != null) {
                try {
                    int parseDouble = (int) (Double.parseDouble(str2) * 10.0d);
                    if (27 > parseDouble) {
                        i = parseDouble;
                    }
                } catch (NumberFormatException unused) {
                    Log.w(f9982a, "Bad max-zoom: " + str2);
                }
            }
            String str3 = parameters.get("taking-picture-zoom-max");
            if (str3 != null) {
                try {
                    int parseInt = Integer.parseInt(str3);
                    if (i > parseInt) {
                        i = parseInt;
                    }
                } catch (NumberFormatException unused2) {
                    Log.w(f9982a, "Bad taking-picture-zoom-max: " + str3);
                }
            }
            String str4 = parameters.get("mot-zoom-values");
            if (str4 != null) {
                i = m11624a(str4, i);
            }
            String str5 = parameters.get("mot-zoom-step");
            if (str5 != null) {
                try {
                    int parseDouble2 = (int) (Double.parseDouble(str5.trim()) * 10.0d);
                    if (parseDouble2 > 1) {
                        i -= i % parseDouble2;
                    }
                } catch (NumberFormatException unused3) {
                }
            }
            if (str2 != null || str4 != null) {
                parameters.set("zoom", String.valueOf(i / 10.0d));
            }
            if (str3 != null) {
                parameters.set("taking-picture-zoom", i);
            }
        }
        camera.setDisplayOrientation(90);
        camera.setParameters(parameters);
    }

    /* renamed from: c */
    private int m11633c() {
        return this.f9988e;
    }

    /* renamed from: d */
    private String m11634d() {
        return this.f9989f;
    }
}
