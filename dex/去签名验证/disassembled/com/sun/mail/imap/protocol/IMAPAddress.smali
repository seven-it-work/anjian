.class Lcom/sun/mail/imap/protocol/IMAPAddress;
.super Ljavax/mail/internet/InternetAddress;


# static fields
.field private static final serialVersionUID:J = -0x353b93d010f59e38L


# instance fields
.field private group:Z

.field private grouplist:[Ljavax/mail/internet/InternetAddress;

.field private groupname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sun/mail/iap/Response;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->group:Z

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_19

    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    const-string v0, "ADDRESS parse error"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->encodedPersonal:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v2

    const/16 v3, 0x29

    if-eq v2, v3, :cond_3a

    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    const-string v0, "ADDRESS parse error"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    if-nez v1, :cond_9b

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->group:Z

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->groupname:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->groupname:Ljava/lang/String;

    if-nez v0, :cond_46

    return-void

    :cond_46
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->groupname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    :goto_5a
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v2

    if-ne v2, v3, :cond_61

    goto :goto_82

    :cond_61
    new-instance v2, Lcom/sun/mail/imap/protocol/IMAPAddress;

    invoke-direct {v2, p1}, Lcom/sun/mail/imap/protocol/IMAPAddress;-><init>(Lcom/sun/mail/iap/Response;)V

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPAddress;->isEndOfGroup()Z

    move-result v4

    if-nez v4, :cond_82

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-eqz v4, :cond_77

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_77
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_5a

    :cond_82
    :goto_82
    const/16 p1, 0x3b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Lcom/sun/mail/imap/protocol/IMAPAddress;

    iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->grouplist:[Ljavax/mail/internet/InternetAddress;

    iget-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->grouplist:[Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-void

    :cond_9b
    if-eqz v0, :cond_c5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_a4

    goto :goto_c5

    :cond_a4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_ad

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->address:Ljava/lang/String;

    return-void

    :cond_ad
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->address:Ljava/lang/String;

    return-void

    :cond_c5
    :goto_c5
    iput-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->address:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGroup(Z)[Ljavax/mail/internet/InternetAddress;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    iget-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->grouplist:[Ljavax/mail/internet/InternetAddress;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    iget-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->grouplist:[Ljavax/mail/internet/InternetAddress;

    invoke-virtual {p1}, [Ljavax/mail/internet/InternetAddress;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljavax/mail/internet/InternetAddress;

    return-object p1
.end method

.method isEndOfGroup()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->group:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->groupname:Ljava/lang/String;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public isGroup()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->group:Z

    return v0
.end method
