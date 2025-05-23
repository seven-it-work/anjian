package com.cyjh.common.util.toast;

import android.content.res.Resources;
import android.support.annotation.ArrayRes;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import java.util.IllegalFormatException;

/* renamed from: com.cyjh.common.util.toast.n */
/* loaded from: classes.dex */
public final class C1191n {
    private C1191n() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: a */
    private static String m4956a(@StringRes int i) {
        return m4957a(i, (Object[]) null);
    }

    /* renamed from: a */
    public static String m4957a(@StringRes int i, Object... objArr) {
        try {
            return m4958a(C1194q.m5135a().getString(i), objArr);
        } catch (Resources.NotFoundException e) {
            e.printStackTrace();
            return String.valueOf(i);
        }
    }

    /* renamed from: a */
    public static String m4958a(@Nullable String str, Object... objArr) {
        if (str != null && objArr != null && objArr.length > 0) {
            try {
                return String.format(str, objArr);
            } catch (IllegalFormatException e) {
                e.printStackTrace();
            }
        }
        return str;
    }

    /* renamed from: a */
    private static boolean m4959a(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    /* renamed from: a */
    private static boolean m4960a(CharSequence charSequence, CharSequence charSequence2) {
        int length;
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence == null || charSequence2 == null || (length = charSequence.length()) != charSequence2.length()) {
            return false;
        }
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return charSequence.equals(charSequence2);
        }
        for (int i = 0; i < length; i++) {
            if (charSequence.charAt(i) != charSequence2.charAt(i)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    private static boolean m4961a(String str) {
        return str == null || str.trim().length() == 0;
    }

    /* renamed from: a */
    private static boolean m4962a(String str, String str2) {
        return str == null ? str2 == null : str.equalsIgnoreCase(str2);
    }

    /* renamed from: b */
    private static int m4963b(CharSequence charSequence) {
        if (charSequence == null) {
            return 0;
        }
        return charSequence.length();
    }

    /* renamed from: b */
    private static boolean m4964b(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    private static String[] m4965b(@ArrayRes int i) {
        try {
            return C1194q.m5135a().getResources().getStringArray(i);
        } catch (Resources.NotFoundException e) {
            e.printStackTrace();
            return new String[]{String.valueOf(i)};
        }
    }

    /* renamed from: c */
    private static String m4966c(String str) {
        return str == null ? "" : str;
    }

    /* renamed from: d */
    private static String m4967d(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        if (!Character.isLowerCase(str.charAt(0))) {
            return str;
        }
        return ((char) (str.charAt(0) - ' ')) + str.substring(1);
    }

    /* renamed from: e */
    private static String m4968e(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        if (!Character.isUpperCase(str.charAt(0))) {
            return str;
        }
        return String.valueOf((char) (str.charAt(0) + ' ')) + str.substring(1);
    }

    /* renamed from: f */
    private static String m4969f(String str) {
        if (str == null) {
            return "";
        }
        int length = str.length();
        if (length <= 1) {
            return str;
        }
        int i = length >> 1;
        char[] charArray = str.toCharArray();
        for (int i2 = 0; i2 < i; i2++) {
            char c2 = charArray[i2];
            int i3 = (length - i2) - 1;
            charArray[i2] = charArray[i3];
            charArray[i3] = c2;
        }
        return new String(charArray);
    }

    /* renamed from: g */
    private static String m4970g(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        for (int i = 0; i < length; i++) {
            if (charArray[i] == 12288) {
                charArray[i] = ' ';
            } else if (65281 > charArray[i] || charArray[i] > 65374) {
                charArray[i] = charArray[i];
            } else {
                charArray[i] = (char) (charArray[i] - 65248);
            }
        }
        return new String(charArray);
    }

    /* renamed from: h */
    private static String m4971h(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        for (int i = 0; i < length; i++) {
            if (charArray[i] == ' ') {
                charArray[i] = 12288;
            } else if ('!' > charArray[i] || charArray[i] > '~') {
                charArray[i] = charArray[i];
            } else {
                charArray[i] = (char) (charArray[i] + 65248);
            }
        }
        return new String(charArray);
    }
}
