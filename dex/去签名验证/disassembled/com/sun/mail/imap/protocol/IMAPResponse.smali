.class public Lcom/sun/mail/imap/protocol/IMAPResponse;
.super Lcom/sun/mail/iap/Response;


# instance fields
.field private key:Ljava/lang/String;

.field private number:I


# direct methods
.method public constructor <init>(Lcom/sun/mail/iap/Protocol;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/mail/iap/Response;-><init>(Lcom/sun/mail/iap/Protocol;)V

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isUnTagged()Z

    move-result p1

    if-eqz p1, :cond_35

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isOK()Z

    move-result p1

    if-nez p1, :cond_35

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isNO()Z

    move-result p1

    if-nez p1, :cond_35

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isBAD()Z

    move-result p1

    if-nez p1, :cond_35

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isBYE()Z

    move-result p1

    if-nez p1, :cond_35

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    :try_start_27
    iget-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->number:I

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_35} :catch_35

    :catch_35
    :cond_35
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sun/mail/iap/Response;-><init>(Lcom/sun/mail/iap/Response;)V

    iget-object v0, p1, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    iget p1, p1, Lcom/sun/mail/imap/protocol/IMAPResponse;->number:I

    iput p1, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->number:I

    return-void
.end method

.method public static readResponse(Lcom/sun/mail/iap/Protocol;)Lcom/sun/mail/imap/protocol/IMAPResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    new-instance v0, Lcom/sun/mail/imap/protocol/IMAPResponse;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;-><init>(Lcom/sun/mail/iap/Protocol;)V

    const-string p0, "FETCH"

    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    new-instance p0, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    return-object p0

    :cond_13
    move-object p0, v0

    return-object p0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .registers 2

    iget v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->number:I

    return v0
.end method

.method public keyEquals(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public readSimpleList()[Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skipSpaces()V

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->buffer:[B

    iget v1, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    aget-byte v0, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_f

    return-object v1

    :cond_f
    iget v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget v2, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    :goto_1c
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->buffer:[B

    iget v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    aget-byte v3, v3, v4

    const/16 v4, 0x29

    if-ne v3, v4, :cond_47

    iget v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    if-le v3, v2, :cond_35

    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->buffer:[B

    iget v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    invoke-static {v3, v2, v4}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_35
    iget v2, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_46

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    :cond_46
    return-object v1

    :cond_47
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->buffer:[B

    iget v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    aget-byte v3, v3, v4

    const/16 v4, 0x20

    if-ne v3, v4, :cond_60

    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->buffer:[B

    iget v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    invoke-static {v3, v2, v4}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget v2, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    add-int/lit8 v2, v2, 0x1

    :cond_60
    iget v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    goto :goto_1c
.end method
