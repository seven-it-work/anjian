package com.sun.mail.util;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.Socket;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Properties;
import java.util.StringTokenizer;
import javax.net.SocketFactory;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* loaded from: classes.dex */
public class SocketFetcher {
    private SocketFetcher() {
    }

    private static void configureSSLSocket(Socket socket, Properties properties, String str) {
        if (socket instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socket;
            String property = properties.getProperty(String.valueOf(str) + ".ssl.protocols", null);
            sSLSocket.setEnabledProtocols(property != null ? stringArray(property) : new String[]{"TLSv1"});
            String property2 = properties.getProperty(String.valueOf(str) + ".ssl.ciphersuites", null);
            if (property2 != null) {
                sSLSocket.setEnabledCipherSuites(stringArray(property2));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0015  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x001f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.net.Socket createSocket(java.net.InetAddress r0, int r1, java.lang.String r2, int r3, int r4, javax.net.SocketFactory r5, boolean r6) throws java.io.IOException {
        /*
            if (r5 == 0) goto L7
        L2:
            java.net.Socket r5 = r5.createSocket()
            goto L13
        L7:
            if (r6 == 0) goto Le
            javax.net.SocketFactory r5 = javax.net.ssl.SSLSocketFactory.getDefault()
            goto L2
        Le:
            java.net.Socket r5 = new java.net.Socket
            r5.<init>()
        L13:
            if (r0 == 0) goto L1d
            java.net.InetSocketAddress r6 = new java.net.InetSocketAddress
            r6.<init>(r0, r1)
            r5.bind(r6)
        L1d:
            if (r4 < 0) goto L28
            java.net.InetSocketAddress r0 = new java.net.InetSocketAddress
            r0.<init>(r2, r3)
            r5.connect(r0, r4)
            return r5
        L28:
            java.net.InetSocketAddress r0 = new java.net.InetSocketAddress
            r0.<init>(r2, r3)
            r5.connect(r0)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.mail.util.SocketFetcher.createSocket(java.net.InetAddress, int, java.lang.String, int, int, javax.net.SocketFactory, boolean):java.net.Socket");
    }

    private static ClassLoader getContextClassLoader() {
        return (ClassLoader) AccessController.doPrivileged(new PrivilegedAction() { // from class: com.sun.mail.util.SocketFetcher.1
            @Override // java.security.PrivilegedAction
            public Object run() {
                try {
                    return Thread.currentThread().getContextClassLoader();
                } catch (SecurityException unused) {
                    return null;
                }
            }
        });
    }

    public static Socket getSocket(String str, int i, Properties properties, String str2) throws IOException {
        return getSocket(str, i, properties, str2, false);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:23|(14:62|63|(1:27)(1:61)|28|29|30|31|(1:33)|34|(5:42|43|(1:38)|39|40)|36|(0)|39|40)|25|(0)(0)|28|29|30|31|(0)|34|(0)|36|(0)|39|40) */
    /* JADX WARN: Can't wrap try/catch for region: R(27:(1:2)(1:89)|(1:4)(1:88)|5|(23:84|85|8|(1:10)(1:83)|11|(18:78|79|80|14|(1:77)(1:18)|19|20|21|(15:23|(14:62|63|(1:27)(1:61)|28|29|30|31|(1:33)|34|(5:42|43|(1:38)|39|40)|36|(0)|39|40)|25|(0)(0)|28|29|30|31|(0)|34|(0)|36|(0)|39|40)|70|71|(0)|34|(0)|36|(0)|39|40)|13|14|(1:16)|77|19|20|21|(0)|70|71|(0)|34|(0)|36|(0)|39|40)|7|8|(0)(0)|11|(0)|13|14|(0)|77|19|20|21|(0)|70|71|(0)|34|(0)|36|(0)|39|40|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0105, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0106, code lost:
    
        r6 = r0;
        r7 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0115, code lost:
    
        if ((r6 instanceof java.lang.reflect.InvocationTargetException) != false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0117, code lost:
    
        r1 = ((java.lang.reflect.InvocationTargetException) r6).getTargetException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0120, code lost:
    
        if ((r1 instanceof java.lang.Exception) != false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0122, code lost:
    
        r6 = (java.lang.Exception) r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0127, code lost:
    
        if ((r6 instanceof java.io.IOException) != false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x012b, code lost:
    
        throw ((java.io.IOException) r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x012c, code lost:
    
        r1 = new java.io.IOException("Couldn't connect using \"" + r4 + "\" socket factory to host, port: " + r19 + ", " + r7 + "; Exception: " + r6);
        r1.initCause(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x015c, code lost:
    
        throw r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x010d, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x010e, code lost:
    
        r4 = r12;
        r6 = r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00c9 A[Catch: Exception -> 0x010d, SocketTimeoutException -> 0x0181, TRY_LEAVE, TryCatch #2 {Exception -> 0x010d, blocks: (B:21:0x00c3, B:23:0x00c9), top: B:20:0x00c3 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0172 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0080 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.net.Socket getSocket(java.lang.String r19, int r20, java.util.Properties r21, java.lang.String r22, boolean r23) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 388
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.mail.util.SocketFetcher.getSocket(java.lang.String, int, java.util.Properties, java.lang.String, boolean):java.net.Socket");
    }

    private static SocketFactory getSocketFactory(String str) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        Class<?> cls = null;
        if (str == null || str.length() == 0) {
            return null;
        }
        ClassLoader contextClassLoader = getContextClassLoader();
        if (contextClassLoader != null) {
            try {
                cls = contextClassLoader.loadClass(str);
            } catch (ClassNotFoundException unused) {
            }
        }
        if (cls == null) {
            cls = Class.forName(str);
        }
        return (SocketFactory) cls.getMethod("getDefault", new Class[0]).invoke(new Object(), new Object[0]);
    }

    public static Socket startTLS(Socket socket) throws IOException {
        return startTLS(socket, new Properties(), "socket");
    }

    public static Socket startTLS(Socket socket, Properties properties, String str) throws IOException {
        String hostName = socket.getInetAddress().getHostName();
        int port = socket.getPort();
        try {
            SocketFactory socketFactory = getSocketFactory(properties.getProperty(String.valueOf(str) + ".socketFactory.class", null));
            if (socketFactory == null || !(socketFactory instanceof SSLSocketFactory)) {
                socketFactory = SSLSocketFactory.getDefault();
            }
            Socket createSocket = ((SSLSocketFactory) socketFactory).createSocket(socket, hostName, port, true);
            configureSSLSocket(createSocket, properties, str);
            return createSocket;
        } catch (Exception e) {
            e = e;
            if (e instanceof InvocationTargetException) {
                Throwable targetException = ((InvocationTargetException) e).getTargetException();
                if (targetException instanceof Exception) {
                    e = (Exception) targetException;
                }
            }
            if (e instanceof IOException) {
                throw ((IOException) e);
            }
            IOException iOException = new IOException("Exception in startTLS: host " + hostName + ", port " + port + "; Exception: " + e);
            iOException.initCause(e);
            throw iOException;
        }
    }

    private static String[] stringArray(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str);
        ArrayList arrayList = new ArrayList();
        while (stringTokenizer.hasMoreTokens()) {
            arrayList.add(stringTokenizer.nextToken());
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }
}
