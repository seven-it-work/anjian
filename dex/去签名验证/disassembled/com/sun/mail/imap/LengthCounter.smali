.class Lcom/sun/mail/imap/LengthCounter;
.super Ljava/io/OutputStream;


# instance fields
.field private buf:[B

.field private maxsize:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iput p1, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    return-object v0
.end method

.method public getSize()I
    .registers 2

    iget v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    return v0
.end method

.method public write(I)V
    .registers 7

    iget v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    if-eqz v1, :cond_35

    iget v1, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    if-le v0, v1, :cond_14

    iget v1, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    if-ltz v1, :cond_14

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    goto :goto_35

    :cond_14
    iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    array-length v1, v1

    if-le v0, v1, :cond_2e

    iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    :cond_2e
    iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    :cond_35
    :goto_35
    iput v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    return-void
.end method

.method public write([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/mail/imap/LengthCounter;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 9

    if-ltz p2, :cond_49

    array-length v0, p1

    if-gt p2, v0, :cond_49

    if-ltz p3, :cond_49

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_49

    if-gez v0, :cond_f

    goto :goto_49

    :cond_f
    if-nez p3, :cond_12

    return-void

    :cond_12
    iget v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    if-eqz v1, :cond_46

    iget v1, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    if-le v0, v1, :cond_25

    iget v1, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    if-ltz v1, :cond_25

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    goto :goto_46

    :cond_25
    iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    array-length v1, v1

    if-le v0, v1, :cond_3f

    iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    :cond_3f
    iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_46
    :goto_46
    iput v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    return-void

    :cond_49
    :goto_49
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
