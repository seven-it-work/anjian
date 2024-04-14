package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Environment;
import com.umeng.commonsdk.framework.C2450a;
import com.umeng.commonsdk.statistics.common.C2536e;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;

/* renamed from: com.umeng.commonsdk.proguard.q */
/* loaded from: classes.dex */
public class C2513q {

    /* renamed from: b */
    private static final String f9465b = "/.um/.umm.dat";

    /* renamed from: c */
    private static final String f9466c = "/.uxx/.cca.dat";

    /* renamed from: d */
    private static final String f9467d = "/.cc/.adfwe.dat";

    /* renamed from: e */
    private static final String f9468e = "/.a.dat";

    /* renamed from: f */
    private static final String f9469f = "umdat";

    /* renamed from: a */
    private Context f9470a;

    public C2513q(Context context) {
        this.f9470a = context;
    }

    /* renamed from: a */
    private void m10985a(String str, String str2) {
        if (DeviceConfig.checkPermission(this.f9470a, "android.permission.WRITE_EXTERNAL_STORAGE")) {
            try {
                String externalStorageState = Environment.getExternalStorageState();
                if (externalStorageState == null || !externalStorageState.equalsIgnoreCase("mounted")) {
                    return;
                }
                String m10986b = m10986b(str2);
                if (m10986b == null || !m10986b.equals(str)) {
                    File file = new File(Environment.getExternalStorageDirectory() + str2);
                    if (file.getParentFile() != null && !file.getParentFile().exists()) {
                        file.getParentFile().mkdir();
                    }
                    RandomAccessFile randomAccessFile = new RandomAccessFile(Environment.getExternalStorageDirectory() + str2, "rw");
                    randomAccessFile.setLength((long) str.getBytes().length);
                    FileChannel channel = randomAccessFile.getChannel();
                    FileLock tryLock = channel.tryLock();
                    ByteBuffer allocate = ByteBuffer.allocate(1024);
                    allocate.clear();
                    allocate.put(str.getBytes());
                    allocate.flip();
                    while (allocate.hasRemaining()) {
                        channel.write(allocate);
                    }
                    channel.force(true);
                    if (tryLock != null) {
                        tryLock.release();
                    }
                    channel.close();
                }
            } catch (Exception e) {
                C2536e.m11350e("saveFileUmtt:" + e.getMessage());
            }
        }
    }

    /* renamed from: b */
    private String m10986b(String str) {
        String externalStorageState;
        try {
            if (DeviceConfig.checkPermission(this.f9470a, "android.permission.READ_EXTERNAL_STORAGE") && (externalStorageState = Environment.getExternalStorageState()) != null && externalStorageState.equalsIgnoreCase("mounted")) {
                if (!new File(Environment.getExternalStorageDirectory() + str).exists()) {
                    return null;
                }
                FileChannel channel = new RandomAccessFile(Environment.getExternalStorageDirectory() + str, "rw").getChannel();
                FileLock tryLock = channel.tryLock();
                StringBuilder sb = new StringBuilder();
                ByteBuffer allocate = ByteBuffer.allocate(1024);
                while (true) {
                    allocate.clear();
                    if (channel.read(allocate) == -1) {
                        break;
                    }
                    byte[] bArr = new byte[allocate.position()];
                    for (int i = 0; i < allocate.position(); i++) {
                        bArr[i] = allocate.get(i);
                    }
                    sb.append(new String(bArr));
                }
                if (channel != null) {
                    tryLock.release();
                }
                channel.close();
                return sb.toString();
            }
        } catch (Exception e) {
            C2536e.m11350e("getFileUmtt:" + e.getMessage());
        }
        return null;
    }

    /* renamed from: c */
    private void m10987c(String str) {
        SharedPreferences sharedPreferences = this.f9470a.getApplicationContext().getSharedPreferences(f9469f, 0);
        if (sharedPreferences != null) {
            String string = sharedPreferences.getString("u", null);
            if (string == null || !string.equals(str)) {
                sharedPreferences.edit().putString("u", str).commit();
            }
        }
    }

    /* renamed from: h */
    private String m10988h() {
        return C2450a.m10641a(this.f9470a, C2518v.f9558d, (String) null);
    }

    /* renamed from: i */
    private String m10989i() {
        SharedPreferences sharedPreferences = this.f9470a.getApplicationContext().getSharedPreferences(f9469f, 0);
        if (sharedPreferences != null) {
            return sharedPreferences.getString("u", null);
        }
        return null;
    }

    /* renamed from: a */
    public String m10990a() {
        String m10992b = m10992b();
        if (m10992b == null || m10992b.equals("")) {
            m10992b = m10997g();
        }
        if (m10992b == null || m10992b.equals("")) {
            m10992b = m10993c();
        }
        if (m10992b == null || m10992b.equals("")) {
            m10992b = m10994d();
        }
        if (m10992b == null || m10992b.equals("")) {
            m10992b = m10995e();
        }
        return (m10992b == null || m10992b.equals("")) ? m10996f() : m10992b;
    }

    /* renamed from: a */
    public void m10991a(String str) {
        m10985a(str, f9465b);
        m10985a(str, f9466c);
        m10985a(str, f9467d);
        m10985a(str, f9468e);
        m10987c(str);
    }

    /* renamed from: b */
    public String m10992b() {
        return m10988h();
    }

    /* renamed from: c */
    public String m10993c() {
        return m10986b(f9465b);
    }

    /* renamed from: d */
    public String m10994d() {
        return m10986b(f9466c);
    }

    /* renamed from: e */
    public String m10995e() {
        return m10986b(f9467d);
    }

    /* renamed from: f */
    public String m10996f() {
        return m10986b(f9468e);
    }

    /* renamed from: g */
    public String m10997g() {
        return m10989i();
    }
}
