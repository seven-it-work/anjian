.class public Lcom/sun/mail/util/UUEncoderStream;
.super Ljava/io/FilterOutputStream;


# instance fields
.field private buffer:[B

.field private bufsize:I

.field protected mode:I

.field protected name:Ljava/lang/String;

.field private wrotePrefix:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4

    const-string v0, "encoder.buf"

    const/16 v1, 0x284

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x284

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    iput-boolean p1, p0, Lcom/sun/mail/util/UUEncoderStream;->wrotePrefix:Z

    iput-object p2, p0, Lcom/sun/mail/util/UUEncoderStream;->name:Ljava/lang/String;

    iput p3, p0, Lcom/sun/mail/util/UUEncoderStream;->mode:I

    const/16 p1, 0x2d

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B

    return-void
.end method

.method private encode()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    iget v1, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    and-int/lit8 v1, v1, 0x3f

    add-int/lit8 v1, v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x0

    :goto_c
    iget v1, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    if-lt v0, v1, :cond_18

    iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void

    :cond_18
    iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    iget v1, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    const/4 v3, 0x1

    if-ge v2, v1, :cond_39

    iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v1, v1, v2

    iget v2, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    if-ge v4, v2, :cond_37

    iget-object v2, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B

    add-int/lit8 v3, v4, 0x1

    aget-byte v2, v2, v4

    move v6, v3

    move v3, v2

    move v2, v6

    goto :goto_3a

    :cond_37
    move v2, v4

    goto :goto_3a

    :cond_39
    const/4 v1, 0x1

    :goto_3a
    ushr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x30

    ushr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v0, v5

    shl-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0x3c

    ushr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3

    or-int/2addr v1, v5

    and-int/lit8 v3, v3, 0x3f

    iget-object v5, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v4, v4, 0x20

    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v4, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v0, v0, 0x20

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v1, v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v3, v3, 0x20

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    move v0, v2

    goto :goto_c
.end method

.method private writePrefix()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/mail/util/UUEncoderStream;->wrotePrefix:Z

    if-nez v0, :cond_2e

    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "begin "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/mail/util/UUEncoderStream;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/mail/util/UUEncoderStream;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/util/UUEncoderStream;->wrotePrefix:Z

    :cond_2e
    return-void
.end method

.method private writeSuffix()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    const-string v1, " \nend"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/util/UUEncoderStream;->flush()V

    iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    if-lez v0, :cond_a

    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->writePrefix()V

    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->encode()V

    :cond_a
    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->writeSuffix()V

    iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public setNameMode(Ljava/lang/String;I)V
    .registers 3

    iput-object p1, p0, Lcom/sun/mail/util/UUEncoderStream;->name:Ljava/lang/String;

    iput p2, p0, Lcom/sun/mail/util/UUEncoderStream;->mode:I

    return-void
.end method

.method public write(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B

    iget v1, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    iget p1, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_1a

    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->writePrefix()V

    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->encode()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    :cond_1a
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

    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/mail/util/UUEncoderStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-lt v0, p3, :cond_4

    return-void

    :cond_4
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/util/UUEncoderStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
