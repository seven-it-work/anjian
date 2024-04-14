package mobi.oneway.export.p197d;

import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.Arrays;
import javax.net.ssl.HandshakeCompletedListener;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* renamed from: mobi.oneway.export.d.c */
/* loaded from: classes2.dex */
public class C2665c extends SSLSocketFactory {

    /* renamed from: a */
    private final SSLSocketFactory f10229a;

    /* renamed from: mobi.oneway.export.d.c$a */
    /* loaded from: classes2.dex */
    public class a extends SSLSocket {

        /* renamed from: a */
        protected final SSLSocket f10230a;

        a(SSLSocket sSLSocket) {
            this.f10230a = sSLSocket;
        }

        @Override // javax.net.ssl.SSLSocket
        public void addHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
            this.f10230a.addHandshakeCompletedListener(handshakeCompletedListener);
        }

        @Override // java.net.Socket
        public void bind(SocketAddress socketAddress) {
            this.f10230a.bind(socketAddress);
        }

        @Override // java.net.Socket, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() {
            this.f10230a.close();
        }

        @Override // java.net.Socket
        public void connect(SocketAddress socketAddress) {
            this.f10230a.connect(socketAddress);
        }

        @Override // java.net.Socket
        public void connect(SocketAddress socketAddress, int i) {
            this.f10230a.connect(socketAddress, i);
        }

        public boolean equals(Object obj) {
            return this.f10230a.equals(obj);
        }

        @Override // java.net.Socket
        public SocketChannel getChannel() {
            return this.f10230a.getChannel();
        }

        @Override // javax.net.ssl.SSLSocket
        public boolean getEnableSessionCreation() {
            return this.f10230a.getEnableSessionCreation();
        }

        @Override // javax.net.ssl.SSLSocket
        public String[] getEnabledCipherSuites() {
            return this.f10230a.getEnabledCipherSuites();
        }

        @Override // javax.net.ssl.SSLSocket
        public String[] getEnabledProtocols() {
            return this.f10230a.getEnabledProtocols();
        }

        @Override // java.net.Socket
        public InetAddress getInetAddress() {
            return this.f10230a.getInetAddress();
        }

        @Override // java.net.Socket
        public InputStream getInputStream() {
            return this.f10230a.getInputStream();
        }

        @Override // java.net.Socket
        public boolean getKeepAlive() {
            return this.f10230a.getKeepAlive();
        }

        @Override // java.net.Socket
        public InetAddress getLocalAddress() {
            return this.f10230a.getLocalAddress();
        }

        @Override // java.net.Socket
        public int getLocalPort() {
            return this.f10230a.getLocalPort();
        }

        @Override // java.net.Socket
        public SocketAddress getLocalSocketAddress() {
            return this.f10230a.getLocalSocketAddress();
        }

        @Override // javax.net.ssl.SSLSocket
        public boolean getNeedClientAuth() {
            return this.f10230a.getNeedClientAuth();
        }

        @Override // java.net.Socket
        public boolean getOOBInline() {
            return this.f10230a.getOOBInline();
        }

        @Override // java.net.Socket
        public OutputStream getOutputStream() {
            return this.f10230a.getOutputStream();
        }

        @Override // java.net.Socket
        public int getPort() {
            return this.f10230a.getPort();
        }

        @Override // java.net.Socket
        public synchronized int getReceiveBufferSize() {
            return this.f10230a.getReceiveBufferSize();
        }

        @Override // java.net.Socket
        public SocketAddress getRemoteSocketAddress() {
            return this.f10230a.getRemoteSocketAddress();
        }

        @Override // java.net.Socket
        public boolean getReuseAddress() {
            return this.f10230a.getReuseAddress();
        }

        @Override // java.net.Socket
        public synchronized int getSendBufferSize() {
            return this.f10230a.getSendBufferSize();
        }

        @Override // javax.net.ssl.SSLSocket
        public SSLSession getSession() {
            return this.f10230a.getSession();
        }

        @Override // java.net.Socket
        public int getSoLinger() {
            return this.f10230a.getSoLinger();
        }

        @Override // java.net.Socket
        public synchronized int getSoTimeout() {
            return this.f10230a.getSoTimeout();
        }

        @Override // javax.net.ssl.SSLSocket
        public String[] getSupportedCipherSuites() {
            return this.f10230a.getSupportedCipherSuites();
        }

        @Override // javax.net.ssl.SSLSocket
        public String[] getSupportedProtocols() {
            return this.f10230a.getSupportedProtocols();
        }

        @Override // java.net.Socket
        public boolean getTcpNoDelay() {
            return this.f10230a.getTcpNoDelay();
        }

        @Override // java.net.Socket
        public int getTrafficClass() {
            return this.f10230a.getTrafficClass();
        }

        @Override // javax.net.ssl.SSLSocket
        public boolean getUseClientMode() {
            return this.f10230a.getUseClientMode();
        }

        @Override // javax.net.ssl.SSLSocket
        public boolean getWantClientAuth() {
            return this.f10230a.getWantClientAuth();
        }

        @Override // java.net.Socket
        public boolean isBound() {
            return this.f10230a.isBound();
        }

        @Override // java.net.Socket
        public boolean isClosed() {
            return this.f10230a.isClosed();
        }

        @Override // java.net.Socket
        public boolean isConnected() {
            return this.f10230a.isConnected();
        }

        @Override // java.net.Socket
        public boolean isInputShutdown() {
            return this.f10230a.isInputShutdown();
        }

        @Override // java.net.Socket
        public boolean isOutputShutdown() {
            return this.f10230a.isOutputShutdown();
        }

        @Override // javax.net.ssl.SSLSocket
        public void removeHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
            this.f10230a.removeHandshakeCompletedListener(handshakeCompletedListener);
        }

        @Override // java.net.Socket
        public void sendUrgentData(int i) {
            this.f10230a.sendUrgentData(i);
        }

        @Override // javax.net.ssl.SSLSocket
        public void setEnableSessionCreation(boolean z) {
            this.f10230a.setEnableSessionCreation(z);
        }

        @Override // javax.net.ssl.SSLSocket
        public void setEnabledCipherSuites(String[] strArr) {
            this.f10230a.setEnabledCipherSuites(strArr);
        }

        @Override // javax.net.ssl.SSLSocket
        public void setEnabledProtocols(String[] strArr) {
            this.f10230a.setEnabledProtocols(strArr);
        }

        @Override // java.net.Socket
        public void setKeepAlive(boolean z) {
            this.f10230a.setKeepAlive(z);
        }

        @Override // javax.net.ssl.SSLSocket
        public void setNeedClientAuth(boolean z) {
            this.f10230a.setNeedClientAuth(z);
        }

        @Override // java.net.Socket
        public void setOOBInline(boolean z) {
            this.f10230a.setOOBInline(z);
        }

        @Override // java.net.Socket
        public void setPerformancePreferences(int i, int i2, int i3) {
            this.f10230a.setPerformancePreferences(i, i2, i3);
        }

        @Override // java.net.Socket
        public synchronized void setReceiveBufferSize(int i) {
            this.f10230a.setReceiveBufferSize(i);
        }

        @Override // java.net.Socket
        public void setReuseAddress(boolean z) {
            this.f10230a.setReuseAddress(z);
        }

        @Override // java.net.Socket
        public synchronized void setSendBufferSize(int i) {
            this.f10230a.setSendBufferSize(i);
        }

        @Override // java.net.Socket
        public void setSoLinger(boolean z, int i) {
            this.f10230a.setSoLinger(z, i);
        }

        @Override // java.net.Socket
        public synchronized void setSoTimeout(int i) {
            this.f10230a.setSoTimeout(i);
        }

        @Override // java.net.Socket
        public void setTcpNoDelay(boolean z) {
            this.f10230a.setTcpNoDelay(z);
        }

        @Override // java.net.Socket
        public void setTrafficClass(int i) {
            this.f10230a.setTrafficClass(i);
        }

        @Override // javax.net.ssl.SSLSocket
        public void setUseClientMode(boolean z) {
            this.f10230a.setUseClientMode(z);
        }

        @Override // javax.net.ssl.SSLSocket
        public void setWantClientAuth(boolean z) {
            this.f10230a.setWantClientAuth(z);
        }

        @Override // java.net.Socket
        public void shutdownInput() {
            this.f10230a.shutdownInput();
        }

        @Override // java.net.Socket
        public void shutdownOutput() {
            this.f10230a.shutdownOutput();
        }

        @Override // javax.net.ssl.SSLSocket
        public void startHandshake() {
            this.f10230a.startHandshake();
        }

        @Override // javax.net.ssl.SSLSocket, java.net.Socket
        public String toString() {
            return this.f10230a.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: mobi.oneway.export.d.c$b */
    /* loaded from: classes2.dex */
    public class b extends a {
        private b(SSLSocket sSLSocket) {
            super(sSLSocket);
        }

        @Override // mobi.oneway.export.p197d.C2665c.a, javax.net.ssl.SSLSocket
        public void setEnabledProtocols(String[] strArr) {
            PrintStream printStream;
            String str;
            if (strArr != null && strArr.length == 1 && "SSLv3".equals(strArr[0])) {
                ArrayList arrayList = new ArrayList(Arrays.asList(this.f10230a.getEnabledProtocols()));
                if (arrayList.size() > 1) {
                    arrayList.remove("SSLv3");
                    printStream = System.out;
                    str = "Removed SSLv3 from enabled protocols";
                } else {
                    printStream = System.out;
                    str = "SSL stuck with protocol available for " + String.valueOf(arrayList);
                }
                printStream.println(str);
                strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
            }
            super.setEnabledProtocols(strArr);
        }
    }

    public C2665c() {
        this.f10229a = HttpsURLConnection.getDefaultSSLSocketFactory();
    }

    public C2665c(SSLSocketFactory sSLSocketFactory) {
        this.f10229a = sSLSocketFactory;
    }

    /* renamed from: a */
    private Socket m11998a(Socket socket) {
        return socket instanceof SSLSocket ? new b((SSLSocket) socket) : socket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) {
        return m11998a(this.f10229a.createSocket(str, i));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        return m11998a(this.f10229a.createSocket(str, i, inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) {
        return m11998a(this.f10229a.createSocket(inetAddress, i));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        return m11998a(this.f10229a.createSocket(inetAddress, i, inetAddress2, i2));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) {
        return m11998a(this.f10229a.createSocket(socket, str, i, z));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return this.f10229a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        return this.f10229a.getSupportedCipherSuites();
    }
}
