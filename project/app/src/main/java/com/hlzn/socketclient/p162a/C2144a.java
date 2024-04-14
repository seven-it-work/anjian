package com.hlzn.socketclient.p162a;

import com.hlzn.socketclient.p167f.C2156a;
import com.hlzn.socketclient.p167f.C2159d;
import com.hlzn.socketclient.pbmsg.MessageProtobuf;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;

/* renamed from: com.hlzn.socketclient.a.a */
/* loaded from: classes.dex */
public class C2144a {

    /* renamed from: b */
    private static C2144a f8076b;

    /* renamed from: a */
    public final String f8077a = C2144a.class.getSimpleName();

    /* renamed from: c */
    private DataOutputStream f8078c;

    /* renamed from: d */
    private DataInputStream f8079d;

    /* renamed from: a */
    public static C2144a m9451a() {
        if (f8076b == null) {
            synchronized (C2144a.class) {
                if (f8076b == null) {
                    f8076b = new C2144a();
                }
            }
        }
        return f8076b;
    }

    /* renamed from: a */
    private void m9452a(Socket socket, MessageProtobuf.CmdRenameDeviceNameResult cmdRenameDeviceNameResult) {
        byte[] m9579b = C2156a.m9579b(10114);
        byte[] byteArray = cmdRenameDeviceNameResult.toByteArray();
        byte[] m9577a = C2156a.m9577a(m9579b, C2156a.m9574a(byteArray.length), byteArray);
        C2159d.m9593b(this.f8077a, "cmdRenameDeviceNameResult --> binary value = " + ((int) m9579b[1]) + ((int) m9579b[0]));
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

    /* renamed from: a */
    private void m9453a(Socket socket, MessageProtobuf.CmdScreenCaptureResult cmdScreenCaptureResult) {
        byte[] m9579b = C2156a.m9579b(10110);
        byte[] byteArray = cmdScreenCaptureResult.toByteArray();
        byte[] m9577a = C2156a.m9577a(m9579b, C2156a.m9574a(byteArray.length), byteArray);
        C2159d.m9593b(this.f8077a, "cmdScreenCaptureResult --> binary value = " + ((int) m9579b[1]) + ((int) m9579b[0]));
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

    /* renamed from: a */
    private void m9454a(Socket socket, MessageProtobuf.CmdScriptSettingsResult cmdScriptSettingsResult) {
        byte[] m9579b = C2156a.m9579b(10108);
        byte[] byteArray = cmdScriptSettingsResult.toByteArray();
        byte[] m9577a = C2156a.m9577a(m9579b, C2156a.m9574a(byteArray.length), byteArray);
        C2159d.m9593b(this.f8077a, "cmdScriptSettingsResult --> binary value = " + ((int) m9579b[1]) + ((int) m9579b[0]));
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

    /* renamed from: a */
    private void m9455a(Socket socket, MessageProtobuf.CmdScriptStartResult cmdScriptStartResult) {
        byte[] m9579b = C2156a.m9579b(10102);
        byte[] byteArray = cmdScriptStartResult.toByteArray();
        byte[] m9577a = C2156a.m9577a(m9579b, C2156a.m9574a(byteArray.length), byteArray);
        C2159d.m9593b(this.f8077a, "cmdScriptStartResult --> binary value = " + ((int) m9579b[1]) + ((int) m9579b[0]));
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

    /* renamed from: a */
    private void m9456a(Socket socket, MessageProtobuf.CmdScriptStopResult cmdScriptStopResult) {
        byte[] m9579b = C2156a.m9579b(10104);
        byte[] byteArray = cmdScriptStopResult.toByteArray();
        byte[] m9577a = C2156a.m9577a(m9579b, C2156a.m9574a(byteArray.length), byteArray);
        C2159d.m9593b(this.f8077a, "cmdScriptStopResult --> binary value = " + ((int) m9579b[1]) + ((int) m9579b[0]));
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

    /* renamed from: a */
    private void m9457a(Socket socket, MessageProtobuf.CmdScriptUpgradeResult cmdScriptUpgradeResult) {
        byte[] m9579b = C2156a.m9579b(10106);
        byte[] byteArray = cmdScriptUpgradeResult.toByteArray();
        byte[] m9577a = C2156a.m9577a(m9579b, C2156a.m9574a(byteArray.length), byteArray);
        C2159d.m9593b(this.f8077a, "cmdScriptUpgradeResult --> binary value = " + ((int) m9579b[1]) + ((int) m9579b[0]));
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

    /* renamed from: a */
    private void m9458a(Socket socket, MessageProtobuf.CmdUnBindStudioProjectResult cmdUnBindStudioProjectResult) {
        byte[] m9579b = C2156a.m9579b(10112);
        byte[] byteArray = cmdUnBindStudioProjectResult.toByteArray();
        byte[] m9577a = C2156a.m9577a(m9579b, C2156a.m9574a(byteArray.length), byteArray);
        C2159d.m9593b(this.f8077a, "cmdUnBindStudioProjectResult --> binary value = " + ((int) m9579b[1]) + ((int) m9579b[0]));
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

    /* renamed from: a */
    public static void m9459a(Socket socket, MessageProtobuf.Login login) {
        byte[] m9579b = C2156a.m9579b(10001);
        byte[] byteArray = login.toByteArray();
        byte[] m9577a = C2156a.m9577a(m9579b, C2156a.m9574a(byteArray.length), byteArray);
        C2159d.m9593b("SocketService", "sendLogin --> binary value = " + ((int) m9579b[1]) + ((int) m9579b[0]));
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

    /* renamed from: a */
    public static void m9460a(Socket socket, MessageProtobuf.ScriptStart scriptStart) {
        byte[] m9579b = C2156a.m9579b(10005);
        byte[] byteArray = scriptStart.toByteArray();
        byte[] m9577a = C2156a.m9577a(m9579b, C2156a.m9574a(byteArray.length), byteArray);
        C2159d.m9593b("SocketService", "scriptStart --> binary value = " + ((int) m9579b[1]) + ((int) m9579b[0]));
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

    /* renamed from: a */
    public static void m9461a(Socket socket, MessageProtobuf.ScriptStop scriptStop) {
        byte[] m9579b = C2156a.m9579b(10006);
        byte[] byteArray = scriptStop.toByteArray();
        byte[] m9577a = C2156a.m9577a(m9579b, C2156a.m9574a(byteArray.length), byteArray);
        C2159d.m9593b("SocketService", "scriptStop --> binary value = " + ((int) m9579b[1]) + ((int) m9579b[0]));
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

    /* renamed from: a */
    public static boolean m9462a(Socket socket, MessageProtobuf.Heartbeat heartbeat) {
        byte[] m9579b = C2156a.m9579b(10003);
        byte[] byteArray = heartbeat.toByteArray();
        byte[] m9577a = C2156a.m9577a(m9579b, C2156a.m9574a(byteArray.length), byteArray);
        C2159d.m9593b("SocketService", "sendHeart --> binary value = " + ((int) m9579b[1]) + ((int) m9579b[0]));
        if (socket == null || !socket.isConnected()) {
            return false;
        }
        try {
            OutputStream outputStream = socket.getOutputStream();
            outputStream.write(m9577a);
            outputStream.flush();
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: a */
    public final DataInputStream m9463a(Socket socket) {
        if (socket == null || socket.isClosed() || !socket.isConnected()) {
            return null;
        }
        try {
            this.f8079d = new DataInputStream(new BufferedInputStream(socket.getInputStream()));
        } catch (IOException e) {
            e.printStackTrace();
            if (this.f8079d != null) {
                try {
                    this.f8079d.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
        }
        return this.f8079d;
    }

    /* renamed from: b */
    public final void m9464b(Socket socket) {
        try {
            if (this.f8078c != null) {
                this.f8078c.close();
            }
            if (this.f8079d != null) {
                this.f8079d.close();
            }
            if (socket != null) {
                socket.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
