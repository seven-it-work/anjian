package javax.mail;

import java.util.Vector;
import javax.mail.event.ConnectionEvent;
import javax.mail.event.ConnectionListener;
import javax.mail.event.MailEvent;

/* loaded from: classes.dex */
public abstract class Service {
    protected boolean debug;

    /* renamed from: q */
    private EventQueue f10035q;
    protected Session session;
    protected URLName url;
    private boolean connected = false;
    private Vector connectionListeners = null;
    private Object qLock = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class TerminatorEvent extends MailEvent {
        private static final long serialVersionUID = 5542172141759168416L;

        TerminatorEvent() {
            super(new Object());
        }

        @Override // javax.mail.event.MailEvent
        public void dispatch(Object obj) {
            Thread.currentThread().interrupt();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Service(Session session, URLName uRLName) {
        this.url = null;
        this.debug = false;
        this.session = session;
        this.url = uRLName;
        this.debug = session.getDebug();
    }

    private void terminateQueue() {
        synchronized (this.qLock) {
            if (this.f10035q != null) {
                Vector vector = new Vector();
                vector.setSize(1);
                this.f10035q.enqueue(new TerminatorEvent(), vector);
                this.f10035q = null;
            }
        }
    }

    public synchronized void addConnectionListener(ConnectionListener connectionListener) {
        if (this.connectionListeners == null) {
            this.connectionListeners = new Vector();
        }
        this.connectionListeners.addElement(connectionListener);
    }

    public synchronized void close() throws MessagingException {
        setConnected(false);
        notifyConnectionListeners(3);
    }

    public void connect() throws MessagingException {
        connect(null, null, null);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:9|(6:11|(1:13)(1:89)|14|(1:16)(1:88)|(3:18|(2:20|21)|83)(2:(2:87|21)|83)|22)(1:90)|(2:(1:25)|(1:27))|(1:29)|(1:31)|(3:74|75|76)|33|(1:73)(2:37|(8:(1:40)(1:69)|41|42|43|44|45|(5:58|59|60|61|(1:63))|(1:(1:49)(2:50|51))(4:52|(1:54)|55|56))(6:72|43|44|45|(0)|(0)(0)))|71|42|43|44|45|(0)|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0123, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0124, code lost:
    
        r15 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x010c, code lost:
    
        if (r2.equals(r5.getUserName()) != false) goto L55;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0151 A[Catch: all -> 0x0179, TryCatch #2 {, blocks: (B:4:0x0005, B:6:0x000b, B:7:0x0012, B:9:0x0013, B:11:0x0017, B:13:0x001f, B:16:0x002d, B:18:0x0037, B:20:0x003f, B:21:0x0041, B:22:0x0059, B:25:0x006d, B:27:0x0088, B:29:0x00a3, B:31:0x00ad, B:75:0x00b7, B:35:0x00d3, B:37:0x00d7, B:40:0x00fb, B:41:0x00ff, B:44:0x011b, B:59:0x0127, B:61:0x012e, B:63:0x013a, B:49:0x014a, B:50:0x014b, B:51:0x0150, B:52:0x0151, B:54:0x0163, B:55:0x0171, B:69:0x0104, B:80:0x00c1, B:82:0x00c5, B:85:0x0048, B:87:0x0054), top: B:3:0x0005, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0127 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v4, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void connect(java.lang.String r20, int r21, java.lang.String r22, java.lang.String r23) throws javax.mail.MessagingException {
        /*
            Method dump skipped, instructions count: 381
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.Service.connect(java.lang.String, int, java.lang.String, java.lang.String):void");
    }

    public void connect(String str, String str2) throws MessagingException {
        connect(null, str, str2);
    }

    public void connect(String str, String str2, String str3) throws MessagingException {
        connect(str, -1, str2, str3);
    }

    public void finalize() throws Throwable {
        super.finalize();
        terminateQueue();
    }

    public synchronized URLName getURLName() {
        if (this.url == null || (this.url.getPassword() == null && this.url.getFile() == null)) {
            return this.url;
        }
        return new URLName(this.url.getProtocol(), this.url.getHost(), this.url.getPort(), null, this.url.getUsername(), null);
    }

    public synchronized boolean isConnected() {
        return this.connected;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void notifyConnectionListeners(int i) {
        if (this.connectionListeners != null) {
            queueEvent(new ConnectionEvent(this, i), this.connectionListeners);
        }
        if (i == 3) {
            terminateQueue();
        }
    }

    public boolean protocolConnect(String str, int i, String str2, String str3) throws MessagingException {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void queueEvent(MailEvent mailEvent, Vector vector) {
        synchronized (this.qLock) {
            if (this.f10035q == null) {
                this.f10035q = new EventQueue();
            }
        }
        this.f10035q.enqueue(mailEvent, (Vector) vector.clone());
    }

    public synchronized void removeConnectionListener(ConnectionListener connectionListener) {
        if (this.connectionListeners != null) {
            this.connectionListeners.removeElement(connectionListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void setConnected(boolean z) {
        this.connected = z;
    }

    protected synchronized void setURLName(URLName uRLName) {
        this.url = uRLName;
    }

    public String toString() {
        URLName uRLName = getURLName();
        return uRLName != null ? uRLName.toString() : super.toString();
    }
}
