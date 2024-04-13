.class Lcom/sun/mail/imap/protocol/SearchSequence;
.super Ljava/lang/Object;


# static fields
.field private static cal:Ljava/util/Calendar;

.field private static monthTable:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const-string v0, "Jan"

    const-string v1, "Feb"

    const-string v2, "Mar"

    const-string v3, "Apr"

    const-string v4, "May"

    const-string v5, "Jun"

    const-string v6, "Jul"

    const-string v7, "Aug"

    const-string v8, "Sep"

    const-string v9, "Oct"

    const-string v10, "Nov"

    const-string v11, "Dec"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/imap/protocol/SearchSequence;->monthTable:[Ljava/lang/String;

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    sput-object v0, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static and(Ljavax/mail/search/AndTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/mail/search/AndTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v0

    const/4 v1, 0x1

    :goto_c
    array-length v2, p0

    if-lt v1, v2, :cond_10

    return-object v0

    :cond_10
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method private static body(Ljavax/mail/search/BodyTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v1, "BODY"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/mail/search/BodyTerm;->getPattern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static flag(Ljavax/mail/search/FlagTerm;)Lcom/sun/mail/iap/Argument;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/mail/search/FlagTerm;->getTestSet()Z

    move-result v0

    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {p0}, Ljavax/mail/search/FlagTerm;->getFlags()Ljavax/mail/Flags;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/mail/Flags;->getSystemFlags()[Ljavax/mail/Flags$Flag;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/mail/Flags;->getUserFlags()[Ljava/lang/String;

    move-result-object p0

    array-length v3, v2

    if-nez v3, :cond_23

    array-length v3, p0

    if-nez v3, :cond_23

    new-instance p0, Ljavax/mail/search/SearchException;

    const-string v0, "Invalid FlagTerm"

    invoke-direct {p0, v0}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_25
    array-length v5, v2

    if-lt v4, v5, :cond_3e

    :goto_28
    array-length v2, p0

    if-lt v3, v2, :cond_2c

    return-object v1

    :cond_2c
    if-eqz v0, :cond_31

    const-string v2, "KEYWORD"

    goto :goto_33

    :cond_31
    const-string v2, "UNKEYWORD"

    :goto_33
    invoke-virtual {v1, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    aget-object v2, p0, v3

    invoke-virtual {v1, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_3e
    aget-object v5, v2, v4

    sget-object v6, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    if-ne v5, v6, :cond_4f

    if-eqz v0, :cond_49

    const-string v5, "DELETED"

    goto :goto_4b

    :cond_49
    const-string v5, "UNDELETED"

    :goto_4b
    invoke-virtual {v1, v5}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_95

    :cond_4f
    aget-object v5, v2, v4

    sget-object v6, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    if-ne v5, v6, :cond_5d

    if-eqz v0, :cond_5a

    const-string v5, "ANSWERED"

    goto :goto_4b

    :cond_5a
    const-string v5, "UNANSWERED"

    goto :goto_4b

    :cond_5d
    aget-object v5, v2, v4

    sget-object v6, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    if-ne v5, v6, :cond_6b

    if-eqz v0, :cond_68

    const-string v5, "DRAFT"

    goto :goto_4b

    :cond_68
    const-string v5, "UNDRAFT"

    goto :goto_4b

    :cond_6b
    aget-object v5, v2, v4

    sget-object v6, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    if-ne v5, v6, :cond_79

    if-eqz v0, :cond_76

    const-string v5, "FLAGGED"

    goto :goto_4b

    :cond_76
    const-string v5, "UNFLAGGED"

    goto :goto_4b

    :cond_79
    aget-object v5, v2, v4

    sget-object v6, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    if-ne v5, v6, :cond_87

    if-eqz v0, :cond_84

    const-string v5, "RECENT"

    goto :goto_4b

    :cond_84
    const-string v5, "OLD"

    goto :goto_4b

    :cond_87
    aget-object v5, v2, v4

    sget-object v6, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    if-ne v5, v6, :cond_95

    if-eqz v0, :cond_92

    const-string v5, "SEEN"

    goto :goto_4b

    :cond_92
    const-string v5, "UNSEEN"

    goto :goto_4b

    :cond_95
    :goto_95
    add-int/lit8 v4, v4, 0x1

    goto :goto_25
.end method

.method private static from(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v1, "FROM"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Ljavax/mail/search/AndTerm;

    if-eqz v0, :cond_b

    check-cast p0, Ljavax/mail/search/AndTerm;

    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->and(Ljavax/mail/search/AndTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of v0, p0, Ljavax/mail/search/OrTerm;

    if-eqz v0, :cond_16

    check-cast p0, Ljavax/mail/search/OrTerm;

    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->or(Ljavax/mail/search/OrTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    :cond_16
    instance-of v0, p0, Ljavax/mail/search/NotTerm;

    if-eqz v0, :cond_21

    check-cast p0, Ljavax/mail/search/NotTerm;

    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->not(Ljavax/mail/search/NotTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    :cond_21
    instance-of v0, p0, Ljavax/mail/search/HeaderTerm;

    if-eqz v0, :cond_2c

    check-cast p0, Ljavax/mail/search/HeaderTerm;

    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->header(Ljavax/mail/search/HeaderTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    :cond_2c
    instance-of v0, p0, Ljavax/mail/search/FlagTerm;

    if-eqz v0, :cond_37

    check-cast p0, Ljavax/mail/search/FlagTerm;

    invoke-static {p0}, Lcom/sun/mail/imap/protocol/SearchSequence;->flag(Ljavax/mail/search/FlagTerm;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    :cond_37
    instance-of v0, p0, Ljavax/mail/search/FromTerm;

    if-eqz v0, :cond_4a

    check-cast p0, Ljavax/mail/search/FromTerm;

    invoke-virtual {p0}, Ljavax/mail/search/FromTerm;->getAddress()Ljavax/mail/Address;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->from(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    :cond_4a
    instance-of v0, p0, Ljavax/mail/search/FromStringTerm;

    if-eqz v0, :cond_59

    check-cast p0, Ljavax/mail/search/FromStringTerm;

    invoke-virtual {p0}, Ljavax/mail/search/FromStringTerm;->getPattern()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->from(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    :cond_59
    instance-of v0, p0, Ljavax/mail/search/RecipientTerm;

    if-eqz v0, :cond_70

    check-cast p0, Ljavax/mail/search/RecipientTerm;

    invoke-virtual {p0}, Ljavax/mail/search/RecipientTerm;->getRecipientType()Ljavax/mail/Message$RecipientType;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/mail/search/RecipientTerm;->getAddress()Ljavax/mail/Address;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->recipient(Ljavax/mail/Message$RecipientType;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    :cond_70
    instance-of v0, p0, Ljavax/mail/search/RecipientStringTerm;

    if-eqz v0, :cond_83

    check-cast p0, Ljavax/mail/search/RecipientStringTerm;

    invoke-virtual {p0}, Ljavax/mail/search/RecipientStringTerm;->getRecipientType()Ljavax/mail/Message$RecipientType;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/mail/search/RecipientStringTerm;->getPattern()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->recipient(Ljavax/mail/Message$RecipientType;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    :cond_83
    instance-of v0, p0, Ljavax/mail/search/SubjectTerm;

    if-eqz v0, :cond_8e

    check-cast p0, Ljavax/mail/search/SubjectTerm;

    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->subject(Ljavax/mail/search/SubjectTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    :cond_8e
    instance-of v0, p0, Ljavax/mail/search/BodyTerm;

    if-eqz v0, :cond_99

    check-cast p0, Ljavax/mail/search/BodyTerm;

    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->body(Ljavax/mail/search/BodyTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    :cond_99
    instance-of v0, p0, Ljavax/mail/search/SizeTerm;

    if-eqz v0, :cond_a4

    check-cast p0, Ljavax/mail/search/SizeTerm;

    invoke-static {p0}, Lcom/sun/mail/imap/protocol/SearchSequence;->size(Ljavax/mail/search/SizeTerm;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    :cond_a4
    instance-of v0, p0, Ljavax/mail/search/SentDateTerm;

    if-eqz v0, :cond_af

    check-cast p0, Ljavax/mail/search/SentDateTerm;

    invoke-static {p0}, Lcom/sun/mail/imap/protocol/SearchSequence;->sentdate(Ljavax/mail/search/DateTerm;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    :cond_af
    instance-of v0, p0, Ljavax/mail/search/ReceivedDateTerm;

    if-eqz v0, :cond_ba

    check-cast p0, Ljavax/mail/search/ReceivedDateTerm;

    invoke-static {p0}, Lcom/sun/mail/imap/protocol/SearchSequence;->receiveddate(Ljavax/mail/search/DateTerm;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    :cond_ba
    instance-of v0, p0, Ljavax/mail/search/MessageIDTerm;

    if-eqz v0, :cond_c5

    check-cast p0, Ljavax/mail/search/MessageIDTerm;

    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->messageid(Ljavax/mail/search/MessageIDTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    :cond_c5
    new-instance p0, Ljavax/mail/search/SearchException;

    const-string p1, "Search too complex"

    invoke-direct {p0, p1}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static header(Ljavax/mail/search/HeaderTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v1, "HEADER"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/mail/search/HeaderTerm;->getHeaderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/mail/search/HeaderTerm;->getPattern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static isAscii(Ljava/lang/String;)Z
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-lt v2, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7f

    if-le v3, v4, :cond_13

    return v1

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method static isAscii(Ljavax/mail/search/SearchTerm;)Z
    .registers 4

    :goto_0
    instance-of v0, p0, Ljavax/mail/search/AndTerm;

    if-nez v0, :cond_32

    instance-of v1, p0, Ljavax/mail/search/OrTerm;

    if-eqz v1, :cond_9

    goto :goto_32

    :cond_9
    instance-of v0, p0, Ljavax/mail/search/NotTerm;

    if-eqz v0, :cond_14

    check-cast p0, Ljavax/mail/search/NotTerm;

    invoke-virtual {p0}, Ljavax/mail/search/NotTerm;->getTerm()Ljavax/mail/search/SearchTerm;

    move-result-object p0

    goto :goto_0

    :cond_14
    instance-of v0, p0, Ljavax/mail/search/StringTerm;

    if-eqz v0, :cond_23

    check-cast p0, Ljavax/mail/search/StringTerm;

    invoke-virtual {p0}, Ljavax/mail/search/StringTerm;->getPattern()Ljava/lang/String;

    move-result-object p0

    :goto_1e
    invoke-static {p0}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_23
    instance-of v0, p0, Ljavax/mail/search/AddressTerm;

    if-eqz v0, :cond_46

    check-cast p0, Ljavax/mail/search/AddressTerm;

    invoke-virtual {p0}, Ljavax/mail/search/AddressTerm;->getAddress()Ljavax/mail/Address;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1e

    :cond_32
    :goto_32
    if-eqz v0, :cond_3b

    check-cast p0, Ljavax/mail/search/AndTerm;

    invoke-virtual {p0}, Ljavax/mail/search/AndTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object p0

    goto :goto_41

    :cond_3b
    check-cast p0, Ljavax/mail/search/OrTerm;

    invoke-virtual {p0}, Ljavax/mail/search/OrTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object p0

    :goto_41
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_43
    array-length v2, p0

    if-lt v1, v2, :cond_48

    :cond_46
    const/4 p0, 0x1

    return p0

    :cond_48
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljavax/mail/search/SearchTerm;)Z

    move-result v2

    if-nez v2, :cond_51

    return v0

    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_43
.end method

.method private static messageid(Ljavax/mail/search/MessageIDTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v1, "HEADER"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    const-string v1, "Message-ID"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/mail/search/MessageIDTerm;->getPattern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static not(Ljavax/mail/search/NotTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v1, "NOT"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/mail/search/NotTerm;->getTerm()Ljavax/mail/search/SearchTerm;

    move-result-object p0

    instance-of v1, p0, Ljavax/mail/search/AndTerm;

    if-nez v1, :cond_1f

    instance-of v1, p0, Ljavax/mail/search/FlagTerm;

    if-eqz v1, :cond_17

    goto :goto_1f

    :cond_17
    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)V

    return-object v0

    :cond_1f
    :goto_1f
    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)V

    return-object v0
.end method

.method private static or(Ljavax/mail/search/OrTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/mail/search/OrTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-le v0, v3, :cond_23

    aget-object v0, p0, v1

    move-object v3, v0

    const/4 v0, 0x1

    :goto_e
    array-length v4, p0

    if-lt v0, v4, :cond_18

    check-cast v3, Ljavax/mail/search/OrTerm;

    invoke-virtual {v3}, Ljavax/mail/search/OrTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object p0

    goto :goto_23

    :cond_18
    new-instance v4, Ljavax/mail/search/OrTerm;

    aget-object v5, p0, v0

    invoke-direct {v4, v3, v5}, Ljavax/mail/search/OrTerm;-><init>(Ljavax/mail/search/SearchTerm;Ljavax/mail/search/SearchTerm;)V

    add-int/lit8 v0, v0, 0x1

    move-object v3, v4

    goto :goto_e

    :cond_23
    :goto_23
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    array-length v3, p0

    if-le v3, v2, :cond_30

    const-string v3, "OR"

    invoke-virtual {v0, v3}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    :cond_30
    aget-object v3, p0, v1

    instance-of v3, v3, Ljavax/mail/search/AndTerm;

    if-nez v3, :cond_47

    aget-object v3, p0, v1

    instance-of v3, v3, Ljavax/mail/search/FlagTerm;

    if-eqz v3, :cond_3d

    goto :goto_47

    :cond_3d
    aget-object v1, p0, v1

    invoke-static {v1, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)V

    goto :goto_50

    :cond_47
    :goto_47
    aget-object v1, p0, v1

    invoke-static {v1, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)V

    :goto_50
    array-length v1, p0

    if-le v1, v2, :cond_73

    aget-object v1, p0, v2

    instance-of v1, v1, Ljavax/mail/search/AndTerm;

    if-nez v1, :cond_6a

    aget-object v1, p0, v2

    instance-of v1, v1, Ljavax/mail/search/FlagTerm;

    if-eqz v1, :cond_60

    goto :goto_6a

    :cond_60
    aget-object p0, p0, v2

    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)V

    return-object v0

    :cond_6a
    :goto_6a
    aget-object p0, p0, v2

    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)V

    :cond_73
    return-object v0
.end method

.method private static receiveddate(Ljavax/mail/search/DateTerm;)Lcom/sun/mail/iap/Argument;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {p0}, Ljavax/mail/search/DateTerm;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/mail/imap/protocol/SearchSequence;->toIMAPDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/mail/search/DateTerm;->getComparison()I

    move-result p0

    packed-switch p0, :pswitch_data_5e

    new-instance p0, Ljavax/mail/search/SearchException;

    const-string v0, "Cannot handle Date Comparison"

    invoke-direct {p0, v0}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1c
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "OR SINCE "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_4b

    :pswitch_24
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "SINCE "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_53

    :pswitch_2c
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "NOT ON "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_53

    :pswitch_34
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "ON "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_53

    :pswitch_3c
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "BEFORE "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_53

    :pswitch_44
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "OR BEFORE "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_4b
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ON "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_53
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    return-object v0

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_44
        :pswitch_3c
        :pswitch_34
        :pswitch_2c
        :pswitch_24
        :pswitch_1c
    .end packed-switch
.end method

.method private static recipient(Ljavax/mail/Message$RecipientType;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    sget-object v1, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    if-ne p0, v1, :cond_f

    const-string p0, "TO"

    :goto_b
    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_1d

    :cond_f
    sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    if-ne p0, v1, :cond_16

    const-string p0, "CC"

    goto :goto_b

    :cond_16
    sget-object v1, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    if-ne p0, v1, :cond_21

    const-string p0, "BCC"

    goto :goto_b

    :goto_1d
    invoke-virtual {v0, p1, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_21
    new-instance p0, Ljavax/mail/search/SearchException;

    const-string p1, "Illegal Recipient type"

    invoke-direct {p0, p1}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static sentdate(Ljavax/mail/search/DateTerm;)Lcom/sun/mail/iap/Argument;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {p0}, Ljavax/mail/search/DateTerm;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/mail/imap/protocol/SearchSequence;->toIMAPDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/mail/search/DateTerm;->getComparison()I

    move-result p0

    packed-switch p0, :pswitch_data_5e

    new-instance p0, Ljavax/mail/search/SearchException;

    const-string v0, "Cannot handle Date Comparison"

    invoke-direct {p0, v0}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1c
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "OR SENTSINCE "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_4b

    :pswitch_24
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "SENTSINCE "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_53

    :pswitch_2c
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "NOT SENTON "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_53

    :pswitch_34
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "SENTON "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_53

    :pswitch_3c
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "SENTBEFORE "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_53

    :pswitch_44
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "OR SENTBEFORE "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_4b
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " SENTON "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_53
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    return-object v0

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_44
        :pswitch_3c
        :pswitch_34
        :pswitch_2c
        :pswitch_24
        :pswitch_1c
    .end packed-switch
.end method

.method private static size(Ljavax/mail/search/SizeTerm;)Lcom/sun/mail/iap/Argument;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {p0}, Ljavax/mail/search/SizeTerm;->getComparison()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    const/4 v2, 0x5

    if-eq v1, v2, :cond_17

    new-instance p0, Ljavax/mail/search/SearchException;

    const-string v0, "Cannot handle Comparison"

    invoke-direct {p0, v0}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    const-string v1, "LARGER"

    goto :goto_1c

    :cond_1a
    const-string v1, "SMALLER"

    :goto_1c
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/mail/search/SizeTerm;->getNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->writeNumber(I)V

    return-object v0
.end method

.method private static subject(Ljavax/mail/search/SubjectTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v1, "SUBJECT"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/mail/search/SubjectTerm;->getPattern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static toIMAPDate(Ljava/util/Date;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    sget-object p0, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object p0, Lcom/sun/mail/imap/protocol/SearchSequence;->monthTable:[Ljava/lang/String;

    sget-object v1, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p0, 0x2d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object p0, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
