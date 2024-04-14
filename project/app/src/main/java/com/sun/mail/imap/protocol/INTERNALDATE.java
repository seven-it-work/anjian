package com.sun.mail.imap.protocol;

import com.sun.mail.iap.ParsingException;
import java.text.FieldPosition;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import javax.mail.internet.MailDateFormat;

/* loaded from: classes.dex */
public class INTERNALDATE implements Item {
    protected Date date;
    public int msgno;
    static final char[] name = {'I', 'N', 'T', 'E', 'R', 'N', 'A', 'L', 'D', 'A', 'T', 'E'};
    private static MailDateFormat mailDateFormat = new MailDateFormat();

    /* renamed from: df */
    private static SimpleDateFormat f8852df = new SimpleDateFormat("dd-MMM-yyyy HH:mm:ss ", Locale.US);

    public INTERNALDATE(FetchResponse fetchResponse) throws ParsingException {
        this.msgno = fetchResponse.getNumber();
        fetchResponse.skipSpaces();
        String readString = fetchResponse.readString();
        if (readString == null) {
            throw new ParsingException("INTERNALDATE is NIL");
        }
        try {
            this.date = mailDateFormat.parse(readString);
        } catch (ParseException unused) {
            throw new ParsingException("INTERNALDATE parse error");
        }
    }

    public static String format(Date date) {
        StringBuffer stringBuffer = new StringBuffer();
        synchronized (f8852df) {
            f8852df.format(date, stringBuffer, new FieldPosition(0));
        }
        int i = -date.getTimezoneOffset();
        if (i < 0) {
            stringBuffer.append('-');
            i = -i;
        } else {
            stringBuffer.append('+');
        }
        int i2 = i / 60;
        int i3 = i % 60;
        stringBuffer.append(Character.forDigit(i2 / 10, 10));
        stringBuffer.append(Character.forDigit(i2 % 10, 10));
        stringBuffer.append(Character.forDigit(i3 / 10, 10));
        stringBuffer.append(Character.forDigit(i3 % 10, 10));
        return stringBuffer.toString();
    }

    public Date getDate() {
        return this.date;
    }
}
