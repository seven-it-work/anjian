.class public Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;
.super Ljava/lang/Object;


# static fields
.field private static final pem_array:[C


# instance fields
.field protected buffer:[B

.field protected bufsize:I

.field protected out:Ljava/io/Writer;

.field protected started:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    return-void

    :array_a
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
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
        0x2bs
        0x2cs
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    iput-object p1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    new-instance v2, Ljava/io/CharArrayWriter;

    invoke-direct {v2, v1}, Ljava/io/CharArrayWriter;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_d
    if-lt v3, v1, :cond_1b

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->flush()V

    :cond_14
    if-eqz v5, :cond_1a

    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1a
    return-object p0

    :cond_1b
    aget-char v6, v0, v3

    const/16 v7, 0x20

    const/4 v8, 0x1

    if-lt v6, v7, :cond_3d

    const/16 v7, 0x7e

    if-gt v6, v7, :cond_3d

    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->flush()V

    :cond_2b
    const/16 v7, 0x26

    if-ne v6, v7, :cond_39

    invoke-virtual {v2, v7}, Ljava/io/CharArrayWriter;->write(I)V

    const/16 v5, 0x2d

    invoke-virtual {v2, v5}, Ljava/io/CharArrayWriter;->write(I)V

    const/4 v5, 0x1

    goto :goto_48

    :cond_39
    invoke-virtual {v2, v6}, Ljava/io/CharArrayWriter;->write(I)V

    goto :goto_48

    :cond_3d
    if-nez v4, :cond_45

    new-instance v4, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;

    invoke-direct {v4, v2}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;-><init>(Ljava/io/Writer;)V

    const/4 v5, 0x1

    :cond_45
    invoke-virtual {v4, v6}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->write(I)V

    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_d
.end method


# virtual methods
.method protected encode()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v0, v0, v3

    iget-object v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v4, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    ushr-int/lit8 v5, v0, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/io/Writer;->write(I)V

    iget-object v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v4, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    shl-int/2addr v0, v2

    and-int/lit8 v0, v0, 0x30

    add-int/2addr v0, v3

    aget-char v0, v4, v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    return-void

    :cond_26
    iget v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_5f

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v0, v0, v3

    iget-object v5, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v1, v5, v1

    iget-object v5, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v6, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    ushr-int/lit8 v7, v0, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-char v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(I)V

    iget-object v5, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v6, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    shl-int/2addr v0, v2

    and-int/lit8 v0, v0, 0x30

    ushr-int/lit8 v2, v1, 0x4

    and-int/lit8 v2, v2, 0xf

    add-int/2addr v0, v2

    aget-char v0, v6, v0

    invoke-virtual {v5, v0}, Ljava/io/Writer;->write(I)V

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v2, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    shl-int/2addr v1, v4

    and-int/lit8 v1, v1, 0x3c

    add-int/2addr v1, v3

    aget-char v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    return-void

    :cond_5f
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v0, v0, v3

    iget-object v5, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v1, v5, v1

    iget-object v5, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v5, v5, v4

    iget-object v6, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v7, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    ushr-int/lit8 v8, v0, 0x2

    and-int/lit8 v8, v8, 0x3f

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(I)V

    iget-object v6, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v7, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    shl-int/2addr v0, v2

    and-int/lit8 v0, v0, 0x30

    ushr-int/lit8 v8, v1, 0x4

    and-int/lit8 v8, v8, 0xf

    add-int/2addr v0, v8

    aget-char v0, v7, v0

    invoke-virtual {v6, v0}, Ljava/io/Writer;->write(I)V

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v6, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    shl-int/2addr v1, v4

    and-int/lit8 v1, v1, 0x3c

    ushr-int/lit8 v4, v5, 0x6

    const/4 v7, 0x3

    and-int/2addr v4, v7

    add-int/2addr v1, v4

    aget-char v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v1, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    and-int/lit8 v4, v5, 0x3f

    aget-char v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    iget v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    if-ne v0, v2, :cond_b1

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    iget-object v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v1, v1, v7

    aput-byte v1, v0, v3

    :cond_b1
    return-void
.end method

.method public flush()V
    .registers 4

    :try_start_0
    iget v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    const/4 v1, 0x0

    if-lez v0, :cond_a

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode()V

    iput v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    :cond_a
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    return-void
.end method

.method public write(I)V
    .registers 5

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    :cond_e
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    iget v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    iget v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    iget p1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_35

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode()V

    iget p1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_35} :catch_35

    :catch_35
    :cond_35
    return-void
.end method
