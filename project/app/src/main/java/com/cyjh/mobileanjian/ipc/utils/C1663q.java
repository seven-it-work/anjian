package com.cyjh.mobileanjian.ipc.utils;

import java.util.HashMap;
import java.util.List;

/* renamed from: com.cyjh.mobileanjian.ipc.utils.q */
/* loaded from: classes.dex */
public final class C1663q {

    /* renamed from: a */
    public static final HashMap<String, Class> f6425a = new HashMap<String, Class>() { // from class: com.cyjh.mobileanjian.ipc.utils.q.1
        {
            put("boolean", Boolean.TYPE);
            put("int", Integer.TYPE);
            put("long", Long.TYPE);
            put("String", String.class);
        }
    };

    /* renamed from: a */
    private static Object m7518a(Class cls, String str) {
        String str2 = null;
        try {
            switch (C1660n.f6423j.f6402b.get(cls).intValue()) {
                case 1:
                    return Boolean.valueOf(Boolean.parseBoolean(str));
                case 2:
                    return Character.valueOf(str.length() > 0 ? str.charAt(0) : ' ');
                case 3:
                    Byte.parseByte(str);
                    break;
                case 4:
                    return Integer.valueOf(Integer.parseInt(str));
                case 5:
                    return Long.valueOf(Long.parseLong(str));
                case 6:
                    return Float.valueOf(Float.parseFloat(str));
                case 7:
                    Double.parseDouble(str);
                    break;
                case 9:
                    if (str == null) {
                        str = "";
                    }
                    str2 = str;
                    break;
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        return str2;
    }

    /* renamed from: a */
    private static Object m7519a(String str, String str2) {
        switch (C1660n.f6423j.f6401a.get(str).intValue()) {
            case 1:
                return Boolean.valueOf(Boolean.parseBoolean(str2));
            case 2:
                if (str2.length() > 0) {
                    return Character.valueOf(str2.charAt(0));
                }
                break;
            case 3:
                Byte.parseByte(str2);
                break;
            case 4:
                return Integer.valueOf(Integer.parseInt(str2));
            case 5:
                return Long.valueOf(Long.parseLong(str2));
            case 6:
                return Float.valueOf(Float.parseFloat(str2));
            case 7:
                Double.parseDouble(str2);
                break;
            case 9:
                return str2;
        }
        return null;
    }

    /* renamed from: a */
    public static Object[] m7520a(List<String> list, List<String> list2) {
        if (list == null || list.size() == 0) {
            return null;
        }
        int size = list.size();
        Object[] objArr = new Object[size];
        for (int i = 0; i < size; i++) {
            Object m7519a = m7519a(list.get(i), list2.get(i));
            objArr[i] = m7519a;
            if (m7519a == null) {
                return null;
            }
        }
        return objArr;
    }

    /* renamed from: a */
    private static Object[] m7521a(Class[] clsArr, String[] strArr) {
        if (clsArr == null || clsArr.length == 0) {
            return null;
        }
        Object[] objArr = new Object[clsArr.length];
        for (int i = 0; i < clsArr.length; i++) {
            Object m7518a = m7518a(clsArr[i], strArr[i]);
            objArr[i] = m7518a;
            if (m7518a == null) {
                return null;
            }
        }
        return objArr;
    }

    /* renamed from: a */
    private static Object[] m7522a(String[] strArr, String[] strArr2) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        Object[] objArr = new Object[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            Object m7519a = m7519a(strArr[i], strArr2[i]);
            objArr[i] = m7519a;
            if (m7519a == null) {
                return null;
            }
        }
        return objArr;
    }
}
