package com.sun.mail.imap.protocol;

import com.sun.mail.iap.Argument;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import javax.mail.Flags;
import javax.mail.Message;
import javax.mail.search.AndTerm;
import javax.mail.search.BodyTerm;
import javax.mail.search.DateTerm;
import javax.mail.search.FlagTerm;
import javax.mail.search.FromStringTerm;
import javax.mail.search.FromTerm;
import javax.mail.search.HeaderTerm;
import javax.mail.search.MessageIDTerm;
import javax.mail.search.NotTerm;
import javax.mail.search.OrTerm;
import javax.mail.search.ReceivedDateTerm;
import javax.mail.search.RecipientStringTerm;
import javax.mail.search.RecipientTerm;
import javax.mail.search.SearchException;
import javax.mail.search.SearchTerm;
import javax.mail.search.SentDateTerm;
import javax.mail.search.SizeTerm;
import javax.mail.search.SubjectTerm;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class SearchSequence {
    private static String[] monthTable = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};
    private static Calendar cal = new GregorianCalendar();

    SearchSequence() {
    }

    private static Argument and(AndTerm andTerm, String str) throws SearchException, IOException {
        SearchTerm[] terms = andTerm.getTerms();
        Argument generateSequence = generateSequence(terms[0], str);
        for (int i = 1; i < terms.length; i++) {
            generateSequence.append(generateSequence(terms[i], str));
        }
        return generateSequence;
    }

    private static Argument body(BodyTerm bodyTerm, String str) throws SearchException, IOException {
        Argument argument = new Argument();
        argument.writeAtom("BODY");
        argument.writeString(bodyTerm.getPattern(), str);
        return argument;
    }

    private static Argument flag(FlagTerm flagTerm) throws SearchException {
        String str;
        boolean testSet = flagTerm.getTestSet();
        Argument argument = new Argument();
        Flags flags = flagTerm.getFlags();
        Flags.Flag[] systemFlags = flags.getSystemFlags();
        String[] userFlags = flags.getUserFlags();
        if (systemFlags.length == 0 && userFlags.length == 0) {
            throw new SearchException("Invalid FlagTerm");
        }
        for (int i = 0; i < systemFlags.length; i++) {
            if (systemFlags[i] == Flags.Flag.DELETED) {
                str = testSet ? "DELETED" : "UNDELETED";
            } else if (systemFlags[i] == Flags.Flag.ANSWERED) {
                str = testSet ? "ANSWERED" : "UNANSWERED";
            } else if (systemFlags[i] == Flags.Flag.DRAFT) {
                str = testSet ? "DRAFT" : "UNDRAFT";
            } else if (systemFlags[i] == Flags.Flag.FLAGGED) {
                str = testSet ? "FLAGGED" : "UNFLAGGED";
            } else if (systemFlags[i] == Flags.Flag.RECENT) {
                str = testSet ? "RECENT" : "OLD";
            } else if (systemFlags[i] == Flags.Flag.SEEN) {
                str = testSet ? "SEEN" : "UNSEEN";
            }
            argument.writeAtom(str);
        }
        for (String str2 : userFlags) {
            argument.writeAtom(testSet ? "KEYWORD" : "UNKEYWORD");
            argument.writeAtom(str2);
        }
        return argument;
    }

    private static Argument from(String str, String str2) throws SearchException, IOException {
        Argument argument = new Argument();
        argument.writeAtom("FROM");
        argument.writeString(str, str2);
        return argument;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Argument generateSequence(SearchTerm searchTerm, String str) throws SearchException, IOException {
        if (searchTerm instanceof AndTerm) {
            return and((AndTerm) searchTerm, str);
        }
        if (searchTerm instanceof OrTerm) {
            return m10389or((OrTerm) searchTerm, str);
        }
        if (searchTerm instanceof NotTerm) {
            return not((NotTerm) searchTerm, str);
        }
        if (searchTerm instanceof HeaderTerm) {
            return header((HeaderTerm) searchTerm, str);
        }
        if (searchTerm instanceof FlagTerm) {
            return flag((FlagTerm) searchTerm);
        }
        if (searchTerm instanceof FromTerm) {
            return from(((FromTerm) searchTerm).getAddress().toString(), str);
        }
        if (searchTerm instanceof FromStringTerm) {
            return from(((FromStringTerm) searchTerm).getPattern(), str);
        }
        if (searchTerm instanceof RecipientTerm) {
            RecipientTerm recipientTerm = (RecipientTerm) searchTerm;
            return recipient(recipientTerm.getRecipientType(), recipientTerm.getAddress().toString(), str);
        }
        if (searchTerm instanceof RecipientStringTerm) {
            RecipientStringTerm recipientStringTerm = (RecipientStringTerm) searchTerm;
            return recipient(recipientStringTerm.getRecipientType(), recipientStringTerm.getPattern(), str);
        }
        if (searchTerm instanceof SubjectTerm) {
            return subject((SubjectTerm) searchTerm, str);
        }
        if (searchTerm instanceof BodyTerm) {
            return body((BodyTerm) searchTerm, str);
        }
        if (searchTerm instanceof SizeTerm) {
            return size((SizeTerm) searchTerm);
        }
        if (searchTerm instanceof SentDateTerm) {
            return sentdate((SentDateTerm) searchTerm);
        }
        if (searchTerm instanceof ReceivedDateTerm) {
            return receiveddate((ReceivedDateTerm) searchTerm);
        }
        if (searchTerm instanceof MessageIDTerm) {
            return messageid((MessageIDTerm) searchTerm, str);
        }
        throw new SearchException("Search too complex");
    }

    private static Argument header(HeaderTerm headerTerm, String str) throws SearchException, IOException {
        Argument argument = new Argument();
        argument.writeAtom("HEADER");
        argument.writeString(headerTerm.getHeaderName());
        argument.writeString(headerTerm.getPattern(), str);
        return argument;
    }

    private static boolean isAscii(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (str.charAt(i) > 127) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0032, code lost:
    
        if (r0 == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0034, code lost:
    
        r3 = ((javax.mail.search.AndTerm) r3).getTerms();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0041, code lost:
    
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0044, code lost:
    
        if (r1 < r3.length) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004e, code lost:
    
        if (isAscii(r3[r1]) != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0051, code lost:
    
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0050, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:?, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x003b, code lost:
    
        r3 = ((javax.mail.search.OrTerm) r3).getTerms();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean isAscii(javax.mail.search.SearchTerm r3) {
        /*
        L0:
            boolean r0 = r3 instanceof javax.mail.search.AndTerm
            if (r0 != 0) goto L32
            boolean r1 = r3 instanceof javax.mail.search.OrTerm
            if (r1 == 0) goto L9
            goto L32
        L9:
            boolean r0 = r3 instanceof javax.mail.search.NotTerm
            if (r0 == 0) goto L14
            javax.mail.search.NotTerm r3 = (javax.mail.search.NotTerm) r3
            javax.mail.search.SearchTerm r3 = r3.getTerm()
            goto L0
        L14:
            boolean r0 = r3 instanceof javax.mail.search.StringTerm
            if (r0 == 0) goto L23
            javax.mail.search.StringTerm r3 = (javax.mail.search.StringTerm) r3
            java.lang.String r3 = r3.getPattern()
        L1e:
            boolean r3 = isAscii(r3)
            return r3
        L23:
            boolean r0 = r3 instanceof javax.mail.search.AddressTerm
            if (r0 == 0) goto L46
            javax.mail.search.AddressTerm r3 = (javax.mail.search.AddressTerm) r3
            javax.mail.Address r3 = r3.getAddress()
            java.lang.String r3 = r3.toString()
            goto L1e
        L32:
            if (r0 == 0) goto L3b
            javax.mail.search.AndTerm r3 = (javax.mail.search.AndTerm) r3
            javax.mail.search.SearchTerm[] r3 = r3.getTerms()
            goto L41
        L3b:
            javax.mail.search.OrTerm r3 = (javax.mail.search.OrTerm) r3
            javax.mail.search.SearchTerm[] r3 = r3.getTerms()
        L41:
            r0 = 0
            r1 = 0
        L43:
            int r2 = r3.length
            if (r1 < r2) goto L48
        L46:
            r3 = 1
            return r3
        L48:
            r2 = r3[r1]
            boolean r2 = isAscii(r2)
            if (r2 != 0) goto L51
            return r0
        L51:
            int r1 = r1 + 1
            goto L43
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.mail.imap.protocol.SearchSequence.isAscii(javax.mail.search.SearchTerm):boolean");
    }

    private static Argument messageid(MessageIDTerm messageIDTerm, String str) throws SearchException, IOException {
        Argument argument = new Argument();
        argument.writeAtom("HEADER");
        argument.writeString("Message-ID");
        argument.writeString(messageIDTerm.getPattern(), str);
        return argument;
    }

    private static Argument not(NotTerm notTerm, String str) throws SearchException, IOException {
        Argument argument = new Argument();
        argument.writeAtom("NOT");
        SearchTerm term = notTerm.getTerm();
        if ((term instanceof AndTerm) || (term instanceof FlagTerm)) {
            argument.writeArgument(generateSequence(term, str));
            return argument;
        }
        argument.append(generateSequence(term, str));
        return argument;
    }

    /* renamed from: or */
    private static Argument m10389or(OrTerm orTerm, String str) throws SearchException, IOException {
        SearchTerm[] terms = orTerm.getTerms();
        if (terms.length > 2) {
            SearchTerm searchTerm = terms[0];
            int i = 1;
            while (i < terms.length) {
                OrTerm orTerm2 = new OrTerm(searchTerm, terms[i]);
                i++;
                searchTerm = orTerm2;
            }
            terms = ((OrTerm) searchTerm).getTerms();
        }
        Argument argument = new Argument();
        if (terms.length > 1) {
            argument.writeAtom("OR");
        }
        if ((terms[0] instanceof AndTerm) || (terms[0] instanceof FlagTerm)) {
            argument.writeArgument(generateSequence(terms[0], str));
        } else {
            argument.append(generateSequence(terms[0], str));
        }
        if (terms.length > 1) {
            if (!(terms[1] instanceof AndTerm) && !(terms[1] instanceof FlagTerm)) {
                argument.append(generateSequence(terms[1], str));
                return argument;
            }
            argument.writeArgument(generateSequence(terms[1], str));
        }
        return argument;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0011. Please report as an issue. */
    private static Argument receiveddate(DateTerm dateTerm) throws SearchException {
        StringBuilder sb;
        Argument argument = new Argument();
        String iMAPDate = toIMAPDate(dateTerm.getDate());
        switch (dateTerm.getComparison()) {
            case 1:
                sb = new StringBuilder("OR BEFORE ");
                sb.append(iMAPDate);
                sb.append(" ON ");
                sb.append(iMAPDate);
                argument.writeAtom(sb.toString());
                return argument;
            case 2:
                sb = new StringBuilder("BEFORE ");
                sb.append(iMAPDate);
                argument.writeAtom(sb.toString());
                return argument;
            case 3:
                sb = new StringBuilder("ON ");
                sb.append(iMAPDate);
                argument.writeAtom(sb.toString());
                return argument;
            case 4:
                sb = new StringBuilder("NOT ON ");
                sb.append(iMAPDate);
                argument.writeAtom(sb.toString());
                return argument;
            case 5:
                sb = new StringBuilder("SINCE ");
                sb.append(iMAPDate);
                argument.writeAtom(sb.toString());
                return argument;
            case 6:
                sb = new StringBuilder("OR SINCE ");
                sb.append(iMAPDate);
                sb.append(" ON ");
                sb.append(iMAPDate);
                argument.writeAtom(sb.toString());
                return argument;
            default:
                throw new SearchException("Cannot handle Date Comparison");
        }
    }

    private static Argument recipient(Message.RecipientType recipientType, String str, String str2) throws SearchException, IOException {
        String str3;
        Argument argument = new Argument();
        if (recipientType == Message.RecipientType.f10034TO) {
            str3 = "TO";
        } else if (recipientType == Message.RecipientType.f10033CC) {
            str3 = "CC";
        } else {
            if (recipientType != Message.RecipientType.BCC) {
                throw new SearchException("Illegal Recipient type");
            }
            str3 = "BCC";
        }
        argument.writeAtom(str3);
        argument.writeString(str, str2);
        return argument;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0011. Please report as an issue. */
    private static Argument sentdate(DateTerm dateTerm) throws SearchException {
        StringBuilder sb;
        Argument argument = new Argument();
        String iMAPDate = toIMAPDate(dateTerm.getDate());
        switch (dateTerm.getComparison()) {
            case 1:
                sb = new StringBuilder("OR SENTBEFORE ");
                sb.append(iMAPDate);
                sb.append(" SENTON ");
                sb.append(iMAPDate);
                argument.writeAtom(sb.toString());
                return argument;
            case 2:
                sb = new StringBuilder("SENTBEFORE ");
                sb.append(iMAPDate);
                argument.writeAtom(sb.toString());
                return argument;
            case 3:
                sb = new StringBuilder("SENTON ");
                sb.append(iMAPDate);
                argument.writeAtom(sb.toString());
                return argument;
            case 4:
                sb = new StringBuilder("NOT SENTON ");
                sb.append(iMAPDate);
                argument.writeAtom(sb.toString());
                return argument;
            case 5:
                sb = new StringBuilder("SENTSINCE ");
                sb.append(iMAPDate);
                argument.writeAtom(sb.toString());
                return argument;
            case 6:
                sb = new StringBuilder("OR SENTSINCE ");
                sb.append(iMAPDate);
                sb.append(" SENTON ");
                sb.append(iMAPDate);
                argument.writeAtom(sb.toString());
                return argument;
            default:
                throw new SearchException("Cannot handle Date Comparison");
        }
    }

    private static Argument size(SizeTerm sizeTerm) throws SearchException {
        String str;
        Argument argument = new Argument();
        int comparison = sizeTerm.getComparison();
        if (comparison == 2) {
            str = "SMALLER";
        } else {
            if (comparison != 5) {
                throw new SearchException("Cannot handle Comparison");
            }
            str = "LARGER";
        }
        argument.writeAtom(str);
        argument.writeNumber(sizeTerm.getNumber());
        return argument;
    }

    private static Argument subject(SubjectTerm subjectTerm, String str) throws SearchException, IOException {
        Argument argument = new Argument();
        argument.writeAtom("SUBJECT");
        argument.writeString(subjectTerm.getPattern(), str);
        return argument;
    }

    private static String toIMAPDate(Date date) {
        StringBuffer stringBuffer = new StringBuffer();
        cal.setTime(date);
        stringBuffer.append(cal.get(5));
        stringBuffer.append("-");
        stringBuffer.append(monthTable[cal.get(2)]);
        stringBuffer.append('-');
        stringBuffer.append(cal.get(1));
        return stringBuffer.toString();
    }
}
