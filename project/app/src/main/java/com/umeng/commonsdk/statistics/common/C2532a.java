package com.umeng.commonsdk.statistics.common;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;

/* renamed from: com.umeng.commonsdk.statistics.common.a */
/* loaded from: classes.dex */
public class C2532a {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.umeng.commonsdk.statistics.common.a$a */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a */
        private final String f9743a;

        /* renamed from: b */
        private final boolean f9744b;

        a(String str, boolean z) {
            this.f9743a = str;
            this.f9744b = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public String m11296b() {
            return this.f9743a;
        }

        /* renamed from: a */
        public final boolean m11297a() {
            return this.f9744b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.umeng.commonsdk.statistics.common.a$b */
    /* loaded from: classes.dex */
    public static final class b implements ServiceConnection {

        /* renamed from: a */
        boolean f9745a;

        /* renamed from: b */
        private final LinkedBlockingQueue<IBinder> f9746b;

        private b() {
            this.f9745a = false;
            this.f9746b = new LinkedBlockingQueue<>(1);
        }

        /* renamed from: a */
        public final IBinder m11298a() throws InterruptedException {
            if (this.f9745a) {
                throw new IllegalStateException();
            }
            this.f9745a = true;
            return this.f9746b.take();
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f9746b.put(iBinder);
            } catch (InterruptedException unused) {
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.umeng.commonsdk.statistics.common.a$c */
    /* loaded from: classes.dex */
    public static final class c implements IInterface {

        /* renamed from: a */
        private IBinder f9747a;

        public c(IBinder iBinder) {
            this.f9747a = iBinder;
        }

        /* renamed from: a */
        public final String m11299a() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f9747a.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        /* renamed from: a */
        public final boolean m11300a(boolean z) throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                obtain.writeInt(z ? 1 : 0);
                this.f9747a.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readInt() != 0;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this.f9747a;
        }
    }

    /* renamed from: a */
    public static String m11293a(Context context) {
        try {
            a m11294b = m11294b(context);
            if (m11294b == null) {
                return null;
            }
            return m11294b.m11296b();
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: b */
    private static a m11294b(Context context) throws Exception {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return null;
        }
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            b bVar = new b();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            if (!context.bindService(intent, bVar, 1)) {
                throw new IOException("Google Play connection failed");
            }
            try {
                try {
                    c cVar = new c(bVar.m11298a());
                    return new a(cVar.m11299a(), cVar.m11300a(true));
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                context.unbindService(bVar);
            }
        } catch (Exception e2) {
            throw e2;
        }
    }
}
