.class public Lcom/sun/mail/util/QPEncoderStream;
.super Ljava/io/FilterOutputStream;


# static fields
.field private static final hex:[C


# instance fields
.field private bytesPerLine:I

.field private count:I

.field private gotCR:Z

.field private gotSpace:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sun/mail/util/QPEncoderStream;->hex:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    const/16 v0, 0x4c

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/QPEncoderStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    iput-boolean p1, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    iput-boolean p1, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/sun/mail/util/QPEncoderStream;->bytesPerLine:I

    return-void
.end method

.method private outputCRLF()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

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

    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

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

    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method protected output(IZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    const/16 v1, 0xd

    const/16 v2, 0x3d

    if-eqz p2, :cond_3f

    iget p2, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    const/4 v3, 0x3

    add-int/2addr p2, v3

    iput p2, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    iget v4, p0, Lcom/sun/mail/util/QPEncoderStream;->bytesPerLine:I

    if-le p2, v4, :cond_23

    iget-object p2, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object p2, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object p2, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    iput v3, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    :cond_23
    iget-object p2, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object p2, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    sget-object v0, Lcom/sun/mail/util/QPEncoderStream;->hex:[C

    shr-int/lit8 v1, p1, 0x4

    aget-char v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object p2, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    sget-object v0, Lcom/sun/mail/util/QPEncoderStream;->hex:[C

    and-int/lit8 p1, p1, 0xf

    aget-char p1, v0, p1

    :goto_3b
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    return-void

    :cond_3f
    iget p2, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    const/4 v3, 0x1

    add-int/2addr p2, v3

    iput p2, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    iget v4, p0, Lcom/sun/mail/util/QPEncoderStream;->bytesPerLine:I

    if-le p2, v4, :cond_5a

    iget-object p2, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object p2, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object p2, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    iput v3, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    :cond_5a
    iget-object p2, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    goto :goto_3b
.end method

.method public write(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 p1, p1, 0xff

    iget-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    const/16 v1, 0xa

    const/16 v2, 0xd

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x20

    if-eqz v0, :cond_1c

    if-eq p1, v2, :cond_17

    if-ne p1, v1, :cond_13

    goto :goto_17

    :cond_13
    invoke-virtual {p0, v5, v4}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    goto :goto_1a

    :cond_17
    :goto_17
    invoke-virtual {p0, v5, v3}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    :goto_1a
    iput-boolean v4, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    :cond_1c
    if-ne p1, v2, :cond_24

    iput-boolean v3, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z

    invoke-direct {p0}, Lcom/sun/mail/util/QPEncoderStream;->outputCRLF()V

    return-void

    :cond_24
    if-ne p1, v1, :cond_2e

    iget-boolean p1, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z

    if-nez p1, :cond_45

    invoke-direct {p0}, Lcom/sun/mail/util/QPEncoderStream;->outputCRLF()V

    goto :goto_45

    :cond_2e
    if-ne p1, v5, :cond_33

    iput-boolean v3, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    goto :goto_45

    :cond_33
    if-lt p1, v5, :cond_42

    const/16 v0, 0x7f

    if-ge p1, v0, :cond_42

    const/16 v0, 0x3d

    if-ne p1, v0, :cond_3e

    goto :goto_42

    :cond_3e
    invoke-virtual {p0, p1, v4}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    goto :goto_45

    :cond_42
    :goto_42
    invoke-virtual {p0, p1, v3}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    :cond_45
    :goto_45
    iput-boolean v4, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z

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

    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/mail/util/QPEncoderStream;->write([BII)V

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

    invoke-virtual {p0, v1}, Lcom/sun/mail/util/QPEncoderStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
