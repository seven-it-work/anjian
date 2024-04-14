package org.litepal.p239c;

/* renamed from: org.litepal.c.c */
/* loaded from: classes.dex */
public final class C3022c extends RuntimeException {
    public static final String APPLICATION_CONTEXT_IS_NULL = "Application context is null. Maybe you neither configured your application name with \"org.litepal.LitePalApplication\" in your AndroidManifest.xml, nor called LitePal.initialize(Context) method.";
    private static final long serialVersionUID = 1;

    public C3022c(String str) {
        super(str);
    }
}
