.class public Lcom/sun/mail/imap/protocol/IMAPProtocol;
.super Lcom/sun/mail/iap/Protocol;


# static fields
.field private static final CRLF:[B

.field private static final DONE:[B


# instance fields
.field private authenticated:Z

.field private authmechs:Ljava/util/List;

.field private ba:Lcom/sun/mail/iap/ByteArray;

.field private capabilities:Ljava/util/Map;

.field private connected:Z

.field private idleTag:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private rev1:Z

.field private saslAuthenticator:Lcom/sun/mail/imap/protocol/SaslAuthenticator;

.field private searchCharsets:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    sput-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->CRLF:[B

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_18

    sput-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->DONE:[B

    return-void

    nop

    :array_12
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_18
    .array-data 1
        0x44t
        0x4ft
        0x4et
        0x45t
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Z)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    move-object v9, p0

    move-object v10, p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, v9

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/sun/mail/iap/Protocol;-><init>(Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/sun/mail/imap/protocol/IMAPProtocol;->connected:Z

    iput-boolean v1, v9, Lcom/sun/mail/imap/protocol/IMAPProtocol;->rev1:Z

    const/4 v2, 0x0

    iput-object v2, v9, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    iput-object v2, v9, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;

    :try_start_27
    iput-object v10, v9, Lcom/sun/mail/imap/protocol/IMAPProtocol;->name:Ljava/lang/String;

    iget-object v2, v9, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    if-nez v2, :cond_30

    invoke-virtual {v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capability()V

    :cond_30
    const-string v2, "IMAP4rev1"

    invoke-virtual {v9, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3b

    iput-boolean v3, v9, Lcom/sun/mail/imap/protocol/IMAPProtocol;->rev1:Z

    :cond_3b
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v9, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    iget-object v2, v9, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    const-string v4, "UTF-8"

    aput-object v4, v2, v1

    iget-object v1, v9, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iput-boolean v3, v9, Lcom/sun/mail/imap/protocol/IMAPProtocol;->connected:Z
    :try_end_54
    .catchall {:try_start_27 .. :try_end_54} :catchall_5c

    iget-boolean v1, v9, Lcom/sun/mail/imap/protocol/IMAPProtocol;->connected:Z

    if-nez v1, :cond_5b

    invoke-virtual {v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    :cond_5b
    return-void

    :catchall_5c
    move-exception v0

    move-object v1, v0

    iget-boolean v2, v9, Lcom/sun/mail/imap/protocol/IMAPProtocol;->connected:Z

    if-nez v2, :cond_65

    invoke-virtual {v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    :cond_65
    throw v1
.end method

.method private copy(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-static {p2}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    const-string p1, "COPY"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    return-void
.end method

.method private createFlagList(Ljavax/mail/Flags;)Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljavax/mail/Flags;->getSystemFlags()[Ljavax/mail/Flags$Flag;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    :goto_12
    array-length v5, v1

    const/16 v6, 0x20

    if-lt v2, v5, :cond_38

    invoke-virtual {p1}, Ljavax/mail/Flags;->getUserFlags()[Ljava/lang/String;

    move-result-object v5

    const/4 p1, 0x0

    :goto_1c
    array-length v1, v5

    if-lt p1, v1, :cond_29

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_29
    if-eqz v4, :cond_2d

    const/4 v4, 0x0

    goto :goto_30

    :cond_2d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_30
    aget-object v1, v5, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    :cond_38
    aget-object v5, v1, v2

    sget-object v7, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    if-ne v5, v7, :cond_41

    const-string v5, "\\Answered"

    goto :goto_63

    :cond_41
    sget-object v7, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    if-ne v5, v7, :cond_48

    const-string v5, "\\Deleted"

    goto :goto_63

    :cond_48
    sget-object v7, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    if-ne v5, v7, :cond_4f

    const-string v5, "\\Draft"

    goto :goto_63

    :cond_4f
    sget-object v7, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    if-ne v5, v7, :cond_56

    const-string v5, "\\Flagged"

    goto :goto_63

    :cond_56
    sget-object v7, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    if-ne v5, v7, :cond_5d

    const-string v5, "\\Recent"

    goto :goto_63

    :cond_5d
    sget-object v7, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    if-ne v5, v7, :cond_6d

    const-string v5, "\\Seen"

    :goto_63
    if-eqz v4, :cond_67

    const/4 v4, 0x0

    goto :goto_6a

    :cond_67
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_6a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_12
.end method

.method private doList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-static {p2}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object p2

    array-length p3, p2

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    aget-object p3, p2, p3

    invoke-virtual {p3}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_59

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    const/4 v0, 0x0

    array-length v3, p2

    :goto_2a
    if-lt v0, v3, :cond_3c

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p1

    if-lez p1, :cond_59

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p1

    new-array v2, p1, [Lcom/sun/mail/imap/protocol/ListInfo;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_59

    :cond_3c
    aget-object v4, p2, v0

    instance-of v4, v4, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-eqz v4, :cond_56

    aget-object v4, p2, v0

    check-cast v4, Lcom/sun/mail/imap/protocol/IMAPResponse;

    invoke-virtual {v4, p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56

    new-instance v5, Lcom/sun/mail/imap/protocol/ListInfo;

    invoke-direct {v5, v4}, Lcom/sun/mail/imap/protocol/ListInfo;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    invoke-virtual {v1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    aput-object v2, p2, v0

    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_59
    :goto_59
    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    invoke-virtual {p0, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    return-object v2
.end method

.method private fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_23

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "UID FETCH "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_a
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object p1

    return-object p1

    :cond_23
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "FETCH "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_a
.end method

.method private getAppendUID(Lcom/sun/mail/iap/Response;)Lcom/sun/mail/imap/AppendUID;
    .registers 6

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    if-lez v0, :cond_12

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_8

    :cond_12
    if-nez v0, :cond_15

    return-object v1

    :cond_15
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v0

    const-string v2, "APPENDUID"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    return-object v1

    :cond_22
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v2

    new-instance p1, Lcom/sun/mail/imap/AppendUID;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/sun/mail/imap/AppendUID;-><init>(JJ)V

    return-object p1
.end method

.method private issueSearch(Ljava/lang/String;Ljavax/mail/search/SearchTerm;Ljava/lang/String;)[I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_5

    move-object v1, v0

    goto :goto_9

    :cond_5
    invoke-static {p3}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_9
    invoke-static {p2, v1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    if-nez p3, :cond_19

    const-string p1, "SEARCH"

    :goto_14
    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object p1

    goto :goto_28

    :cond_19
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "SEARCH CHARSET "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_14

    :goto_28
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget-object p2, p1, p2

    invoke-virtual {p2}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result p3

    if-eqz p3, :cond_7e

    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3}, Ljava/util/Vector;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3b
    if-lt v3, v1, :cond_56

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v5, v4, [I

    :goto_43
    if-lt v2, v4, :cond_47

    move-object v0, v5

    goto :goto_7e

    :cond_47
    invoke-virtual {p3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :cond_56
    aget-object v4, p1, v3

    instance-of v4, v4, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-eqz v4, :cond_7b

    aget-object v4, p1, v3

    check-cast v4, Lcom/sun/mail/imap/protocol/IMAPResponse;

    const-string v5, "SEARCH"

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7b

    :goto_68
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readNumber()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_72

    aput-object v0, p1, v3

    goto :goto_7b

    :cond_72
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_68

    :cond_7b
    :goto_7b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :cond_7e
    :goto_7e
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    return-object v0
.end method

.method private parseQuota(Lcom/sun/mail/iap/Response;)Ljavax/mail/Quota;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtomString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljavax/mail/Quota;

    invoke-direct {v1, v0}, Ljavax/mail/Quota;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_1c

    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    const-string v0, "parse error in QUOTA"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :cond_21
    :goto_21
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_3a

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Ljavax/mail/Quota$Resource;

    iput-object p1, v1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    iget-object p1, v1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v1

    :cond_3a
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_21

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v6

    new-instance v8, Ljavax/mail/Quota$Resource;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Ljavax/mail/Quota$Resource;-><init>(Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_21
.end method

.method private search(Ljava/lang/String;Ljavax/mail/search/SearchTerm;)[I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    invoke-static {p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljavax/mail/search/SearchTerm;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    :try_start_7
    invoke-direct {p0, p1, p2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->issueSearch(Ljava/lang/String;Ljavax/mail/search/SearchTerm;Ljava/lang/String;)[I

    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    :cond_c
    const/4 v0, 0x0

    :goto_d
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_1a

    new-instance p1, Ljavax/mail/search/SearchException;

    const-string p2, "Search failed"

    invoke-direct {p1, p2}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_31

    :try_start_20
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {p0, p1, p2, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->issueSearch(Ljava/lang/String;Ljavax/mail/search/SearchTerm;Ljava/lang/String;)[I

    move-result-object v2
    :try_end_28
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_20 .. :try_end_28} :catch_2d
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_28} :catch_31
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_20 .. :try_end_28} :catch_2b
    .catch Ljavax/mail/search/SearchException; {:try_start_20 .. :try_end_28} :catch_29

    return-object v2

    :catch_29
    move-exception p1

    throw p1

    :catch_2b
    move-exception p1

    throw p1

    :catch_2d
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    aput-object v1, v2, v0

    :catch_31
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method private storeFlags(Ljava/lang/String;Ljavax/mail/Flags;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_22

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "STORE "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " +FLAGS "

    :goto_f
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->createFlagList(Ljavax/mail/Flags;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object p1

    goto :goto_2f

    :cond_22
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "STORE "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -FLAGS "

    goto :goto_f

    :goto_2f
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->appenduid(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;Z)Lcom/sun/mail/imap/AppendUID;

    return-void
.end method

.method public appenduid(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;)Lcom/sun/mail/imap/AppendUID;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->appenduid(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;Z)Lcom/sun/mail/imap/AppendUID;

    move-result-object p1

    return-object p1
.end method

.method public appenduid(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;Z)Lcom/sun/mail/imap/AppendUID;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_29

    sget-object p1, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {p2, p1}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z

    move-result p1

    if-eqz p1, :cond_21

    new-instance p1, Ljavax/mail/Flags;

    invoke-direct {p1, p2}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags;)V

    sget-object p2, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {p1, p2}, Ljavax/mail/Flags;->remove(Ljavax/mail/Flags$Flag;)V

    goto :goto_22

    :cond_21
    move-object p1, p2

    :goto_22
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->createFlagList(Ljavax/mail/Flags;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    :cond_29
    if-eqz p3, :cond_32

    invoke-static {p3}, Lcom/sun/mail/imap/protocol/INTERNALDATE;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    :cond_32
    invoke-virtual {v0, p4}, Lcom/sun/mail/iap/Argument;->writeBytes(Lcom/sun/mail/iap/Literal;)V

    const-string p1, "APPEND"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget-object p2, p1, p2

    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    if-eqz p5, :cond_52

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getAppendUID(Lcom/sun/mail/iap/Response;)Lcom/sun/mail/imap/AppendUID;

    move-result-object p1

    return-object p1

    :cond_52
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized authlogin(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9a

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_9
    const-string v4, "AUTHENTICATE LOGIN"

    invoke-virtual {p0, v4, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;

    move-result-object v4
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_12
    .catchall {:try_start_9 .. :try_end_f} :catchall_9a

    move-object v5, v2

    const/4 v2, 0x0

    goto :goto_1a

    :catch_12
    move-exception v4

    :try_start_13
    invoke-static {v4}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v4

    move-object v5, v4

    move-object v4, v2

    const/4 v2, 0x1

    :goto_1a
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v8, Lcom/sun/mail/util/BASE64EncoderStream;

    const v9, 0x7fffffff

    invoke-direct {v8, v7, v9}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v9, v5

    const/4 v5, 0x1

    :goto_2d
    if-eqz v2, :cond_45

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Lcom/sun/mail/iap/Response;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    invoke-virtual {p0, v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    invoke-virtual {p0, v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    iput-boolean v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z
    :try_end_43
    .catchall {:try_start_13 .. :try_end_43} :catchall_9a

    monitor-exit p0

    return-void

    :cond_45
    :try_start_45
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v10
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4d} :catch_93
    .catchall {:try_start_45 .. :try_end_4d} :catchall_9a

    if-eqz v10, :cond_77

    if-eqz v5, :cond_54

    move-object v5, p1

    const/4 v10, 0x0

    goto :goto_56

    :cond_54
    move v10, v5

    move-object v5, p2

    :goto_56
    :try_start_56
    invoke-static {v5}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    sget-object v5, Lcom/sun/mail/imap/protocol/IMAPProtocol;->CRLF:[B

    invoke-virtual {v7, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_72} :catch_74
    .catchall {:try_start_56 .. :try_end_72} :catchall_9a

    move v5, v10

    goto :goto_2d

    :catch_74
    move-exception v2

    move v5, v10

    goto :goto_94

    :cond_77
    :try_start_77
    invoke-virtual {v9}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v10

    if-eqz v10, :cond_88

    invoke-virtual {v9}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_88

    goto :goto_98

    :cond_88
    invoke-virtual {v9}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v10

    if-eqz v10, :cond_8f

    goto :goto_98

    :cond_8f
    invoke-virtual {v0, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_92} :catch_93
    .catchall {:try_start_77 .. :try_end_92} :catchall_9a

    goto :goto_2d

    :catch_93
    move-exception v2

    :goto_94
    :try_start_94
    invoke-static {v2}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v9
    :try_end_98
    .catchall {:try_start_94 .. :try_end_98} :catchall_9a

    :goto_98
    const/4 v2, 0x1

    goto :goto_2d

    :catchall_9a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized authplain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_aa

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_9
    const-string v4, "AUTHENTICATE PLAIN"

    invoke-virtual {p0, v4, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;

    move-result-object v4
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_13
    .catchall {:try_start_9 .. :try_end_f} :catchall_aa

    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    goto :goto_1a

    :catch_13
    move-exception v1

    :try_start_14
    invoke-static {v1}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v1

    move-object v4, v1

    const/4 v1, 0x1

    :goto_1a
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v7, Lcom/sun/mail/util/BASE64EncoderStream;

    const v8, 0x7fffffff

    invoke-direct {v7, v6, v8}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V

    :goto_2b
    if-eqz v1, :cond_43

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Lcom/sun/mail/iap/Response;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    iput-boolean v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z
    :try_end_41
    .catchall {:try_start_14 .. :try_end_41} :catchall_aa

    monitor-exit p0

    return-void

    :cond_43
    :try_start_43
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v8

    if-eqz v8, :cond_87

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\u0000"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\u0000"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    sget-object v8, Lcom/sun/mail/imap/protocol/IMAPProtocol;->CRLF:[B

    invoke-virtual {v6, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_2b

    :cond_87
    invoke-virtual {v4}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v8

    if-eqz v8, :cond_98

    invoke-virtual {v4}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_98

    goto :goto_a8

    :cond_98
    invoke-virtual {v4}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v8

    if-eqz v8, :cond_9f

    goto :goto_a8

    :cond_9f
    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_a2} :catch_a3
    .catchall {:try_start_43 .. :try_end_a2} :catchall_aa

    goto :goto_2b

    :catch_a3
    move-exception v1

    :try_start_a4
    invoke-static {v1}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v4
    :try_end_a8
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_aa

    :goto_a8
    const/4 v1, 0x1

    goto :goto_2b

    :catchall_aa
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public capability()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const-string v0, "CAPABILITY"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v1

    if-nez v1, :cond_21

    new-instance v1, Lcom/sun/mail/iap/ProtocolException;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;

    const/4 v1, 0x0

    array-length v2, v0

    :goto_34
    if-lt v1, v2, :cond_37

    return-void

    :cond_37
    aget-object v3, v0, v1

    instance-of v3, v3, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-eqz v3, :cond_4c

    aget-object v3, v0, v1

    check-cast v3, Lcom/sun/mail/imap/protocol/IMAPResponse;

    const-string v4, "CAPABILITY"

    invoke-virtual {v3, v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->parseCapabilities(Lcom/sun/mail/iap/Response;)V

    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_34
.end method

.method public check()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const-string v0, "CHECK"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const-string v0, "CLOSE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    return-void
.end method

.method public copy(IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copy(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public copy([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copy(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public create(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    const-string p1, "CREATE"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    const-string p1, "DELETE"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    return-void
.end method

.method public deleteACL(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const-string v0, "ACL"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance p1, Lcom/sun/mail/iap/BadCommandException;

    const-string p2, "ACL not supported"

    invoke-direct {p1, p2}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    const-string p1, "DELETEACL"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object p1

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget-object p2, p1, p2

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    return-void
.end method

.method public disconnect()V
    .registers 2

    invoke-super {p0}, Lcom/sun/mail/iap/Protocol;->disconnect()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    return-void
.end method

.method public examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    const-string p1, "EXAMINE"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object p1

    new-instance v0, Lcom/sun/mail/imap/protocol/MailboxInfo;

    invoke-direct {v0, p1}, Lcom/sun/mail/imap/protocol/MailboxInfo;-><init>([Lcom/sun/mail/iap/Response;)V

    const/4 v1, 0x1

    iput v1, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    array-length v2, p1

    sub-int/2addr v2, v1

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    return-object v0
.end method

.method public expunge()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const-string v0, "EXPUNGE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    return-void
.end method

.method public fetch(IILjava/lang/String;)[Lcom/sun/mail/iap/Response;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p3, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object p1

    return-object p1
.end method

.method public fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object p1

    return-object p1
.end method

.method public fetch([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)[Lcom/sun/mail/iap/Response;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object p1

    return-object p1
.end method

.method public fetchBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;Z)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object p1

    return-object p1
.end method

.method public fetchBody(ILjava/lang/String;II)Lcom/sun/mail/imap/protocol/BODY;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IIZLcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object p1

    return-object p1
.end method

.method public fetchBody(ILjava/lang/String;IILcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IIZLcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object p1

    return-object p1
.end method

.method protected fetchBody(ILjava/lang/String;IIZLcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    iput-object p6, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->ba:Lcom/sun/mail/iap/ByteArray;

    new-instance p6, Ljava/lang/StringBuilder;

    if-eqz p5, :cond_9

    const-string p5, "BODY.PEEK["

    goto :goto_b

    :cond_9
    const-string p5, "BODY["

    :goto_b
    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p6, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_17

    const-string p2, "]<"

    goto :goto_29

    :cond_17
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p5, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "]<"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_29
    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ">"

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    array-length p3, p2

    add-int/lit8 p3, p3, -0x1

    aget-object p3, p2, p3

    invoke-virtual {p3}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result p4

    if-eqz p4, :cond_63

    const-class p3, Lcom/sun/mail/imap/protocol/BODY;

    invoke-static {p2, p1, p3}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object p1

    check-cast p1, Lcom/sun/mail/imap/protocol/BODY;

    return-object p1

    :cond_63
    invoke-virtual {p3}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_6b

    return-object p2

    :cond_6b
    invoke-virtual {p0, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    return-object p2
.end method

.method protected fetchBody(ILjava/lang/String;Z)Lcom/sun/mail/imap/protocol/BODY;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    if-eqz p3, :cond_2c

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "BODY.PEEK["

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_e

    :goto_b
    const-string p2, "]"

    goto :goto_20

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_17
    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_20
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object p2

    goto :goto_40

    :cond_2c
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "BODY["

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_36

    goto :goto_b

    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_17

    :goto_40
    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    array-length p3, p2

    add-int/lit8 p3, p3, -0x1

    aget-object p3, p2, p3

    invoke-virtual {p3}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    if-eqz v0, :cond_57

    const-class p3, Lcom/sun/mail/imap/protocol/BODY;

    invoke-static {p2, p1, p3}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object p1

    check-cast p1, Lcom/sun/mail/imap/protocol/BODY;

    return-object p1

    :cond_57
    invoke-virtual {p3}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_5f

    return-object p2

    :cond_5f
    invoke-virtual {p0, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    return-object p2
.end method

.method public fetchBodyStructure(I)Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const-string v0, "BODYSTRUCTURE"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v2

    if-eqz v2, :cond_1d

    const-class v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-static {v0, p1, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object p1

    check-cast p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    return-object p1

    :cond_1d
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_25

    return-object v0

    :cond_25
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    return-object v0
.end method

.method public fetchFlags(I)Ljavax/mail/Flags;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const-string v0, "FLAGS"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_a
    if-lt v3, v1, :cond_d

    goto :goto_31

    :cond_d
    aget-object v5, v0, v3

    if-eqz v5, :cond_3d

    aget-object v5, v0, v3

    instance-of v5, v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-eqz v5, :cond_3d

    aget-object v5, v0, v3

    check-cast v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v5

    if-ne v5, p1, :cond_3d

    aget-object v4, v0, v3

    check-cast v4, Lcom/sun/mail/imap/protocol/FetchResponse;

    const-class v5, Ljavax/mail/Flags;

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v4

    check-cast v4, Ljavax/mail/Flags;

    if-eqz v4, :cond_3d

    aput-object v2, v0, v3

    :goto_31
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    return-object v4

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_a
.end method

.method public fetchRFC822(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/RFC822DATA;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    if-nez p2, :cond_5

    const-string p2, "RFC822"

    goto :goto_13

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RFC822."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_13
    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v1

    if-eqz v1, :cond_2e

    const-class v0, Lcom/sun/mail/imap/protocol/RFC822DATA;

    invoke-static {p2, p1, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object p1

    check-cast p1, Lcom/sun/mail/imap/protocol/RFC822DATA;

    return-object p1

    :cond_2e
    invoke-virtual {v0}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_36

    return-object p2

    :cond_36
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    return-object p2
.end method

.method public fetchSequenceNumber(J)Lcom/sun/mail/imap/protocol/UID;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UID"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    :goto_f
    if-lt v4, v1, :cond_12

    goto :goto_32

    :cond_12
    aget-object v6, v0, v4

    if-eqz v6, :cond_3d

    aget-object v6, v0, v4

    instance-of v6, v6, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-eqz v6, :cond_3d

    aget-object v5, v0, v4

    check-cast v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    const-class v6, Lcom/sun/mail/imap/protocol/UID;

    invoke-virtual {v5, v6}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v5

    check-cast v5, Lcom/sun/mail/imap/protocol/UID;

    if-eqz v5, :cond_3d

    iget-wide v6, v5, Lcom/sun/mail/imap/protocol/UID;->uid:J

    cmp-long v8, v6, p1

    if-eqz v8, :cond_32

    move-object v5, v3

    goto :goto_3d

    :cond_32
    :goto_32
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    array-length p1, v0

    sub-int/2addr p1, v2

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    return-object v5

    :cond_3d
    :goto_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_f
.end method

.method public fetchSequenceNumbers(JJ)[Lcom/sun/mail/imap/protocol/UID;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 p1, -0x1

    cmp-long v1, p3, p1

    if-nez v1, :cond_1b

    const-string p1, "*"

    goto :goto_1f

    :cond_1b
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    :goto_1f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UID"

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object p1

    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    const/4 p4, 0x0

    array-length v0, p1

    :goto_34
    if-lt p4, v0, :cond_4a

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    array-length p4, p1

    sub-int/2addr p4, p3

    aget-object p1, p1, p4

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Lcom/sun/mail/imap/protocol/UID;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object p1

    :cond_4a
    aget-object v1, p1, p4

    if-eqz v1, :cond_65

    aget-object v1, p1, p4

    instance-of v1, v1, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-eqz v1, :cond_65

    aget-object v1, p1, p4

    check-cast v1, Lcom/sun/mail/imap/protocol/FetchResponse;

    const-class v2, Lcom/sun/mail/imap/protocol/UID;

    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/protocol/UID;

    if-eqz v1, :cond_65

    invoke-virtual {p2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_65
    add-int/lit8 p4, p4, 0x1

    goto :goto_34
.end method

.method public fetchSequenceNumbers([J)[Lcom/sun/mail/imap/protocol/UID;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    array-length v3, p1

    if-lt v2, v3, :cond_4f

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UID"

    const/4 v3, 0x1

    invoke-direct {p0, p1, v0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v4

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    array-length v6, v4

    :goto_1b
    if-lt v1, v6, :cond_31

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    array-length p1, v4

    sub-int/2addr p1, v3

    aget-object p1, v4, p1

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Lcom/sun/mail/imap/protocol/UID;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object p1

    :cond_31
    aget-object p1, v4, v1

    if-eqz p1, :cond_4c

    aget-object p1, v4, v1

    instance-of p1, p1, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-eqz p1, :cond_4c

    aget-object p1, v4, v1

    check-cast p1, Lcom/sun/mail/imap/protocol/FetchResponse;

    const-class v0, Lcom/sun/mail/imap/protocol/UID;

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object p1

    check-cast p1, Lcom/sun/mail/imap/protocol/UID;

    if-eqz p1, :cond_4c

    invoke-virtual {v5, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_4f
    if-lez v2, :cond_56

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_56
    aget-wide v3, p1, v2

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method public fetchUID(I)Lcom/sun/mail/imap/protocol/UID;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const-string v0, "UID"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v2

    if-eqz v2, :cond_1d

    const-class v1, Lcom/sun/mail/imap/protocol/UID;

    invoke-static {v0, p1, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object p1

    check-cast p1, Lcom/sun/mail/imap/protocol/UID;

    return-object p1

    :cond_1d
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_25

    return-object v0

    :cond_25
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    return-object v0
.end method

.method public getACL(Ljava/lang/String;)[Lcom/sun/mail/imap/ACL;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const-string v0, "ACL"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance p1, Lcom/sun/mail/iap/BadCommandException;

    const-string v0, "ACL not supported"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    const-string p1, "GETACL"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object p1

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v2

    if-eqz v2, :cond_6d

    const/4 v2, 0x0

    array-length v3, p1

    :goto_34
    if-lt v2, v3, :cond_37

    goto :goto_6d

    :cond_37
    aget-object v4, p1, v2

    instance-of v4, v4, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-eqz v4, :cond_6a

    aget-object v4, p1, v2

    check-cast v4, Lcom/sun/mail/imap/protocol/IMAPResponse;

    const-string v5, "ACL"

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    :goto_4c
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_53

    goto :goto_67

    :cond_53
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_67

    new-instance v7, Lcom/sun/mail/imap/ACL;

    new-instance v8, Lcom/sun/mail/imap/Rights;

    invoke-direct {v8, v6}, Lcom/sun/mail/imap/Rights;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v5, v8}, Lcom/sun/mail/imap/ACL;-><init>(Ljava/lang/String;Lcom/sun/mail/imap/Rights;)V

    invoke-virtual {v1, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4c

    :cond_67
    :goto_67
    const/4 v4, 0x0

    aput-object v4, p1, v2

    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_6d
    :goto_6d
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Lcom/sun/mail/imap/ACL;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object p1
.end method

.method public getCapabilities()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    return-object v0
.end method

.method getIMAPOutputStream()Ljava/io/OutputStream;
    .registers 2

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getQuota(Ljava/lang/String;)[Ljavax/mail/Quota;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const-string v0, "QUOTA"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance p1, Lcom/sun/mail/iap/BadCommandException;

    const-string v0, "QUOTA not supported"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    const-string p1, "GETQUOTA"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object p1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v2

    if-eqz v2, :cond_52

    const/4 v2, 0x0

    array-length v3, p1

    :goto_30
    if-lt v2, v3, :cond_33

    goto :goto_52

    :cond_33
    aget-object v4, p1, v2

    instance-of v4, v4, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-eqz v4, :cond_4f

    aget-object v4, p1, v2

    check-cast v4, Lcom/sun/mail/imap/protocol/IMAPResponse;

    const-string v5, "QUOTA"

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-direct {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->parseQuota(Lcom/sun/mail/iap/Response;)Ljavax/mail/Quota;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v4, p1, v2

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_52
    :goto_52
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Ljavax/mail/Quota;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object p1
.end method

.method public getQuotaRoot(Ljava/lang/String;)[Ljavax/mail/Quota;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const-string v0, "QUOTA"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance p1, Lcom/sun/mail/iap/BadCommandException;

    const-string v0, "GETQUOTAROOT not supported"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    const-string p1, "GETQUOTAROOT"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object p1

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {v0}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7b

    array-length v2, p1

    const/4 v4, 0x0

    :goto_35
    if-lt v4, v2, :cond_38

    goto :goto_7b

    :cond_38
    aget-object v5, p1, v4

    instance-of v5, v5, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-eqz v5, :cond_78

    aget-object v5, p1, v4

    check-cast v5, Lcom/sun/mail/imap/protocol/IMAPResponse;

    const-string v6, "QUOTAROOT"

    invoke-virtual {v5, v6}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_60

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    :goto_4e
    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_57

    aput-object v7, p1, v4

    goto :goto_78

    :cond_57
    new-instance v8, Ljavax/mail/Quota;

    invoke-direct {v8, v6}, Ljavax/mail/Quota;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    :cond_60
    const-string v6, "QUOTA"

    invoke-virtual {v5, v6}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_78

    invoke-direct {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->parseQuota(Lcom/sun/mail/iap/Response;)Ljavax/mail/Quota;

    move-result-object v5

    iget-object v6, v5, Ljavax/mail/Quota;->quotaRoot:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v5, Ljavax/mail/Quota;->quotaRoot:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v7, p1, v4

    :cond_78
    :goto_78
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    :cond_7b
    :goto_7b
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result p1

    new-array p1, p1, [Ljavax/mail/Quota;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_8b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_92

    return-object p1

    :cond_92
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/Quota;

    aput-object v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8b
.end method

.method protected getResponseBuffer()Lcom/sun/mail/iap/ByteArray;
    .registers 3

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->ba:Lcom/sun/mail/iap/ByteArray;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->ba:Lcom/sun/mail/iap/ByteArray;

    return-object v0
.end method

.method public hasCapability(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public idleAbort()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :try_start_4
    sget-object v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->DONE:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method

.method public declared-synchronized idleStart()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "IDLE"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "IDLE not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_35

    :cond_11
    :try_start_11
    const-string v0, "IDLE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleTag:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v0
    :try_end_1e
    .catch Lcom/sun/mail/iap/LiteralException; {:try_start_11 .. :try_end_1e} :catch_25
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1e} :catch_1f
    .catchall {:try_start_11 .. :try_end_1e} :catchall_35

    goto :goto_2a

    :catch_1f
    move-exception v0

    :try_start_20
    invoke-static {v0}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v0

    goto :goto_2a

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Lcom/sun/mail/iap/LiteralException;->getResponse()Lcom/sun/mail/iap/Response;

    move-result-object v0

    :goto_2a
    invoke-virtual {v0}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_35

    :cond_33
    monitor-exit p0

    return-void

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAuthenticated()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    return v0
.end method

.method public isREV1()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->rev1:Z

    return v0
.end method

.method public list(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const-string v0, "LIST"

    invoke-direct {p0, v0, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->doList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;

    move-result-object p1

    return-object p1
.end method

.method public listRights(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/Rights;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const-string v0, "ACL"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance p1, Lcom/sun/mail/iap/BadCommandException;

    const-string p2, "ACL not supported"

    invoke-direct {p1, p2}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    const-string p1, "LISTRIGHTS"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object p1

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget-object p2, p1, p2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p2}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v1

    if-eqz v1, :cond_68

    const/4 v1, 0x0

    array-length v2, p1

    :goto_37
    if-lt v1, v2, :cond_3a

    goto :goto_68

    :cond_3a
    aget-object v3, p1, v1

    instance-of v3, v3, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-eqz v3, :cond_65

    aget-object v3, p1, v1

    check-cast v3, Lcom/sun/mail/imap/protocol/IMAPResponse;

    const-string v4, "LISTRIGHTS"

    invoke-virtual {v3, v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    :goto_52
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5c

    const/4 v3, 0x0

    aput-object v3, p1, v1

    goto :goto_65

    :cond_5c
    new-instance v5, Lcom/sun/mail/imap/Rights;

    invoke-direct {v5, v4}, Lcom/sun/mail/imap/Rights;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_52

    :cond_65
    :goto_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_68
    :goto_68
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Lcom/sun/mail/imap/Rights;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object p1
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    const-string p1, "LOGIN"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    array-length p2, p1

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    aget-object p2, p1, p2

    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    array-length p2, p1

    sub-int/2addr p2, v0

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    return-void
.end method

.method public logout()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const-string v0, "LOGOUT"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    return-void
.end method

.method public lsub(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const-string v0, "LSUB"

    invoke-direct {p0, v0, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->doList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;

    move-result-object p1

    return-object p1
.end method

.method public myRights(Ljava/lang/String;)Lcom/sun/mail/imap/Rights;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const-string v0, "ACL"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance p1, Lcom/sun/mail/iap/BadCommandException;

    const-string v0, "ACL not supported"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    const-string p1, "MYRIGHTS"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object p1

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5a

    const/4 v1, 0x0

    array-length v3, p1

    move-object v4, v2

    :goto_31
    if-lt v1, v3, :cond_35

    move-object v2, v4

    goto :goto_5a

    :cond_35
    aget-object v5, p1, v1

    instance-of v5, v5, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-eqz v5, :cond_57

    aget-object v5, p1, v1

    check-cast v5, Lcom/sun/mail/imap/protocol/IMAPResponse;

    const-string v6, "MYRIGHTS"

    invoke-virtual {v5, v6}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v5

    if-nez v4, :cond_55

    new-instance v4, Lcom/sun/mail/imap/Rights;

    invoke-direct {v4, v5}, Lcom/sun/mail/imap/Rights;-><init>(Ljava/lang/String;)V

    :cond_55
    aput-object v2, p1, v1

    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_5a
    :goto_5a
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    return-object v2
.end method

.method public namespace()Lcom/sun/mail/imap/protocol/Namespaces;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const-string v0, "NAMESPACE"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "NAMESPACE not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    const-string v0, "NAMESPACE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v3

    if-eqz v3, :cond_47

    const/4 v3, 0x0

    array-length v4, v0

    move-object v5, v1

    :goto_25
    if-lt v3, v4, :cond_29

    move-object v1, v5

    goto :goto_47

    :cond_29
    aget-object v6, v0, v3

    instance-of v6, v6, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-eqz v6, :cond_44

    aget-object v6, v0, v3

    check-cast v6, Lcom/sun/mail/imap/protocol/IMAPResponse;

    const-string v7, "NAMESPACE"

    invoke-virtual {v6, v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_44

    if-nez v5, :cond_42

    new-instance v5, Lcom/sun/mail/imap/protocol/Namespaces;

    invoke-direct {v5, v6}, Lcom/sun/mail/imap/protocol/Namespaces;-><init>(Lcom/sun/mail/iap/Response;)V

    :cond_42
    aput-object v1, v0, v3

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_47
    :goto_47
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    return-object v1
.end method

.method public noop()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->debug:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->out:Ljava/io/PrintStream;

    const-string v1, "IMAP DEBUG: IMAPProtocol noop"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b
    const-string v0, "NOOP"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    return-void
.end method

.method protected parseCapabilities(Lcom/sun/mail/iap/Response;)V
    .registers 10

    :cond_0
    :goto_0
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Lcom/sun/mail/iap/Response;->readAtom(C)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_9

    return-void

    :cond_9
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v1

    if-eq v1, v0, :cond_19

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipToken()V

    goto :goto_0

    :cond_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "AUTH="

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;

    const/4 v1, 0x5

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->debug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IMAP DEBUG: AUTH: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;Z)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object p1

    return-object p1
.end method

.method public peekBody(ILjava/lang/String;II)Lcom/sun/mail/imap/protocol/BODY;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IIZLcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object p1

    return-object p1
.end method

.method public peekBody(ILjava/lang/String;IILcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IIZLcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object p1

    return-object p1
.end method

.method protected processGreeting(Lcom/sun/mail/iap/Response;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/mail/iap/Protocol;->processGreeting(Lcom/sun/mail/iap/Response;)V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    return-void

    :cond_d
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/protocol/IMAPResponse;

    const-string v1, "PREAUTH"

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    return-void

    :cond_1f
    new-instance v0, Lcom/sun/mail/iap/ConnectionException;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/iap/ConnectionException;-><init>(Lcom/sun/mail/iap/Protocol;Lcom/sun/mail/iap/Response;)V

    throw v0
.end method

.method public processIdleResponse(Lcom/sun/mail/iap/Response;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sun/mail/iap/Response;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v1

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v1, 0x1

    :cond_20
    if-eqz v1, :cond_25

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleTag:Ljava/lang/String;

    :cond_25
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    if-eqz v1, :cond_2b

    return v2

    :cond_2b
    return v0
.end method

.method public proxyauth(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    const-string p1, "PROXYAUTH"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    return-void
.end method

.method public declared-synchronized readIdleResponse()Lcom/sun/mail/iap/Response;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleTag:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-nez v0, :cond_8

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c} :catch_13
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8 .. :try_end_c} :catch_d
    .catchall {:try_start_8 .. :try_end_c} :catchall_17

    goto :goto_15

    :catch_d
    move-exception v0

    :goto_e
    :try_start_e
    invoke-static {v0}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_17

    goto :goto_15

    :catch_13
    move-exception v0

    goto :goto_e

    :goto_15
    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readResponse()Lcom/sun/mail/iap/Response;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-static {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readResponse(Lcom/sun/mail/iap/Protocol;)Lcom/sun/mail/imap/protocol/IMAPResponse;

    move-result-object v0

    return-object v0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    const-string p1, "RENAME"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    return-void
.end method

.method public sasllogin([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->saslAuthenticator:Lcom/sun/mail/imap/protocol/SaslAuthenticator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_70

    :try_start_6
    const-string v0, "com.sun.mail.imap.protocol.IMAPSaslAuthenticator"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x6

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    const-class v5, Ljava/util/Properties;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v5, v4, v7

    const-class v5, Ljava/io/PrintStream;

    const/4 v8, 0x4

    aput-object v5, v4, v8

    const-class v5, Ljava/lang/String;

    const/4 v9, 0x5

    aput-object v5, v4, v9

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    iget-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->name:Ljava/lang/String;

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->props:Ljava/util/Properties;

    aput-object v4, v3, v6

    iget-boolean v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->debug:Z

    if-eqz v4, :cond_42

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_44

    :cond_42
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_44
    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->out:Ljava/io/PrintStream;

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->host:Ljava/lang/String;

    aput-object v4, v3, v9

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/protocol/SaslAuthenticator;

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->saslAuthenticator:Lcom/sun/mail/imap/protocol/SaslAuthenticator;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_56} :catch_57

    goto :goto_70

    :catch_57
    move-exception p1

    iget-boolean p2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->debug:Z

    if-eqz p2, :cond_6f

    iget-object p2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "IMAP DEBUG: Can\'t load SASL authenticator: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6f
    return-void

    :cond_70
    :goto_70
    if-eqz p1, :cond_91

    array-length v0, p1

    if-lez v0, :cond_91

    new-instance v0, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_7b
    array-length v3, p1

    if-lt v1, v3, :cond_7f

    goto :goto_93

    :cond_7f
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;

    aget-object v4, p1, v1

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    aget-object v3, p1, v1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    :cond_91
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;

    :goto_93
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, [Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->saslAuthenticator:Lcom/sun/mail/imap/protocol/SaslAuthenticator;

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/sun/mail/imap/protocol/SaslAuthenticator;->authenticate([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ae

    iput-boolean v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    :cond_ae
    return-void
.end method

.method public search(Ljavax/mail/search/SearchTerm;)[I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    const-string v0, "ALL"

    invoke-direct {p0, v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljava/lang/String;Ljavax/mail/search/SearchTerm;)[I

    move-result-object p1

    return-object p1
.end method

.method public search([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/search/SearchTerm;)[I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljava/lang/String;Ljavax/mail/search/SearchTerm;)[I

    move-result-object p1

    return-object p1
.end method

.method public select(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    const-string p1, "SELECT"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object p1

    new-instance v0, Lcom/sun/mail/imap/protocol/MailboxInfo;

    invoke-direct {v0, p1}, Lcom/sun/mail/imap/protocol/MailboxInfo;-><init>([Lcom/sun/mail/iap/Response;)V

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "READ-ONLY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_35

    iput v2, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    goto :goto_38

    :cond_35
    const/4 v1, 0x2

    iput v1, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    :cond_38
    :goto_38
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    return-object v0
.end method

.method public setACL(Ljava/lang/String;CLcom/sun/mail/imap/ACL;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const-string v0, "ACL"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance p1, Lcom/sun/mail/iap/BadCommandException;

    const-string p2, "ACL not supported"

    invoke-direct {p1, p2}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/sun/mail/imap/ACL;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/sun/mail/imap/ACL;->getRights()Lcom/sun/mail/imap/Rights;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/mail/imap/Rights;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x2b

    if-eq p2, p3, :cond_33

    const/16 p3, 0x2d

    if-ne p2, p3, :cond_43

    :cond_33
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_43
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    const-string p1, "SETACL"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object p1

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget-object p2, p1, p2

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    return-void
.end method

.method protected setCapabilities(Lcom/sun/mail/iap/Response;)V
    .registers 4

    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    if-lez v0, :cond_a

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    :cond_a
    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAPABILITY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    return-void

    :cond_1a
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->parseCapabilities(Lcom/sun/mail/iap/Response;)V

    return-void
.end method

.method public setQuota(Ljavax/mail/Quota;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const-string v0, "QUOTA"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance p1, Lcom/sun/mail/iap/BadCommandException;

    const-string v0, "QUOTA not supported"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    iget-object v1, p1, Ljavax/mail/Quota;->quotaRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    iget-object v2, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    if-eqz v2, :cond_3f

    const/4 v2, 0x0

    :goto_24
    iget-object v3, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    array-length v3, v3

    if-lt v2, v3, :cond_2a

    goto :goto_3f

    :cond_2a
    iget-object v3, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    aget-object v3, v3, v2

    iget-object v3, v3, Ljavax/mail/Quota$Resource;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    iget-object v3, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    aget-object v3, v3, v2

    iget-wide v3, v3, Ljavax/mail/Quota$Resource;->limit:J

    invoke-virtual {v1, v3, v4}, Lcom/sun/mail/iap/Argument;->writeNumber(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_3f
    :goto_3f
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)V

    const-string p1, "SETQUOTA"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object p1

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    return-void
.end method

.method public startTLS()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    :try_start_0
    const-string v0, "STARTTLS"

    invoke-super {p0, v0}, Lcom/sun/mail/iap/Protocol;->startTLS(Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_5} :catch_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sun/mail/iap/Response;

    const/4 v2, 0x0

    invoke-static {v0}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    return-void

    :catch_18
    move-exception v0

    throw v0
.end method

.method public status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "IMAP4SUNVERSION"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    new-instance p1, Lcom/sun/mail/iap/BadCommandException;

    const-string p2, "STATUS not supported"

    invoke-direct {p1, p2}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    new-instance p1, Lcom/sun/mail/iap/Argument;

    invoke-direct {p1}, Lcom/sun/mail/iap/Argument;-><init>()V

    if-nez p2, :cond_2b

    sget-object p2, Lcom/sun/mail/imap/protocol/Status;->standardItems:[Ljava/lang/String;

    :cond_2b
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2e
    if-lt v3, v1, :cond_79

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)V

    const-string p1, "STATUS"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object p1

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget-object p2, p1, p2

    invoke-virtual {p2}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_72

    array-length v0, p1

    move-object v3, v1

    :goto_47
    if-lt v2, v0, :cond_4b

    move-object v1, v3

    goto :goto_72

    :cond_4b
    aget-object v4, p1, v2

    instance-of v4, v4, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-eqz v4, :cond_6f

    aget-object v4, p1, v2

    check-cast v4, Lcom/sun/mail/imap/protocol/IMAPResponse;

    const-string v5, "STATUS"

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f

    if-nez v3, :cond_65

    new-instance v3, Lcom/sun/mail/imap/protocol/Status;

    invoke-direct {v3, v4}, Lcom/sun/mail/imap/protocol/Status;-><init>(Lcom/sun/mail/iap/Response;)V

    goto :goto_6d

    :cond_65
    new-instance v5, Lcom/sun/mail/imap/protocol/Status;

    invoke-direct {v5, v4}, Lcom/sun/mail/imap/protocol/Status;-><init>(Lcom/sun/mail/iap/Response;)V

    invoke-static {v3, v5}, Lcom/sun/mail/imap/protocol/Status;->add(Lcom/sun/mail/imap/protocol/Status;Lcom/sun/mail/imap/protocol/Status;)V

    :goto_6d
    aput-object v1, p1, v2

    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_72
    :goto_72
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    return-object v1

    :cond_79
    aget-object v4, p2, v3

    invoke-virtual {p1, v4}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e
.end method

.method public storeFlags(IILjavax/mail/Flags;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags(Ljava/lang/String;Ljavax/mail/Flags;Z)V

    return-void
.end method

.method public storeFlags(ILjavax/mail/Flags;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags(Ljava/lang/String;Ljavax/mail/Flags;Z)V

    return-void
.end method

.method public storeFlags([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/Flags;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags(Ljava/lang/String;Ljavax/mail/Flags;Z)V

    return-void
.end method

.method public subscribe(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    const-string p1, "SUBSCRIBE"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    return-void
.end method

.method protected supportsNonSyncLiterals()Z
    .registers 2

    const-string v0, "LITERAL+"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public uidexpunge([Lcom/sun/mail/imap/protocol/UIDSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const-string v0, "UIDPLUS"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance p1, Lcom/sun/mail/iap/BadCommandException;

    const-string v0, "UID EXPUNGE not supported"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UID EXPUNGE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sun/mail/imap/protocol/UIDSet;->toString([Lcom/sun/mail/imap/protocol/UIDSet;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    const-string p1, "UNSUBSCRIBE"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    return-void
.end method
