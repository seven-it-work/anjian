package p003b.p004a.p008d;

import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import p003b.p004a.C0439c;

/* renamed from: b.a.d.d */
/* loaded from: classes.dex */
public final class C0451d {

    /* renamed from: a */
    public static final long f229a = 253402300799999L;

    /* renamed from: b */
    private static final ThreadLocal<DateFormat> f230b = new ThreadLocal<DateFormat>() { // from class: b.a.d.d.1
        /* renamed from: a */
        private static DateFormat m227a() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
            simpleDateFormat.setLenient(false);
            simpleDateFormat.setTimeZone(C0439c.f168f);
            return simpleDateFormat;
        }

        @Override // java.lang.ThreadLocal
        protected final /* synthetic */ DateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
            simpleDateFormat.setLenient(false);
            simpleDateFormat.setTimeZone(C0439c.f168f);
            return simpleDateFormat;
        }
    };

    /* renamed from: c */
    private static final String[] f231c = {"EEE, dd MMM yyyy HH:mm:ss zzz", "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z"};

    /* renamed from: d */
    private static final DateFormat[] f232d = new DateFormat[15];

    private C0451d() {
    }

    /* renamed from: a */
    public static String m225a(Date date) {
        return f230b.get().format(date);
    }

    /* renamed from: a */
    public static Date m226a(String str) {
        if (str.length() == 0) {
            return null;
        }
        ParsePosition parsePosition = new ParsePosition(0);
        Date parse = f230b.get().parse(str, parsePosition);
        if (parsePosition.getIndex() == str.length()) {
            return parse;
        }
        synchronized (f231c) {
            int length = f231c.length;
            for (int i = 0; i < length; i++) {
                DateFormat dateFormat = f232d[i];
                if (dateFormat == null) {
                    dateFormat = new SimpleDateFormat(f231c[i], Locale.US);
                    dateFormat.setTimeZone(C0439c.f168f);
                    f232d[i] = dateFormat;
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
