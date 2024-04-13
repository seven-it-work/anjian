.class public Lcom/sun/mail/iap/Response;
.super Ljava/lang/Object;


# static fields
.field public static final BAD:I = 0xc

.field public static final BYE:I = 0x10

.field public static final CONTINUATION:I = 0x1

.field public static final NO:I = 0x8

.field public static final OK:I = 0x4

.field public static final SYNTHETIC:I = 0x20

.field public static final TAGGED:I = 0x2

.field public static final TAG_MASK:I = 0x3

.field public static final TYPE_MASK:I = 0x1c

.field public static final UNTAGGED:I = 0x3

.field private static final increment:I = 0x64


# instance fields
.field protected buffer:[B

.field protected index:I

.field protected pindex:I

.field protected size:I

.field protected tag:Ljava/lang/String;

.field protected type:I


# direct methods
.method public constructor <init>(Lcom/sun/mail/iap/Protocol;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/mail/iap/Response;->type:I

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getResponseBuffer()Lcom/sun/mail/iap/ByteArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getInputStream()Lcom/sun/mail/iap/ResponseInputStream;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sun/mail/iap/ResponseInputStream;->readResponse(Lcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/iap/ByteArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/sun/mail/iap/Response;->size:I

    invoke-direct {p0}, Lcom/sun/mail/iap/Response;->parse()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/iap/Response;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/mail/iap/Response;->type:I

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    iget v0, p1, Lcom/sun/mail/iap/Response;->index:I

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v0, p1, Lcom/sun/mail/iap/Response;->size:I

    iput v0, p0, Lcom/sun/mail/iap/Response;->size:I

    iget-object v0, p1, Lcom/sun/mail/iap/Response;->buffer:[B

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v0, p1, Lcom/sun/mail/iap/Response;->type:I

    iput v0, p0, Lcom/sun/mail/iap/Response;->type:I

    iget-object p1, p1, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/mail/iap/Response;->type:I

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget-object p1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    array-length p1, p1

    iput p1, p0, Lcom/sun/mail/iap/Response;->size:I

    invoke-direct {p0}, Lcom/sun/mail/iap/Response;->parse()V

    return-void
.end method

.method public static byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "* BYE JavaMail Exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x20

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/sun/mail/iap/Response;

    invoke-direct {v1, p0}, Lcom/sun/mail/iap/Response;-><init>(Ljava/lang/String;)V

    iget p0, v1, Lcom/sun/mail/iap/Response;->type:I

    or-int/2addr p0, v0

    iput p0, v1, Lcom/sun/mail/iap/Response;->type:I

    return-object v1
.end method

.method private parse()V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_1a

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/iap/Response;->type:I

    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    return-void

    :cond_1a
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_31

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/sun/mail/iap/Response;->type:I

    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_3d

    :cond_31
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sun/mail/iap/Response;->type:I

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    :goto_3d
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_47

    const-string v1, ""

    :cond_47
    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_56

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v0, v0, 0x4

    :goto_53
    iput v0, p0, Lcom/sun/mail/iap/Response;->type:I

    goto :goto_7f

    :cond_56
    const-string v2, "NO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v0, v0, 0x8

    goto :goto_53

    :cond_63
    const-string v2, "BAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_70

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v0, v0, 0xc

    goto :goto_53

    :cond_70
    const-string v2, "BYE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7d

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v0, v0, 0x10

    goto :goto_53

    :cond_7d
    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    :goto_7f
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iput v0, p0, Lcom/sun/mail/iap/Response;->pindex:I

    return-void
.end method

.method private parseString(ZZ)Ljava/lang/Object;
    .registers 8

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_58

    iget p1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    iget p1, p0, Lcom/sun/mail/iap/Response;->index:I

    :goto_17
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v3, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v3

    if-ne v0, v1, :cond_37

    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    if-eqz p2, :cond_2e

    iget-object p2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    invoke-static {p2, v2, p1}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2e
    new-instance p2, Lcom/sun/mail/iap/ByteArray;

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    sub-int/2addr p1, v2

    invoke-direct {p2, v0, v2, p1}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    return-object p2

    :cond_37
    const/16 v3, 0x5c

    if-ne v0, v3, :cond_41

    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    :cond_41
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    if-eq v0, p1, :cond_4f

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget-object v3, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v4, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v3, v3, v4

    aput-byte v3, v0, p1

    :cond_4f
    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_17

    :cond_58
    const/16 v1, 0x7b

    const/4 v2, 0x0

    if-ne v0, v1, :cond_96

    iget p1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    :goto_63
    iget-object p1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte p1, p1, v0

    const/16 v0, 0x7d

    if-ne p1, v0, :cond_8f

    :try_start_6d
    iget-object p1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-static {p1, v1, v0}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BII)I

    move-result p1
    :try_end_75
    .catch Ljava/lang/NumberFormatException; {:try_start_6d .. :try_end_75} :catch_8e

    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v0, v0, 0x3

    add-int v1, v0, p1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    if-eqz p2, :cond_86

    iget-object p1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    invoke-static {p1, v0, v1}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_86
    new-instance p2, Lcom/sun/mail/iap/ByteArray;

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    invoke-direct {p2, v1, v0, p1}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    return-object p2

    :catch_8e
    return-object v2

    :cond_8f
    iget p1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_63

    :cond_96
    if-eqz p1, :cond_ab

    iget p1, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_a1

    return-object v0

    :cond_a1
    new-instance p2, Lcom/sun/mail/iap/ByteArray;

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-direct {p2, v0, p1, v1}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    return-object p2

    :cond_ab
    const/16 p1, 0x4e

    if-eq v0, p1, :cond_b5

    const/16 p1, 0x6e

    if-ne v0, p1, :cond_b4

    goto :goto_b5

    :cond_b4
    return-object v2

    :cond_b5
    :goto_b5
    iget p1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/sun/mail/iap/Response;->index:I

    return-object v2
.end method


# virtual methods
.method public getRest()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    return v0
.end method

.method public isBAD()Z
    .registers 3

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x1c

    const/16 v1, 0xc

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public isBYE()Z
    .registers 3

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x1c

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public isContinuation()Z
    .registers 3

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public isNO()Z
    .registers 3

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x1c

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public isOK()Z
    .registers 3

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x1c

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public isSynthetic()Z
    .registers 3

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public isTagged()Z
    .registers 3

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public isUnTagged()Z
    .registers 3

    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    const/4 v1, 0x3

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public peekByte()B
    .registers 3

    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v0, v1, :cond_d

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public readAtom()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/mail/iap/Response;->readAtom(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readAtom(C)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-lt v0, v1, :cond_b

    const/4 p1, 0x0

    return-object p1

    :cond_b
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    :goto_d
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v1, v2, :cond_45

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v1, v1, v2

    const/16 v2, 0x20

    if-le v1, v2, :cond_45

    const/16 v2, 0x28

    if-eq v1, v2, :cond_45

    const/16 v2, 0x29

    if-eq v1, v2, :cond_45

    const/16 v2, 0x25

    if-eq v1, v2, :cond_45

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_45

    const/16 v2, 0x22

    if-eq v1, v2, :cond_45

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_45

    const/16 v2, 0x7f

    if-eq v1, v2, :cond_45

    if-eqz p1, :cond_3e

    if-ne v1, p1, :cond_3e

    goto :goto_45

    :cond_3e
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_d

    :cond_45
    :goto_45
    iget-object p1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-static {p1, v0, v1}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readAtomString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/sun/mail/iap/Response;->parseString(ZZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public readByte()B
    .registers 4

    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v0, v1, :cond_11

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public readByteArray()Lcom/sun/mail/iap/ByteArray;
    .registers 6

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    new-instance v0, Lcom/sun/mail/iap/ByteArray;

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v3, p0, Lcom/sun/mail/iap/Response;->size:I

    iget v4, p0, Lcom/sun/mail/iap/Response;->index:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    return-object v0

    :cond_18
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/sun/mail/iap/Response;->parseString(ZZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/iap/ByteArray;

    return-object v0
.end method

.method public readBytes()Ljava/io/ByteArrayInputStream;
    .registers 2

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readByteArray()Lcom/sun/mail/iap/ByteArray;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/sun/mail/iap/ByteArray;->toByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public readLong()J
    .registers 4

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    :goto_5
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v1, v2, :cond_20

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_20

    :cond_19
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_5

    :cond_20
    :goto_20
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    if-le v1, v0, :cond_2d

    :try_start_24
    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-static {v1, v0, v2}, Lcom/sun/mail/util/ASCIIUtility;->parseLong([BII)J

    move-result-wide v0
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_2c} :catch_2d

    return-wide v0

    :catch_2d
    :cond_2d
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public readNumber()I
    .registers 4

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    :goto_5
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v1, v2, :cond_20

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_20

    :cond_19
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_5

    :cond_20
    :goto_20
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    if-le v1, v0, :cond_2d

    :try_start_24
    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-static {v1, v0, v2}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BII)I

    move-result v0
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_2c} :catch_2d

    return v0

    :catch_2d
    :cond_2d
    const/4 v0, -0x1

    return v0
.end method

.method public readString()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/iap/Response;->parseString(ZZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public readString(C)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-lt v0, v1, :cond_b

    const/4 p1, 0x0

    return-object p1

    :cond_b
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    :goto_d
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v1, v2, :cond_23

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v1, v1, v2

    if-ne v1, p1, :cond_1c

    goto :goto_23

    :cond_1c
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_d

    :cond_23
    :goto_23
    iget-object p1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-static {p1, v0, v1}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readStringList()[Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_f

    return-object v1

    :cond_f
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :cond_1a
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v3, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v2, v2, v3

    const/16 v3, 0x29

    if-ne v2, v3, :cond_1a

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_3a

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    :cond_3a
    return-object v1
.end method

.method public reset()V
    .registers 2

    iget v0, p0, Lcom/sun/mail/iap/Response;->pindex:I

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    return-void
.end method

.method public skip(I)V
    .registers 3

    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    return-void
.end method

.method public skipSpaces()V
    .registers 3

    :goto_0
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v0, v1, :cond_18

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_11

    return-void

    :cond_11
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0

    :cond_18
    return-void
.end method

.method public skipToken()V
    .registers 3

    :goto_0
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v0, v1, :cond_18

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_11

    return-void

    :cond_11
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0

    :cond_18
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
