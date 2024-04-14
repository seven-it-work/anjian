package com.cyjh.mobileanjian.rpc;

import com.cyjh.mobileanjian.ipc.rpc.Invocator;
import com.cyjh.mobileanjian.ipc.utils.C1647a;
import com.cyjh.mobileanjian.ipc.utils.C1658l;
import com.cyjh.mobileanjian.ipc.utils.C1662p;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class Rpc {
    public static boolean AsynCall(String str, String str2, String str3, String[] strArr, String[] strArr2) {
        if (C1662p.m7517a(str) || C1662p.m7517a(str2) || C1662p.m7517a(str3) || checkArgs(strArr, strArr2) == -1) {
            return false;
        }
        new StringBuilder("retObj = ").append(Invocator.invoke(str, str2, str3, arrayToList(strArr), arrayToList(strArr2), 0));
        StringBuilder sb = new StringBuilder("已经调用了AsynCall ");
        sb.append(str);
        sb.append(".");
        sb.append(str3);
        return true;
    }

    public static int SimpleCallReturnInt(String str, String str2, String str3) {
        return ((Integer) SynCall(str, str2, str3, null, null, "int")).intValue();
    }

    public static String SimpleCallReturnString(String str, String str2, String str3) {
        return (String) SynCall(str, str2, str3, null, null, "String");
    }

    public static boolean SimpleCallStringParam(boolean z, String str, String str2, String str3, String str4) {
        return z ? SynCall(str, str2, str3, new String[]{"String"}, new String[]{str4}) : AsynCall(str, str2, str3, new String[]{"String"}, new String[]{str4});
    }

    public static boolean SimpleCallStringStringParam(boolean z, String str, String str2, String str3, String str4, String str5) {
        return z ? SynCall(str, str2, str3, new String[]{"String", "String"}, new String[]{str4, str5}) : AsynCall(str, str2, str3, new String[]{"String", "String"}, new String[]{str4, str5});
    }

    public static String SimpleCallStringStringParamReturnString(String str, String str2, String str3, String str4, String str5) {
        String[] strArr;
        String[] strArr2;
        if (str4 == null) {
            return "Use SimpleCallReturnString instead.";
        }
        if (str5 == null) {
            strArr2 = new String[]{String.class.getSimpleName()};
            strArr = new String[]{str4};
        } else {
            strArr = new String[]{str4, str5};
            strArr2 = new String[]{String.class.getSimpleName(), String.class.getSimpleName()};
        }
        return (String) SynCall(str, str2, str3, strArr2, strArr, "String");
    }

    public static Object SynCall(String str, String str2, String str3, String[] strArr, String[] strArr2, String str4) {
        List<String> list;
        List<String> list2;
        if (C1662p.m7517a(str) || C1662p.m7517a(str2) || C1662p.m7517a(str3)) {
            return false;
        }
        int checkArgs = checkArgs(strArr, strArr2);
        if (checkArgs != -1 && C1658l.m7513a(str4) != null) {
            if (checkArgs == 0) {
                List<String> arrayToList = arrayToList(strArr);
                list2 = arrayToList(strArr2);
                list = arrayToList;
            } else {
                list = null;
                list2 = null;
            }
            Object invoke = Invocator.invoke(str, str2, str3, list, list2, 0);
            new StringBuilder("retObj = ").append(invoke);
            try {
                switch (C1658l.m7513a(str4)) {
                    case BOOLEAN:
                        return (Boolean) invoke;
                    case INT:
                        return (Integer) invoke;
                    case LONG:
                        return (Long) invoke;
                    case FLOAT:
                        return (Float) invoke;
                    case DOUBLE:
                        return (Double) invoke;
                    case STRING:
                        return invoke == null ? "" : (String) invoke;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            return true;
        }
        return false;
    }

    public static boolean SynCall(String str, String str2, String str3, String[] strArr, String[] strArr2) {
        SynCall(str, str2, str3, strArr, strArr2, "void");
        return true;
    }

    private static List<String> arrayToList(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(str);
        }
        return arrayList;
    }

    private static int checkArgs(String[] strArr, String[] strArr2) {
        if (C1647a.m7466a(strArr) && C1647a.m7466a(strArr2)) {
            return 1;
        }
        return (C1647a.m7466a(strArr) || C1647a.m7466a(strArr2) || C1647a.m7467b(strArr) || C1647a.m7467b(strArr2) || strArr.length != strArr2.length) ? -1 : 0;
    }
}
