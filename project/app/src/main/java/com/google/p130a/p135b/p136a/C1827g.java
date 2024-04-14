package com.google.p130a.p135b.p136a;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: com.google.a.b.a.g */
/* loaded from: classes.dex */
public final class C1827g extends AbstractC1837q {

    /* renamed from: a */
    private static final Pattern f7181a = Pattern.compile("P(?:(\\d+)W)?(?:(\\d+)D)?(?:T(?:(\\d+)H)?(?:(\\d+)M)?(?:(\\d+)S)?)?");

    /* renamed from: b */
    private static final long[] f7182b = {604800000, 86400000, 3600000, 60000, 1000};

    /* renamed from: c */
    private static final Pattern f7183c = Pattern.compile("[0-9]{8}(T[0-9]{6}Z?)?");

    /* renamed from: d */
    private final String f7184d;

    /* renamed from: e */
    private final long f7185e;

    /* renamed from: f */
    private final boolean f7186f;

    /* renamed from: g */
    private final long f7187g;

    /* renamed from: h */
    private final boolean f7188h;

    /* renamed from: i */
    private final String f7189i;

    /* renamed from: j */
    private final String f7190j;

    /* renamed from: k */
    private final String[] f7191k;

    /* renamed from: l */
    private final String f7192l;

    /* renamed from: m */
    private final double f7193m;

    /* renamed from: n */
    private final double f7194n;

    public C1827g(String str, String str2, String str3, String str4, String str5, String str6, String[] strArr, String str7, double d, double d2) {
        super(C1838r.CALENDAR$3fc7421e);
        this.f7184d = str;
        try {
            this.f7185e = m8336a(str2);
            if (str3 == null) {
                long m8335a = m8335a((CharSequence) str4);
                this.f7187g = m8335a < 0 ? -1L : this.f7185e + m8335a;
            } else {
                try {
                    this.f7187g = m8336a(str3);
                } catch (ParseException e) {
                    throw new IllegalArgumentException(e.toString());
                }
            }
            boolean z = false;
            this.f7186f = str2.length() == 8;
            if (str3 != null && str3.length() == 8) {
                z = true;
            }
            this.f7188h = z;
            this.f7189i = str5;
            this.f7190j = str6;
            this.f7191k = strArr;
            this.f7192l = str7;
            this.f7193m = d;
            this.f7194n = d2;
        } catch (ParseException e2) {
            throw new IllegalArgumentException(e2.toString());
        }
    }

    /* renamed from: a */
    private static long m8335a(CharSequence charSequence) {
        if (charSequence == null) {
            return -1L;
        }
        Matcher matcher = f7181a.matcher(charSequence);
        if (!matcher.matches()) {
            return -1L;
        }
        long j = 0;
        int i = 0;
        while (i < f7182b.length) {
            int i2 = i + 1;
            if (matcher.group(i2) != null) {
                j += f7182b[i] * Integer.parseInt(r4);
            }
            i = i2;
        }
        return j;
    }

    /* renamed from: a */
    private static long m8336a(String str) throws ParseException {
        if (!f7183c.matcher(str).matches()) {
            throw new ParseException(str, 0);
        }
        if (str.length() == 8) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.ENGLISH);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            return simpleDateFormat.parse(str).getTime();
        }
        if (str.length() != 16 || str.charAt(15) != 'Z') {
            return m8338b(str);
        }
        long m8338b = m8338b(str.substring(0, 15));
        long j = m8338b + r7.get(15);
        new GregorianCalendar().setTime(new Date(j));
        return j + r7.get(16);
    }

    /* renamed from: a */
    private static String m8337a(boolean z, long j) {
        if (j < 0) {
            return null;
        }
        return (z ? DateFormat.getDateInstance(2) : DateFormat.getDateTimeInstance(2, 2)).format(Long.valueOf(j));
    }

    /* renamed from: b */
    private static long m8338b(String str) throws ParseException {
        return new SimpleDateFormat("yyyyMMdd'T'HHmmss", Locale.ENGLISH).parse(str).getTime();
    }

    /* renamed from: b */
    private String m8339b() {
        return this.f7184d;
    }

    @Deprecated
    /* renamed from: c */
    private Date m8340c() {
        return new Date(this.f7185e);
    }

    /* renamed from: d */
    private long m8341d() {
        return this.f7185e;
    }

    /* renamed from: e */
    private boolean m8342e() {
        return this.f7186f;
    }

    @Deprecated
    /* renamed from: f */
    private Date m8343f() {
        if (this.f7187g < 0) {
            return null;
        }
        return new Date(this.f7187g);
    }

    /* renamed from: g */
    private long m8344g() {
        return this.f7187g;
    }

    /* renamed from: h */
    private boolean m8345h() {
        return this.f7188h;
    }

    /* renamed from: i */
    private String m8346i() {
        return this.f7189i;
    }

    /* renamed from: j */
    private String m8347j() {
        return this.f7190j;
    }

    /* renamed from: k */
    private String[] m8348k() {
        return this.f7191k;
    }

    /* renamed from: l */
    private String m8349l() {
        return this.f7192l;
    }

    /* renamed from: m */
    private double m8350m() {
        return this.f7193m;
    }

    /* renamed from: n */
    private double m8351n() {
        return this.f7194n;
    }

    @Override // com.google.p130a.p135b.p136a.AbstractC1837q
    /* renamed from: a */
    public final String mo8262a() {
        StringBuilder sb = new StringBuilder(100);
        m8390a(this.f7184d, sb);
        m8390a(m8337a(this.f7186f, this.f7185e), sb);
        m8390a(m8337a(this.f7188h, this.f7187g), sb);
        m8390a(this.f7189i, sb);
        m8390a(this.f7190j, sb);
        m8391a(this.f7191k, sb);
        m8390a(this.f7192l, sb);
        return sb.toString();
    }
}
