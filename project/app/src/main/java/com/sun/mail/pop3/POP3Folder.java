package com.sun.mail.pop3;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Vector;
import javax.mail.FetchProfile;
import javax.mail.Flags;
import javax.mail.Folder;
import javax.mail.FolderClosedException;
import javax.mail.FolderNotFoundException;
import javax.mail.Message;
import javax.mail.MessageRemovedException;
import javax.mail.MessagingException;
import javax.mail.MethodNotSupportedException;
import javax.mail.UIDFolder;

/* loaded from: classes.dex */
public class POP3Folder extends Folder {
    private boolean doneUidl;
    private boolean exists;
    private Vector message_cache;
    private String name;
    private boolean opened;
    private Protocol port;
    private int size;
    private int total;

    /* JADX INFO: Access modifiers changed from: package-private */
    public POP3Folder(POP3Store pOP3Store, String str) {
        super(pOP3Store);
        this.exists = false;
        this.opened = false;
        this.doneUidl = false;
        this.name = str;
        if (str.equalsIgnoreCase("INBOX")) {
            this.exists = true;
        }
    }

    @Override // javax.mail.Folder
    public void appendMessages(Message[] messageArr) throws MessagingException {
        throw new MethodNotSupportedException("Append not supported");
    }

    void checkClosed() throws IllegalStateException {
        if (this.opened) {
            throw new IllegalStateException("Folder is Open");
        }
    }

    void checkOpen() throws IllegalStateException {
        if (!this.opened) {
            throw new IllegalStateException("Folder is not Open");
        }
    }

    void checkReadable() throws IllegalStateException {
        if (!this.opened || (this.mode != 1 && this.mode != 2)) {
            throw new IllegalStateException("Folder is not Readable");
        }
    }

    void checkWritable() throws IllegalStateException {
        if (!this.opened || this.mode != 2) {
            throw new IllegalStateException("Folder is not Writable");
        }
    }

    @Override // javax.mail.Folder
    public synchronized void close(boolean z) throws MessagingException {
        checkOpen();
        try {
            try {
                if (((POP3Store) this.store).rsetBeforeQuit) {
                    this.port.rset();
                }
                if (z && this.mode == 2) {
                    for (int i = 0; i < this.message_cache.size(); i++) {
                        POP3Message pOP3Message = (POP3Message) this.message_cache.elementAt(i);
                        if (pOP3Message != null && pOP3Message.isSet(Flags.Flag.DELETED)) {
                            try {
                                this.port.dele(i + 1);
                            } catch (IOException e) {
                                throw new MessagingException("Exception deleting messages during close", e);
                            }
                        }
                    }
                }
                this.port.quit();
            } catch (IOException unused) {
            }
        } finally {
            this.port = null;
            ((POP3Store) this.store).closePort(this);
            this.message_cache = null;
            this.opened = false;
            notifyConnectionListeners(3);
        }
    }

    @Override // javax.mail.Folder
    public boolean create(int i) throws MessagingException {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected com.sun.mail.pop3.POP3Message createMessage(javax.mail.Folder r4, int r5) throws javax.mail.MessagingException {
        /*
            r3 = this;
            javax.mail.Store r4 = r3.store
            com.sun.mail.pop3.POP3Store r4 = (com.sun.mail.pop3.POP3Store) r4
            java.lang.reflect.Constructor r4 = r4.messageConstructor
            if (r4 == 0) goto L1d
            r0 = 2
            java.lang.Object[] r0 = new java.lang.Object[r0]     // Catch: java.lang.Exception -> L1d
            r1 = 0
            r0[r1] = r3     // Catch: java.lang.Exception -> L1d
            r1 = 1
            java.lang.Integer r2 = new java.lang.Integer     // Catch: java.lang.Exception -> L1d
            r2.<init>(r5)     // Catch: java.lang.Exception -> L1d
            r0[r1] = r2     // Catch: java.lang.Exception -> L1d
            java.lang.Object r4 = r4.newInstance(r0)     // Catch: java.lang.Exception -> L1d
            com.sun.mail.pop3.POP3Message r4 = (com.sun.mail.pop3.POP3Message) r4     // Catch: java.lang.Exception -> L1d
            goto L1e
        L1d:
            r4 = 0
        L1e:
            if (r4 != 0) goto L25
            com.sun.mail.pop3.POP3Message r4 = new com.sun.mail.pop3.POP3Message
            r4.<init>(r3, r5)
        L25:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.mail.pop3.POP3Folder.createMessage(javax.mail.Folder, int):com.sun.mail.pop3.POP3Message");
    }

    @Override // javax.mail.Folder
    public boolean delete(boolean z) throws MessagingException {
        throw new MethodNotSupportedException(RequestParameters.SUBRESOURCE_DELETE);
    }

    @Override // javax.mail.Folder
    public boolean exists() {
        return this.exists;
    }

    @Override // javax.mail.Folder
    public Message[] expunge() throws MessagingException {
        throw new MethodNotSupportedException("Expunge not supported");
    }

    @Override // javax.mail.Folder
    public synchronized void fetch(Message[] messageArr, FetchProfile fetchProfile) throws MessagingException {
        checkReadable();
        if (!this.doneUidl && fetchProfile.contains(UIDFolder.FetchProfileItem.UID)) {
            String[] strArr = new String[this.message_cache.size()];
            try {
                try {
                    if (!this.port.uidl(strArr)) {
                        return;
                    }
                    for (int i = 0; i < strArr.length; i++) {
                        if (strArr[i] != null) {
                            ((POP3Message) getMessage(i + 1)).uid = strArr[i];
                        }
                    }
                    this.doneUidl = true;
                } catch (IOException e) {
                    throw new MessagingException("error getting UIDL", e);
                }
            } catch (EOFException e2) {
                close(false);
                throw new FolderClosedException(this, e2.toString());
            }
        }
        if (fetchProfile.contains(FetchProfile.Item.ENVELOPE)) {
            for (Message message : messageArr) {
                try {
                    POP3Message pOP3Message = (POP3Message) message;
                    pOP3Message.getHeader("");
                    pOP3Message.getSize();
                } catch (MessageRemovedException unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // javax.mail.Folder
    public void finalize() throws Throwable {
        super.finalize();
        close(false);
    }

    @Override // javax.mail.Folder
    public Folder getFolder(String str) throws MessagingException {
        throw new MessagingException("not a directory");
    }

    @Override // javax.mail.Folder
    public String getFullName() {
        return this.name;
    }

    @Override // javax.mail.Folder
    public synchronized Message getMessage(int i) throws MessagingException {
        POP3Message pOP3Message;
        checkOpen();
        int i2 = i - 1;
        pOP3Message = (POP3Message) this.message_cache.elementAt(i2);
        if (pOP3Message == null) {
            pOP3Message = createMessage(this, i);
            this.message_cache.setElementAt(pOP3Message, i2);
        }
        return pOP3Message;
    }

    @Override // javax.mail.Folder
    public synchronized int getMessageCount() throws MessagingException {
        if (!this.opened) {
            return -1;
        }
        checkReadable();
        return this.total;
    }

    @Override // javax.mail.Folder
    public String getName() {
        return this.name;
    }

    @Override // javax.mail.Folder
    public Folder getParent() {
        return new DefaultFolder((POP3Store) this.store);
    }

    @Override // javax.mail.Folder
    public Flags getPermanentFlags() {
        return new Flags();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Protocol getProtocol() throws MessagingException {
        checkOpen();
        return this.port;
    }

    @Override // javax.mail.Folder
    public char getSeparator() {
        return (char) 0;
    }

    public synchronized int getSize() throws MessagingException {
        checkOpen();
        return this.size;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x001d, code lost:
    
        if (r2 == null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x001f, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x005e, code lost:
    
        if (r2 == null) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized int[] getSizes() throws javax.mail.MessagingException {
        /*
            r6 = this;
            monitor-enter(r6)
            r6.checkOpen()     // Catch: java.lang.Throwable -> L63
            int r0 = r6.total     // Catch: java.lang.Throwable -> L63
            int[] r0 = new int[r0]     // Catch: java.lang.Throwable -> L63
            r1 = 0
            com.sun.mail.pop3.Protocol r2 = r6.port     // Catch: java.lang.Throwable -> L4a java.io.IOException -> L58
            java.io.InputStream r2 = r2.list()     // Catch: java.lang.Throwable -> L4a java.io.IOException -> L58
            com.sun.mail.util.LineInputStream r3 = new com.sun.mail.util.LineInputStream     // Catch: java.lang.Throwable -> L47 java.io.IOException -> L59
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L47 java.io.IOException -> L59
        L14:
            java.lang.String r1 = r3.readLine()     // Catch: java.lang.Throwable -> L43 java.io.IOException -> L45
            if (r1 != 0) goto L23
            r3.close()     // Catch: java.io.IOException -> L1d java.lang.Throwable -> L63
        L1d:
            if (r2 == 0) goto L61
        L1f:
            r2.close()     // Catch: java.io.IOException -> L61 java.lang.Throwable -> L63
            goto L61
        L23:
            java.util.StringTokenizer r4 = new java.util.StringTokenizer     // Catch: java.lang.Exception -> L14 java.lang.Throwable -> L43 java.io.IOException -> L45
            r4.<init>(r1)     // Catch: java.lang.Exception -> L14 java.lang.Throwable -> L43 java.io.IOException -> L45
            java.lang.String r1 = r4.nextToken()     // Catch: java.lang.Exception -> L14 java.lang.Throwable -> L43 java.io.IOException -> L45
            int r1 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.Exception -> L14 java.lang.Throwable -> L43 java.io.IOException -> L45
            java.lang.String r4 = r4.nextToken()     // Catch: java.lang.Exception -> L14 java.lang.Throwable -> L43 java.io.IOException -> L45
            int r4 = java.lang.Integer.parseInt(r4)     // Catch: java.lang.Exception -> L14 java.lang.Throwable -> L43 java.io.IOException -> L45
            if (r1 <= 0) goto L14
            int r5 = r6.total     // Catch: java.lang.Exception -> L14 java.lang.Throwable -> L43 java.io.IOException -> L45
            if (r1 > r5) goto L14
            int r1 = r1 + (-1)
            r0[r1] = r4     // Catch: java.lang.Exception -> L14 java.lang.Throwable -> L43 java.io.IOException -> L45
            goto L14
        L43:
            r0 = move-exception
            goto L4d
        L45:
            r1 = r3
            goto L59
        L47:
            r0 = move-exception
            r3 = r1
            goto L4d
        L4a:
            r0 = move-exception
            r2 = r1
            r3 = r2
        L4d:
            if (r3 == 0) goto L52
            r3.close()     // Catch: java.io.IOException -> L52 java.lang.Throwable -> L63
        L52:
            if (r2 == 0) goto L57
            r2.close()     // Catch: java.io.IOException -> L57 java.lang.Throwable -> L63
        L57:
            throw r0     // Catch: java.lang.Throwable -> L63
        L58:
            r2 = r1
        L59:
            if (r1 == 0) goto L5e
            r1.close()     // Catch: java.io.IOException -> L5e java.lang.Throwable -> L63
        L5e:
            if (r2 == 0) goto L61
            goto L1f
        L61:
            monitor-exit(r6)
            return r0
        L63:
            r0 = move-exception
            monitor-exit(r6)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.mail.pop3.POP3Folder.getSizes():int[]");
    }

    @Override // javax.mail.Folder
    public int getType() {
        return 1;
    }

    public synchronized String getUID(Message message) throws MessagingException {
        POP3Message pOP3Message;
        checkOpen();
        pOP3Message = (POP3Message) message;
        try {
            try {
                if (pOP3Message.uid == "UNKNOWN") {
                    pOP3Message.uid = this.port.uidl(pOP3Message.getMessageNumber());
                }
            } catch (IOException e) {
                throw new MessagingException("error getting UIDL", e);
            }
        } catch (EOFException e2) {
            close(false);
            throw new FolderClosedException(this, e2.toString());
        }
        return pOP3Message.uid;
    }

    @Override // javax.mail.Folder
    public boolean hasNewMessages() throws MessagingException {
        return false;
    }

    @Override // javax.mail.Folder
    public boolean isOpen() {
        if (!this.opened) {
            return false;
        }
        if (this.store.isConnected()) {
            return true;
        }
        try {
            close(false);
        } catch (MessagingException unused) {
        }
        return false;
    }

    @Override // javax.mail.Folder
    public Folder[] list(String str) throws MessagingException {
        throw new MessagingException("not a directory");
    }

    public synchronized InputStream listCommand() throws MessagingException, IOException {
        checkOpen();
        return this.port.list();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // javax.mail.Folder
    public void notifyMessageChangedListeners(int i, Message message) {
        super.notifyMessageChangedListeners(i, message);
    }

    @Override // javax.mail.Folder
    public synchronized void open(int i) throws MessagingException {
        POP3Store pOP3Store;
        checkClosed();
        if (!this.exists) {
            throw new FolderNotFoundException(this, "folder is not INBOX");
        }
        try {
            this.port = ((POP3Store) this.store).getPort(this);
            Status stat = this.port.stat();
            this.total = stat.total;
            this.size = stat.size;
            this.mode = i;
            this.opened = true;
            this.message_cache = new Vector(this.total);
            this.message_cache.setSize(this.total);
            this.doneUidl = false;
            notifyConnectionListeners(1);
        } catch (IOException e) {
            try {
                if (this.port != null) {
                    this.port.quit();
                }
                this.port = null;
                pOP3Store = (POP3Store) this.store;
            } catch (IOException unused) {
                this.port = null;
                pOP3Store = (POP3Store) this.store;
            } catch (Throwable th) {
                this.port = null;
                ((POP3Store) this.store).closePort(this);
                throw th;
            }
            pOP3Store.closePort(this);
            throw new MessagingException("Open failed", e);
        }
    }

    @Override // javax.mail.Folder
    public boolean renameTo(Folder folder) throws MessagingException {
        throw new MethodNotSupportedException("renameTo");
    }
}
