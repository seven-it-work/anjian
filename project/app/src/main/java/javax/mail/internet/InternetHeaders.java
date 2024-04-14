package javax.mail.internet;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cyjh.common.util.C1176s;
import com.lidroid.xutils.http.client.multipart.MIME;
import com.sun.mail.util.LineInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import javax.mail.Header;
import javax.mail.MessagingException;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class InternetHeaders {
    protected List headers = new ArrayList(40);

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static final class InternetHeader extends Header {
        String line;

        public InternetHeader(String str) {
            super("", "");
            int indexOf = str.indexOf(58);
            this.name = indexOf < 0 ? str.trim() : str.substring(0, indexOf).trim();
            this.line = str;
        }

        public InternetHeader(String str, String str2) {
            super(str, "");
            String str3;
            if (str2 != null) {
                str3 = String.valueOf(str) + ": " + str2;
            } else {
                str3 = null;
            }
            this.line = str3;
        }

        @Override // javax.mail.Header
        public final String getValue() {
            char charAt;
            int indexOf = this.line.indexOf(58);
            if (indexOf < 0) {
                return this.line;
            }
            while (true) {
                indexOf++;
                if (indexOf < this.line.length() && ((charAt = this.line.charAt(indexOf)) == ' ' || charAt == '\t' || charAt == '\r' || charAt == '\n')) {
                }
            }
            return this.line.substring(indexOf);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class matchEnum implements Enumeration {

        /* renamed from: e */
        private Iterator f10036e;
        private boolean match;
        private String[] names;
        private InternetHeader next_header = null;
        private boolean want_line;

        matchEnum(List list, String[] strArr, boolean z, boolean z2) {
            this.f10036e = list.iterator();
            this.names = strArr;
            this.match = z;
            this.want_line = z2;
        }

        private InternetHeader nextMatch() {
            while (this.f10036e.hasNext()) {
                InternetHeader internetHeader = (InternetHeader) this.f10036e.next();
                if (internetHeader.line != null) {
                    if (this.names == null) {
                        if (this.match) {
                            return null;
                        }
                        return internetHeader;
                    }
                    int i = 0;
                    while (true) {
                        if (i >= this.names.length) {
                            if (!this.match) {
                                return internetHeader;
                            }
                        } else if (!this.names[i].equalsIgnoreCase(internetHeader.getName())) {
                            i++;
                        } else if (this.match) {
                            return internetHeader;
                        }
                    }
                }
            }
            return null;
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            if (this.next_header == null) {
                this.next_header = nextMatch();
            }
            return this.next_header != null;
        }

        @Override // java.util.Enumeration
        public Object nextElement() {
            if (this.next_header == null) {
                this.next_header = nextMatch();
            }
            if (this.next_header == null) {
                throw new NoSuchElementException("No more headers");
            }
            InternetHeader internetHeader = this.next_header;
            this.next_header = null;
            return this.want_line ? internetHeader.line : new Header(internetHeader.getName(), internetHeader.getValue());
        }
    }

    public InternetHeaders() {
        this.headers.add(new InternetHeader("Return-Path", null));
        this.headers.add(new InternetHeader("Received", null));
        this.headers.add(new InternetHeader("Resent-Date", null));
        this.headers.add(new InternetHeader("Resent-From", null));
        this.headers.add(new InternetHeader("Resent-Sender", null));
        this.headers.add(new InternetHeader("Resent-To", null));
        this.headers.add(new InternetHeader("Resent-Cc", null));
        this.headers.add(new InternetHeader("Resent-Bcc", null));
        this.headers.add(new InternetHeader("Resent-Message-Id", null));
        this.headers.add(new InternetHeader("Date", null));
        this.headers.add(new InternetHeader("From", null));
        this.headers.add(new InternetHeader("Sender", null));
        this.headers.add(new InternetHeader("Reply-To", null));
        this.headers.add(new InternetHeader("To", null));
        this.headers.add(new InternetHeader("Cc", null));
        this.headers.add(new InternetHeader("Bcc", null));
        this.headers.add(new InternetHeader("Message-Id", null));
        this.headers.add(new InternetHeader("In-Reply-To", null));
        this.headers.add(new InternetHeader("References", null));
        this.headers.add(new InternetHeader("Subject", null));
        this.headers.add(new InternetHeader("Comments", null));
        this.headers.add(new InternetHeader("Keywords", null));
        this.headers.add(new InternetHeader("Errors-To", null));
        this.headers.add(new InternetHeader("MIME-Version", null));
        this.headers.add(new InternetHeader("Content-Type", null));
        this.headers.add(new InternetHeader(MIME.CONTENT_TRANSFER_ENC, null));
        this.headers.add(new InternetHeader(HttpHeaders.CONTENT_MD5, null));
        this.headers.add(new InternetHeader(":", null));
        this.headers.add(new InternetHeader("Content-Length", null));
        this.headers.add(new InternetHeader("Status", null));
    }

    public InternetHeaders(InputStream inputStream) throws MessagingException {
        load(inputStream);
    }

    public void addHeader(String str, String str2) {
        int size = this.headers.size();
        boolean z = str.equalsIgnoreCase("Received") || str.equalsIgnoreCase("Return-Path");
        if (z) {
            size = 0;
        }
        for (int size2 = this.headers.size() - 1; size2 >= 0; size2--) {
            InternetHeader internetHeader = (InternetHeader) this.headers.get(size2);
            if (str.equalsIgnoreCase(internetHeader.getName())) {
                if (!z) {
                    this.headers.add(size2 + 1, new InternetHeader(str, str2));
                    return;
                }
                size = size2;
            }
            if (internetHeader.getName().equals(":")) {
                size = size2;
            }
        }
        this.headers.add(size, new InternetHeader(str, str2));
    }

    public void addHeaderLine(String str) {
        try {
            char charAt = str.charAt(0);
            if (charAt != ' ' && charAt != '\t') {
                this.headers.add(new InternetHeader(str));
                return;
            }
            InternetHeader internetHeader = (InternetHeader) this.headers.get(this.headers.size() - 1);
            internetHeader.line = String.valueOf(internetHeader.line) + IOUtils.LINE_SEPARATOR_WINDOWS + str;
        } catch (StringIndexOutOfBoundsException | NoSuchElementException unused) {
        }
    }

    public Enumeration getAllHeaderLines() {
        return getNonMatchingHeaderLines(null);
    }

    public Enumeration getAllHeaders() {
        return new matchEnum(this.headers, null, false, false);
    }

    public String getHeader(String str, String str2) {
        String[] header = getHeader(str);
        if (header == null) {
            return null;
        }
        if (header.length == 1 || str2 == null) {
            return header[0];
        }
        StringBuffer stringBuffer = new StringBuffer(header[0]);
        for (int i = 1; i < header.length; i++) {
            stringBuffer.append(str2);
            stringBuffer.append(header[i]);
        }
        return stringBuffer.toString();
    }

    public String[] getHeader(String str) {
        ArrayList arrayList = new ArrayList();
        for (InternetHeader internetHeader : this.headers) {
            if (str.equalsIgnoreCase(internetHeader.getName()) && internetHeader.line != null) {
                arrayList.add(internetHeader.getValue());
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public Enumeration getMatchingHeaderLines(String[] strArr) {
        return new matchEnum(this.headers, strArr, true, true);
    }

    public Enumeration getMatchingHeaders(String[] strArr) {
        return new matchEnum(this.headers, strArr, true, false);
    }

    public Enumeration getNonMatchingHeaderLines(String[] strArr) {
        return new matchEnum(this.headers, strArr, false, true);
    }

    public Enumeration getNonMatchingHeaders(String[] strArr) {
        return new matchEnum(this.headers, strArr, false, false);
    }

    public void load(InputStream inputStream) throws MessagingException {
        String readLine;
        LineInputStream lineInputStream = new LineInputStream(inputStream);
        StringBuffer stringBuffer = new StringBuffer();
        String str = null;
        do {
            try {
                readLine = lineInputStream.readLine();
                if (readLine == null || !(readLine.startsWith(C1176s.a.f4108a) || readLine.startsWith("\t"))) {
                    if (str != null) {
                        addHeaderLine(str);
                    } else if (stringBuffer.length() > 0) {
                        addHeaderLine(stringBuffer.toString());
                        stringBuffer.setLength(0);
                    }
                    str = readLine;
                } else {
                    if (str != null) {
                        stringBuffer.append(str);
                        str = null;
                    }
                    stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
                    stringBuffer.append(readLine);
                }
                if (readLine == null) {
                    return;
                }
            } catch (IOException e) {
                throw new MessagingException("Error in input stream", e);
            }
        } while (readLine.length() > 0);
    }

    public void removeHeader(String str) {
        for (int i = 0; i < this.headers.size(); i++) {
            InternetHeader internetHeader = (InternetHeader) this.headers.get(i);
            if (str.equalsIgnoreCase(internetHeader.getName())) {
                internetHeader.line = null;
            }
        }
    }

    public void setHeader(String str, String str2) {
        String str3;
        int indexOf;
        int i = 0;
        boolean z = false;
        while (i < this.headers.size()) {
            InternetHeader internetHeader = (InternetHeader) this.headers.get(i);
            if (str.equalsIgnoreCase(internetHeader.getName())) {
                if (z) {
                    this.headers.remove(i);
                    i--;
                } else {
                    if (internetHeader.line == null || (indexOf = internetHeader.line.indexOf(58)) < 0) {
                        str3 = String.valueOf(str) + ": " + str2;
                    } else {
                        str3 = String.valueOf(internetHeader.line.substring(0, indexOf + 1)) + C1176s.a.f4108a + str2;
                    }
                    internetHeader.line = str3;
                    z = true;
                }
            }
            i++;
        }
        if (z) {
            return;
        }
        addHeader(str, str2);
    }
}
