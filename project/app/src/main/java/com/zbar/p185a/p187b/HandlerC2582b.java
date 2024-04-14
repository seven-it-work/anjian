package com.zbar.p185a.p187b;

import android.graphics.Bitmap;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.cyjh.elfin.p085ui.activity.SweepCodeActivity;
import com.hjol.R;
import com.zbar.lib.ZbarManager;
import com.zbar.p185a.p188c.C2588c;
import java.io.File;
import java.io.FileOutputStream;

/* renamed from: com.zbar.a.b.b */
/* loaded from: classes.dex */
final class HandlerC2582b extends Handler {

    /* renamed from: a */
    SweepCodeActivity f10011a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public HandlerC2582b(SweepCodeActivity sweepCodeActivity) {
        this.f10011a = null;
        this.f10011a = sweepCodeActivity;
    }

    /* renamed from: a */
    private void m11657a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[bArr.length];
        for (int i3 = 0; i3 < i2; i3++) {
            for (int i4 = 0; i4 < i; i4++) {
                bArr2[(((i4 * i2) + i2) - i3) - 1] = bArr[(i3 * i) + i4];
            }
        }
        String decode = new ZbarManager().decode(bArr2, i2, i, true, this.f10011a.f5234j, this.f10011a.f5235k, this.f10011a.f5236l, this.f10011a.f5237m);
        if (decode == null) {
            if (this.f10011a.f5228d != null) {
                this.f10011a.f5228d.sendEmptyMessage(R.id.decode_failed);
                return;
            }
            return;
        }
        if (this.f10011a.f5230f) {
            C2588c c2588c = new C2588c(bArr2, i2, i, this.f10011a.f5234j, this.f10011a.f5235k, this.f10011a.f5236l, this.f10011a.f5237m);
            int i5 = c2588c.f10021a / 2;
            int i6 = c2588c.f10022b / 2;
            int[] iArr = new int[i5 * i6];
            byte[] bArr3 = c2588c.f10024c;
            int i7 = (c2588c.f10027f * c2588c.f10025d) + c2588c.f10026e;
            for (int i8 = 0; i8 < i6; i8++) {
                int i9 = i8 * i5;
                for (int i10 = 0; i10 < i5; i10++) {
                    iArr[i9 + i10] = ((bArr3[(i10 * 2) + i7] & 255) * 65793) | (-16777216);
                }
                i7 += c2588c.f10025d * 2;
            }
            int i11 = c2588c.f10021a / 2;
            Bitmap createBitmap = Bitmap.createBitmap(iArr, 0, i11, i11, c2588c.f10022b / 2, Bitmap.Config.ARGB_8888);
            try {
                String str = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Qrcode/";
                File file = new File(str);
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(str + "Qrcode.jpg");
                if (file2.exists()) {
                    file2.delete();
                }
                file2.createNewFile();
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                createBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                fileOutputStream.flush();
                fileOutputStream.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (this.f10011a.f5228d != null) {
            Message message = new Message();
            message.obj = decode;
            message.what = R.id.decode_succeeded;
            this.f10011a.f5228d.sendMessage(message);
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i != R.id.decode) {
            if (i != R.id.quit) {
                return;
            }
            Looper.myLooper().quit();
            return;
        }
        byte[] bArr = (byte[]) message.obj;
        int i2 = message.arg1;
        int i3 = message.arg2;
        byte[] bArr2 = new byte[bArr.length];
        for (int i4 = 0; i4 < i3; i4++) {
            for (int i5 = 0; i5 < i2; i5++) {
                bArr2[(((i5 * i3) + i3) - i4) - 1] = bArr[(i4 * i2) + i5];
            }
        }
        String decode = new ZbarManager().decode(bArr2, i3, i2, true, this.f10011a.f5234j, this.f10011a.f5235k, this.f10011a.f5236l, this.f10011a.f5237m);
        if (decode == null) {
            if (this.f10011a.f5228d != null) {
                this.f10011a.f5228d.sendEmptyMessage(R.id.decode_failed);
                return;
            }
            return;
        }
        if (this.f10011a.f5230f) {
            C2588c c2588c = new C2588c(bArr2, i3, i2, this.f10011a.f5234j, this.f10011a.f5235k, this.f10011a.f5236l, this.f10011a.f5237m);
            int i6 = c2588c.f10021a / 2;
            int i7 = c2588c.f10022b / 2;
            int[] iArr = new int[i6 * i7];
            byte[] bArr3 = c2588c.f10024c;
            int i8 = (c2588c.f10027f * c2588c.f10025d) + c2588c.f10026e;
            for (int i9 = 0; i9 < i7; i9++) {
                int i10 = i9 * i6;
                for (int i11 = 0; i11 < i6; i11++) {
                    iArr[i10 + i11] = ((bArr3[(i11 * 2) + i8] & 255) * 65793) | (-16777216);
                }
                i8 += c2588c.f10025d * 2;
            }
            int i12 = c2588c.f10021a / 2;
            Bitmap createBitmap = Bitmap.createBitmap(iArr, 0, i12, i12, c2588c.f10022b / 2, Bitmap.Config.ARGB_8888);
            try {
                String str = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Qrcode/";
                File file = new File(str);
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(str + "Qrcode.jpg");
                if (file2.exists()) {
                    file2.delete();
                }
                file2.createNewFile();
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                createBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                fileOutputStream.flush();
                fileOutputStream.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (this.f10011a.f5228d != null) {
            Message message2 = new Message();
            message2.obj = decode;
            message2.what = R.id.decode_succeeded;
            this.f10011a.f5228d.sendMessage(message2);
        }
    }
}
