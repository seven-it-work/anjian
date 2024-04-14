package com.p021b.p022a.p023a.p026c;

import com.p021b.p022a.p023a.C0650c;
import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* renamed from: com.b.a.a.c.d */
/* loaded from: classes.dex */
public final class C0654d {

    /* renamed from: a */
    private static final ThreadLocal<DateFormat> f1517a = new C0655e();

    /* renamed from: b */
    private static final String[] f1518b = {"EEE, dd MMM yyyy HH:mm:ss zzz", "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z"};

    /* renamed from: c */
    private static final DateFormat[] f1519c = new DateFormat[15];

    /* renamed from: a */
    public static String m1630a(Date date) {
        return f1517a.get().format(date);
    }

    /* renamed from: a */
    public static Date m1631a(String str) {
        if (str.length() == 0) {
            return null;
        }
        ParsePosition parsePosition = new ParsePosition(0);
        Date parse = f1517a.get().parse(str, parsePosition);
        if (parsePosition.getIndex() == str.length()) {
            return parse;
        }
        synchronized (f1518b) {
            int length = f1518b.length;
            for (int i = 0; i < length; i++) {
                DateFormat dateFormat = f1519c[i];
                if (dateFormat == null) {
                    dateFormat = new SimpleDateFormat(f1518b[i], Locale.US);
                    dateFormat.setTimeZone(C0650c.f1504f);
                    f1519c[i] = dateFormat;
                }
                parsePosition.setIndex(0);
                Date parse2 = dateFormat.parse(str, parsePosition);
                if (parsePosition.getIndex() != 0) {
                    return parse2;
                }
            }
            return null;
        }
    }
}
