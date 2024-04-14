package com.google.p130a.p149g.p150a.p151a.p152a;

/* renamed from: com.google.a.g.a.a.a.m */
/* loaded from: classes.dex */
final class C1919m {

    /* renamed from: a */
    int f7482a = 0;

    /* renamed from: b */
    int f7483b = a.NUMERIC$1376b33b;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* renamed from: com.google.a.g.a.a.a.m$a */
    /* loaded from: classes.dex */
    public static final class a {
        public static final int NUMERIC$1376b33b = 1;
        public static final int ALPHA$1376b33b = 2;
        public static final int ISO_IEC_646$1376b33b = 3;
        private static final /* synthetic */ int[] $VALUES$3d17980a = {NUMERIC$1376b33b, ALPHA$1376b33b, ISO_IEC_646$1376b33b};

        private a(String str, int i) {
        }

        public static int[] values$3fa6840b() {
            return (int[]) $VALUES$3d17980a.clone();
        }
    }

    /* renamed from: a */
    private int m8744a() {
        return this.f7482a;
    }

    /* renamed from: b */
    private void m8745b(int i) {
        this.f7482a = i;
    }

    /* renamed from: b */
    private boolean m8746b() {
        return this.f7483b == a.ALPHA$1376b33b;
    }

    /* renamed from: c */
    private boolean m8747c() {
        return this.f7483b == a.NUMERIC$1376b33b;
    }

    /* renamed from: d */
    private boolean m8748d() {
        return this.f7483b == a.ISO_IEC_646$1376b33b;
    }

    /* renamed from: e */
    private void m8749e() {
        this.f7483b = a.NUMERIC$1376b33b;
    }

    /* renamed from: f */
    private void m8750f() {
        this.f7483b = a.ALPHA$1376b33b;
    }

    /* renamed from: g */
    private void m8751g() {
        this.f7483b = a.ISO_IEC_646$1376b33b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m8752a(int i) {
        this.f7482a += i;
    }
}
