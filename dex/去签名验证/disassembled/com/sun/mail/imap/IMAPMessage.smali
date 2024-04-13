.class public Lcom/sun/mail/imap/IMAPMessage;
.super Ljavax/mail/internet/MimeMessage;


# static fields
.field private static EnvelopeCmd:Ljava/lang/String; = "ENVELOPE INTERNALDATE RFC822.SIZE"


# instance fields
.field protected bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

.field private description:Ljava/lang/String;

.field protected envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

.field private headersLoaded:Z

.field private loadedHeaders:Ljava/util/Hashtable;

.field private peek:Z

.field private receivedDate:Ljava/util/Date;

.field protected sectionId:Ljava/lang/String;

.field private seqnum:I

.field private size:I

.field private subject:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private uid:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>(Lcom/sun/mail/imap/IMAPFolder;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/sun/mail/imap/IMAPMessage;->uid:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z

    iput p3, p0, Lcom/sun/mail/imap/IMAPMessage;->seqnum:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Session;)V
    .registers 4

    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sun/mail/imap/IMAPMessage;->uid:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z

    return-void
.end method

.method private _getBodyStructure()Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    return-object v0
.end method

.method private _getEnvelope()Lcom/sun/mail/imap/protocol/ENVELOPE;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    return-object v0
.end method

.method private _getFlags()Ljavax/mail/Flags;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;

    return-object v0
.end method

.method private aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-virtual {p1}, [Ljavax/mail/internet/InternetAddress;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljavax/mail/internet/InternetAddress;

    return-object p1
.end method

.method static synthetic access$0(Lcom/sun/mail/imap/IMAPMessage;)Lcom/sun/mail/imap/protocol/ENVELOPE;
    .registers 1

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->_getEnvelope()Lcom/sun/mail/imap/protocol/ENVELOPE;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1(Lcom/sun/mail/imap/IMAPMessage;)Ljavax/mail/Flags;
    .registers 1

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->_getFlags()Ljavax/mail/Flags;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2(Lcom/sun/mail/imap/IMAPMessage;)Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    .registers 1

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->_getBodyStructure()Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3(Lcom/sun/mail/imap/IMAPMessage;)Z
    .registers 1

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->areHeadersLoaded()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4(Lcom/sun/mail/imap/IMAPMessage;)I
    .registers 1

    iget p0, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    return p0
.end method

.method static synthetic access$5(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPMessage;->isHeaderLoaded(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized areHeadersLoaded()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static craftHeaderCmd(Lcom/sun/mail/imap/protocol/IMAPProtocol;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "BODY.PEEK[HEADER.FIELDS ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_15

    :cond_e
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "RFC822.HEADER.LINES ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_15
    const/4 v1, 0x0

    :goto_16
    array-length v2, p1

    if-lt v1, v2, :cond_2d

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result p0

    if-eqz p0, :cond_25

    const-string p0, ")]"

    :goto_21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_28

    :cond_25
    const-string p0, ")"

    goto :goto_21

    :goto_28
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2d
    if-lez v1, :cond_34

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_34
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_16
.end method

.method static fetch(Lcom/sun/mail/imap/IMAPFolder;[Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v4, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v2, v4}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v4

    if-eqz v4, :cond_18

    sget-object v4, Lcom/sun/mail/imap/IMAPMessage;->EnvelopeCmd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    goto :goto_19

    :cond_18
    const/4 v4, 0x1

    :goto_19
    sget-object v7, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v2, v7}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v7

    if-eqz v7, :cond_2c

    if-eqz v4, :cond_26

    const-string v4, "FLAGS"

    goto :goto_28

    :cond_26
    const-string v4, " FLAGS"

    :goto_28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    :cond_2c
    sget-object v7, Ljavax/mail/FetchProfile$Item;->CONTENT_INFO:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v2, v7}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v7

    if-eqz v7, :cond_3f

    if-eqz v4, :cond_39

    const-string v4, "BODYSTRUCTURE"

    goto :goto_3b

    :cond_39
    const-string v4, " BODYSTRUCTURE"

    :goto_3b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    :cond_3f
    sget-object v7, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {v2, v7}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v7

    if-eqz v7, :cond_52

    if-eqz v4, :cond_4c

    const-string v4, "UID"

    goto :goto_4e

    :cond_4c
    const-string v4, " UID"

    :goto_4e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    :cond_52
    sget-object v7, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->HEADERS:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    invoke-virtual {v2, v7}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v7

    if-eqz v7, :cond_78

    iget-object v7, v1, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v7

    if-eqz v7, :cond_6d

    if-eqz v4, :cond_67

    const-string v4, "BODY.PEEK[HEADER]"

    goto :goto_69

    :cond_67
    const-string v4, " BODY.PEEK[HEADER]"

    :goto_69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_75

    :cond_6d
    if-eqz v4, :cond_72

    const-string v4, "RFC822.HEADER"

    goto :goto_69

    :cond_72
    const-string v4, " RFC822.HEADER"

    goto :goto_69

    :goto_75
    const/4 v4, 0x0

    const/4 v7, 0x1

    goto :goto_79

    :cond_78
    const/4 v7, 0x0

    :goto_79
    sget-object v8, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->SIZE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    invoke-virtual {v2, v8}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v8

    if-eqz v8, :cond_8c

    if-eqz v4, :cond_86

    const-string v4, "RFC822.SIZE"

    goto :goto_88

    :cond_86
    const-string v4, " RFC822.SIZE"

    :goto_88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    :cond_8c
    const/4 v8, 0x0

    if-nez v7, :cond_a7

    invoke-virtual/range {p2 .. p2}, Ljavax/mail/FetchProfile;->getHeaderNames()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    if-lez v10, :cond_a8

    if-nez v4, :cond_9d

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9d
    iget-object v4, v1, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-static {v4, v9}, Lcom/sun/mail/imap/IMAPMessage;->craftHeaderCmd(Lcom/sun/mail/imap/protocol/IMAPProtocol;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a8

    :cond_a7
    move-object v9, v8

    :cond_a8
    :goto_a8
    new-instance v4, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;

    invoke-direct {v4, v2}, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;-><init>(Ljavax/mail/FetchProfile;)V

    iget-object v10, v1, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v10

    move-object/from16 v11, p1

    :try_start_b2
    invoke-static {v11, v4}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v4

    if-nez v4, :cond_ba

    monitor-exit v10

    return-void

    :cond_ba
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V
    :try_end_bf
    .catchall {:try_start_b2 .. :try_end_bf} :catchall_20f

    :try_start_bf
    iget-object v12, v1, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v4, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v3
    :try_end_c9
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_bf .. :try_end_c9} :catch_203
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_bf .. :try_end_c9} :catch_d6
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_bf .. :try_end_c9} :catch_ca
    .catchall {:try_start_bf .. :try_end_c9} :catchall_20f

    goto :goto_d7

    :catch_ca
    move-exception v0

    move-object v1, v0

    :try_start_cc
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_d6
    move-object v3, v8

    :goto_d7
    if-nez v3, :cond_db

    monitor-exit v10

    return-void

    :cond_db
    const/4 v4, 0x0

    :goto_dc
    array-length v8, v3

    if-lt v4, v8, :cond_ef

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v2

    if-eqz v2, :cond_ed

    new-array v2, v2, [Lcom/sun/mail/iap/Response;

    invoke-virtual {v11, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/IMAPFolder;->handleResponses([Lcom/sun/mail/iap/Response;)V

    :cond_ed
    monitor-exit v10

    return-void

    :cond_ef
    aget-object v8, v3, v4

    if-eqz v8, :cond_1f8

    aget-object v8, v3, v4

    instance-of v8, v8, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-nez v8, :cond_100

    aget-object v8, v3, v4

    :goto_fb
    invoke-virtual {v11, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_1f8

    :cond_100
    aget-object v8, v3, v4

    check-cast v8, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-virtual {v8}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v12

    invoke-virtual {v1, v12}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v12

    invoke-virtual {v8}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItemCount()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_112
    if-lt v14, v13, :cond_117

    if-eqz v15, :cond_1f8

    goto :goto_fb

    :cond_117
    invoke-virtual {v8, v14}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(I)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v6

    instance-of v5, v6, Ljavax/mail/Flags;

    if-eqz v5, :cond_135

    sget-object v5, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v2, v5}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v5

    if-eqz v5, :cond_12f

    if-nez v12, :cond_12a

    goto :goto_12f

    :cond_12a
    check-cast v6, Ljavax/mail/Flags;

    iput-object v6, v12, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;

    goto :goto_13d

    :cond_12f
    :goto_12f
    move-object/from16 v16, v3

    const/4 v2, 0x1

    const/4 v15, 0x1

    goto/16 :goto_1e8

    :cond_135
    instance-of v5, v6, Lcom/sun/mail/imap/protocol/ENVELOPE;

    if-eqz v5, :cond_142

    check-cast v6, Lcom/sun/mail/imap/protocol/ENVELOPE;

    iput-object v6, v12, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    :goto_13d
    move-object/from16 v16, v3

    :cond_13f
    :goto_13f
    const/4 v2, 0x1

    goto/16 :goto_1e8

    :cond_142
    instance-of v5, v6, Lcom/sun/mail/imap/protocol/INTERNALDATE;

    if-eqz v5, :cond_14f

    check-cast v6, Lcom/sun/mail/imap/protocol/INTERNALDATE;

    invoke-virtual {v6}, Lcom/sun/mail/imap/protocol/INTERNALDATE;->getDate()Ljava/util/Date;

    move-result-object v5

    iput-object v5, v12, Lcom/sun/mail/imap/IMAPMessage;->receivedDate:Ljava/util/Date;

    goto :goto_13d

    :cond_14f
    instance-of v5, v6, Lcom/sun/mail/imap/protocol/RFC822SIZE;

    if-eqz v5, :cond_15a

    check-cast v6, Lcom/sun/mail/imap/protocol/RFC822SIZE;

    iget v5, v6, Lcom/sun/mail/imap/protocol/RFC822SIZE;->size:I

    iput v5, v12, Lcom/sun/mail/imap/IMAPMessage;->size:I

    goto :goto_13d

    :cond_15a
    instance-of v5, v6, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    if-eqz v5, :cond_163

    check-cast v6, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iput-object v6, v12, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    goto :goto_13d

    :cond_163
    instance-of v5, v6, Lcom/sun/mail/imap/protocol/UID;

    if-eqz v5, :cond_187

    check-cast v6, Lcom/sun/mail/imap/protocol/UID;

    move-object/from16 v16, v3

    iget-wide v2, v6, Lcom/sun/mail/imap/protocol/UID;->uid:J

    iput-wide v2, v12, Lcom/sun/mail/imap/IMAPMessage;->uid:J

    iget-object v2, v1, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-nez v2, :cond_17a

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, v1, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    :cond_17a
    iget-object v2, v1, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Long;

    iget-wide v5, v6, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-direct {v3, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v3, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13f

    :cond_187
    move-object/from16 v16, v3

    instance-of v2, v6, Lcom/sun/mail/imap/protocol/RFC822DATA;

    if-nez v2, :cond_191

    instance-of v2, v6, Lcom/sun/mail/imap/protocol/BODY;

    if-eqz v2, :cond_13f

    :cond_191
    instance-of v2, v6, Lcom/sun/mail/imap/protocol/RFC822DATA;

    if-eqz v2, :cond_19c

    check-cast v6, Lcom/sun/mail/imap/protocol/RFC822DATA;

    invoke-virtual {v6}, Lcom/sun/mail/imap/protocol/RFC822DATA;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v2

    goto :goto_1a2

    :cond_19c
    check-cast v6, Lcom/sun/mail/imap/protocol/BODY;

    invoke-virtual {v6}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v2

    :goto_1a2
    new-instance v3, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v3}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    invoke-virtual {v3, v2}, Ljavax/mail/internet/InternetHeaders;->load(Ljava/io/InputStream;)V

    iget-object v2, v12, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-eqz v2, :cond_1da

    if-eqz v7, :cond_1b1

    goto :goto_1da

    :cond_1b1
    invoke-virtual {v3}, Ljavax/mail/internet/InternetHeaders;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1b5
    :goto_1b5
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1bc

    goto :goto_1dc

    :cond_1bc
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/Header;

    invoke-virtual {v3}, Ljavax/mail/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v12, v5}, Lcom/sun/mail/imap/IMAPMessage;->isHeaderLoaded(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1b5

    iget-object v5, v12, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v3}, Ljavax/mail/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljavax/mail/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b5

    :cond_1da
    :goto_1da
    iput-object v3, v12, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    :goto_1dc
    if-eqz v7, :cond_1e3

    const/4 v2, 0x1

    invoke-direct {v12, v2}, Lcom/sun/mail/imap/IMAPMessage;->setHeadersLoaded(Z)V

    goto :goto_1e8

    :cond_1e3
    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_1e5
    array-length v5, v9

    if-lt v3, v5, :cond_1f0

    :goto_1e8
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v16

    move-object/from16 v2, p2

    goto/16 :goto_112

    :cond_1f0
    aget-object v5, v9, v3

    invoke-direct {v12, v5}, Lcom/sun/mail/imap/IMAPMessage;->setHeaderLoaded(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e5

    :cond_1f8
    :goto_1f8
    move-object/from16 v16, v3

    const/4 v2, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, v16

    move-object/from16 v2, p2

    goto/16 :goto_dc

    :catch_203
    move-exception v0

    move-object v2, v0

    new-instance v3, Ljavax/mail/FolderClosedException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v3

    :catchall_20f
    move-exception v0

    move-object v1, v0

    monitor-exit v10
    :try_end_212
    .catchall {:try_start_cc .. :try_end_212} :catchall_20f

    throw v1
.end method

.method private declared-synchronized isHeaderLoaded(Ljava/lang/String;)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    if-eqz v0, :cond_8

    const/4 p1, 0x1

    :goto_6
    monitor-exit p0

    return p1

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1c

    monitor-exit p0

    return p1

    :cond_1a
    const/4 p1, 0x0

    goto :goto_6

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized loadBODYSTRUCTURE()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_4e

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_4e

    :try_start_c
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBodyStructure(I)Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    :try_end_1d
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_c .. :try_end_1d} :catch_3f
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_c .. :try_end_1d} :catch_31
    .catchall {:try_start_c .. :try_end_1d} :catchall_2f

    :try_start_1d
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    if-nez v1, :cond_2c

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Unable to load BODYSTRUCTURE"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return-void

    :catchall_2f
    move-exception v1

    goto :goto_4c

    :catch_31
    move-exception v1

    :try_start_32
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_3f
    move-exception v1

    new-instance v2, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_32 .. :try_end_4d} :catchall_2f

    :try_start_4d
    throw v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized loadEnvelope()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a5

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_a5

    :try_start_c
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v2

    sget-object v3, Lcom/sun/mail/imap/IMAPMessage;->EnvelopeCmd:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1f
    array-length v6, v3

    if-lt v5, v6, :cond_3c

    invoke-virtual {v1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
    :try_end_2d
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_c .. :try_end_2d} :catch_96
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_c .. :try_end_2d} :catch_88
    .catchall {:try_start_c .. :try_end_2d} :catchall_86

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_86

    :try_start_2e
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    if-nez v0, :cond_3a

    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Failed to load IMAP envelope"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3a
    .catchall {:try_start_2e .. :try_end_3a} :catchall_a5

    :cond_3a
    monitor-exit p0

    return-void

    :cond_3c
    :try_start_3c
    aget-object v6, v3, v5

    if-eqz v6, :cond_83

    aget-object v6, v3, v5

    instance-of v6, v6, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-eqz v6, :cond_83

    aget-object v6, v3, v5

    check-cast v6, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-virtual {v6}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v6

    if-ne v6, v2, :cond_83

    aget-object v6, v3, v5

    check-cast v6, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-virtual {v6}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItemCount()I

    move-result v7

    const/4 v8, 0x0

    :goto_59
    if-lt v8, v7, :cond_5c

    goto :goto_83

    :cond_5c
    invoke-virtual {v6, v8}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(I)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v9

    instance-of v10, v9, Lcom/sun/mail/imap/protocol/ENVELOPE;

    if-eqz v10, :cond_69

    check-cast v9, Lcom/sun/mail/imap/protocol/ENVELOPE;

    iput-object v9, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    goto :goto_80

    :cond_69
    instance-of v10, v9, Lcom/sun/mail/imap/protocol/INTERNALDATE;

    if-eqz v10, :cond_76

    check-cast v9, Lcom/sun/mail/imap/protocol/INTERNALDATE;

    invoke-virtual {v9}, Lcom/sun/mail/imap/protocol/INTERNALDATE;->getDate()Ljava/util/Date;

    move-result-object v9

    iput-object v9, p0, Lcom/sun/mail/imap/IMAPMessage;->receivedDate:Ljava/util/Date;

    goto :goto_80

    :cond_76
    instance-of v10, v9, Lcom/sun/mail/imap/protocol/RFC822SIZE;

    if-eqz v10, :cond_80

    check-cast v9, Lcom/sun/mail/imap/protocol/RFC822SIZE;

    iget v9, v9, Lcom/sun/mail/imap/protocol/RFC822SIZE;->size:I

    iput v9, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I
    :try_end_80
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_3c .. :try_end_80} :catch_96
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3c .. :try_end_80} :catch_88
    .catchall {:try_start_3c .. :try_end_80} :catchall_86

    :cond_80
    :goto_80
    add-int/lit8 v8, v8, 0x1

    goto :goto_59

    :cond_83
    :goto_83
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :catchall_86
    move-exception v1

    goto :goto_a3

    :catch_88
    move-exception v1

    :try_start_89
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_96
    move-exception v1

    new-instance v2, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    :goto_a3
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_89 .. :try_end_a4} :catchall_86

    :try_start_a4
    throw v1
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a5

    :catchall_a5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized loadFlags()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3f

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_3f

    :try_start_c
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchFlags(I)Ljavax/mail/Flags;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;
    :try_end_1d
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_c .. :try_end_1d} :catch_30
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_c .. :try_end_1d} :catch_22
    .catchall {:try_start_c .. :try_end_1d} :catchall_20

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-void

    :catchall_20
    move-exception v1

    goto :goto_3d

    :catch_22
    move-exception v1

    :try_start_23
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_30
    move-exception v1

    new-instance v2, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_23 .. :try_end_3e} :catchall_20

    :try_start_3e
    throw v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized loadHeaders()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_75

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_75

    :try_start_d
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v3

    const-string v4, "HEADER"

    invoke-direct {p0, v4}, Lcom/sun/mail/imap/IMAPMessage;->toSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v0

    goto :goto_3f

    :cond_2f
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v3

    const-string v4, "HEADER"

    invoke-virtual {v2, v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchRFC822(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/RFC822DATA;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/RFC822DATA;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v0
    :try_end_3f
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_d .. :try_end_3f} :catch_66
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_d .. :try_end_3f} :catch_58
    .catchall {:try_start_d .. :try_end_3f} :catchall_56

    :cond_3f
    :goto_3f
    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_56

    if-nez v0, :cond_4a

    :try_start_42
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Cannot load header"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    new-instance v1, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v1, v0}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z
    :try_end_54
    .catchall {:try_start_42 .. :try_end_54} :catchall_75

    monitor-exit p0

    return-void

    :catchall_56
    move-exception v0

    goto :goto_73

    :catch_58
    move-exception v0

    :try_start_59
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_66
    move-exception v0

    new-instance v2, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    :goto_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_59 .. :try_end_74} :catchall_56

    :try_start_74
    throw v0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    :catchall_75
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setHeaderLoaded(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    :cond_d
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setHeadersLoaded(Z)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private toSection(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    if-nez v0, :cond_5

    return-object p1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method _getSession()Ljavax/mail/Session;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->session:Ljavax/mail/Session;

    return-object v0
.end method

.method _setFlags(Ljavax/mail/Flags;)V
    .registers 2

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;

    return-void
.end method

.method public addFrom([Ljavax/mail/Address;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string v0, "IMAPMessage is read-only"

    invoke-direct {p1, v0}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string p2, "IMAPMessage is read-only"

    invoke-direct {p1, p2}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addHeaderLine(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string v0, "IMAPMessage is read-only"

    invoke-direct {p1, v0}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string p2, "IMAPMessage is read-only"

    invoke-direct {p1, p2}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected checkExpunged()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessageRemovedException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->expunged:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljavax/mail/MessageRemovedException;

    invoke-direct {v0}, Ljavax/mail/MessageRemovedException;-><init>()V

    throw v0

    :cond_a
    return-void
.end method

.method protected forceCheckExpunged()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessageRemovedException;,
            Ljavax/mail/FolderClosedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
    :try_end_c
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_c} :catch_1b
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_c} :catch_f
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    goto :goto_f

    :catchall_d
    move-exception v1

    goto :goto_28

    :catch_f
    :goto_f
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_d

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->expunged:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljavax/mail/MessageRemovedException;

    invoke-direct {v0}, Ljavax/mail/MessageRemovedException;-><init>()V

    throw v0

    :cond_1a
    return-void

    :catch_1b
    move-exception v1

    :try_start_1c
    new-instance v2, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_d

    throw v1
.end method

.method public getAllHeaderLines()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllHeaders()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getContentID()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLanguage()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentMD5()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->md5:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentStream()Ljava/io/InputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getPeek()Z

    move-result v0

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_9
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getFetchBlockSize()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_32

    new-instance v2, Lcom/sun/mail/imap/IMAPInputStream;

    const-string v3, "TEXT"

    invoke-direct {p0, v3}, Lcom/sun/mail/imap/IMAPMessage;->toSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    if-eqz v5, :cond_2d

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget v4, v4, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    :cond_2d
    invoke-direct {v2, p0, v3, v4, v0}, Lcom/sun/mail/imap/IMAPInputStream;-><init>(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;IZ)V
    :try_end_30
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_9 .. :try_end_30} :catch_8c
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_9 .. :try_end_30} :catch_7e
    .catchall {:try_start_9 .. :try_end_30} :catchall_7c

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_7c

    return-object v2

    :cond_32
    :try_start_32
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v3

    if-eqz v3, :cond_5e

    if-eqz v0, :cond_49

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v0

    const-string v3, "TEXT"

    invoke-direct {p0, v3}, Lcom/sun/mail/imap/IMAPMessage;->toSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    goto :goto_57

    :cond_49
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v0

    const-string v3, "TEXT"

    invoke-direct {p0, v3}, Lcom/sun/mail/imap/IMAPMessage;->toSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    :goto_57
    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v0

    goto :goto_70

    :cond_5e
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v0

    const-string v3, "TEXT"

    invoke-virtual {v2, v0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchRFC822(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/RFC822DATA;

    move-result-object v0

    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/RFC822DATA;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v0
    :try_end_6e
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_32 .. :try_end_6e} :catch_8c
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_32 .. :try_end_6e} :catch_7e
    .catchall {:try_start_32 .. :try_end_6e} :catchall_7c

    goto :goto_70

    :cond_6f
    const/4 v0, 0x0

    :goto_70
    :try_start_70
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_7c

    if-nez v0, :cond_7b

    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "No content"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7b
    return-object v0

    :catchall_7c
    move-exception v0

    goto :goto_99

    :catch_7e
    move-exception v0

    :try_start_7f
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_8c
    move-exception v0

    new-instance v2, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    :goto_99
    monitor-exit v1
    :try_end_9a
    .catchall {:try_start_7f .. :try_end_9a} :catchall_7c

    throw v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    if-nez v0, :cond_21

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v3, v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    invoke-direct {v0, v1, v2, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    :cond_21
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getDataHandler()Ljavax/activation/DataHandler;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->dh:Ljavax/activation/DataHandler;

    if-nez v0, :cond_82

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    if-nez v0, :cond_26

    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v3, v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    invoke-direct {v0, v1, v2, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    :cond_26
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->isMulti()Z

    move-result v0

    if-eqz v0, :cond_41

    new-instance v0, Ljavax/activation/DataHandler;

    new-instance v1, Lcom/sun/mail/imap/IMAPMultipartDataSource;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, p0}, Lcom/sun/mail/imap/IMAPMultipartDataSource;-><init>(Ljavax/mail/internet/MimePart;[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Ljava/lang/String;Lcom/sun/mail/imap/IMAPMessage;)V

    invoke-direct {v0, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    :goto_3e
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->dh:Ljavax/activation/DataHandler;

    goto :goto_82

    :cond_41
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->isNested()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->isREV1()Z

    move-result v0

    if-eqz v0, :cond_82

    new-instance v0, Ljavax/activation/DataHandler;

    new-instance v1, Lcom/sun/mail/imap/IMAPNestedMessage;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v3, v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    if-nez v4, :cond_65

    const-string v4, "1"

    goto :goto_79

    :cond_65
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_79
    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sun/mail/imap/IMAPNestedMessage;-><init>(Lcom/sun/mail/imap/IMAPMessage;Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Lcom/sun/mail/imap/protocol/ENVELOPE;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3e

    :cond_82
    :goto_82
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0
    :try_end_86
    .catchall {:try_start_1 .. :try_end_86} :catchall_88

    monitor-exit p0

    return-object v0

    :catchall_88
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;

    return-object v0

    :cond_a
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    if-nez v0, :cond_15

    const/4 v0, 0x0

    return-object v0

    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_26

    :catch_20
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;

    :goto_26
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisposition()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method protected getFetchBlockSize()I
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getFetchBlockSize()I

    move-result v0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    const-string v1, "filename"

    invoke-virtual {v0, v1}, Ljavax/mail/internet/ParameterList;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    if-nez v0, :cond_2a

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    if-eqz v1, :cond_2a

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljavax/mail/internet/ParameterList;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2a
    return-object v0
.end method

.method public declared-synchronized getFlags()Ljavax/mail/Flags;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadFlags()V

    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getFlags()Ljavax/mail/Flags;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFrom()[Ljavax/mail/Address;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->from:[Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPMessage;->aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPMessage;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 p1, 0x0

    return-object p1

    :cond_b
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPMessage;->isHeaderLoaded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :goto_9
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_10
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_15
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_49

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HEADER.FIELDS ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sun/mail/imap/IMAPMessage;->toSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v1

    if-eqz v1, :cond_6b

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v1

    goto :goto_6c

    :cond_49
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HEADER.LINES ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchRFC822(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/RFC822DATA;

    move-result-object v1

    if-eqz v1, :cond_6b

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/RFC822DATA;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v1
    :try_end_6a
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_15 .. :try_end_6a} :catch_94
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_15 .. :try_end_6a} :catch_86
    .catchall {:try_start_15 .. :try_end_6a} :catchall_84

    goto :goto_6c

    :cond_6b
    move-object v1, v3

    :goto_6c
    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_84

    if-nez v1, :cond_70

    return-object v3

    :cond_70
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_7b

    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    :cond_7b
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, v1}, Ljavax/mail/internet/InternetHeaders;->load(Ljava/io/InputStream;)V

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPMessage;->setHeaderLoaded(Ljava/lang/String;)V

    goto :goto_9

    :catchall_84
    move-exception p1

    goto :goto_a1

    :catch_86
    move-exception p1

    :try_start_87
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_94
    move-exception p1

    new-instance v1, Ljavax/mail/FolderClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1

    :goto_a1
    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_87 .. :try_end_a2} :catchall_84

    throw p1
.end method

.method public getInReplyTo()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->inReplyTo:Ljava/lang/String;

    return-object v0
.end method

.method public getLineCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    return v0
.end method

.method public getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method public getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method protected getMessageCacheLock()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessageID()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method public getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getPeek()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->peek:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/FolderClosedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-nez v0, :cond_17

    new-instance v0, Ljavax/mail/FolderClosedException;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-direct {v0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;)V

    throw v0

    :cond_17
    return-object v0
.end method

.method public getReceivedDate()Ljava/util/Date;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->receivedDate:Ljava/util/Date;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    :cond_c
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->receivedDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_13

    iget-object p1, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object p1, p1, Lcom/sun/mail/imap/protocol/ENVELOPE;->to:[Ljavax/mail/internet/InternetAddress;

    :goto_e
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPMessage;->aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;

    move-result-object p1

    return-object p1

    :cond_13
    sget-object v0, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_1c

    iget-object p1, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object p1, p1, Lcom/sun/mail/imap/protocol/ENVELOPE;->cc:[Ljavax/mail/internet/InternetAddress;

    goto :goto_e

    :cond_1c
    sget-object v0, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_25

    iget-object p1, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object p1, p1, Lcom/sun/mail/imap/protocol/ENVELOPE;->bcc:[Ljavax/mail/internet/InternetAddress;

    goto :goto_e

    :cond_25
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object p1

    return-object p1
.end method

.method public getReplyTo()[Ljavax/mail/Address;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->replyTo:[Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPMessage;->aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSender()Ljavax/mail/Address;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->sender:[Ljavax/mail/internet/InternetAddress;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->sender:[Ljavax/mail/internet/InternetAddress;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSentDate()Ljava/util/Date;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->date:Ljava/util/Date;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method protected getSequenceNumber()I
    .registers 2

    iget v0, p0, Lcom/sun/mail/imap/IMAPMessage;->seqnum:I

    return v0
.end method

.method public getSize()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    iget v0, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    :cond_b
    iget v0, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;

    return-object v0

    :cond_a
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->subject:Ljava/lang/String;

    if-nez v0, :cond_15

    const/4 v0, 0x0

    return-object v0

    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->subject:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_26

    :catch_20
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->subject:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;

    :goto_26
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;

    return-object v0
.end method

.method protected getUID()J
    .registers 3

    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPMessage;->uid:J

    return-wide v0
.end method

.method public declared-synchronized invalidateHeaders()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->receivedDate:Ljava/util/Date;

    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isREV1()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/FolderClosedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-nez v0, :cond_10

    new-instance v0, Ljavax/mail/FolderClosedException;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-direct {v0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;)V

    throw v0

    :cond_10
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isSet(Ljavax/mail/Flags$Flag;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadFlags()V

    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return p1

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeHeader(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string v0, "IMAPMessage is read-only"

    invoke-direct {p1, v0}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContentID(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string v0, "IMAPMessage is read-only"

    invoke-direct {p1, v0}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContentLanguage([Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string v0, "IMAPMessage is read-only"

    invoke-direct {p1, v0}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string v0, "IMAPMessage is read-only"

    invoke-direct {p1, v0}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataHandler(Ljavax/activation/DataHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string v0, "IMAPMessage is read-only"

    invoke-direct {p1, v0}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDescription(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string p2, "IMAPMessage is read-only"

    invoke-direct {p1, p2}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDisposition(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string v0, "IMAPMessage is read-only"

    invoke-direct {p1, v0}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setExpunged(Z)V
    .registers 2

    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->setExpunged(Z)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/sun/mail/imap/IMAPMessage;->seqnum:I

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string v0, "IMAPMessage is read-only"

    invoke-direct {p1, v0}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized setFlags(Ljavax/mail/Flags;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_33

    :try_start_6
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags(ILjavax/mail/Flags;Z)V
    :try_end_14
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_6 .. :try_end_14} :catch_24
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_6 .. :try_end_14} :catch_19
    .catchall {:try_start_6 .. :try_end_14} :catchall_17

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    goto :goto_31

    :catch_19
    move-exception p1

    :try_start_1a
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_24
    move-exception p1

    new-instance p2, Ljavax/mail/FolderClosedException;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p2

    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_17

    :try_start_32
    throw p1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFrom(Ljavax/mail/Address;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string v0, "IMAPMessage is read-only"

    invoke-direct {p1, v0}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string p2, "IMAPMessage is read-only"

    invoke-direct {p1, p2}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setMessageNumber(I)V
    .registers 2

    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->setMessageNumber(I)V

    return-void
.end method

.method public declared-synchronized setPeek(Z)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/sun/mail/imap/IMAPMessage;->peek:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string p2, "IMAPMessage is read-only"

    invoke-direct {p1, p2}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReplyTo([Ljavax/mail/Address;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string v0, "IMAPMessage is read-only"

    invoke-direct {p1, v0}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSender(Ljavax/mail/Address;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string v0, "IMAPMessage is read-only"

    invoke-direct {p1, v0}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSentDate(Ljava/util/Date;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string v0, "IMAPMessage is read-only"

    invoke-direct {p1, v0}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setSequenceNumber(I)V
    .registers 2

    iput p1, p0, Lcom/sun/mail/imap/IMAPMessage;->seqnum:I

    return-void
.end method

.method public setSubject(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string p2, "IMAPMessage is read-only"

    invoke-direct {p1, p2}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setUID(J)V
    .registers 3

    iput-wide p1, p0, Lcom/sun/mail/imap/IMAPMessage;->uid:J

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getPeek()Z

    move-result v0

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_9
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_35

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v0

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    goto :goto_2e

    :cond_24
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v0

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    :goto_2e
    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v4

    goto :goto_43

    :cond_35
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v0

    invoke-virtual {v2, v0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchRFC822(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/RFC822DATA;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/RFC822DATA;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v4
    :try_end_43
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_9 .. :try_end_43} :catch_6f
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_9 .. :try_end_43} :catch_61
    .catchall {:try_start_9 .. :try_end_43} :catchall_5f

    :cond_43
    :goto_43
    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_5f

    if-nez v4, :cond_4e

    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "No content"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4e
    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_52
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5a

    return-void

    :cond_5a
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_52

    :catchall_5f
    move-exception p1

    goto :goto_7c

    :catch_61
    move-exception p1

    :try_start_62
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    new-instance v0, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_6f
    move-exception p1

    new-instance v0, Ljavax/mail/FolderClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    :goto_7c
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_62 .. :try_end_7d} :catchall_5f

    throw p1
.end method
