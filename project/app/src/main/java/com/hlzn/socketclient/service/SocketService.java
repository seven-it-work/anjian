package com.hlzn.socketclient.service;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.NetworkOnMainThreadException;
import android.text.TextUtils;
import com.google.p130a.p137c.C1867l;
import com.hlzn.socketclient.C2150d;
import com.hlzn.socketclient.C2152e;
import com.hlzn.socketclient.C2155f;
import com.hlzn.socketclient.bean.ServiceParam;
import com.hlzn.socketclient.p162a.C2144a;
import com.hlzn.socketclient.p163b.C2146a;
import com.hlzn.socketclient.p164c.C2149a;
import com.hlzn.socketclient.p166e.InterfaceC2154b;
import com.hlzn.socketclient.p167f.C2156a;
import com.hlzn.socketclient.p167f.C2157b;
import com.hlzn.socketclient.p167f.C2159d;
import com.hlzn.socketclient.p167f.C2160e;
import com.hlzn.socketclient.pbmsg.MessageProtobuf;
import com.lidroid.xutils.util.CharsetUtils;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.LinkedList;
import java.util.Queue;

/* loaded from: classes.dex */
public class SocketService extends Service {

    /* renamed from: a */
    public static Object f8214a = new Object();

    /* renamed from: l */
    public static final int f8215l = 1;

    /* renamed from: m */
    private static final String f8216m = "SocketService";

    /* renamed from: A */
    private Queue<Long> f8217A;

    /* renamed from: B */
    private File f8218B;

    /* renamed from: b */
    public Socket f8219b;

    /* renamed from: c */
    Thread f8220c;

    /* renamed from: d */
    Thread f8221d;

    /* renamed from: e */
    Thread f8222e;

    /* renamed from: f */
    boolean f8223f = false;

    /* renamed from: g */
    boolean f8224g = false;

    /* renamed from: h */
    boolean f8225h = false;

    /* renamed from: i */
    BinderC2197a f8226i = new BinderC2197a(this);

    /* renamed from: j */
    boolean f8227j = false;

    /* renamed from: k */
    public C2152e f8228k;

    /* renamed from: n */
    private Long f8229n;

    /* renamed from: o */
    private String f8230o;

    /* renamed from: p */
    private String f8231p;

    /* renamed from: q */
    private String f8232q;

    /* renamed from: r */
    private ServiceParam f8233r;

    /* renamed from: s */
    private Thread f8234s;

    /* renamed from: t */
    private InetSocketAddress f8235t;

    /* renamed from: u */
    private Queue<Long> f8236u;

    /* renamed from: v */
    private Queue<Long> f8237v;

    /* renamed from: w */
    private Queue<Long> f8238w;

    /* renamed from: x */
    private Queue<Long> f8239x;

    /* renamed from: y */
    private Queue<Long> f8240y;

    /* renamed from: z */
    private Queue<Long> f8241z;

    /* renamed from: com.hlzn.socketclient.service.SocketService$10 */
    /* loaded from: classes.dex */
    final class C218510 extends Thread {
        C218510() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            super.run();
            MessageProtobuf.ScriptStop.Builder newBuilder = MessageProtobuf.ScriptStop.newBuilder();
            C2144a.m9451a();
            C2144a.m9461a(SocketService.this.f8219b, newBuilder.build());
        }
    }

    /* renamed from: com.hlzn.socketclient.service.SocketService$11 */
    /* loaded from: classes.dex */
    final class C218611 extends Thread {

        /* renamed from: a */
        final /* synthetic */ int f8244a;

        /* renamed from: b */
        final /* synthetic */ String f8245b;

        C218611(int i, String str) {
            this.f8244a = i;
            this.f8245b = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            super.run();
            MessageProtobuf.CmdScriptStartResult.Builder newBuilder = MessageProtobuf.CmdScriptStartResult.newBuilder();
            newBuilder.setRpcId(((Long) SocketService.this.f8236u.poll()).longValue()).setError(this.f8244a).setMessage(this.f8245b);
            C2159d.m9593b(SocketService.f8216m, "cmdScriptStartSuccessOperate --> rpcId =" + newBuilder.getRpcId() + ",code=" + this.f8244a + ",msg=" + this.f8245b);
            C2144a m9451a = C2144a.m9451a();
            Socket socket = SocketService.this.f8219b;
            MessageProtobuf.CmdScriptStartResult build = newBuilder.build();
            byte[] m9579b = C2156a.m9579b(10102);
            byte[] byteArray = build.toByteArray();
            byte[] m9577a = C2156a.m9577a(m9579b, C2156a.m9574a(byteArray.length), byteArray);
            C2159d.m9593b(m9451a.f8077a, "cmdScriptStartResult --> binary value = " + ((int) m9579b[1]) + ((int) m9579b[0]));
            if (socket == null || !socket.isConnected()) {
                return;
            }
            try {
                OutputStream outputStream = socket.getOutputStream();
                outputStream.write(m9577a);
                outputStream.flush();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.hlzn.socketclient.service.SocketService$12 */
    /* loaded from: classes.dex */
    final class C218712 extends Thread {

        /* renamed from: a */
        final /* synthetic */ int f8247a;

        /* renamed from: b */
        final /* synthetic */ String f8248b;

        C218712(int i, String str) {
            this.f8247a = i;
            this.f8248b = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            super.run();
            MessageProtobuf.CmdScriptStopResult.Builder newBuilder = MessageProtobuf.CmdScriptStopResult.newBuilder();
            newBuilder.setRpcId(((Long) SocketService.this.f8237v.poll()).longValue()).setError(this.f8247a).setMessage(this.f8248b);
            C2159d.m9593b(SocketService.f8216m, "cmdScriptStopSuccessOperate --> rpcId =" + newBuilder.getRpcId() + ",code=" + this.f8247a + ",msg=" + this.f8248b);
            C2144a m9451a = C2144a.m9451a();
            Socket socket = SocketService.this.f8219b;
            MessageProtobuf.CmdScriptStopResult build = newBuilder.build();
            byte[] m9579b = C2156a.m9579b(10104);
            byte[] byteArray = build.toByteArray();
            byte[] m9577a = C2156a.m9577a(m9579b, C2156a.m9574a(byteArray.length), byteArray);
            C2159d.m9593b(m9451a.f8077a, "cmdScriptStopResult --> binary value = " + ((int) m9579b[1]) + ((int) m9579b[0]));
            if (socket == null || !socket.isConnected()) {
                return;
            }
            try {
                OutputStream outputStream = socket.getOutputStream();
                outputStream.write(m9577a);
                outputStream.flush();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.hlzn.socketclient.service.SocketService$13 */
    /* loaded from: classes.dex */
    final class C218813 extends Thread {

        /* renamed from: a */
        final /* synthetic */ int f8250a;

        /* renamed from: b */
        final /* synthetic */ String f8251b;

        C218813(int i, String str) {
            this.f8250a = i;
            this.f8251b = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            super.run();
            MessageProtobuf.CmdScriptUpgradeResult.Builder newBuilder = MessageProtobuf.CmdScriptUpgradeResult.newBuilder();
            newBuilder.setRpcId(((Long) SocketService.this.f8238w.poll()).longValue()).setError(this.f8250a).setMessage(this.f8251b);
            C2159d.m9593b(SocketService.f8216m, "cmdScriptUpgradeSuccessOperate --> rpcId =" + newBuilder.getRpcId() + ",code=" + this.f8250a + ",msg=" + this.f8251b);
            C2144a m9451a = C2144a.m9451a();
            Socket socket = SocketService.this.f8219b;
            MessageProtobuf.CmdScriptUpgradeResult build = newBuilder.build();
            byte[] m9579b = C2156a.m9579b(10106);
            byte[] byteArray = build.toByteArray();
            byte[] m9577a = C2156a.m9577a(m9579b, C2156a.m9574a(byteArray.length), byteArray);
            C2159d.m9593b(m9451a.f8077a, "cmdScriptUpgradeResult --> binary value = " + ((int) m9579b[1]) + ((int) m9579b[0]));
            if (socket == null || !socket.isConnected()) {
                return;
            }
            try {
                OutputStream outputStream = socket.getOutputStream();
                outputStream.write(m9577a);
                outputStream.flush();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.hlzn.socketclient.service.SocketService$2 */
    /* loaded from: classes.dex */
    final class C21892 extends Thread {

        /* renamed from: a */
        final /* synthetic */ int f8253a;

        /* renamed from: b */
        final /* synthetic */ String f8254b;

        C21892(int i, String str) {
            this.f8253a = i;
            this.f8254b = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            super.run();
            if (SocketService.this.f8239x.size() > 0) {
                MessageProtobuf.CmdScriptSettingsResult.Builder newBuilder = MessageProtobuf.CmdScriptSettingsResult.newBuilder();
                newBuilder.setRpcId(((Long) SocketService.this.f8239x.poll()).longValue()).setError(this.f8253a).setMessage(this.f8254b);
                C2159d.m9593b(SocketService.f8216m, "cmdScriptSettingsSuccessOperate --> rpcId =" + newBuilder.getRpcId() + ",code=" + this.f8253a + ",msg=" + this.f8254b);
                C2144a m9451a = C2144a.m9451a();
                Socket socket = SocketService.this.f8219b;
                MessageProtobuf.CmdScriptSettingsResult build = newBuilder.build();
                byte[] m9579b = C2156a.m9579b(10108);
                byte[] byteArray = build.toByteArray();
                byte[] m9577a = C2156a.m9577a(m9579b, C2156a.m9574a(byteArray.length), byteArray);
                C2159d.m9593b(m9451a.f8077a, "cmdScriptSettingsResult --> binary value = " + ((int) m9579b[1]) + ((int) m9579b[0]));
                if (socket == null || !socket.isConnected()) {
                    return;
                }
                try {
                    OutputStream outputStream = socket.getOutputStream();
                    outputStream.write(m9577a);
                    outputStream.flush();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* renamed from: com.hlzn.socketclient.service.SocketService$3 */
    /* loaded from: classes.dex */
    final class C21903 extends Thread {

        /* renamed from: a */
        final /* synthetic */ int f8256a;

        /* renamed from: b */
        final /* synthetic */ String f8257b;

        C21903(int i, String str) {
            this.f8256a = i;
            this.f8257b = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            super.run();
            try {
                MessageProtobuf.CmdScreenCaptureResult.Builder newBuilder = MessageProtobuf.CmdScreenCaptureResult.newBuilder();
                newBuilder.setRpcId(((Long) SocketService.this.f8240y.poll()).longValue()).setError(this.f8256a).setMessage(this.f8257b);
                C2159d.m9593b(SocketService.f8216m, "cmdScreenCaptureSuccessOperate --> rpcId =" + newBuilder.getRpcId() + ",code=" + this.f8256a + ",msg=" + this.f8257b);
                C2144a m9451a = C2144a.m9451a();
                Socket socket = SocketService.this.f8219b;
                MessageProtobuf.CmdScreenCaptureResult build = newBuilder.build();
                byte[] m9579b = C2156a.m9579b(10110);
                byte[] byteArray = build.toByteArray();
                byte[] m9577a = C2156a.m9577a(m9579b, C2156a.m9574a(byteArray.length), byteArray);
                C2159d.m9593b(m9451a.f8077a, "cmdScreenCaptureResult --> binary value = " + ((int) m9579b[1]) + ((int) m9579b[0]));
                if (socket == null || !socket.isConnected()) {
                    return;
                }
                try {
                    OutputStream outputStream = socket.getOutputStream();
                    outputStream.write(m9577a);
                    outputStream.flush();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    /* renamed from: com.hlzn.socketclient.service.SocketService$4 */
    /* loaded from: classes.dex */
    final class C21914 extends Thread {

        /* renamed from: a */
        final /* synthetic */ int f8259a;

        /* renamed from: b */
        final /* synthetic */ String f8260b;

        C21914(int i, String str) {
            this.f8259a = i;
            this.f8260b = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            super.run();
            MessageProtobuf.CmdUnBindStudioProjectResult.Builder newBuilder = MessageProtobuf.CmdUnBindStudioProjectResult.newBuilder();
            newBuilder.setRpcId(((Long) SocketService.this.f8241z.poll()).longValue()).setError(this.f8259a).setMessage(this.f8260b);
            C2159d.m9593b(SocketService.f8216m, "cmdUnBindStudioProjectSuccessOperate --> rpcId =" + newBuilder.getRpcId() + ",code=" + this.f8259a + ",msg=" + this.f8260b);
            C2144a m9451a = C2144a.m9451a();
            Socket socket = SocketService.this.f8219b;
            MessageProtobuf.CmdUnBindStudioProjectResult build = newBuilder.build();
            byte[] m9579b = C2156a.m9579b(10112);
            byte[] byteArray = build.toByteArray();
            byte[] m9577a = C2156a.m9577a(m9579b, C2156a.m9574a(byteArray.length), byteArray);
            C2159d.m9593b(m9451a.f8077a, "cmdUnBindStudioProjectResult --> binary value = " + ((int) m9579b[1]) + ((int) m9579b[0]));
            if (socket == null || !socket.isConnected()) {
                return;
            }
            try {
                OutputStream outputStream = socket.getOutputStream();
                outputStream.write(m9577a);
                outputStream.flush();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.hlzn.socketclient.service.SocketService$5 */
    /* loaded from: classes.dex */
    final class C21925 extends Thread {

        /* renamed from: a */
        final /* synthetic */ int f8262a;

        /* renamed from: b */
        final /* synthetic */ String f8263b;

        C21925(int i, String str) {
            this.f8262a = i;
            this.f8263b = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            super.run();
            MessageProtobuf.CmdRenameDeviceNameResult.Builder newBuilder = MessageProtobuf.CmdRenameDeviceNameResult.newBuilder();
            newBuilder.setRpcId(((Long) SocketService.this.f8217A.poll()).longValue()).setError(this.f8262a).setMessage(this.f8263b);
            C2159d.m9593b(SocketService.f8216m, "cmdRenameDeviceNameSuccessOperate --> rpcId =" + newBuilder.getRpcId() + ",code=" + this.f8262a + ",msg=" + this.f8263b);
            C2144a m9451a = C2144a.m9451a();
            Socket socket = SocketService.this.f8219b;
            MessageProtobuf.CmdRenameDeviceNameResult build = newBuilder.build();
            byte[] m9579b = C2156a.m9579b(10114);
            byte[] byteArray = build.toByteArray();
            byte[] m9577a = C2156a.m9577a(m9579b, C2156a.m9574a(byteArray.length), byteArray);
            C2159d.m9593b(m9451a.f8077a, "cmdRenameDeviceNameResult --> binary value = " + ((int) m9579b[1]) + ((int) m9579b[0]));
            if (socket == null || !socket.isConnected()) {
                return;
            }
            try {
                OutputStream outputStream = socket.getOutputStream();
                outputStream.write(m9577a);
                outputStream.flush();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.hlzn.socketclient.service.SocketService$6 */
    /* loaded from: classes.dex */
    final class RunnableC21936 implements Runnable {
        RunnableC21936() {
        }

        /* JADX WARN: Can't wrap try/catch for region: R(9:(2:3|4)|(1:85)(2:8|(2:10|(10:12|13|(7:15|(2:17|(2:19|(2:21|(2:23|(2:25|(2:27|(2:29|(2:40|41))(2:46|47))(2:51|52))(2:56|57))(2:61|62))(2:66|67))(2:71|72))(1:76)|31|32|33|35|36)(7:77|78|31|32|33|35|36)|87|88|31|32|33|35|36)(1:82))(1:84))|83|31|32|33|35|36|1) */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x0688, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0689, code lost:
        
            r0.printStackTrace();
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void run() {
            /*
                Method dump skipped, instructions count: 1679
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.hlzn.socketclient.service.SocketService.RunnableC21936.run():void");
        }
    }

    /* renamed from: com.hlzn.socketclient.service.SocketService$7 */
    /* loaded from: classes.dex */
    final class RunnableC21947 implements Runnable {
        RunnableC21947() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            while (SocketService.this.f8223f) {
                MessageProtobuf.Heartbeat.Builder newBuilder = MessageProtobuf.Heartbeat.newBuilder();
                newBuilder.setRpcId(C2157b.m9588a()).setScriptRunning(SocketService.this.f8227j);
                MessageProtobuf.Heartbeat build = newBuilder.build();
                C2144a.m9451a();
                C2144a.m9462a(SocketService.this.f8219b, build);
                try {
                    Thread.sleep(60000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* renamed from: com.hlzn.socketclient.service.SocketService$8 */
    /* loaded from: classes.dex */
    final class RunnableC21958 implements Runnable {
        RunnableC21958() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            MessageProtobuf.Login.Builder newBuilder = MessageProtobuf.Login.newBuilder();
            newBuilder.setRpcId(C2157b.m9588a()).setAppId(SocketService.this.f8229n.longValue()).setScriptId(SocketService.this.f8230o).setDeviceId(SocketService.this.f8231p).setIMToken(SocketService.this.f8232q).setScriptRunning(SocketService.this.f8227j);
            MessageProtobuf.Login build = newBuilder.build();
            C2144a.m9451a();
            C2144a.m9459a(SocketService.this.f8219b, build);
        }
    }

    /* renamed from: com.hlzn.socketclient.service.SocketService$9 */
    /* loaded from: classes.dex */
    final class C21969 extends Thread {
        C21969() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            super.run();
            MessageProtobuf.ScriptStart.Builder newBuilder = MessageProtobuf.ScriptStart.newBuilder();
            C2144a.m9451a();
            C2144a.m9460a(SocketService.this.f8219b, newBuilder.build());
        }
    }

    /* renamed from: com.hlzn.socketclient.service.SocketService$a */
    /* loaded from: classes.dex */
    public class BinderC2197a extends Binder {

        /* renamed from: a */
        public InterfaceC2154b f8269a;

        /* renamed from: c */
        private SocketService f8271c;

        public BinderC2197a(SocketService socketService) {
            this.f8271c = socketService;
        }

        public final void sendMethod(Object obj) {
            SocketService.m9696a();
        }

        public final void setOnServiceCallBack(InterfaceC2154b interfaceC2154b) {
            this.f8269a = interfaceC2154b;
        }
    }

    /* renamed from: a */
    private static String m9692a(String str) {
        try {
            if (str.equals(new String(str.getBytes(C1867l.f7317b), C1867l.f7317b))) {
                return C1867l.f7317b;
            }
        } catch (Exception unused) {
        }
        try {
            if (str.equals(new String(str.getBytes(CharsetUtils.DEFAULT_ENCODING_CHARSET), CharsetUtils.DEFAULT_ENCODING_CHARSET))) {
                return CharsetUtils.DEFAULT_ENCODING_CHARSET;
            }
        } catch (Exception unused2) {
        }
        try {
            if (str.equals(new String(str.getBytes("UTF-8"), "UTF-8"))) {
                return "UTF-8";
            }
        } catch (Exception unused3) {
        }
        try {
            return str.equals(new String(str.getBytes("GBK"), "GBK")) ? "GBK" : "";
        } catch (Exception unused4) {
            return "";
        }
    }

    /* renamed from: a */
    public static void m9696a() {
    }

    /* renamed from: a */
    private void m9697a(int i, String str) {
        if (this.f8236u.isEmpty()) {
            return;
        }
        new C218611(i, str).start();
    }

    /* renamed from: a */
    private void m9698a(Intent intent) {
        this.f8233r = (ServiceParam) intent.getParcelableExtra(C2146a.f8096o);
        if (this.f8233r != null) {
            if (!TextUtils.isEmpty(this.f8233r.f8106c)) {
                this.f8229n = Long.valueOf(Long.parseLong(this.f8233r.f8106c));
            }
            if (!TextUtils.isEmpty(this.f8233r.f8107d)) {
                this.f8230o = this.f8233r.f8107d;
            }
            if (!TextUtils.isEmpty(this.f8233r.f8108e)) {
                this.f8231p = this.f8233r.f8108e;
            }
            if (TextUtils.isEmpty(this.f8233r.f8109f)) {
                return;
            }
            this.f8232q = this.f8233r.f8109f;
        }
    }

    /* renamed from: b */
    public static int m9699b() {
        return 1;
    }

    /* renamed from: b */
    private void m9701b(int i, String str) {
        if (this.f8237v.isEmpty()) {
            return;
        }
        new C218712(i, str).start();
    }

    /* renamed from: c */
    private void m9703c(int i, String str) {
        if (this.f8238w.isEmpty()) {
            return;
        }
        new C218813(i, str).start();
    }

    /* renamed from: d */
    private void m9706d(int i, String str) {
        if (this.f8239x.isEmpty()) {
            return;
        }
        new C21892(i, str).start();
    }

    /* renamed from: e */
    private void m9708e() {
        this.f8236u = new LinkedList();
        this.f8237v = new LinkedList();
        this.f8238w = new LinkedList();
        this.f8239x = new LinkedList();
        this.f8240y = new LinkedList();
        this.f8241z = new LinkedList();
        this.f8217A = new LinkedList();
        if (this.f8228k != null) {
            this.f8228k.m9539a();
        }
        this.f8228k = new C2152e(this);
    }

    /* renamed from: e */
    private void m9709e(int i, String str) {
        if (this.f8240y.isEmpty()) {
            return;
        }
        new C21903(i, str).start();
    }

    /* renamed from: f */
    private void m9711f() {
        C2159d.m9593b(f8216m, "createConnection --> IP=" + C2146a.f8097p + ",Port=" + C2146a.f8098q);
        this.f8234s = new Thread(new Runnable() { // from class: com.hlzn.socketclient.service.SocketService.1
            @Override // java.lang.Runnable
            public final void run() {
                String str;
                StringBuilder sb;
                String message;
                try {
                    SocketService.this.f8219b = new Socket();
                    SocketService.this.f8235t = new InetSocketAddress(C2146a.f8097p, C2146a.f8098q);
                    SocketService.this.f8219b.connect(SocketService.this.f8235t, C2146a.f8099r);
                    SocketService.this.f8219b.setTcpNoDelay(true);
                    SocketService.this.f8219b.setSendBufferSize(10240);
                    SocketService.this.f8219b.setKeepAlive(true);
                } catch (NetworkOnMainThreadException e) {
                    e.printStackTrace();
                    str = SocketService.f8216m;
                    sb = new StringBuilder("createConnection --> exception=");
                    message = e.getMessage();
                    sb.append(message);
                    C2159d.m9592a(str, sb.toString());
                } catch (UnknownHostException e2) {
                    e2.printStackTrace();
                    str = SocketService.f8216m;
                    sb = new StringBuilder("createConnection --> exception=");
                    message = e2.getMessage();
                    sb.append(message);
                    C2159d.m9592a(str, sb.toString());
                } catch (IOException e3) {
                    e3.printStackTrace();
                    str = SocketService.f8216m;
                    sb = new StringBuilder("createConnection --> exception=");
                    message = e3.getMessage();
                    sb.append(message);
                    C2159d.m9592a(str, sb.toString());
                }
            }
        });
        this.f8234s.start();
    }

    /* renamed from: f */
    private void m9712f(int i, String str) {
        if (this.f8241z.isEmpty()) {
            return;
        }
        new C21914(i, str).start();
    }

    /* renamed from: g */
    private void m9714g() {
        C2159d.m9593b(f8216m, "receiveMsg --> isReceive=" + this.f8224g);
        this.f8221d = new Thread(new RunnableC21936());
        this.f8221d.start();
    }

    /* renamed from: g */
    private void m9715g(int i, String str) {
        if (this.f8217A.isEmpty()) {
            return;
        }
        new C21925(i, str).start();
    }

    /* renamed from: h */
    private void m9717h() {
        this.f8220c = new Thread(new RunnableC21947());
        this.f8220c.start();
    }

    /* renamed from: i */
    private void m9719i() {
        C2159d.m9593b(f8216m, "login --> ");
        C2160e.m9601a(C2160e.m9597a(this), "login --> mIMToken=" + this.f8232q);
        C2146a.f8102u = false;
        if (TextUtils.isEmpty(this.f8232q)) {
            return;
        }
        this.f8222e = new Thread(new RunnableC21958());
        this.f8222e.start();
    }

    /* renamed from: j */
    private void m9721j() {
        if (this.f8219b != null) {
            C2144a.m9451a().m9464b(this.f8219b);
        }
    }

    /* renamed from: k */
    private void m9722k() {
        C2159d.m9593b(f8216m, "scriptStart");
        new C21969().start();
    }

    /* renamed from: k */
    static /* synthetic */ void m9723k(SocketService socketService) {
        C2159d.m9593b(f8216m, "proxyCreateConnection --> 1 ");
        if (socketService.f8228k != null) {
            C2159d.m9593b(f8216m, "proxyCreateConnection --> 2 ");
            C2152e c2152e = socketService.f8228k;
            if (!c2152e.f8141b.containsKey("-1")) {
                c2152e.f8141b.put("-1", new C2150d(c2152e.f8142c, "-1"));
            }
            C2159d.m9593b(c2152e.f8140a, "add --> 添加消息到发送超时管理器 rpcId=-1");
        }
    }

    /* renamed from: l */
    private void m9725l() {
        new C218510().start();
    }

    /* renamed from: m */
    private void m9727m() {
        if (this.f8219b != null) {
            C2160e.m9601a(C2160e.m9597a(this), "stopService --> ");
            m9708e();
            C2144a.m9451a().m9464b(this.f8219b);
            stopSelf();
            this.f8219b = null;
            this.f8220c = null;
            this.f8221d = null;
            this.f8234s = null;
            this.f8223f = false;
            this.f8224g = false;
        }
    }

    /* renamed from: n */
    private C2152e m9728n() {
        return this.f8228k;
    }

    /* renamed from: o */
    private boolean m9731o() {
        return this.f8219b == null || !this.f8219b.isConnected();
    }

    /* renamed from: p */
    private void m9732p() {
        C2159d.m9593b(f8216m, "proxyCreateConnection --> 1 ");
        if (this.f8228k != null) {
            C2159d.m9593b(f8216m, "proxyCreateConnection --> 2 ");
            C2152e c2152e = this.f8228k;
            if (!c2152e.f8141b.containsKey("-1")) {
                c2152e.f8141b.put("-1", new C2150d(c2152e.f8142c, "-1"));
            }
            C2159d.m9593b(c2152e.f8140a, "add --> 添加消息到发送超时管理器 rpcId=-1");
        }
    }

    /* renamed from: c */
    public final void m9733c() {
        C2159d.m9593b(f8216m, "resetConnect -->");
        if (C2146a.f8102u) {
            return;
        }
        C2146a.f8102u = true;
        C2160e.m9601a(C2160e.m9597a(this), "resetConnect --> IMConfig.IS_RECONNECT=" + C2146a.f8102u);
        this.f8224g = false;
        if (this.f8219b != null) {
            C2144a.m9451a().m9464b(this.f8219b);
        }
        this.f8228k.m9539a();
        C2155f.m9554a();
        new C2149a(-1, "重连", (byte) 0);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f8226i;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        File m9597a = C2160e.m9597a(this);
        if (C2160e.m9600a(m9597a)) {
            C2160e.m9603a(m9597a, "", null, false);
        }
        C2159d.m9593b(f8216m, "onCreate --> ");
        m9711f();
        C2159d.m9593b(f8216m, "receiveMsg --> isReceive=" + this.f8224g);
        this.f8221d = new Thread(new RunnableC21936());
        this.f8221d.start();
        this.f8223f = true;
        this.f8224g = true;
        this.f8225h = false;
        m9708e();
        C2146a.f8103v = true;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        C2159d.m9593b(f8216m, "onDestroy --> ");
        this.f8228k.m9539a();
        if (this.f8219b != null) {
            C2144a.m9451a().m9464b(this.f8219b);
            stopSelf();
            this.f8220c = null;
            this.f8221d = null;
            this.f8234s = null;
            this.f8223f = false;
            this.f8224g = false;
        }
        C2146a.f8103v = false;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Thread thread;
        C2159d.m9593b(f8216m, "onStartCommand --> flags=" + i + ",startId=" + i2 + ",isScriptRunning=" + this.f8227j);
        if (intent != null && !TextUtils.isEmpty(intent.getStringExtra(C2146a.f8095n))) {
            String stringExtra = intent.getStringExtra(C2146a.f8095n);
            this.f8233r = (ServiceParam) intent.getParcelableExtra(C2146a.f8096o);
            if (this.f8233r != null) {
                if (!TextUtils.isEmpty(this.f8233r.f8106c)) {
                    this.f8229n = Long.valueOf(Long.parseLong(this.f8233r.f8106c));
                }
                if (!TextUtils.isEmpty(this.f8233r.f8107d)) {
                    this.f8230o = this.f8233r.f8107d;
                }
                if (!TextUtils.isEmpty(this.f8233r.f8108e)) {
                    this.f8231p = this.f8233r.f8108e;
                }
                if (!TextUtils.isEmpty(this.f8233r.f8109f)) {
                    this.f8232q = this.f8233r.f8109f;
                }
            }
            char c2 = 65535;
            switch (stringExtra.hashCode()) {
                case -2042651263:
                    if (stringExtra.equals(C2146a.f8092k)) {
                        c2 = '\f';
                        break;
                    }
                    break;
                case -1976316396:
                    if (stringExtra.equals(C2146a.f8083b)) {
                        c2 = 3;
                        break;
                    }
                    break;
                case -1298630879:
                    if (stringExtra.equals(C2146a.f8090i)) {
                        c2 = '\n';
                        break;
                    }
                    break;
                case -1295722957:
                    if (stringExtra.equals(C2146a.f8084c)) {
                        c2 = 4;
                        break;
                    }
                    break;
                case -860257962:
                    if (stringExtra.equals(C2146a.f8088g)) {
                        c2 = '\b';
                        break;
                    }
                    break;
                case -743327780:
                    if (stringExtra.equals(C2146a.f8086e)) {
                        c2 = 6;
                        break;
                    }
                    break;
                case -520010627:
                    if (stringExtra.equals(C2146a.f8091j)) {
                        c2 = 11;
                        break;
                    }
                    break;
                case -83357381:
                    if (stringExtra.equals(C2146a.f8085d)) {
                        c2 = 5;
                        break;
                    }
                    break;
                case -75881701:
                    if (stringExtra.equals(C2146a.f8089h)) {
                        c2 = '\t';
                        break;
                    }
                    break;
                case 6425533:
                    if (stringExtra.equals(C2146a.f8093l)) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 102704814:
                    if (stringExtra.equals(C2146a.f8082a)) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 249479253:
                    if (stringExtra.equals(C2146a.f8094m)) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 1193287802:
                    if (stringExtra.equals(C2146a.f8087f)) {
                        c2 = 7;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    if (this.f8219b != null) {
                        C2160e.m9601a(C2160e.m9597a(this), "stopService --> ");
                        m9708e();
                        C2144a.m9451a().m9464b(this.f8219b);
                        stopSelf();
                        this.f8219b = null;
                        this.f8220c = null;
                        this.f8221d = null;
                        this.f8234s = null;
                        this.f8223f = false;
                        this.f8224g = false;
                        break;
                    }
                    break;
                case 1:
                    this.f8227j = this.f8233r.f8110g;
                    C2159d.m9593b(stringExtra, "mIsScriptRunning:" + this.f8227j);
                    if (this.f8219b != null) {
                        C2160e.m9601a(C2160e.m9597a(this), "SHUT_DOWN_CONNECTION_OPERATE 关闭连接操作 ---> ");
                        C2144a.m9451a().m9464b(this.f8219b);
                        m9708e();
                        m9711f();
                        break;
                    }
                    break;
                case 2:
                    this.f8224g = true;
                    C2159d.m9593b(f8216m, "login --> ");
                    C2160e.m9601a(C2160e.m9597a(this), "login --> mIMToken=" + this.f8232q);
                    C2146a.f8102u = false;
                    if (!TextUtils.isEmpty(this.f8232q)) {
                        this.f8222e = new Thread(new RunnableC21958());
                        thread = this.f8222e;
                        thread.start();
                        break;
                    }
                    break;
                case 3:
                    this.f8220c = new Thread(new RunnableC21947());
                    thread = this.f8220c;
                    thread.start();
                    break;
                case 4:
                    this.f8227j = this.f8233r.f8110g;
                    C2159d.m9593b(stringExtra, "mIsScriptRunning:" + this.f8227j);
                    C2159d.m9593b(f8216m, "scriptStart");
                    new C21969().start();
                    break;
                case 5:
                    this.f8227j = this.f8233r.f8110g;
                    C2159d.m9593b(stringExtra, "mIsScriptRunning:" + this.f8227j);
                    new C218510().start();
                    break;
                case 6:
                    int i3 = this.f8233r.f8111h;
                    String str = this.f8233r.f8112i;
                    if (!this.f8236u.isEmpty()) {
                        new C218611(i3, str).start();
                        break;
                    }
                    break;
                case 7:
                    int i4 = this.f8233r.f8113j;
                    String str2 = this.f8233r.f8114k;
                    if (!this.f8237v.isEmpty()) {
                        new C218712(i4, str2).start();
                        break;
                    }
                    break;
                case '\b':
                    int i5 = this.f8233r.f8115l;
                    String str3 = this.f8233r.f8116m;
                    if (!this.f8238w.isEmpty()) {
                        new C218813(i5, str3).start();
                        break;
                    }
                    break;
                case '\t':
                    int i6 = this.f8233r.f8117n;
                    String str4 = this.f8233r.f8118o;
                    if (!this.f8239x.isEmpty()) {
                        new C21892(i6, str4).start();
                        break;
                    }
                    break;
                case '\n':
                    int i7 = this.f8233r.f8119p;
                    String str5 = this.f8233r.f8120q;
                    if (!this.f8240y.isEmpty()) {
                        new C21903(i7, str5).start();
                        break;
                    }
                    break;
                case 11:
                    int i8 = this.f8233r.f8121r;
                    String str6 = this.f8233r.f8122s;
                    if (!this.f8241z.isEmpty()) {
                        new C21914(i8, str6).start();
                        break;
                    }
                    break;
                case '\f':
                    int i9 = this.f8233r.f8123t;
                    String str7 = this.f8233r.f8124u;
                    if (!this.f8217A.isEmpty()) {
                        new C21925(i9, str7).start();
                        break;
                    }
                    break;
            }
        }
        return super.onStartCommand(intent, i, i2);
    }
}
