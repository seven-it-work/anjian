package com.sun.mail.util;

import android.support.v7.widget.ActivityChooserView;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class QEncoderStream extends QPEncoderStream {
    private static String TEXT_SPECIALS = "=_?";
    private static String WORD_SPECIALS = "=_?\"#$%&'(),.:;<>@[\\]^`{|}~";
    private String specials;

    public QEncoderStream(OutputStream outputStream, boolean z) {
        super(outputStream, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        this.specials = z ? WORD_SPECIALS : TEXT_SPECIALS;
    }

    public static int encodedLength(byte[] bArr, boolean z) {
        String str = z ? WORD_SPECIALS : TEXT_SPECIALS;
        int i = 0;
        for (byte b2 : bArr) {
            int i2 = b2 & 255;
            i = (i2 < 32 || i2 >= 127 || str.indexOf(i2) >= 0) ? i + 3 : i + 1;
        }
        return i;
    }

    @Override // com.sun.mail.util.QPEncoderStream, java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        int i2 = i & 255;
        boolean z = false;
        if (i2 == 32) {
            i2 = 95;
        } else {
            if (i2 >= 32 && i2 < 127 && this.specials.indexOf(i2) < 0) {
                output(i2, false);
                return;
            }
            z = true;
        }
        output(i2, z);
    }
}
