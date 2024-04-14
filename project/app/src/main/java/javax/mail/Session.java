package javax.mail;

import android.support.v4.app.NotificationCompat;
import com.sun.mail.util.LineInputStream;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.net.InetAddress;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.Vector;
import javax.mail.Provider;

/* loaded from: classes.dex */
public final class Session {
    private static Session defaultSession;
    private final Authenticator authenticator;
    private boolean debug;
    private PrintStream out;
    private final Properties props;
    private final Hashtable authTable = new Hashtable();
    private final Vector providers = new Vector();
    private final Hashtable providersByProtocol = new Hashtable();
    private final Hashtable providersByClassName = new Hashtable();
    private final Properties addressMap = new Properties();

    private Session(Properties properties, Authenticator authenticator) {
        this.debug = false;
        this.props = properties;
        this.authenticator = authenticator;
        if (Boolean.valueOf(properties.getProperty("mail.debug")).booleanValue()) {
            this.debug = true;
        }
        if (this.debug) {
            m11676pr("DEBUG: JavaMail version 1.4.1");
        }
        Class<?> cls = authenticator != null ? authenticator.getClass() : getClass();
        loadProviders(cls);
        loadAddressMap(cls);
    }

    private static ClassLoader getContextClassLoader() {
        return (ClassLoader) AccessController.doPrivileged(new PrivilegedAction() { // from class: javax.mail.Session.3
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

    public static Session getDefaultInstance(Properties properties) {
        return getDefaultInstance(properties, null);
    }

    public static synchronized Session getDefaultInstance(Properties properties, Authenticator authenticator) {
        Session session;
        synchronized (Session.class) {
            if (defaultSession == null) {
                defaultSession = new Session(properties, authenticator);
            } else if (defaultSession.authenticator != authenticator && (defaultSession.authenticator == null || authenticator == null || defaultSession.authenticator.getClass().getClassLoader() != authenticator.getClass().getClassLoader())) {
                throw new SecurityException("Access to default session denied");
            }
            session = defaultSession;
        }
        return session;
    }

    public static Session getInstance(Properties properties) {
        return new Session(properties, null);
    }

    public static Session getInstance(Properties properties, Authenticator authenticator) {
        return new Session(properties, authenticator);
    }

    private static InputStream getResourceAsStream(final Class cls, final String str) throws IOException {
        try {
            return (InputStream) AccessController.doPrivileged(new PrivilegedExceptionAction() { // from class: javax.mail.Session.4
                @Override // java.security.PrivilegedExceptionAction
                public Object run() throws IOException {
                    return cls.getResourceAsStream(str);
                }
            });
        } catch (PrivilegedActionException e) {
            throw ((IOException) e.getException());
        }
    }

    private static URL[] getResources(final ClassLoader classLoader, final String str) {
        return (URL[]) AccessController.doPrivileged(new PrivilegedAction() { // from class: javax.mail.Session.5
            @Override // java.security.PrivilegedAction
            public Object run() {
                try {
                    Vector vector = new Vector();
                    Enumeration<URL> resources = classLoader.getResources(str);
                    while (resources != null && resources.hasMoreElements()) {
                        URL nextElement = resources.nextElement();
                        if (nextElement != null) {
                            vector.addElement(nextElement);
                        }
                    }
                    if (vector.size() <= 0) {
                        return null;
                    }
                    URL[] urlArr = new URL[vector.size()];
                    try {
                        vector.copyInto(urlArr);
                    } catch (IOException | SecurityException unused) {
                    }
                    return urlArr;
                } catch (IOException | SecurityException unused2) {
                    return null;
                }
            }
        });
    }

    private Object getService(Provider provider, URLName uRLName) throws NoSuchProviderException {
        if (provider == null) {
            throw new NoSuchProviderException("null");
        }
        if (uRLName == null) {
            uRLName = new URLName(provider.getProtocol(), null, -1, null, null, null);
        }
        ClassLoader classLoader = (this.authenticator != null ? this.authenticator.getClass() : getClass()).getClassLoader();
        Class<?> cls = null;
        try {
            try {
                ClassLoader contextClassLoader = getContextClassLoader();
                if (contextClassLoader != null) {
                    try {
                        cls = contextClassLoader.loadClass(provider.getClassName());
                    } catch (ClassNotFoundException unused) {
                    }
                }
                if (cls == null) {
                    cls = classLoader.loadClass(provider.getClassName());
                }
            } catch (Exception e) {
                if (this.debug) {
                    e.printStackTrace(getDebugOut());
                }
                throw new NoSuchProviderException(provider.getProtocol());
            }
        } catch (Exception unused2) {
            cls = Class.forName(provider.getClassName());
        }
        try {
            return cls.getConstructor(Session.class, URLName.class).newInstance(this, uRLName);
        } catch (Exception e2) {
            if (this.debug) {
                e2.printStackTrace(getDebugOut());
            }
            throw new NoSuchProviderException(provider.getProtocol());
        }
    }

    private Store getStore(Provider provider, URLName uRLName) throws NoSuchProviderException {
        if (provider == null || provider.getType() != Provider.Type.STORE) {
            throw new NoSuchProviderException("invalid provider");
        }
        try {
            return (Store) getService(provider, uRLName);
        } catch (ClassCastException unused) {
            throw new NoSuchProviderException("incorrect class");
        }
    }

    private static URL[] getSystemResources(final String str) {
        return (URL[]) AccessController.doPrivileged(new PrivilegedAction() { // from class: javax.mail.Session.6
            @Override // java.security.PrivilegedAction
            public Object run() {
                try {
                    Vector vector = new Vector();
                    Enumeration<URL> systemResources = ClassLoader.getSystemResources(str);
                    while (systemResources != null && systemResources.hasMoreElements()) {
                        URL nextElement = systemResources.nextElement();
                        if (nextElement != null) {
                            vector.addElement(nextElement);
                        }
                    }
                    if (vector.size() <= 0) {
                        return null;
                    }
                    URL[] urlArr = new URL[vector.size()];
                    try {
                        vector.copyInto(urlArr);
                    } catch (IOException | SecurityException unused) {
                    }
                    return urlArr;
                } catch (IOException | SecurityException unused2) {
                    return null;
                }
            }
        });
    }

    private Transport getTransport(Provider provider, URLName uRLName) throws NoSuchProviderException {
        if (provider == null || provider.getType() != Provider.Type.TRANSPORT) {
            throw new NoSuchProviderException("invalid provider");
        }
        try {
            return (Transport) getService(provider, uRLName);
        } catch (ClassCastException unused) {
            throw new NoSuchProviderException("incorrect class");
        }
    }

    private void loadAddressMap(Class cls) {
        StreamLoader streamLoader = new StreamLoader() { // from class: javax.mail.Session.2
            @Override // javax.mail.StreamLoader
            public void load(InputStream inputStream) throws IOException {
                Session.this.addressMap.load(inputStream);
            }
        };
        loadResource("/META-INF/javamail.default.address.map", cls, streamLoader);
        loadAllResources("META-INF/javamail.address.map", cls, streamLoader);
        try {
            loadFile(String.valueOf(System.getProperty("java.home")) + File.separator + "lib" + File.separator + "javamail.address.map", streamLoader);
        } catch (SecurityException e) {
            if (this.debug) {
                m11676pr("DEBUG: can't get java.home: " + e);
            }
        }
        if (this.addressMap.isEmpty()) {
            if (this.debug) {
                m11676pr("DEBUG: failed to load address map, using defaults");
            }
            this.addressMap.put("rfc822", "smtp");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:82:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:87:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void loadAllResources(java.lang.String r8, java.lang.Class r9, javax.mail.StreamLoader r10) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.Session.loadAllResources(java.lang.String, java.lang.Class, javax.mail.StreamLoader):void");
    }

    private void loadFile(String str, StreamLoader streamLoader) {
        BufferedInputStream bufferedInputStream = null;
        try {
            try {
                try {
                    BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(str));
                    try {
                        streamLoader.load(bufferedInputStream2);
                        if (this.debug) {
                            m11676pr("DEBUG: successfully loaded file: " + str);
                        }
                        bufferedInputStream2.close();
                    } catch (IOException e) {
                        e = e;
                        bufferedInputStream = bufferedInputStream2;
                        if (this.debug) {
                            m11676pr("DEBUG: not loading file: " + str);
                            m11676pr("DEBUG: " + e);
                        }
                        if (bufferedInputStream != null) {
                            bufferedInputStream.close();
                        }
                    } catch (SecurityException e2) {
                        e = e2;
                        bufferedInputStream = bufferedInputStream2;
                        if (this.debug) {
                            m11676pr("DEBUG: not loading file: " + str);
                            m11676pr("DEBUG: " + e);
                        }
                        if (bufferedInputStream != null) {
                            try {
                                bufferedInputStream.close();
                            } catch (IOException unused) {
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        bufferedInputStream = bufferedInputStream2;
                        if (bufferedInputStream != null) {
                            try {
                                bufferedInputStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th;
                    }
                } catch (IOException e3) {
                    e = e3;
                } catch (SecurityException e4) {
                    e = e4;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException unused3) {
        }
    }

    private void loadProviders(Class cls) {
        StreamLoader streamLoader = new StreamLoader() { // from class: javax.mail.Session.1
            @Override // javax.mail.StreamLoader
            public void load(InputStream inputStream) throws IOException {
                Session.this.loadProvidersFromStream(inputStream);
            }
        };
        try {
            loadFile(String.valueOf(System.getProperty("java.home")) + File.separator + "lib" + File.separator + "javamail.providers", streamLoader);
        } catch (SecurityException e) {
            if (this.debug) {
                m11676pr("DEBUG: can't get java.home: " + e);
            }
        }
        loadAllResources("META-INF/javamail.providers", cls, streamLoader);
        loadResource("/META-INF/javamail.default.providers", cls, streamLoader);
        if (this.providers.size() == 0) {
            if (this.debug) {
                m11676pr("DEBUG: failed to load any providers, using defaults");
            }
            addProvider(new Provider(Provider.Type.STORE, "imap", "com.sun.mail.imap.IMAPStore", "Sun Microsystems, Inc.", Version.version));
            addProvider(new Provider(Provider.Type.STORE, "imaps", "com.sun.mail.imap.IMAPSSLStore", "Sun Microsystems, Inc.", Version.version));
            addProvider(new Provider(Provider.Type.STORE, "pop3", "com.sun.mail.pop3.POP3Store", "Sun Microsystems, Inc.", Version.version));
            addProvider(new Provider(Provider.Type.STORE, "pop3s", "com.sun.mail.pop3.POP3SSLStore", "Sun Microsystems, Inc.", Version.version));
            addProvider(new Provider(Provider.Type.TRANSPORT, "smtp", "com.sun.mail.smtp.SMTPTransport", "Sun Microsystems, Inc.", Version.version));
            addProvider(new Provider(Provider.Type.TRANSPORT, "smtps", "com.sun.mail.smtp.SMTPSSLTransport", "Sun Microsystems, Inc.", Version.version));
        }
        if (this.debug) {
            m11676pr("DEBUG: Tables of loaded providers");
            m11676pr("DEBUG: Providers Listed By Class Name: " + this.providersByClassName.toString());
            m11676pr("DEBUG: Providers Listed By Protocol: " + this.providersByProtocol.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadProvidersFromStream(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return;
        }
        LineInputStream lineInputStream = new LineInputStream(inputStream);
        while (true) {
            String readLine = lineInputStream.readLine();
            if (readLine == null) {
                return;
            }
            if (!readLine.startsWith("#")) {
                StringTokenizer stringTokenizer = new StringTokenizer(readLine, ";");
                Provider.Type type = null;
                String str = null;
                String str2 = null;
                String str3 = null;
                String str4 = null;
                while (stringTokenizer.hasMoreTokens()) {
                    String trim = stringTokenizer.nextToken().trim();
                    int indexOf = trim.indexOf("=");
                    if (trim.startsWith("protocol=")) {
                        str = trim.substring(indexOf + 1);
                    } else if (trim.startsWith("type=")) {
                        String substring = trim.substring(indexOf + 1);
                        if (substring.equalsIgnoreCase("store")) {
                            type = Provider.Type.STORE;
                        } else if (substring.equalsIgnoreCase(NotificationCompat.CATEGORY_TRANSPORT)) {
                            type = Provider.Type.TRANSPORT;
                        }
                    } else if (trim.startsWith("class=")) {
                        str2 = trim.substring(indexOf + 1);
                    } else if (trim.startsWith("vendor=")) {
                        str3 = trim.substring(indexOf + 1);
                    } else if (trim.startsWith("version=")) {
                        str4 = trim.substring(indexOf + 1);
                    }
                }
                if (type != null && str != null && str2 != null && str.length() > 0 && str2.length() > 0) {
                    addProvider(new Provider(type, str, str2, str3, str4));
                } else if (this.debug) {
                    m11676pr("DEBUG: Bad provider entry: " + readLine);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003d A[Catch: IOException -> 0x007b, TRY_ENTER, TRY_LEAVE, TryCatch #8 {IOException -> 0x007b, blocks: (B:14:0x003d, B:27:0x0078), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void loadResource(java.lang.String r2, java.lang.Class r3, javax.mail.StreamLoader r4) {
        /*
            r1 = this;
            r0 = 0
            java.io.InputStream r3 = getResourceAsStream(r3, r2)     // Catch: java.lang.Throwable -> L41 java.lang.SecurityException -> L44 java.io.IOException -> L60
            if (r3 == 0) goto L28
            r4.load(r3)     // Catch: java.lang.Throwable -> L20 java.lang.SecurityException -> L22 java.io.IOException -> L25
            boolean r4 = r1.debug     // Catch: java.lang.Throwable -> L20 java.lang.SecurityException -> L22 java.io.IOException -> L25
            if (r4 == 0) goto L3b
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L20 java.lang.SecurityException -> L22 java.io.IOException -> L25
            java.lang.String r0 = "DEBUG: successfully loaded resource: "
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L20 java.lang.SecurityException -> L22 java.io.IOException -> L25
            r4.append(r2)     // Catch: java.lang.Throwable -> L20 java.lang.SecurityException -> L22 java.io.IOException -> L25
            java.lang.String r2 = r4.toString()     // Catch: java.lang.Throwable -> L20 java.lang.SecurityException -> L22 java.io.IOException -> L25
        L1c:
            r1.m11676pr(r2)     // Catch: java.lang.Throwable -> L20 java.lang.SecurityException -> L22 java.io.IOException -> L25
            goto L3b
        L20:
            r2 = move-exception
            goto L7c
        L22:
            r2 = move-exception
            r0 = r3
            goto L45
        L25:
            r2 = move-exception
            r0 = r3
            goto L61
        L28:
            boolean r4 = r1.debug     // Catch: java.lang.Throwable -> L20 java.lang.SecurityException -> L22 java.io.IOException -> L25
            if (r4 == 0) goto L3b
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L20 java.lang.SecurityException -> L22 java.io.IOException -> L25
            java.lang.String r0 = "DEBUG: not loading resource: "
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L20 java.lang.SecurityException -> L22 java.io.IOException -> L25
            r4.append(r2)     // Catch: java.lang.Throwable -> L20 java.lang.SecurityException -> L22 java.io.IOException -> L25
            java.lang.String r2 = r4.toString()     // Catch: java.lang.Throwable -> L20 java.lang.SecurityException -> L22 java.io.IOException -> L25
            goto L1c
        L3b:
            if (r3 == 0) goto L7b
            r3.close()     // Catch: java.io.IOException -> L7b
            return
        L41:
            r2 = move-exception
            r3 = r0
            goto L7c
        L44:
            r2 = move-exception
        L45:
            boolean r3 = r1.debug     // Catch: java.lang.Throwable -> L41
            if (r3 == 0) goto L5a
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L41
            java.lang.String r4 = "DEBUG: "
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L41
            r3.append(r2)     // Catch: java.lang.Throwable -> L41
            java.lang.String r2 = r3.toString()     // Catch: java.lang.Throwable -> L41
            r1.m11676pr(r2)     // Catch: java.lang.Throwable -> L41
        L5a:
            if (r0 == 0) goto L7b
            r0.close()     // Catch: java.io.IOException -> L5f
        L5f:
            return
        L60:
            r2 = move-exception
        L61:
            boolean r3 = r1.debug     // Catch: java.lang.Throwable -> L41
            if (r3 == 0) goto L76
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L41
            java.lang.String r4 = "DEBUG: "
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L41
            r3.append(r2)     // Catch: java.lang.Throwable -> L41
            java.lang.String r2 = r3.toString()     // Catch: java.lang.Throwable -> L41
            r1.m11676pr(r2)     // Catch: java.lang.Throwable -> L41
        L76:
            if (r0 == 0) goto L7b
            r0.close()     // Catch: java.io.IOException -> L7b
        L7b:
            return
        L7c:
            if (r3 == 0) goto L81
            r3.close()     // Catch: java.io.IOException -> L81
        L81:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.Session.loadResource(java.lang.String, java.lang.Class, javax.mail.StreamLoader):void");
    }

    private static InputStream openStream(final URL url) throws IOException {
        try {
            return (InputStream) AccessController.doPrivileged(new PrivilegedExceptionAction() { // from class: javax.mail.Session.7
                @Override // java.security.PrivilegedExceptionAction
                public Object run() throws IOException {
                    return url.openStream();
                }
            });
        } catch (PrivilegedActionException e) {
            throw ((IOException) e.getException());
        }
    }

    /* renamed from: pr */
    private void m11676pr(String str) {
        getDebugOut().println(str);
    }

    public final synchronized void addProvider(Provider provider) {
        this.providers.addElement(provider);
        this.providersByClassName.put(provider.getClassName(), provider);
        if (!this.providersByProtocol.containsKey(provider.getProtocol())) {
            this.providersByProtocol.put(provider.getProtocol(), provider);
        }
    }

    public final synchronized boolean getDebug() {
        return this.debug;
    }

    public final synchronized PrintStream getDebugOut() {
        if (this.out == null) {
            return System.out;
        }
        return this.out;
    }

    public final Folder getFolder(URLName uRLName) throws MessagingException {
        Store store = getStore(uRLName);
        store.connect();
        return store.getFolder(uRLName);
    }

    public final PasswordAuthentication getPasswordAuthentication(URLName uRLName) {
        return (PasswordAuthentication) this.authTable.get(uRLName);
    }

    public final Properties getProperties() {
        return this.props;
    }

    public final String getProperty(String str) {
        return this.props.getProperty(str);
    }

    public final synchronized Provider getProvider(String str) throws NoSuchProviderException {
        if (str != null) {
            if (str.length() > 0) {
                Provider provider = null;
                String property = this.props.getProperty("mail." + str + ".class");
                if (property != null) {
                    if (this.debug) {
                        m11676pr("DEBUG: mail." + str + ".class property exists and points to " + property);
                    }
                    provider = (Provider) this.providersByClassName.get(property);
                }
                if (provider != null) {
                    return provider;
                }
                Provider provider2 = (Provider) this.providersByProtocol.get(str);
                if (provider2 == null) {
                    throw new NoSuchProviderException("No provider for " + str);
                }
                if (this.debug) {
                    m11676pr("DEBUG: getProvider() returning " + provider2.toString());
                }
                return provider2;
            }
        }
        throw new NoSuchProviderException("Invalid protocol: null");
    }

    public final synchronized Provider[] getProviders() {
        Provider[] providerArr;
        providerArr = new Provider[this.providers.size()];
        this.providers.copyInto(providerArr);
        return providerArr;
    }

    public final Store getStore() throws NoSuchProviderException {
        return getStore(getProperty("mail.store.protocol"));
    }

    public final Store getStore(String str) throws NoSuchProviderException {
        return getStore(new URLName(str, null, -1, null, null, null));
    }

    public final Store getStore(Provider provider) throws NoSuchProviderException {
        return getStore(provider, null);
    }

    public final Store getStore(URLName uRLName) throws NoSuchProviderException {
        return getStore(getProvider(uRLName.getProtocol()), uRLName);
    }

    public final Transport getTransport() throws NoSuchProviderException {
        return getTransport(getProperty("mail.transport.protocol"));
    }

    public final Transport getTransport(String str) throws NoSuchProviderException {
        return getTransport(new URLName(str, null, -1, null, null, null));
    }

    public final Transport getTransport(Address address) throws NoSuchProviderException {
        String str = (String) this.addressMap.get(address.getType());
        if (str != null) {
            return getTransport(str);
        }
        throw new NoSuchProviderException("No provider for Address type: " + address.getType());
    }

    public final Transport getTransport(Provider provider) throws NoSuchProviderException {
        return getTransport(provider, null);
    }

    public final Transport getTransport(URLName uRLName) throws NoSuchProviderException {
        return getTransport(getProvider(uRLName.getProtocol()), uRLName);
    }

    public final PasswordAuthentication requestPasswordAuthentication(InetAddress inetAddress, int i, String str, String str2, String str3) {
        if (this.authenticator != null) {
            return this.authenticator.requestPasswordAuthentication(inetAddress, i, str, str2, str3);
        }
        return null;
    }

    public final synchronized void setDebug(boolean z) {
        this.debug = z;
        if (z) {
            m11676pr("DEBUG: setDebug: JavaMail version 1.4.1");
        }
    }

    public final synchronized void setDebugOut(PrintStream printStream) {
        this.out = printStream;
    }

    public final void setPasswordAuthentication(URLName uRLName, PasswordAuthentication passwordAuthentication) {
        if (passwordAuthentication == null) {
            this.authTable.remove(uRLName);
        } else {
            this.authTable.put(uRLName, passwordAuthentication);
        }
    }

    public final synchronized void setProtocolForAddress(String str, String str2) {
        if (str2 == null) {
            this.addressMap.remove(str);
        } else {
            this.addressMap.put(str, str2);
        }
    }

    public final synchronized void setProvider(Provider provider) throws NoSuchProviderException {
        try {
            if (provider == null) {
                throw new NoSuchProviderException("Can't set null provider");
            }
            this.providersByProtocol.put(provider.getProtocol(), provider);
            this.props.put("mail." + provider.getProtocol() + ".class", provider.getClassName());
        } catch (Throwable th) {
            throw th;
        }
    }
}
