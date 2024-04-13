.class public Lcom/sun/mail/imap/protocol/INTERNALDATE;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/mail/imap/protocol/Item;


# static fields
.field private static df:Ljava/text/SimpleDateFormat;

.field private static mailDateFormat:Ljavax/mail/internet/MailDateFormat;

.field static final name:[C


# instance fields
.field protected date:Ljava/util/Date;

.field public msgno:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->name:[C

    new-instance v0, Ljavax/mail/internet/MailDateFormat;

    invoke-direct {v0}, Ljavax/mail/internet/MailDateFormat;-><init>()V

    sput-object v0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MMM-yyyy HH:mm:ss "

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->df:Ljava/text/SimpleDateFormat;

    return-void

    :array_1c
    .array-data 2
        0x49s
        0x4es
        0x54s
        0x45s
        0x52s
        0x4es
        0x41s
        0x4cs
        0x44s
        0x41s
        0x54s
        0x45s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->msgno:I

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1a

    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    const-string v0, "INTERNALDATE is NIL"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    :try_start_1a
    sget-object v0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/MailDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->date:Ljava/util/Date;
    :try_end_22
    .catch Ljava/text/ParseException; {:try_start_1a .. :try_end_22} :catch_23

    return-void

    :catch_23
    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    const-string v0, "INTERNALDATE parse error"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lcom/sun/mail/imap/protocol/INTERNALDATE;->df:Ljava/text/SimpleDateFormat;

    monitor-enter v1

    :try_start_8
    sget-object v2, Lcom/sun/mail/imap/protocol/INTERNALDATE;->df:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/text/FieldPosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v2, p0, v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_54

    invoke-virtual {p0}, Ljava/util/Date;->getTimezoneOffset()I

    move-result p0

    neg-int p0, p0

    if-gez p0, :cond_22

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    neg-int p0, p0

    goto :goto_27

    :cond_22
    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_27
    div-int/lit8 v1, p0, 0x3c

    rem-int/lit8 p0, p0, 0x3c

    div-int/lit8 v2, v1, 0xa

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    rem-int/2addr v1, v3

    invoke-static {v1, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    div-int/lit8 v1, p0, 0xa

    invoke-static {v1, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    rem-int/2addr p0, v3

    invoke-static {p0, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_54
    move-exception p0

    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p0
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->date:Ljava/util/Date;

    return-object v0
.end method
