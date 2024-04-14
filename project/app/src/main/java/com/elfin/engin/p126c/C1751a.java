package com.elfin.engin.p126c;

import com.cyjh.elfin.p073a.C1225b;

/* renamed from: com.elfin.engin.c.a */
/* loaded from: classes.dex */
public final class C1751a {
    /* renamed from: a */
    public static int m8023a(String str, String str2) {
        try {
            Class<?>[] classes = Class.forName(C1225b.f4531w + ".R").getClasses();
            Class<?> cls = null;
            int i = 0;
            while (true) {
                if (i >= classes.length) {
                    break;
                }
                if (classes[i].getName().split("\\$")[1].equals(str)) {
                    cls = classes[i];
                    break;
                }
                i++;
            }
            if (cls != null) {
                return cls.getField(str2).getInt(cls);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return 0;
        } catch (IllegalArgumentException e3) {
            e3.printStackTrace();
            return 0;
        } catch (NoSuchFieldException e4) {
            e4.printStackTrace();
            return 0;
        } catch (SecurityException e5) {
            e5.printStackTrace();
            return 0;
        }
        return 0;
    }
}
