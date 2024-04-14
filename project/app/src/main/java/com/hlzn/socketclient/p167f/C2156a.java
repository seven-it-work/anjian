package com.hlzn.socketclient.p167f;

import android.support.v4.media.session.PlaybackStateCompat;
import com.umeng.commonsdk.proguard.C2489bg;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;

/* renamed from: com.hlzn.socketclient.f.a */
/* loaded from: classes.dex */
public final class C2156a {
    /* renamed from: a */
    public static int m9570a(String str) {
        String upperCase = str.toUpperCase();
        int i = 0;
        for (int length = upperCase.length(); length > 0; length--) {
            char charAt = upperCase.charAt(length - 1);
            i = (int) (i + (Math.pow(16.0d, r0 - length) * ((charAt < '0' || charAt > '9') ? charAt - '7' : charAt - '0')));
        }
        return i;
    }

    /* renamed from: a */
    private static int m9571a(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* renamed from: a */
    private static long m9572a(InputStream inputStream, long j) {
        byte[] bArr = new byte[2048];
        if (j <= 0) {
            return 0L;
        }
        long j2 = j;
        int i = 0;
        while (j2 > 0) {
            try {
                i = inputStream.read(bArr, 0, (int) Math.min((long) PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH, j2));
            } catch (IOException e) {
                e.printStackTrace();
            }
            if (i < 0) {
                break;
            }
            j2 -= i;
        }
        return j - j2;
    }

    /* renamed from: a */
    public static String m9573a(byte[] bArr) {
        StringBuilder sb;
        if (bArr == null) {
            throw new IllegalArgumentException("Argument b ( byte array ) is null! ");
        }
        String str = "";
        for (byte b2 : bArr) {
            String hexString = Integer.toHexString(b2 & 255);
            if (hexString.length() == 1) {
                sb = new StringBuilder();
                sb.append(str);
                str = "0";
            } else {
                sb = new StringBuilder();
            }
            sb.append(str);
            sb.append(hexString);
            str = sb.toString();
        }
        return str.toUpperCase();
    }

    /* renamed from: a */
    public static byte[] m9574a(int i) {
        return new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 24) & 255)};
    }

    /* renamed from: a */
    private static byte[] m9575a(int i, ByteOrder byteOrder) {
        byte[] bArr = new byte[4];
        if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
            bArr[3] = (byte) ((i >> 24) & 255);
            bArr[2] = (byte) ((i >> 16) & 255);
            bArr[1] = (byte) ((i >> 8) & 255);
            bArr[0] = (byte) (i & 255);
            return bArr;
        }
        bArr[0] = (byte) ((i >> 24) & 255);
        bArr[1] = (byte) ((i >> 16) & 255);
        bArr[2] = (byte) ((i >> 8) & 255);
        bArr[3] = (byte) (i & 255);
        return bArr;
    }

    /* renamed from: a */
    private static byte[] m9576a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    /* renamed from: a */
    public static byte[] m9577a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = new byte[bArr.length + bArr2.length + bArr3.length];
        System.arraycopy(bArr, 0, bArr4, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr4, bArr.length, bArr2.length);
        System.arraycopy(bArr3, 0, bArr4, bArr.length + bArr2.length, bArr3.length);
        return bArr4;
    }

    /* renamed from: b */
    private static int m9578b(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    /* renamed from: b */
    public static byte[] m9579b(int i) {
        return new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255)};
    }

    /* renamed from: b */
    private static byte[] m9580b(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }

    /* renamed from: b */
    public static byte[] m9581b(byte[] bArr) {
        if (bArr.length <= 0) {
            return null;
        }
        byte[] bArr2 = new byte[bArr.length];
        int i = 0;
        for (int length = bArr.length - 1; length >= 0; length--) {
            bArr2[i] = bArr[length];
            i++;
        }
        return bArr2;
    }

    /* renamed from: c */
    private static int m9582c(String str) {
        int i = 0;
        for (int length = str.length(); length > 0; length--) {
            i = (int) (i + (Math.pow(2.0d, r0 - length) * ((double) (str.charAt(length - 1) - '0'))));
        }
        return i;
    }

    /* renamed from: c */
    private static String m9583c(byte... bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b2 : bArr) {
            String binaryString = Integer.toBinaryString(b2 | 256);
            int length = binaryString.length();
            stringBuffer.append(binaryString.substring(length - 8, length));
        }
        return stringBuffer.toString();
    }

    /* renamed from: c */
    private static byte[] m9584c(int i) {
        return new byte[]{(byte) ((i >> 24) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 8) & 255), (byte) (i & 255)};
    }

    /* renamed from: d */
    private static String m9585d(String str) {
        char[] charArray = "0123456789ABCDEF".toCharArray();
        StringBuilder sb = new StringBuilder("");
        byte[] bytes = str.getBytes();
        for (int i = 0; i < bytes.length; i++) {
            sb.append(charArray[(bytes[i] & 240) >> 4]);
            sb.append(charArray[bytes[i] & C2489bg.f9370m]);
            sb.append(' ');
        }
        return sb.toString().trim();
    }

    /* renamed from: d */
    private static String m9586d(byte[] bArr) {
        String str = "";
        for (byte b2 : bArr) {
            str = str + ((char) b2);
        }
        return str;
    }

    /* renamed from: e */
    private static String m9587e(String str) {
        char[] charArray = str.toCharArray();
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) ((("0123456789ABCDEF".indexOf(charArray[i2]) * 16) + "0123456789ABCDEF".indexOf(charArray[i2 + 1])) & 255);
        }
        return new String(bArr);
    }
}
