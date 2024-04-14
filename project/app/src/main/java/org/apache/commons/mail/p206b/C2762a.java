package org.apache.commons.mail.p206b;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.activation.DataSource;
import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Part;
import javax.mail.internet.ContentType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimePart;
import javax.mail.internet.MimeUtility;
import javax.mail.internet.ParseException;
import javax.mail.util.ByteArrayDataSource;

/* renamed from: org.apache.commons.mail.b.a */
/* loaded from: classes2.dex */
public final class C2762a {

    /* renamed from: a */
    private final MimeMessage f10445a;

    /* renamed from: b */
    private String f10446b;

    /* renamed from: c */
    private String f10447c;

    /* renamed from: d */
    private final List<DataSource> f10448d = new ArrayList();

    /* renamed from: e */
    private final Map<String, DataSource> f10449e = new HashMap();

    /* renamed from: f */
    private boolean f10450f = false;

    private C2762a(MimeMessage mimeMessage) {
        this.f10445a = mimeMessage;
    }

    /* renamed from: a */
    private static String m12441a(String str) {
        if (str == null) {
            return null;
        }
        return str.trim().replaceAll("[\\<\\>]", "");
    }

    /* renamed from: a */
    private static String m12442a(Part part, DataSource dataSource) throws MessagingException, UnsupportedEncodingException {
        String name = dataSource.getName();
        if (name == null || name.length() == 0) {
            name = part.getFileName();
        }
        if (name == null || name.length() <= 0) {
            return null;
        }
        return MimeUtility.decodeText(name);
    }

    /* renamed from: a */
    private C2762a m12443a() throws Exception {
        m12444a(this.f10445a);
        return this;
    }

    /* renamed from: a */
    private void m12444a(MimePart mimePart) throws MessagingException, IOException {
        if (m12445a(mimePart, "text/plain") && this.f10446b == null && !"attachment".equalsIgnoreCase(mimePart.getDisposition())) {
            this.f10446b = (String) mimePart.getContent();
            return;
        }
        if (m12445a(mimePart, "text/html") && this.f10447c == null && !"attachment".equalsIgnoreCase(mimePart.getDisposition())) {
            this.f10447c = (String) mimePart.getContent();
            return;
        }
        if (m12445a(mimePart, "multipart/*")) {
            this.f10450f = true;
            Multipart multipart = (Multipart) mimePart.getContent();
            int count = multipart.getCount();
            for (int i = 0; i < count; i++) {
                m12444a((MimeBodyPart) multipart.getBodyPart(i));
            }
            return;
        }
        String contentID = mimePart.getContentID();
        String str = null;
        String replaceAll = contentID == null ? null : contentID.trim().replaceAll("[\\<\\>]", "");
        DataSource dataSource = mimePart.getDataHandler().getDataSource();
        String contentType = dataSource.getContentType();
        int indexOf = contentType.indexOf(59);
        if (indexOf >= 0) {
            contentType = contentType.substring(0, indexOf);
        }
        InputStream inputStream = dataSource.getInputStream();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(byteArrayOutputStream);
        while (true) {
            int read = bufferedInputStream.read();
            if (read == -1) {
                break;
            } else {
                bufferedOutputStream.write(read);
            }
        }
        bufferedOutputStream.flush();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        bufferedOutputStream.close();
        ByteArrayDataSource byteArrayDataSource = new ByteArrayDataSource(byteArray, contentType);
        String name = dataSource.getName();
        if (name == null || name.length() == 0) {
            name = mimePart.getFileName();
        }
        if (name != null && name.length() > 0) {
            str = MimeUtility.decodeText(name);
        }
        byteArrayDataSource.setName(str);
        if (replaceAll != null) {
            this.f10449e.put(replaceAll, byteArrayDataSource);
        }
        this.f10448d.add(byteArrayDataSource);
    }

    /* renamed from: a */
    private static boolean m12445a(MimePart mimePart, String str) throws MessagingException, IOException {
        try {
            return new ContentType(mimePart.getDataHandler().getContentType()).match(str);
        } catch (ParseException unused) {
            return mimePart.getContentType().equalsIgnoreCase(str);
        }
    }

    /* renamed from: a */
    private static byte[] m12446a(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(byteArrayOutputStream);
        while (true) {
            int read = bufferedInputStream.read();
            if (read == -1) {
                bufferedOutputStream.flush();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                bufferedOutputStream.close();
                return byteArray;
            }
            bufferedOutputStream.write(read);
        }
    }

    /* renamed from: b */
    private List<Address> m12447b() throws Exception {
        Address[] recipients = this.f10445a.getRecipients(Message.RecipientType.f10034TO);
        return recipients != null ? Arrays.asList(recipients) : new ArrayList();
    }

    /* renamed from: b */
    private DataSource m12448b(String str) {
        for (int i = 0; i < this.f10448d.size(); i++) {
            DataSource dataSource = this.f10448d.get(i);
            if (str.equalsIgnoreCase(dataSource.getName())) {
                return dataSource;
            }
        }
        return null;
    }

    /* renamed from: b */
    private static DataSource m12449b(MimePart mimePart) throws MessagingException, IOException {
        DataSource dataSource = mimePart.getDataHandler().getDataSource();
        String contentType = dataSource.getContentType();
        int indexOf = contentType.indexOf(59);
        if (indexOf >= 0) {
            contentType = contentType.substring(0, indexOf);
        }
        InputStream inputStream = dataSource.getInputStream();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(byteArrayOutputStream);
        while (true) {
            int read = bufferedInputStream.read();
            if (read == -1) {
                break;
            }
            bufferedOutputStream.write(read);
        }
        bufferedOutputStream.flush();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        bufferedOutputStream.close();
        ByteArrayDataSource byteArrayDataSource = new ByteArrayDataSource(byteArray, contentType);
        String name = dataSource.getName();
        if (name == null || name.length() == 0) {
            name = mimePart.getFileName();
        }
        byteArrayDataSource.setName((name == null || name.length() <= 0) ? null : MimeUtility.decodeText(name));
        return byteArrayDataSource;
    }

    /* renamed from: c */
    private List<Address> m12450c() throws Exception {
        Address[] recipients = this.f10445a.getRecipients(Message.RecipientType.f10033CC);
        return recipients != null ? Arrays.asList(recipients) : new ArrayList();
    }

    /* renamed from: c */
    private DataSource m12451c(String str) {
        return this.f10449e.get(str);
    }

    /* renamed from: d */
    private static String m12452d(String str) {
        int indexOf = str.indexOf(59);
        return indexOf >= 0 ? str.substring(0, indexOf) : str;
    }

    /* renamed from: d */
    private List<Address> m12453d() throws Exception {
        Address[] recipients = this.f10445a.getRecipients(Message.RecipientType.BCC);
        return recipients != null ? Arrays.asList(recipients) : new ArrayList();
    }

    /* renamed from: e */
    private String m12454e() throws Exception {
        Address[] from = this.f10445a.getFrom();
        if (from == null || from.length == 0) {
            return null;
        }
        return ((InternetAddress) from[0]).getAddress();
    }

    /* renamed from: f */
    private String m12455f() throws Exception {
        Address[] replyTo = this.f10445a.getReplyTo();
        if (replyTo == null || replyTo.length == 0) {
            return null;
        }
        return ((InternetAddress) replyTo[0]).getAddress();
    }

    /* renamed from: g */
    private String m12456g() throws Exception {
        return this.f10445a.getSubject();
    }

    /* renamed from: h */
    private MimeMessage m12457h() {
        return this.f10445a;
    }

    /* renamed from: i */
    private boolean m12458i() {
        return this.f10450f;
    }

    /* renamed from: j */
    private String m12459j() {
        return this.f10446b;
    }

    /* renamed from: k */
    private List<DataSource> m12460k() {
        return this.f10448d;
    }

    /* renamed from: l */
    private Collection<String> m12461l() {
        return Collections.unmodifiableSet(this.f10449e.keySet());
    }

    /* renamed from: m */
    private String m12462m() {
        return this.f10447c;
    }

    /* renamed from: n */
    private boolean m12463n() {
        return this.f10446b != null;
    }

    /* renamed from: o */
    private boolean m12464o() {
        return this.f10447c != null;
    }

    /* renamed from: p */
    private boolean m12465p() {
        return this.f10448d.size() > 0;
    }
}
