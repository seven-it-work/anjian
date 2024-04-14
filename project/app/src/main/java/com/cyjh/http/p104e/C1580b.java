package com.cyjh.http.p104e;

import com.cyjh.common.util.C1151ad;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.concurrent.TimeUnit;
import p003b.C0494ac;
import p003b.C0528z;
import p003b.InterfaceC0507e;
import p003b.InterfaceC0508f;

/* renamed from: com.cyjh.http.e.b */
/* loaded from: classes.dex */
public class C1580b {

    /* renamed from: a */
    public static String f5890a = "b";

    /* renamed from: d */
    private static C1580b f5891d;

    /* renamed from: b */
    public final C0528z f5892b = new C0528z.a().m1031a(60, TimeUnit.SECONDS).m1037b(60, TimeUnit.SECONDS).m1039c(60, TimeUnit.SECONDS).m1041e();

    /* renamed from: c */
    public InterfaceC0507e f5893c;

    /* renamed from: e */
    private RandomAccessFile f5894e;

    /* renamed from: f */
    private int f5895f;

    /* renamed from: com.cyjh.http.e.b$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements InterfaceC0508f {

        /* renamed from: a */
        final /* synthetic */ a f5896a;

        /* renamed from: b */
        final /* synthetic */ String f5897b;

        /* renamed from: c */
        final /* synthetic */ String f5898c;

        public AnonymousClass1(a aVar, String str, String str2) {
            this.f5896a = aVar;
            this.f5897b = str;
            this.f5898c = str2;
        }

        /* JADX WARN: Removed duplicated region for block: B:45:0x00d2 A[Catch: IOException -> 0x00f0, TryCatch #6 {IOException -> 0x00f0, blocks: (B:51:0x00cd, B:45:0x00d2, B:46:0x00d5), top: B:50:0x00cd }] */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00cd A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // p003b.InterfaceC0508f
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void mo545a(p003b.InterfaceC0507e r12, p003b.C0496ae r13) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 241
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.cyjh.http.p104e.C1580b.AnonymousClass1.mo545a(b.e, b.ae):void");
        }

        @Override // p003b.InterfaceC0508f
        /* renamed from: a */
        public final void mo546a(IOException iOException) {
            this.f5896a.mo5781a(iOException);
        }
    }

    /* renamed from: com.cyjh.http.e.b$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo5779a(int i);

        /* renamed from: a */
        void mo5780a(File file);

        /* renamed from: a */
        void mo5781a(Exception exc);
    }

    private C1580b() {
    }

    /* renamed from: a */
    public static C1580b m7055a() {
        if (f5891d == null) {
            f5891d = new C1580b();
        }
        return f5891d;
    }

    /* renamed from: a */
    private void m7056a(String str, String str2, String str3, a aVar) {
        C1151ad.m4325c(f5890a, "download 1 --> destFileDir=" + str2 + ",destFileName=" + str3);
        this.f5893c = this.f5892b.mo715a(new C0494ac.a().m599a(str).m606d());
        this.f5893c.mo568a(new AnonymousClass1(aVar, str2, str3));
    }

    /* renamed from: c */
    private void m7058c() {
        if (this.f5893c != null) {
            this.f5893c.mo570c();
        }
    }

    /* renamed from: a */
    public final void m7059a(String str, final String str2, final String str3, int i, final a aVar) {
        C1151ad.m4325c(f5890a, "download 1 --> downLoadLength=" + this.f5895f + ",contentLength=" + i);
        this.f5893c = this.f5892b.mo715a(new C0494ac.a().m599a(str).m606d());
        this.f5893c.mo568a(new InterfaceC0508f() { // from class: com.cyjh.http.e.b.2
            /* JADX WARN: Removed duplicated region for block: B:45:0x00d2 A[Catch: IOException -> 0x00f0, TryCatch #6 {IOException -> 0x00f0, blocks: (B:51:0x00cd, B:45:0x00d2, B:46:0x00d5), top: B:50:0x00cd }] */
            /* JADX WARN: Removed duplicated region for block: B:50:0x00cd A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // p003b.InterfaceC0508f
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void mo545a(p003b.InterfaceC0507e r12, p003b.C0496ae r13) throws java.io.IOException {
                /*
                    Method dump skipped, instructions count: 241
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.cyjh.http.p104e.C1580b.AnonymousClass2.mo545a(b.e, b.ae):void");
            }

            @Override // p003b.InterfaceC0508f
            /* renamed from: a */
            public final void mo546a(IOException iOException) {
                aVar.mo5781a(iOException);
            }
        });
    }
}
