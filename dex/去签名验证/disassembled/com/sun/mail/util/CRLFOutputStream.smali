.class public Lcom/sun/mail/util/CRLFOutputStream;
.super Ljava/io/FilterOutputStream;


# static fields
.field private static final newline:[B


# instance fields
.field protected atBOL:Z

.field protected lastb:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sun/mail/util/CRLFOutputStream;->newline:[B

    return-void

    nop

    :array_a
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/sun/mail/util/CRLFOutputStream;->lastb:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/mail/util/CRLFOutputStream;->atBOL:Z

    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    if-ne p1, v0, :cond_8

    :goto_4
    invoke-virtual {p0}, Lcom/sun/mail/util/CRLFOutputStream;->writeln()V

    goto :goto_19

    :cond_8
    const/16 v1, 0xa

    if-ne p1, v1, :cond_11

    iget v1, p0, Lcom/sun/mail/util/CRLFOutputStream;->lastb:I

    if-eq v1, v0, :cond_19

    goto :goto_4

    :cond_11
    iget-object v0, p0, Lcom/sun/mail/util/CRLFOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/util/CRLFOutputStream;->atBOL:Z

    :cond_19
    :goto_19
    iput p1, p0, Lcom/sun/mail/util/CRLFOutputStream;->lastb:I

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

    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/mail/util/CRLFOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/2addr p3, p2

    move v0, p2

    :goto_2
    if-lt p2, p3, :cond_10

    sub-int/2addr p3, v0

    if-lez p3, :cond_f

    iget-object p2, p0, Lcom/sun/mail/util/CRLFOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1, v0, p3}, Ljava/io/OutputStream;->write([BII)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/mail/util/CRLFOutputStream;->atBOL:Z

    :cond_f
    return-void

    :cond_10
    aget-byte v1, p1, p2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_21

    :goto_16
    iget-object v1, p0, Lcom/sun/mail/util/CRLFOutputStream;->out:Ljava/io/OutputStream;

    sub-int v2, p2, v0

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p0}, Lcom/sun/mail/util/CRLFOutputStream;->writeln()V

    goto :goto_2c

    :cond_21
    aget-byte v1, p1, p2

    const/16 v3, 0xa

    if-ne v1, v3, :cond_2e

    iget v1, p0, Lcom/sun/mail/util/CRLFOutputStream;->lastb:I

    if-eq v1, v2, :cond_2c

    goto :goto_16

    :cond_2c
    :goto_2c
    add-int/lit8 v0, p2, 0x1

    :cond_2e
    aget-byte v1, p1, p2

    iput v1, p0, Lcom/sun/mail/util/CRLFOutputStream;->lastb:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_2
.end method

.method public writeln()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/util/CRLFOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/mail/util/CRLFOutputStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/util/CRLFOutputStream;->atBOL:Z

    return-void
.end method
