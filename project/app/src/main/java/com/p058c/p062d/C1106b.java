package com.p058c.p062d;

import android.graphics.Bitmap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* renamed from: com.c.d.b */
/* loaded from: classes.dex */
public final class C1106b extends LinkedHashMap<String, Bitmap> {
    private static final long serialVersionUID = 1;
    private int maxCount;
    private int maxPixels;
    private int maxTotalPixels;
    private int pixels;

    public C1106b(int i, int i2, int i3) {
        super(8, 0.75f, true);
        this.maxCount = i;
        this.maxPixels = i2;
        this.maxTotalPixels = i3;
    }

    private int pixels(Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getWidth() * bitmap.getHeight();
    }

    private void shrink() {
        if (this.pixels > this.maxTotalPixels) {
            Iterator<String> it = keySet().iterator();
            while (it.hasNext()) {
                it.next();
                it.remove();
                if (this.pixels <= this.maxTotalPixels) {
                    return;
                }
            }
        }
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        super.clear();
        this.pixels = 0;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Bitmap put(String str, Bitmap bitmap) {
        int pixels = pixels(bitmap);
        if (pixels > this.maxPixels) {
            return null;
        }
        this.pixels += pixels;
        Bitmap bitmap2 = (Bitmap) super.put((C1106b) str, (String) bitmap);
        if (bitmap2 == null) {
            return bitmap2;
        }
        this.pixels -= pixels(bitmap2);
        return bitmap2;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Bitmap remove(Object obj) {
        Bitmap bitmap = (Bitmap) super.remove(obj);
        if (bitmap != null) {
            this.pixels -= pixels(bitmap);
        }
        return bitmap;
    }

    @Override // java.util.LinkedHashMap
    public final boolean removeEldestEntry(Map.Entry<String, Bitmap> entry) {
        if (this.pixels > this.maxTotalPixels || size() > this.maxCount) {
            remove((Object) entry.getKey());
        }
        shrink();
        return false;
    }
}
