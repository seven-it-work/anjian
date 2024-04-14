package com.sun.mail.pop3;

import java.io.EOFException;
import java.io.IOException;
import java.lang.reflect.Constructor;
import javax.mail.AuthenticationFailedException;
import javax.mail.Folder;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Store;
import javax.mail.URLName;

/* loaded from: classes.dex */
public class POP3Store extends Store {
    private int defaultPort;
    boolean disableTop;
    boolean forgetTopHeaders;
    private String host;
    private boolean isSSL;
    Constructor messageConstructor;
    private String name;
    private String passwd;
    private Protocol port;
    private int portNum;
    private POP3Folder portOwner;
    boolean rsetBeforeQuit;
    private String user;

    public POP3Store(Session session, URLName uRLName) {
        this(session, uRLName, "pop3", 110, false);
    }

    public POP3Store(Session session, URLName uRLName, String str, int i, boolean z) {
        super(session, uRLName);
        Class<?> cls;
        this.name = "pop3";
        this.defaultPort = 110;
        this.isSSL = false;
        this.port = null;
        this.portOwner = null;
        this.host = null;
        this.portNum = -1;
        this.user = null;
        this.passwd = null;
        this.rsetBeforeQuit = false;
        this.disableTop = false;
        this.forgetTopHeaders = false;
        this.messageConstructor = null;
        str = uRLName != null ? uRLName.getProtocol() : str;
        this.name = str;
        this.defaultPort = i;
        this.isSSL = z;
        String property = session.getProperty("mail." + str + ".rsetbeforequit");
        if (property != null && property.equalsIgnoreCase("true")) {
            this.rsetBeforeQuit = true;
        }
        String property2 = session.getProperty("mail." + str + ".disabletop");
        if (property2 != null && property2.equalsIgnoreCase("true")) {
            this.disableTop = true;
        }
        String property3 = session.getProperty("mail." + str + ".forgettopheaders");
        if (property3 != null && property3.equalsIgnoreCase("true")) {
            this.forgetTopHeaders = true;
        }
        String property4 = session.getProperty("mail." + str + ".message.class");
        if (property4 != null) {
            if (session.getDebug()) {
                session.getDebugOut().println("DEBUG: POP3 message class: " + property4);
            }
            try {
                try {
                    cls = getClass().getClassLoader().loadClass(property4);
                } catch (ClassNotFoundException unused) {
                    cls = Class.forName(property4);
                }
                this.messageConstructor = cls.getConstructor(Folder.class, Integer.TYPE);
            } catch (Exception e) {
                if (session.getDebug()) {
                    session.getDebugOut().println("DEBUG: failed to load POP3 message class: " + e);
                }
            }
        }
    }

    private void checkConnected() throws MessagingException {
        if (!super.isConnected()) {
            throw new MessagingException("Not connected");
        }
    }

    @Override // javax.mail.Service
    public synchronized void close() throws MessagingException {
        try {
            try {
                if (this.port != null) {
                    this.port.quit();
                }
            } finally {
                this.port = null;
                super.close();
            }
        } catch (IOException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void closePort(POP3Folder pOP3Folder) {
        if (this.portOwner == pOP3Folder) {
            this.port = null;
            this.portOwner = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // javax.mail.Service
    public void finalize() throws Throwable {
        super.finalize();
        if (this.port != null) {
            close();
        }
    }

    @Override // javax.mail.Store
    public Folder getDefaultFolder() throws MessagingException {
        checkConnected();
        return new DefaultFolder(this);
    }

    @Override // javax.mail.Store
    public Folder getFolder(String str) throws MessagingException {
        checkConnected();
        return new POP3Folder(this, str);
    }

    @Override // javax.mail.Store
    public Folder getFolder(URLName uRLName) throws MessagingException {
        checkConnected();
        return new POP3Folder(this, uRLName.getFile());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized Protocol getPort(POP3Folder pOP3Folder) throws IOException {
        if (this.port != null && this.portOwner == null) {
            this.portOwner = pOP3Folder;
            return this.port;
        }
        Protocol protocol = new Protocol(this.host, this.portNum, this.session.getDebug(), this.session.getDebugOut(), this.session.getProperties(), "mail." + this.name, this.isSSL);
        String login = protocol.login(this.user, this.passwd);
        if (login != null) {
            try {
                protocol.quit();
            } catch (Throwable unused) {
            }
            throw new EOFException(login);
        }
        if (this.port == null && pOP3Folder != null) {
            this.port = protocol;
            this.portOwner = pOP3Folder;
        }
        if (this.portOwner == null) {
            this.portOwner = pOP3Folder;
        }
        return protocol;
    }

    @Override // javax.mail.Service
    public synchronized boolean isConnected() {
        if (!super.isConnected()) {
            return false;
        }
        synchronized (this) {
            try {
                try {
                    if (this.port == null) {
                        this.port = getPort(null);
                    } else {
                        this.port.noop();
                    }
                    return true;
                } catch (IOException unused) {
                    super.close();
                    return false;
                }
            } catch (Throwable unused2) {
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // javax.mail.Service
    public synchronized boolean protocolConnect(String str, int i, String str2, String str3) throws MessagingException {
        boolean z;
        if (str == null || str3 == null || str2 == null) {
            z = false;
        } else {
            if (i == -1) {
                try {
                    String property = this.session.getProperty("mail." + this.name + ".port");
                    if (property != null) {
                        i = Integer.parseInt(property);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (i == -1) {
                i = this.defaultPort;
            }
            this.host = str;
            this.portNum = i;
            this.user = str2;
            this.passwd = str3;
            try {
                this.port = getPort(null);
                z = true;
            } catch (EOFException e) {
                throw new AuthenticationFailedException(e.getMessage());
            } catch (IOException e2) {
                throw new MessagingException("Connect failed", e2);
            }
        }
        return z;
    }
}
