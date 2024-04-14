package mobi.oneway.export.p196c;

import android.support.annotation.NonNull;
import java.lang.Thread;

/* renamed from: mobi.oneway.export.c.d */
/* loaded from: classes2.dex */
public class C2662d implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    private Thread.UncaughtExceptionHandler f10220a = Thread.getDefaultUncaughtExceptionHandler();

    /* renamed from: b */
    private C2659a f10221b;

    public C2662d(C2659a c2659a) {
        this.f10221b = c2659a;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(@NonNull Thread thread, @NonNull Throwable th) {
        this.f10221b.m11970a(th);
        if (this.f10220a != null) {
            this.f10220a.uncaughtException(thread, th);
        }
    }
}
