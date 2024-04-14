package com.umeng.commonsdk.proguard;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* renamed from: com.umeng.commonsdk.proguard.bl */
/* loaded from: classes.dex */
public class C2494bl extends AbstractC2496bn {

    /* renamed from: a */
    protected InputStream f9372a;

    /* renamed from: b */
    protected OutputStream f9373b;

    protected C2494bl() {
        this.f9372a = null;
        this.f9373b = null;
    }

    public C2494bl(InputStream inputStream) {
        this.f9372a = null;
        this.f9373b = null;
        this.f9372a = inputStream;
    }

    public C2494bl(InputStream inputStream, OutputStream outputStream) {
        this.f9372a = null;
        this.f9373b = null;
        this.f9372a = inputStream;
        this.f9373b = outputStream;
    }

    public C2494bl(OutputStream outputStream) {
        this.f9372a = null;
        this.f9373b = null;
        this.f9373b = outputStream;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2496bn
    /* renamed from: a */
    public int mo10862a(byte[] bArr, int i, int i2) throws C2497bo {
        if (this.f9372a == null) {
            throw new C2497bo(1, "Cannot read from null inputStream");
        }
        try {
            int read = this.f9372a.read(bArr, i, i2);
            if (read < 0) {
                throw new C2497bo(4);
            }
            return read;
        } catch (IOException e) {
            throw new C2497bo(0, e);
        }
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2496bn
    /* renamed from: a */
    public boolean mo10863a() {
        return true;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2496bn
    /* renamed from: b */
    public void mo10864b() throws C2497bo {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2496bn
    /* renamed from: b */
    public void mo10865b(byte[] bArr, int i, int i2) throws C2497bo {
        if (this.f9373b == null) {
            throw new C2497bo(1, "Cannot write to null outputStream");
        }
        try {
            this.f9373b.write(bArr, i, i2);
        } catch (IOException e) {
            throw new C2497bo(0, e);
        }
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2496bn
    /* renamed from: c */
    public void mo10866c() {
        if (this.f9372a != null) {
            try {
                this.f9372a.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            this.f9372a = null;
        }
        if (this.f9373b != null) {
            try {
                this.f9373b.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            this.f9373b = null;
        }
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2496bn
    /* renamed from: d */
    public void mo10867d() throws C2497bo {
        if (this.f9373b == null) {
            throw new C2497bo(1, "Cannot flush null outputStream");
        }
        try {
            this.f9373b.flush();
        } catch (IOException e) {
            throw new C2497bo(0, e);
        }
    }
}
