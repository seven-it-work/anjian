package com.google.p130a.p149g.p150a.p151a.p152a;

import com.google.p130a.C2016m;

/* renamed from: com.google.a.g.a.a.a.r */
/* loaded from: classes.dex */
final class C1924r {

    /* renamed from: a */
    private static final Object f7493a = new Object();

    /* renamed from: b */
    private static final Object[][] f7494b = {new Object[]{"00", 18}, new Object[]{"01", 14}, new Object[]{"02", 14}, new Object[]{"10", f7493a, 20}, new Object[]{"11", 6}, new Object[]{"12", 6}, new Object[]{"13", 6}, new Object[]{"15", 6}, new Object[]{"17", 6}, new Object[]{"20", 2}, new Object[]{"21", f7493a, 20}, new Object[]{"22", f7493a, 29}, new Object[]{"30", f7493a, 8}, new Object[]{"37", f7493a, 8}, new Object[]{"90", f7493a, 30}, new Object[]{"91", f7493a, 30}, new Object[]{"92", f7493a, 30}, new Object[]{"93", f7493a, 30}, new Object[]{"94", f7493a, 30}, new Object[]{"95", f7493a, 30}, new Object[]{"96", f7493a, 30}, new Object[]{"97", f7493a, 30}, new Object[]{"98", f7493a, 30}, new Object[]{"99", f7493a, 30}};

    /* renamed from: c */
    private static final Object[][] f7495c = {new Object[]{"240", f7493a, 30}, new Object[]{"241", f7493a, 30}, new Object[]{"242", f7493a, 6}, new Object[]{"250", f7493a, 30}, new Object[]{"251", f7493a, 30}, new Object[]{"253", f7493a, 17}, new Object[]{"254", f7493a, 20}, new Object[]{"400", f7493a, 30}, new Object[]{"401", f7493a, 30}, new Object[]{"402", 17}, new Object[]{"403", f7493a, 30}, new Object[]{"410", 13}, new Object[]{"411", 13}, new Object[]{"412", 13}, new Object[]{"413", 13}, new Object[]{"414", 13}, new Object[]{"420", f7493a, 20}, new Object[]{"421", f7493a, 15}, new Object[]{"422", 3}, new Object[]{"423", f7493a, 15}, new Object[]{"424", 3}, new Object[]{"425", 3}, new Object[]{"426", 3}};

    /* renamed from: d */
    private static final Object[][] f7496d = {new Object[]{"310", 6}, new Object[]{"311", 6}, new Object[]{"312", 6}, new Object[]{"313", 6}, new Object[]{"314", 6}, new Object[]{"315", 6}, new Object[]{"316", 6}, new Object[]{"320", 6}, new Object[]{"321", 6}, new Object[]{"322", 6}, new Object[]{"323", 6}, new Object[]{"324", 6}, new Object[]{"325", 6}, new Object[]{"326", 6}, new Object[]{"327", 6}, new Object[]{"328", 6}, new Object[]{"329", 6}, new Object[]{"330", 6}, new Object[]{"331", 6}, new Object[]{"332", 6}, new Object[]{"333", 6}, new Object[]{"334", 6}, new Object[]{"335", 6}, new Object[]{"336", 6}, new Object[]{"340", 6}, new Object[]{"341", 6}, new Object[]{"342", 6}, new Object[]{"343", 6}, new Object[]{"344", 6}, new Object[]{"345", 6}, new Object[]{"346", 6}, new Object[]{"347", 6}, new Object[]{"348", 6}, new Object[]{"349", 6}, new Object[]{"350", 6}, new Object[]{"351", 6}, new Object[]{"352", 6}, new Object[]{"353", 6}, new Object[]{"354", 6}, new Object[]{"355", 6}, new Object[]{"356", 6}, new Object[]{"357", 6}, new Object[]{"360", 6}, new Object[]{"361", 6}, new Object[]{"362", 6}, new Object[]{"363", 6}, new Object[]{"364", 6}, new Object[]{"365", 6}, new Object[]{"366", 6}, new Object[]{"367", 6}, new Object[]{"368", 6}, new Object[]{"369", 6}, new Object[]{"390", f7493a, 15}, new Object[]{"391", f7493a, 18}, new Object[]{"392", f7493a, 15}, new Object[]{"393", f7493a, 18}, new Object[]{"703", f7493a, 30}};

    /* renamed from: e */
    private static final Object[][] f7497e = {new Object[]{"7001", 13}, new Object[]{"7002", f7493a, 30}, new Object[]{"7003", 10}, new Object[]{"8001", 14}, new Object[]{"8002", f7493a, 20}, new Object[]{"8003", f7493a, 30}, new Object[]{"8004", f7493a, 30}, new Object[]{"8005", 6}, new Object[]{"8006", 18}, new Object[]{"8007", f7493a, 30}, new Object[]{"8008", f7493a, 12}, new Object[]{"8018", 18}, new Object[]{"8020", f7493a, 25}, new Object[]{"8100", 6}, new Object[]{"8101", 10}, new Object[]{"8102", 2}, new Object[]{"8110", f7493a, 70}, new Object[]{"8200", f7493a, 70}};

    private C1924r() {
    }

    /* renamed from: a */
    private static String m8765a(int i, int i2, String str) throws C2016m {
        if (str.length() < i) {
            throw C2016m.getNotFoundInstance();
        }
        String substring = str.substring(0, i);
        int i3 = i2 + i;
        if (str.length() < i3) {
            throw C2016m.getNotFoundInstance();
        }
        String substring2 = str.substring(i, i3);
        String str2 = "(" + substring + ')' + substring2;
        String m8766a = m8766a(str.substring(i3));
        if (m8766a == null) {
            return str2;
        }
        return str2 + m8766a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m8766a(String str) throws C2016m {
        if (str.isEmpty()) {
            return null;
        }
        if (str.length() < 2) {
            throw C2016m.getNotFoundInstance();
        }
        String substring = str.substring(0, 2);
        for (Object[] objArr : f7494b) {
            if (objArr[0].equals(substring)) {
                return objArr[1] == f7493a ? m8767b(2, ((Integer) objArr[2]).intValue(), str) : m8765a(2, ((Integer) objArr[1]).intValue(), str);
            }
        }
        if (str.length() < 3) {
            throw C2016m.getNotFoundInstance();
        }
        String substring2 = str.substring(0, 3);
        for (Object[] objArr2 : f7495c) {
            if (objArr2[0].equals(substring2)) {
                return objArr2[1] == f7493a ? m8767b(3, ((Integer) objArr2[2]).intValue(), str) : m8765a(3, ((Integer) objArr2[1]).intValue(), str);
            }
        }
        for (Object[] objArr3 : f7496d) {
            if (objArr3[0].equals(substring2)) {
                return objArr3[1] == f7493a ? m8767b(4, ((Integer) objArr3[2]).intValue(), str) : m8765a(4, ((Integer) objArr3[1]).intValue(), str);
            }
        }
        if (str.length() < 4) {
            throw C2016m.getNotFoundInstance();
        }
        String substring3 = str.substring(0, 4);
        for (Object[] objArr4 : f7497e) {
            if (objArr4[0].equals(substring3)) {
                return objArr4[1] == f7493a ? m8767b(4, ((Integer) objArr4[2]).intValue(), str) : m8765a(4, ((Integer) objArr4[1]).intValue(), str);
            }
        }
        throw C2016m.getNotFoundInstance();
    }

    /* renamed from: b */
    private static String m8767b(int i, int i2, String str) throws C2016m {
        String substring = str.substring(0, i);
        int i3 = i2 + i;
        if (str.length() < i3) {
            i3 = str.length();
        }
        String substring2 = str.substring(i, i3);
        String str2 = "(" + substring + ')' + substring2;
        String m8766a = m8766a(str.substring(i3));
        if (m8766a == null) {
            return str2;
        }
        return str2 + m8766a;
    }
}
