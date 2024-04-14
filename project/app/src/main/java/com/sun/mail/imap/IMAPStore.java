package com.sun.mail.imap;

import com.sun.mail.iap.BadCommandException;
import com.sun.mail.iap.ConnectionException;
import com.sun.mail.iap.ProtocolException;
import com.sun.mail.iap.Response;
import com.sun.mail.iap.ResponseHandler;
import com.sun.mail.imap.protocol.IMAPProtocol;
import com.sun.mail.imap.protocol.Namespaces;
import java.io.PrintStream;
import java.util.StringTokenizer;
import java.util.Vector;
import javax.mail.Folder;
import javax.mail.MessagingException;
import javax.mail.Quota;
import javax.mail.QuotaAwareStore;
import javax.mail.Session;
import javax.mail.Store;
import javax.mail.StoreClosedException;
import javax.mail.URLName;

/* loaded from: classes.dex */
public class IMAPStore extends Store implements ResponseHandler, QuotaAwareStore {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int RESPONSE = 1000;
    private int appendBufferSize;
    private String authorizationID;
    private int blksize;
    private volatile boolean connected;
    private int defaultPort;
    private boolean disableAuthLogin;
    private boolean disableAuthPlain;
    private boolean enableImapEvents;
    private boolean enableSASL;
    private boolean enableStartTLS;
    private boolean forcePasswordRefresh;
    private String host;
    private boolean isSSL;
    private int minIdleTime;
    private String name;
    private Namespaces namespaces;
    private PrintStream out;
    private String password;
    private ConnectionPool pool;
    private int port;
    private String proxyAuthUser;
    private String[] saslMechanisms;
    private String saslRealm;
    private int statusCacheTimeout;
    private String user;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class ConnectionPool {
        private static final int ABORTING = 2;
        private static final int IDLE = 1;
        private static final int RUNNING = 0;
        private Vector folders;
        private IMAPProtocol idleProtocol;
        private long lastTimePruned;
        private Vector authenticatedConnections = new Vector();
        private boolean separateStoreConnection = false;
        private boolean storeConnectionInUse = false;
        private long clientTimeoutInterval = 45000;
        private long serverTimeoutInterval = 1800000;
        private int poolSize = 1;
        private long pruningInterval = 60000;
        private boolean debug = false;
        private int idleState = 0;

        ConnectionPool() {
        }
    }

    public IMAPStore(Session session, URLName uRLName) {
        this(session, uRLName, "imap", 143, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public IMAPStore(Session session, URLName uRLName, String str, int i, boolean z) {
        super(session, uRLName);
        PrintStream printStream;
        String str2;
        this.name = "imap";
        this.defaultPort = 143;
        this.isSSL = false;
        this.port = -1;
        this.blksize = 16384;
        this.statusCacheTimeout = 1000;
        this.appendBufferSize = -1;
        this.minIdleTime = 10;
        this.disableAuthLogin = false;
        this.disableAuthPlain = false;
        this.enableStartTLS = false;
        this.enableSASL = false;
        this.forcePasswordRefresh = false;
        this.enableImapEvents = false;
        this.connected = false;
        this.pool = new ConnectionPool();
        str = uRLName != null ? uRLName.getProtocol() : str;
        this.name = str;
        this.defaultPort = i;
        this.isSSL = z;
        this.pool.lastTimePruned = System.currentTimeMillis();
        this.debug = session.getDebug();
        this.out = session.getDebugOut();
        if (this.out == null) {
            this.out = System.out;
        }
        String property = session.getProperty("mail." + str + ".connectionpool.debug");
        if (property != null && property.equalsIgnoreCase("true")) {
            this.pool.debug = true;
        }
        String property2 = session.getProperty("mail." + str + ".partialfetch");
        if (property2 == null || !property2.equalsIgnoreCase("false")) {
            String property3 = session.getProperty("mail." + str + ".fetchsize");
            if (property3 != null) {
                this.blksize = Integer.parseInt(property3);
            }
            if (this.debug) {
                printStream = this.out;
                str2 = "DEBUG: mail.imap.fetchsize: " + this.blksize;
                printStream.println(str2);
            }
        } else {
            this.blksize = -1;
            if (this.debug) {
                printStream = this.out;
                str2 = "DEBUG: mail.imap.partialfetch: false";
                printStream.println(str2);
            }
        }
        String property4 = session.getProperty("mail." + str + ".statuscachetimeout");
        if (property4 != null) {
            this.statusCacheTimeout = Integer.parseInt(property4);
            if (this.debug) {
                this.out.println("DEBUG: mail.imap.statuscachetimeout: " + this.statusCacheTimeout);
            }
        }
        String property5 = session.getProperty("mail." + str + ".appendbuffersize");
        if (property5 != null) {
            this.appendBufferSize = Integer.parseInt(property5);
            if (this.debug) {
                this.out.println("DEBUG: mail.imap.appendbuffersize: " + this.appendBufferSize);
            }
        }
        String property6 = session.getProperty("mail." + str + ".minidletime");
        if (property6 != null) {
            this.minIdleTime = Integer.parseInt(property6);
            if (this.debug) {
                this.out.println("DEBUG: mail.imap.minidletime: " + this.minIdleTime);
            }
        }
        String property7 = session.getProperty("mail." + str + ".connectionpoolsize");
        if (property7 != null) {
            try {
                int parseInt = Integer.parseInt(property7);
                if (parseInt > 0) {
                    this.pool.poolSize = parseInt;
                }
            } catch (NumberFormatException unused) {
            }
            if (this.pool.debug) {
                this.out.println("DEBUG: mail.imap.connectionpoolsize: " + this.pool.poolSize);
            }
        }
        String property8 = session.getProperty("mail." + str + ".connectionpooltimeout");
        if (property8 != null) {
            try {
                int parseInt2 = Integer.parseInt(property8);
                if (parseInt2 > 0) {
                    this.pool.clientTimeoutInterval = parseInt2;
                }
            } catch (NumberFormatException unused2) {
            }
            if (this.pool.debug) {
                this.out.println("DEBUG: mail.imap.connectionpooltimeout: " + this.pool.clientTimeoutInterval);
            }
        }
        String property9 = session.getProperty("mail." + str + ".servertimeout");
        if (property9 != null) {
            try {
                int parseInt3 = Integer.parseInt(property9);
                if (parseInt3 > 0) {
                    this.pool.serverTimeoutInterval = parseInt3;
                }
            } catch (NumberFormatException unused3) {
            }
            if (this.pool.debug) {
                this.out.println("DEBUG: mail.imap.servertimeout: " + this.pool.serverTimeoutInterval);
            }
        }
        String property10 = session.getProperty("mail." + str + ".separatestoreconnection");
        if (property10 != null && property10.equalsIgnoreCase("true")) {
            if (this.pool.debug) {
                this.out.println("DEBUG: dedicate a store connection");
            }
            this.pool.separateStoreConnection = true;
        }
        String property11 = session.getProperty("mail." + str + ".proxyauth.user");
        if (property11 != null) {
            this.proxyAuthUser = property11;
            if (this.debug) {
                this.out.println("DEBUG: mail.imap.proxyauth.user: " + this.proxyAuthUser);
            }
        }
        String property12 = session.getProperty("mail." + str + ".auth.login.disable");
        if (property12 != null && property12.equalsIgnoreCase("true")) {
            if (this.debug) {
                this.out.println("DEBUG: disable AUTH=LOGIN");
            }
            this.disableAuthLogin = true;
        }
        String property13 = session.getProperty("mail." + str + ".auth.plain.disable");
        if (property13 != null && property13.equalsIgnoreCase("true")) {
            if (this.debug) {
                this.out.println("DEBUG: disable AUTH=PLAIN");
            }
            this.disableAuthPlain = true;
        }
        String property14 = session.getProperty("mail." + str + ".starttls.enable");
        if (property14 != null && property14.equalsIgnoreCase("true")) {
            if (this.debug) {
                this.out.println("DEBUG: enable STARTTLS");
            }
            this.enableStartTLS = true;
        }
        String property15 = session.getProperty("mail." + str + ".sasl.enable");
        if (property15 != null && property15.equalsIgnoreCase("true")) {
            if (this.debug) {
                this.out.println("DEBUG: enable SASL");
            }
            this.enableSASL = true;
        }
        if (this.enableSASL) {
            String property16 = session.getProperty("mail." + str + ".sasl.mechanisms");
            if (property16 != null && property16.length() > 0) {
                if (this.debug) {
                    this.out.println("DEBUG: SASL mechanisms allowed: " + property16);
                }
                Vector vector = new Vector(5);
                StringTokenizer stringTokenizer = new StringTokenizer(property16, " ,");
                while (stringTokenizer.hasMoreTokens()) {
                    String nextToken = stringTokenizer.nextToken();
                    if (nextToken.length() > 0) {
                        vector.addElement(nextToken);
                    }
                }
                this.saslMechanisms = new String[vector.size()];
                vector.copyInto(this.saslMechanisms);
            }
        }
        String property17 = session.getProperty("mail." + str + ".sasl.authorizationid");
        if (property17 != null) {
            this.authorizationID = property17;
            if (this.debug) {
                this.out.println("DEBUG: mail.imap.sasl.authorizationid: " + this.authorizationID);
            }
        }
        String property18 = session.getProperty("mail." + str + ".sasl.realm");
        if (property18 != null) {
            this.saslRealm = property18;
            if (this.debug) {
                this.out.println("DEBUG: mail.imap.sasl.realm: " + this.saslRealm);
            }
        }
        String property19 = session.getProperty("mail." + str + ".forcepasswordrefresh");
        if (property19 != null && property19.equalsIgnoreCase("true")) {
            if (this.debug) {
                this.out.println("DEBUG: enable forcePasswordRefresh");
            }
            this.forcePasswordRefresh = true;
        }
        String property20 = session.getProperty("mail." + str + ".enableimapevents");
        if (property20 == null || !property20.equalsIgnoreCase("true")) {
            return;
        }
        if (this.debug) {
            this.out.println("DEBUG: enable IMAP events");
        }
        this.enableImapEvents = true;
    }

    private void checkConnected() {
        if (this.connected) {
            return;
        }
        super.setConnected(false);
        throw new IllegalStateException("Not connected");
    }

    private void cleanup() {
        cleanup(false);
    }

    private void cleanup(boolean z) {
        boolean z2;
        if (this.debug) {
            this.out.println("DEBUG: IMAPStore cleanup, force " + z);
        }
        Vector vector = null;
        while (true) {
            synchronized (this.pool) {
                if (this.pool.folders != null) {
                    vector = this.pool.folders;
                    this.pool.folders = null;
                    z2 = false;
                } else {
                    z2 = true;
                }
            }
            if (z2) {
                break;
            }
            int size = vector.size();
            for (int i = 0; i < size; i++) {
                IMAPFolder iMAPFolder = (IMAPFolder) vector.elementAt(i);
                if (z) {
                    try {
                        if (this.debug) {
                            this.out.println("DEBUG: force folder to close");
                        }
                        iMAPFolder.forceClose();
                    } catch (IllegalStateException | MessagingException unused) {
                    }
                } else {
                    if (this.debug) {
                        this.out.println("DEBUG: close folder");
                    }
                    iMAPFolder.close(false);
                }
            }
        }
        synchronized (this.pool) {
            emptyConnectionPool(z);
        }
        this.connected = false;
        notifyConnectionListeners(3);
        if (this.debug) {
            this.out.println("DEBUG: IMAPStore cleanup done");
        }
    }

    private void emptyConnectionPool(boolean z) {
        synchronized (this.pool) {
            for (int size = this.pool.authenticatedConnections.size() - 1; size >= 0; size--) {
                try {
                    IMAPProtocol iMAPProtocol = (IMAPProtocol) this.pool.authenticatedConnections.elementAt(size);
                    iMAPProtocol.removeResponseHandler(this);
                    if (z) {
                        iMAPProtocol.disconnect();
                    } else {
                        iMAPProtocol.logout();
                    }
                } catch (ProtocolException unused) {
                }
            }
            this.pool.authenticatedConnections.removeAllElements();
        }
        if (this.pool.debug) {
            this.out.println("DEBUG: removed all authenticated connections");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0016, code lost:
    
        if (r1 == null) goto L9;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.sun.mail.imap.protocol.Namespaces] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private synchronized com.sun.mail.imap.protocol.Namespaces getNamespaces() throws javax.mail.MessagingException {
        /*
            r5 = this;
            monitor-enter(r5)
            r5.checkConnected()     // Catch: java.lang.Throwable -> L58
            r0 = 0
            com.sun.mail.imap.protocol.Namespaces r1 = r5.namespaces     // Catch: java.lang.Throwable -> L58
            if (r1 != 0) goto L54
            com.sun.mail.imap.protocol.IMAPProtocol r1 = r5.getStoreProtocol()     // Catch: java.lang.Throwable -> L24 com.sun.mail.iap.ProtocolException -> L29 com.sun.mail.iap.ConnectionException -> L37 com.sun.mail.iap.BadCommandException -> L4e
            com.sun.mail.imap.protocol.Namespaces r0 = r1.namespace()     // Catch: java.lang.Throwable -> L1c com.sun.mail.iap.ProtocolException -> L1e com.sun.mail.iap.ConnectionException -> L20 com.sun.mail.iap.BadCommandException -> L22
            r5.namespaces = r0     // Catch: java.lang.Throwable -> L1c com.sun.mail.iap.ProtocolException -> L1e com.sun.mail.iap.ConnectionException -> L20 com.sun.mail.iap.BadCommandException -> L22
            r5.releaseStoreProtocol(r1)     // Catch: java.lang.Throwable -> L58
            if (r1 != 0) goto L54
        L18:
            r5.cleanup()     // Catch: java.lang.Throwable -> L58
            goto L54
        L1c:
            r0 = move-exception
            goto L45
        L1e:
            r0 = move-exception
            goto L2d
        L20:
            r0 = move-exception
            goto L3b
        L22:
            r0 = r1
            goto L4e
        L24:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L45
        L29:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L2d:
            javax.mail.MessagingException r2 = new javax.mail.MessagingException     // Catch: java.lang.Throwable -> L1c
            java.lang.String r3 = r0.getMessage()     // Catch: java.lang.Throwable -> L1c
            r2.<init>(r3, r0)     // Catch: java.lang.Throwable -> L1c
            throw r2     // Catch: java.lang.Throwable -> L1c
        L37:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L3b:
            javax.mail.StoreClosedException r2 = new javax.mail.StoreClosedException     // Catch: java.lang.Throwable -> L1c
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Throwable -> L1c
            r2.<init>(r5, r0)     // Catch: java.lang.Throwable -> L1c
            throw r2     // Catch: java.lang.Throwable -> L1c
        L45:
            r5.releaseStoreProtocol(r1)     // Catch: java.lang.Throwable -> L58
            if (r1 != 0) goto L4d
            r5.cleanup()     // Catch: java.lang.Throwable -> L58
        L4d:
            throw r0     // Catch: java.lang.Throwable -> L58
        L4e:
            r5.releaseStoreProtocol(r0)     // Catch: java.lang.Throwable -> L58
            if (r0 != 0) goto L54
            goto L18
        L54:
            com.sun.mail.imap.protocol.Namespaces r0 = r5.namespaces     // Catch: java.lang.Throwable -> L58
            monitor-exit(r5)
            return r0
        L58:
            r0 = move-exception
            monitor-exit(r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.mail.imap.IMAPStore.getNamespaces():com.sun.mail.imap.protocol.Namespaces");
    }

    private void login(IMAPProtocol iMAPProtocol, String str, String str2) throws ProtocolException {
        if (this.enableStartTLS && iMAPProtocol.hasCapability("STARTTLS")) {
            iMAPProtocol.startTLS();
            iMAPProtocol.capability();
        }
        if (iMAPProtocol.isAuthenticated()) {
            return;
        }
        iMAPProtocol.getCapabilities().put("__PRELOGIN__", "");
        String str3 = this.authorizationID != null ? this.authorizationID : this.proxyAuthUser != null ? this.proxyAuthUser : str;
        if (this.enableSASL) {
            iMAPProtocol.sasllogin(this.saslMechanisms, this.saslRealm, str3, str, str2);
        }
        if (!iMAPProtocol.isAuthenticated()) {
            if (iMAPProtocol.hasCapability("AUTH=PLAIN") && !this.disableAuthPlain) {
                iMAPProtocol.authplain(str3, str, str2);
            } else if ((iMAPProtocol.hasCapability("AUTH-LOGIN") || iMAPProtocol.hasCapability("AUTH=LOGIN")) && !this.disableAuthLogin) {
                iMAPProtocol.authlogin(str, str2);
            } else {
                if (iMAPProtocol.hasCapability("LOGINDISABLED")) {
                    throw new ProtocolException("No login methods supported!");
                }
                iMAPProtocol.login(str, str2);
            }
        }
        if (this.proxyAuthUser != null) {
            iMAPProtocol.proxyauth(this.proxyAuthUser);
        }
        if (iMAPProtocol.hasCapability("__PRELOGIN__")) {
            try {
                iMAPProtocol.capability();
            } catch (ConnectionException e) {
                throw e;
            } catch (ProtocolException unused) {
            }
        }
    }

    private Folder[] namespaceToFolders(Namespaces.Namespace[] namespaceArr, String str) {
        Folder[] folderArr = new Folder[namespaceArr.length];
        for (int i = 0; i < folderArr.length; i++) {
            String str2 = namespaceArr[i].prefix;
            if (str == null) {
                int length = str2.length();
                if (length > 0) {
                    int i2 = length - 1;
                    if (str2.charAt(i2) == namespaceArr[i].delimiter) {
                        str2 = str2.substring(0, i2);
                    }
                }
            } else {
                str2 = String.valueOf(str2) + str;
            }
            folderArr[i] = new IMAPFolder(str2, namespaceArr[i].delimiter, this, str == null);
        }
        return folderArr;
    }

    private void timeoutConnections() {
        synchronized (this.pool) {
            if (System.currentTimeMillis() - this.pool.lastTimePruned > this.pool.pruningInterval && this.pool.authenticatedConnections.size() > 1) {
                if (this.pool.debug) {
                    this.out.println("DEBUG: checking for connections to prune: " + (System.currentTimeMillis() - this.pool.lastTimePruned));
                    this.out.println("DEBUG: clientTimeoutInterval: " + this.pool.clientTimeoutInterval);
                }
                for (int size = this.pool.authenticatedConnections.size() - 1; size > 0; size--) {
                    IMAPProtocol iMAPProtocol = (IMAPProtocol) this.pool.authenticatedConnections.elementAt(size);
                    if (this.pool.debug) {
                        this.out.println("DEBUG: protocol last used: " + (System.currentTimeMillis() - iMAPProtocol.getTimestamp()));
                    }
                    if (System.currentTimeMillis() - iMAPProtocol.getTimestamp() > this.pool.clientTimeoutInterval) {
                        if (this.pool.debug) {
                            this.out.println("DEBUG: authenticated connection timed out");
                            this.out.println("DEBUG: logging out the connection");
                        }
                        iMAPProtocol.removeResponseHandler(this);
                        this.pool.authenticatedConnections.removeElementAt(size);
                        try {
                            iMAPProtocol.logout();
                        } catch (ProtocolException unused) {
                        }
                    }
                }
                this.pool.lastTimePruned = System.currentTimeMillis();
            }
        }
    }

    private void waitIfIdle() throws ProtocolException {
        while (this.pool.idleState != 0) {
            if (this.pool.idleState == 1) {
                this.pool.idleProtocol.idleAbort();
                this.pool.idleState = 2;
            }
            try {
                this.pool.wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean allowReadOnlySelect() {
        String property = this.session.getProperty("mail." + this.name + ".allowreadonlyselect");
        return property != null && property.equalsIgnoreCase("true");
    }

    @Override // javax.mail.Service
    public synchronized void close() throws MessagingException {
        boolean isEmpty;
        if (!super.isConnected()) {
            return;
        }
        IMAPProtocol iMAPProtocol = null;
        try {
            try {
                synchronized (this.pool) {
                    isEmpty = this.pool.authenticatedConnections.isEmpty();
                }
                if (isEmpty) {
                    if (this.pool.debug) {
                        this.out.println("DEBUG: close() - no connections ");
                    }
                    cleanup();
                    releaseStoreProtocol(null);
                    return;
                }
                IMAPProtocol storeProtocol = getStoreProtocol();
                try {
                    synchronized (this.pool) {
                        this.pool.authenticatedConnections.removeElement(storeProtocol);
                    }
                    storeProtocol.logout();
                    releaseStoreProtocol(storeProtocol);
                } catch (ProtocolException e) {
                    e = e;
                    cleanup();
                    throw new MessagingException(e.getMessage(), e);
                } catch (Throwable th) {
                    th = th;
                    iMAPProtocol = storeProtocol;
                    releaseStoreProtocol(iMAPProtocol);
                    throw th;
                }
            } catch (ProtocolException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // javax.mail.Service
    public void finalize() throws Throwable {
        super.finalize();
        close();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getAppendBufferSize() {
        return this.appendBufferSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean getConnectionPoolDebug() {
        return this.pool.debug;
    }

    @Override // javax.mail.Store
    public synchronized Folder getDefaultFolder() throws MessagingException {
        checkConnected();
        return new DefaultFolder(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getFetchBlockSize() {
        return this.blksize;
    }

    @Override // javax.mail.Store
    public synchronized Folder getFolder(String str) throws MessagingException {
        checkConnected();
        return new IMAPFolder(str, (char) 65535, this);
    }

    @Override // javax.mail.Store
    public synchronized Folder getFolder(URLName uRLName) throws MessagingException {
        checkConnected();
        return new IMAPFolder(uRLName.getFile(), (char) 65535, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getMinIdleTime() {
        return this.minIdleTime;
    }

    @Override // javax.mail.Store
    public Folder[] getPersonalNamespaces() throws MessagingException {
        Namespaces namespaces = getNamespaces();
        return (namespaces == null || namespaces.personal == null) ? super.getPersonalNamespaces() : namespaceToFolders(namespaces.personal, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't wrap try/catch for region: R(12:6|7|(8:16|(1:18)|19|20|(2:31|32)|22|23|(3:25|(1:27)|28))|39|(1:41)|42|43|(5:63|64|65|66|(1:68))|45|46|47|(1:50)(3:49|23|(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00fa, code lost:
    
        throw new javax.mail.MessagingException("connection failure");
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00ea, code lost:
    
        r1 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00eb, code lost:
    
        if (r1 != null) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00f0, code lost:
    
        r11 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00ed, code lost:
    
        r1.disconnect();
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0101 A[Catch: all -> 0x011f, TryCatch #6 {, blocks: (B:7:0x0008, B:9:0x0014, B:11:0x0021, B:13:0x0029, B:16:0x0032, B:18:0x0036, B:19:0x0053, B:32:0x007d, B:22:0x008a, B:23:0x00fc, B:25:0x0101, B:27:0x0109, B:28:0x0113, B:29:0x011c, B:35:0x0087, B:39:0x008f, B:41:0x0093, B:43:0x009a, B:64:0x009e, B:66:0x00a7, B:68:0x00b6, B:45:0x00c2, B:47:0x00e2, B:51:0x00f3, B:52:0x00fa, B:60:0x00ed), top: B:6:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00f3 A[EDGE_INSN: B:50:0x00f3->B:51:0x00f3 BREAK  A[LOOP:0: B:2:0x0001->B:36:0x0088, LOOP_LABEL: LOOP:0: B:2:0x0001->B:36:0x0088], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.sun.mail.imap.protocol.IMAPProtocol getProtocol(com.sun.mail.imap.IMAPFolder r13) throws javax.mail.MessagingException {
        /*
            Method dump skipped, instructions count: 290
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.mail.imap.IMAPStore.getProtocol(com.sun.mail.imap.IMAPFolder):com.sun.mail.imap.protocol.IMAPProtocol");
    }

    @Override // javax.mail.QuotaAwareStore
    public synchronized Quota[] getQuota(String str) throws MessagingException {
        Quota[] quotaRoot;
        checkConnected();
        IMAPProtocol iMAPProtocol = null;
        try {
            try {
                IMAPProtocol storeProtocol = getStoreProtocol();
                try {
                    quotaRoot = storeProtocol.getQuotaRoot(str);
                    releaseStoreProtocol(storeProtocol);
                    if (storeProtocol == null) {
                        cleanup();
                    }
                } catch (BadCommandException e) {
                    e = e;
                    throw new MessagingException("QUOTA not supported", e);
                } catch (ConnectionException e2) {
                    e = e2;
                    throw new StoreClosedException(this, e.getMessage());
                } catch (ProtocolException e3) {
                    e = e3;
                    throw new MessagingException(e.getMessage(), e);
                } catch (Throwable th) {
                    th = th;
                    iMAPProtocol = storeProtocol;
                    releaseStoreProtocol(iMAPProtocol);
                    if (iMAPProtocol == null) {
                        cleanup();
                    }
                    throw th;
                }
            } catch (BadCommandException e4) {
                e = e4;
            } catch (ConnectionException e5) {
                e = e5;
            } catch (ProtocolException e6) {
                e = e6;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        return quotaRoot;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Session getSession() {
        return this.session;
    }

    @Override // javax.mail.Store
    public Folder[] getSharedNamespaces() throws MessagingException {
        Namespaces namespaces = getNamespaces();
        return (namespaces == null || namespaces.shared == null) ? super.getSharedNamespaces() : namespaceToFolders(namespaces.shared, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getStatusCacheTimeout() {
        return this.statusCacheTimeout;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005f A[Catch: all -> 0x00c9, TryCatch #2 {, blocks: (B:6:0x0008, B:8:0x0017, B:10:0x001f, B:12:0x0026, B:15:0x0046, B:33:0x0057, B:34:0x005e, B:17:0x005f, B:18:0x009e, B:28:0x00a6, B:20:0x00ad, B:22:0x00bb, B:24:0x00c3, B:25:0x00c6, B:42:0x0051, B:46:0x006c, B:48:0x0074, B:49:0x0091), top: B:5:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0057 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.sun.mail.imap.protocol.IMAPProtocol getStoreProtocol() throws com.sun.mail.iap.ProtocolException {
        /*
            r12 = this;
            r0 = 0
            r1 = r0
        L2:
            if (r1 == 0) goto L5
            return r1
        L5:
            com.sun.mail.imap.IMAPStore$ConnectionPool r2 = r12.pool
            monitor-enter(r2)
            r12.waitIfIdle()     // Catch: java.lang.Throwable -> Lc9
            com.sun.mail.imap.IMAPStore$ConnectionPool r3 = r12.pool     // Catch: java.lang.Throwable -> Lc9
            java.util.Vector r3 = com.sun.mail.imap.IMAPStore.ConnectionPool.access$10(r3)     // Catch: java.lang.Throwable -> Lc9
            boolean r3 = r3.isEmpty()     // Catch: java.lang.Throwable -> Lc9
            if (r3 == 0) goto L6c
            com.sun.mail.imap.IMAPStore$ConnectionPool r3 = r12.pool     // Catch: java.lang.Throwable -> Lc9
            boolean r3 = com.sun.mail.imap.IMAPStore.ConnectionPool.access$3(r3)     // Catch: java.lang.Throwable -> Lc9
            if (r3 == 0) goto L26
            java.io.PrintStream r3 = r12.out     // Catch: java.lang.Throwable -> Lc9
            java.lang.String r4 = "DEBUG: getStoreProtocol() - no connections in the pool, creating a new one"
            r3.println(r4)     // Catch: java.lang.Throwable -> Lc9
        L26:
            com.sun.mail.imap.protocol.IMAPProtocol r11 = new com.sun.mail.imap.protocol.IMAPProtocol     // Catch: java.lang.Exception -> L4f java.lang.Throwable -> Lc9
            java.lang.String r4 = r12.name     // Catch: java.lang.Exception -> L4f java.lang.Throwable -> Lc9
            java.lang.String r5 = r12.host     // Catch: java.lang.Exception -> L4f java.lang.Throwable -> Lc9
            int r6 = r12.port     // Catch: java.lang.Exception -> L4f java.lang.Throwable -> Lc9
            javax.mail.Session r3 = r12.session     // Catch: java.lang.Exception -> L4f java.lang.Throwable -> Lc9
            boolean r7 = r3.getDebug()     // Catch: java.lang.Exception -> L4f java.lang.Throwable -> Lc9
            javax.mail.Session r3 = r12.session     // Catch: java.lang.Exception -> L4f java.lang.Throwable -> Lc9
            java.io.PrintStream r8 = r3.getDebugOut()     // Catch: java.lang.Exception -> L4f java.lang.Throwable -> Lc9
            javax.mail.Session r3 = r12.session     // Catch: java.lang.Exception -> L4f java.lang.Throwable -> Lc9
            java.util.Properties r9 = r3.getProperties()     // Catch: java.lang.Exception -> L4f java.lang.Throwable -> Lc9
            boolean r10 = r12.isSSL     // Catch: java.lang.Exception -> L4f java.lang.Throwable -> Lc9
            r3 = r11
            r3.<init>(r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Exception -> L4f java.lang.Throwable -> Lc9
            java.lang.String r1 = r12.user     // Catch: java.lang.Exception -> L4e java.lang.Throwable -> Lc9
            java.lang.String r3 = r12.password     // Catch: java.lang.Exception -> L4e java.lang.Throwable -> Lc9
            r12.login(r11, r1, r3)     // Catch: java.lang.Exception -> L4e java.lang.Throwable -> Lc9
            goto L55
        L4e:
            r1 = r11
        L4f:
            if (r1 == 0) goto L54
            r1.logout()     // Catch: java.lang.Exception -> L54 java.lang.Throwable -> Lc9
        L54:
            r11 = r0
        L55:
            if (r11 != 0) goto L5f
            com.sun.mail.iap.ConnectionException r0 = new com.sun.mail.iap.ConnectionException     // Catch: java.lang.Throwable -> Lc9
            java.lang.String r1 = "failed to create new store connection"
            r0.<init>(r1)     // Catch: java.lang.Throwable -> Lc9
            throw r0     // Catch: java.lang.Throwable -> Lc9
        L5f:
            r11.addResponseHandler(r12)     // Catch: java.lang.Throwable -> Lc9
            com.sun.mail.imap.IMAPStore$ConnectionPool r1 = r12.pool     // Catch: java.lang.Throwable -> Lc9
            java.util.Vector r1 = com.sun.mail.imap.IMAPStore.ConnectionPool.access$10(r1)     // Catch: java.lang.Throwable -> Lc9
            r1.addElement(r11)     // Catch: java.lang.Throwable -> Lc9
            goto L9e
        L6c:
            com.sun.mail.imap.IMAPStore$ConnectionPool r1 = r12.pool     // Catch: java.lang.Throwable -> Lc9
            boolean r1 = com.sun.mail.imap.IMAPStore.ConnectionPool.access$3(r1)     // Catch: java.lang.Throwable -> Lc9
            if (r1 == 0) goto L91
            java.io.PrintStream r1 = r12.out     // Catch: java.lang.Throwable -> Lc9
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lc9
            java.lang.String r4 = "DEBUG: getStoreProtocol() - connection available -- size: "
            r3.<init>(r4)     // Catch: java.lang.Throwable -> Lc9
            com.sun.mail.imap.IMAPStore$ConnectionPool r4 = r12.pool     // Catch: java.lang.Throwable -> Lc9
            java.util.Vector r4 = com.sun.mail.imap.IMAPStore.ConnectionPool.access$10(r4)     // Catch: java.lang.Throwable -> Lc9
            int r4 = r4.size()     // Catch: java.lang.Throwable -> Lc9
            r3.append(r4)     // Catch: java.lang.Throwable -> Lc9
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> Lc9
            r1.println(r3)     // Catch: java.lang.Throwable -> Lc9
        L91:
            com.sun.mail.imap.IMAPStore$ConnectionPool r1 = r12.pool     // Catch: java.lang.Throwable -> Lc9
            java.util.Vector r1 = com.sun.mail.imap.IMAPStore.ConnectionPool.access$10(r1)     // Catch: java.lang.Throwable -> Lc9
            java.lang.Object r1 = r1.firstElement()     // Catch: java.lang.Throwable -> Lc9
            r11 = r1
            com.sun.mail.imap.protocol.IMAPProtocol r11 = (com.sun.mail.imap.protocol.IMAPProtocol) r11     // Catch: java.lang.Throwable -> Lc9
        L9e:
            com.sun.mail.imap.IMAPStore$ConnectionPool r1 = r12.pool     // Catch: java.lang.Throwable -> Lc9
            boolean r1 = com.sun.mail.imap.IMAPStore.ConnectionPool.access$12(r1)     // Catch: java.lang.Throwable -> Lc9
            if (r1 == 0) goto Lad
            com.sun.mail.imap.IMAPStore$ConnectionPool r1 = r12.pool     // Catch: java.lang.InterruptedException -> Lab java.lang.Throwable -> Lc9
            r1.wait()     // Catch: java.lang.InterruptedException -> Lab java.lang.Throwable -> Lc9
        Lab:
            r1 = r0
            goto Lc3
        Lad:
            com.sun.mail.imap.IMAPStore$ConnectionPool r1 = r12.pool     // Catch: java.lang.Throwable -> Lc9
            r3 = 1
            com.sun.mail.imap.IMAPStore.ConnectionPool.access$15(r1, r3)     // Catch: java.lang.Throwable -> Lc9
            com.sun.mail.imap.IMAPStore$ConnectionPool r1 = r12.pool     // Catch: java.lang.Throwable -> Lc9
            boolean r1 = com.sun.mail.imap.IMAPStore.ConnectionPool.access$3(r1)     // Catch: java.lang.Throwable -> Lc9
            if (r1 == 0) goto Lc2
            java.io.PrintStream r1 = r12.out     // Catch: java.lang.Throwable -> Lc9
            java.lang.String r3 = "DEBUG: getStoreProtocol() -- storeConnectionInUse"
            r1.println(r3)     // Catch: java.lang.Throwable -> Lc9
        Lc2:
            r1 = r11
        Lc3:
            r12.timeoutConnections()     // Catch: java.lang.Throwable -> Lc9
            monitor-exit(r2)     // Catch: java.lang.Throwable -> Lc9
            goto L2
        Lc9:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> Lc9
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.mail.imap.IMAPStore.getStoreProtocol():com.sun.mail.imap.protocol.IMAPProtocol");
    }

    @Override // javax.mail.Store
    public Folder[] getUserNamespaces(String str) throws MessagingException {
        Namespaces namespaces = getNamespaces();
        return (namespaces == null || namespaces.otherUsers == null) ? super.getUserNamespaces(str) : namespaceToFolders(namespaces.otherUsers, str);
    }

    @Override // com.sun.mail.iap.ResponseHandler
    public void handleResponse(Response response) {
        if (response.isOK() || response.isNO() || response.isBAD() || response.isBYE()) {
            handleResponseCode(response);
        }
        if (response.isBYE()) {
            if (this.debug) {
                this.out.println("DEBUG: IMAPStore connection dead");
            }
            if (this.connected) {
                cleanup(response.isSynthetic());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void handleResponseCode(Response response) {
        String rest = response.getRest();
        boolean z = false;
        if (rest.startsWith("[")) {
            int indexOf = rest.indexOf(93);
            if (indexOf > 0 && rest.substring(0, indexOf + 1).equalsIgnoreCase("[ALERT]")) {
                z = true;
            }
            rest = rest.substring(indexOf + 1).trim();
        }
        if (z) {
            notifyStoreListeners(1, rest);
        } else {
            if (!response.isUnTagged() || rest.length() <= 0) {
                return;
            }
            notifyStoreListeners(2, rest);
        }
    }

    public synchronized boolean hasCapability(String str) throws MessagingException {
        boolean hasCapability;
        IMAPProtocol iMAPProtocol = null;
        try {
            try {
                IMAPProtocol storeProtocol = getStoreProtocol();
                try {
                    hasCapability = storeProtocol.hasCapability(str);
                    releaseStoreProtocol(storeProtocol);
                } catch (ProtocolException e) {
                    e = e;
                    iMAPProtocol = storeProtocol;
                    if (iMAPProtocol == null) {
                        cleanup();
                    }
                    throw new MessagingException(e.getMessage(), e);
                } catch (Throwable th) {
                    th = th;
                    iMAPProtocol = storeProtocol;
                    releaseStoreProtocol(iMAPProtocol);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (ProtocolException e2) {
            e = e2;
        }
        return hasCapability;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasSeparateStoreConnection() {
        return this.pool.separateStoreConnection;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0037, code lost:
    
        if (r5.enableImapEvents == false) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x003d, code lost:
    
        if (r1.isUnTagged() == false) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x003f, code lost:
    
        notifyStoreListeners(1000, r1.toString());
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x00c8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0064 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void idle() throws javax.mail.MessagingException {
        /*
            Method dump skipped, instructions count: 221
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.mail.imap.IMAPStore.idle():void");
    }

    @Override // javax.mail.Service
    public synchronized boolean isConnected() {
        if (!this.connected) {
            super.setConnected(false);
            return false;
        }
        IMAPProtocol iMAPProtocol = null;
        try {
            try {
                IMAPProtocol storeProtocol = getStoreProtocol();
                try {
                    storeProtocol.noop();
                    releaseStoreProtocol(storeProtocol);
                } catch (ProtocolException unused) {
                    iMAPProtocol = storeProtocol;
                    if (iMAPProtocol == null) {
                        cleanup();
                    }
                    releaseStoreProtocol(iMAPProtocol);
                    return super.isConnected();
                } catch (Throwable th) {
                    th = th;
                    iMAPProtocol = storeProtocol;
                    releaseStoreProtocol(iMAPProtocol);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (ProtocolException unused2) {
        }
        return super.isConnected();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isConnectionPoolFull() {
        boolean z;
        synchronized (this.pool) {
            if (this.pool.debug) {
                this.out.println("DEBUG: current size: " + this.pool.authenticatedConnections.size() + "   pool size: " + this.pool.poolSize);
            }
            z = this.pool.authenticatedConnections.size() >= this.pool.poolSize;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0036 A[Catch: all -> 0x0110, TRY_LEAVE, TryCatch #0 {, blocks: (B:9:0x000d, B:10:0x0032, B:12:0x0036, B:14:0x003a, B:15:0x003c, B:20:0x004a, B:22:0x0069, B:24:0x006d, B:25:0x008d, B:26:0x009b, B:34:0x00a9, B:39:0x00ce, B:40:0x00d1, B:41:0x00de, B:43:0x00ad, B:49:0x00b3, B:53:0x00b5, B:54:0x00be, B:56:0x00c0, B:57:0x00c9, B:58:0x0010, B:60:0x002d, B:61:0x00df, B:63:0x00e3, B:66:0x0103), top: B:3:0x0002, inners: #5, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // javax.mail.Service
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean protocolConnect(java.lang.String r11, int r12, java.lang.String r13, java.lang.String r14) throws javax.mail.MessagingException {
        /*
            Method dump skipped, instructions count: 275
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.mail.imap.IMAPStore.protocolConnect(java.lang.String, int, java.lang.String, java.lang.String):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void releaseProtocol(IMAPFolder iMAPFolder, IMAPProtocol iMAPProtocol) {
        synchronized (this.pool) {
            if (iMAPProtocol != null) {
                if (isConnectionPoolFull()) {
                    if (this.debug) {
                        this.out.println("DEBUG: pool is full, not adding an Authenticated connection");
                    }
                    try {
                        iMAPProtocol.logout();
                    } catch (ProtocolException unused) {
                    }
                } else {
                    iMAPProtocol.addResponseHandler(this);
                    this.pool.authenticatedConnections.addElement(iMAPProtocol);
                    if (this.debug) {
                        this.out.println("DEBUG: added an Authenticated connection -- size: " + this.pool.authenticatedConnections.size());
                    }
                }
            }
            if (this.pool.folders != null) {
                this.pool.folders.removeElement(iMAPFolder);
            }
            timeoutConnections();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void releaseStoreProtocol(IMAPProtocol iMAPProtocol) {
        if (iMAPProtocol == null) {
            return;
        }
        synchronized (this.pool) {
            this.pool.storeConnectionInUse = false;
            this.pool.notifyAll();
            if (this.pool.debug) {
                this.out.println("DEBUG: releaseStoreProtocol()");
            }
            timeoutConnections();
        }
    }

    public synchronized void setPassword(String str) {
        this.password = str;
    }

    @Override // javax.mail.QuotaAwareStore
    public synchronized void setQuota(Quota quota) throws MessagingException {
        checkConnected();
        IMAPProtocol iMAPProtocol = null;
        try {
            try {
                IMAPProtocol storeProtocol = getStoreProtocol();
                try {
                    storeProtocol.setQuota(quota);
                    releaseStoreProtocol(storeProtocol);
                    if (storeProtocol == null) {
                        cleanup();
                    }
                } catch (BadCommandException e) {
                    e = e;
                    throw new MessagingException("QUOTA not supported", e);
                } catch (ConnectionException e2) {
                    e = e2;
                    throw new StoreClosedException(this, e.getMessage());
                } catch (ProtocolException e3) {
                    e = e3;
                    throw new MessagingException(e.getMessage(), e);
                } catch (Throwable th) {
                    th = th;
                    iMAPProtocol = storeProtocol;
                    releaseStoreProtocol(iMAPProtocol);
                    if (iMAPProtocol == null) {
                        cleanup();
                    }
                    throw th;
                }
            } catch (BadCommandException e4) {
                e = e4;
            } catch (ConnectionException e5) {
                e = e5;
            } catch (ProtocolException e6) {
                e = e6;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public synchronized void setUsername(String str) {
        this.user = str;
    }
}
