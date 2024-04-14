package org.junit;

/* renamed from: org.junit.i */
/* loaded from: classes2.dex */
public final class C2963i extends AssertionError {
    private static final int MAX_CONTEXT_LENGTH = 20;
    private static final long serialVersionUID = 1;
    private String fActual;
    private String fExpected;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.junit.i$a */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: d */
        private static final String f10886d = "...";

        /* renamed from: e */
        private static final String f10887e = "]";

        /* renamed from: f */
        private static final String f10888f = "[";

        /* renamed from: a */
        final int f10889a = 20;

        /* renamed from: b */
        final String f10890b;

        /* renamed from: c */
        final String f10891c;

        /* renamed from: org.junit.i$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private class C3078a {

            /* renamed from: a */
            final String f10892a;

            /* renamed from: b */
            final String f10893b;

            private C3078a() {
                this.f10892a = a.m13322a(a.this);
                this.f10893b = a.m13323a(a.this, this.f10892a);
            }

            /* synthetic */ C3078a(a aVar, byte b2) {
                this();
            }

            /* renamed from: a */
            private String m13328a() {
                return m13332a(a.this.f10890b);
            }

            /* renamed from: b */
            private String m13329b() {
                return m13332a(a.this.f10891c);
            }

            /* renamed from: c */
            private String m13330c() {
                if (this.f10892a.length() <= a.this.f10889a) {
                    return this.f10892a;
                }
                return a.f10886d + this.f10892a.substring(this.f10892a.length() - a.this.f10889a);
            }

            /* renamed from: d */
            private String m13331d() {
                if (this.f10893b.length() <= a.this.f10889a) {
                    return this.f10893b;
                }
                return this.f10893b.substring(0, a.this.f10889a) + a.f10886d;
            }

            /* renamed from: a */
            final String m13332a(String str) {
                return a.f10888f + str.substring(this.f10892a.length(), str.length() - this.f10893b.length()) + a.f10887e;
            }
        }

        public a(String str, String str2) {
            this.f10890b = str;
            this.f10891c = str2;
        }

        /* renamed from: a */
        private String m13320a() {
            int min = Math.min(this.f10890b.length(), this.f10891c.length());
            for (int i = 0; i < min; i++) {
                if (this.f10890b.charAt(i) != this.f10891c.charAt(i)) {
                    return this.f10890b.substring(0, i);
                }
            }
            return this.f10890b.substring(0, min);
        }

        /* renamed from: a */
        private String m13321a(String str) {
            String str2;
            String str3;
            if (this.f10890b == null || this.f10891c == null || this.f10890b.equals(this.f10891c)) {
                return C2911c.m13004a(str, this.f10890b, this.f10891c);
            }
            C3078a c3078a = new C3078a(this, (byte) 0);
            if (c3078a.f10892a.length() <= a.this.f10889a) {
                str2 = c3078a.f10892a;
            } else {
                str2 = f10886d + c3078a.f10892a.substring(c3078a.f10892a.length() - a.this.f10889a);
            }
            if (c3078a.f10893b.length() <= a.this.f10889a) {
                str3 = c3078a.f10893b;
            } else {
                str3 = c3078a.f10893b.substring(0, a.this.f10889a) + f10886d;
            }
            return C2911c.m13004a(str, str2 + c3078a.m13332a(a.this.f10890b) + str3, str2 + c3078a.m13332a(a.this.f10891c) + str3);
        }

        /* renamed from: a */
        static /* synthetic */ String m13322a(a aVar) {
            int min = Math.min(aVar.f10890b.length(), aVar.f10891c.length());
            for (int i = 0; i < min; i++) {
                if (aVar.f10890b.charAt(i) != aVar.f10891c.charAt(i)) {
                    return aVar.f10890b.substring(0, i);
                }
            }
            return aVar.f10890b.substring(0, min);
        }

        /* renamed from: a */
        static /* synthetic */ String m13323a(a aVar, String str) {
            int min = Math.min(aVar.f10890b.length() - str.length(), aVar.f10891c.length() - str.length()) - 1;
            int i = 0;
            while (i <= min && aVar.f10890b.charAt((aVar.f10890b.length() - 1) - i) == aVar.f10891c.charAt((aVar.f10891c.length() - 1) - i)) {
                i++;
            }
            return aVar.f10890b.substring(aVar.f10890b.length() - i);
        }

        /* renamed from: b */
        private String m13324b(String str) {
            int min = Math.min(this.f10890b.length() - str.length(), this.f10891c.length() - str.length()) - 1;
            int i = 0;
            while (i <= min && this.f10890b.charAt((this.f10890b.length() - 1) - i) == this.f10891c.charAt((this.f10891c.length() - 1) - i)) {
                i++;
            }
            return this.f10890b.substring(this.f10890b.length() - i);
        }
    }

    public C2963i(String str, String str2, String str3) {
        super(str);
        this.fExpected = str2;
        this.fActual = str3;
    }

    public final String getActual() {
        return this.fActual;
    }

    public final String getExpected() {
        return this.fExpected;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String str;
        String str2;
        a aVar = new a(this.fExpected, this.fActual);
        String message = super.getMessage();
        if (aVar.f10890b == null || aVar.f10891c == null || aVar.f10890b.equals(aVar.f10891c)) {
            return C2911c.m13004a(message, aVar.f10890b, aVar.f10891c);
        }
        a.C3078a c3078a = new a.C3078a(aVar, (byte) 0);
        if (c3078a.f10892a.length() <= a.this.f10889a) {
            str = c3078a.f10892a;
        } else {
            str = "..." + c3078a.f10892a.substring(c3078a.f10892a.length() - a.this.f10889a);
        }
        if (c3078a.f10893b.length() <= a.this.f10889a) {
            str2 = c3078a.f10893b;
        } else {
            str2 = c3078a.f10893b.substring(0, a.this.f10889a) + "...";
        }
        return C2911c.m13004a(message, str + c3078a.m13332a(a.this.f10890b) + str2, str + c3078a.m13332a(a.this.f10891c) + str2);
    }
}
