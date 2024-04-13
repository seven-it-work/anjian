.class public Lcom/sun/mail/iap/Argument;
.super Ljava/lang/Object;


# instance fields
.field protected items:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    return-void
.end method

.method private astring([BLcom/sun/mail/iap/Protocol;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    array-length v1, p1

    const/16 v2, 0x400

    if-le v1, v2, :cond_f

    invoke-direct {p0, p1, p2}, Lcom/sun/mail/iap/Argument;->literal([BLcom/sun/mail/iap/Protocol;)V

    return-void

    :cond_f
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_15

    const/4 v4, 0x1

    goto :goto_16

    :cond_15
    const/4 v4, 0x0

    :goto_16
    move v5, v4

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_19
    const/16 v7, 0x5c

    const/16 v8, 0x22

    if-lt v4, v1, :cond_41

    if-eqz v5, :cond_24

    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->write(I)V

    :cond_24
    if-eqz v6, :cond_38

    :goto_26
    if-lt v2, v1, :cond_29

    goto :goto_3b

    :cond_29
    aget-byte p2, p1, v2

    if-eq p2, v8, :cond_2f

    if-ne p2, v7, :cond_32

    :cond_2f
    invoke-virtual {v0, v7}, Ljava/io/DataOutputStream;->write(I)V

    :cond_32
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_38
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    :goto_3b
    if-eqz v5, :cond_40

    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->write(I)V

    :cond_40
    return-void

    :cond_41
    aget-byte v9, p1, v4

    if-eqz v9, :cond_7c

    const/16 v10, 0xd

    if-eq v9, v10, :cond_7c

    const/16 v10, 0xa

    if-eq v9, v10, :cond_7c

    and-int/lit16 v10, v9, 0xff

    const/16 v11, 0x7f

    if-le v10, v11, :cond_54

    goto :goto_7c

    :cond_54
    const/16 v11, 0x2a

    if-eq v9, v11, :cond_70

    const/16 v11, 0x25

    if-eq v9, v11, :cond_70

    const/16 v11, 0x28

    if-eq v9, v11, :cond_70

    const/16 v11, 0x29

    if-eq v9, v11, :cond_70

    const/16 v11, 0x7b

    if-eq v9, v11, :cond_70

    if-eq v9, v8, :cond_70

    if-eq v9, v7, :cond_70

    const/16 v11, 0x20

    if-gt v10, v11, :cond_79

    :cond_70
    if-eq v9, v8, :cond_77

    if-ne v9, v7, :cond_75

    goto :goto_77

    :cond_75
    const/4 v5, 0x1

    goto :goto_79

    :cond_77
    :goto_77
    const/4 v5, 0x1

    const/4 v6, 0x1

    :cond_79
    :goto_79
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_7c
    :goto_7c
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/iap/Argument;->literal([BLcom/sun/mail/iap/Protocol;)V

    return-void
.end method

.method private literal(Lcom/sun/mail/iap/Literal;Lcom/sun/mail/iap/Protocol;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/sun/mail/iap/Literal;->size()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/sun/mail/iap/Argument;->startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/mail/iap/Literal;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method

.method private literal(Ljava/io/ByteArrayOutputStream;Lcom/sun/mail/iap/Protocol;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/sun/mail/iap/Argument;->startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method

.method private literal([BLcom/sun/mail/iap/Protocol;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    array-length v0, p1

    invoke-direct {p0, p2, v0}, Lcom/sun/mail/iap/Argument;->startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->supportsNonSyncLiterals()Z

    move-result v1

    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    if-eqz v1, :cond_1e

    const-string p2, "+}\r\n"

    :goto_1a
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_21

    :cond_1e
    const-string p2, "}\r\n"

    goto :goto_1a

    :goto_21
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    if-nez v1, :cond_3c

    :cond_26
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-virtual {p2}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v1

    if-eqz v1, :cond_26

    new-instance p1, Lcom/sun/mail/iap/LiteralException;

    invoke-direct {p1, p2}, Lcom/sun/mail/iap/LiteralException;-><init>(Lcom/sun/mail/iap/Response;)V

    throw p1

    :cond_3c
    return-object v0
.end method


# virtual methods
.method public append(Lcom/sun/mail/iap/Argument;)V
    .registers 5

    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    iget-object v1, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget-object v2, p1, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->ensureCapacity(I)V

    const/4 v0, 0x0

    :goto_13
    iget-object v1, p1, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_1c

    return-void

    :cond_1c
    iget-object v1, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    iget-object v2, p1, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method public write(Lcom/sun/mail/iap/Protocol;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    check-cast v2, Ljava/io/DataOutputStream;

    :goto_13
    if-lt v1, v0, :cond_16

    return-void

    :cond_16
    if-lez v1, :cond_1d

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    :cond_1d
    iget-object v3, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/sun/mail/iap/Atom;

    if-eqz v4, :cond_2f

    check-cast v3, Lcom/sun/mail/iap/Atom;

    iget-object v3, v3, Lcom/sun/mail/iap/Atom;->string:Ljava/lang/String;

    :goto_2b
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_77

    :cond_2f
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_3a

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2b

    :cond_3a
    instance-of v4, v3, Lcom/sun/mail/iap/AString;

    if-eqz v4, :cond_46

    check-cast v3, Lcom/sun/mail/iap/AString;

    iget-object v3, v3, Lcom/sun/mail/iap/AString;->bytes:[B

    invoke-direct {p0, v3, p1}, Lcom/sun/mail/iap/Argument;->astring([BLcom/sun/mail/iap/Protocol;)V

    goto :goto_77

    :cond_46
    instance-of v4, v3, [B

    if-eqz v4, :cond_50

    check-cast v3, [B

    invoke-direct {p0, v3, p1}, Lcom/sun/mail/iap/Argument;->literal([BLcom/sun/mail/iap/Protocol;)V

    goto :goto_77

    :cond_50
    instance-of v4, v3, Ljava/io/ByteArrayOutputStream;

    if-eqz v4, :cond_5a

    check-cast v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v3, p1}, Lcom/sun/mail/iap/Argument;->literal(Ljava/io/ByteArrayOutputStream;Lcom/sun/mail/iap/Protocol;)V

    goto :goto_77

    :cond_5a
    instance-of v4, v3, Lcom/sun/mail/iap/Literal;

    if-eqz v4, :cond_64

    check-cast v3, Lcom/sun/mail/iap/Literal;

    invoke-direct {p0, v3, p1}, Lcom/sun/mail/iap/Argument;->literal(Lcom/sun/mail/iap/Literal;Lcom/sun/mail/iap/Protocol;)V

    goto :goto_77

    :cond_64
    instance-of v4, v3, Lcom/sun/mail/iap/Argument;

    if-eqz v4, :cond_77

    const/16 v4, 0x28

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    check-cast v3, Lcom/sun/mail/iap/Argument;

    invoke-virtual {v3, p1}, Lcom/sun/mail/iap/Argument;->write(Lcom/sun/mail/iap/Protocol;)V

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    :cond_77
    :goto_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method public writeArgument(Lcom/sun/mail/iap/Argument;)V
    .registers 3

    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public writeAtom(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Lcom/sun/mail/iap/Atom;

    invoke-direct {v1, p1}, Lcom/sun/mail/iap/Atom;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public writeBytes(Lcom/sun/mail/iap/Literal;)V
    .registers 3

    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public writeBytes(Ljava/io/ByteArrayOutputStream;)V
    .registers 3

    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public writeBytes([B)V
    .registers 3

    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public writeNumber(I)V
    .registers 4

    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public writeNumber(J)V
    .registers 5

    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Lcom/sun/mail/iap/AString;

    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/sun/mail/iap/AString;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p2, :cond_6

    invoke-virtual {p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Lcom/sun/mail/iap/AString;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/sun/mail/iap/AString;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method
