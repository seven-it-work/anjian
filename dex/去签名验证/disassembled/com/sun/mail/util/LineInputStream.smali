.class public Lcom/sun/mail/util/LineInputStream;
.super Ljava/io/FilterInputStream;


# instance fields
.field private lineBuffer:[C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    return-void
.end method


# virtual methods
.method public readLine()Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    if-nez v1, :cond_c

    const/16 v1, 0x80

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    :cond_c
    array-length v2, v1

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v1, 0x0

    :goto_10
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_18

    goto :goto_5a

    :cond_18
    const/16 v7, 0xa

    if-eq v5, v7, :cond_5a

    const/16 v8, 0xd

    if-ne v5, v8, :cond_3e

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v8, :cond_2a

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    :cond_2a
    if-eq v2, v7, :cond_5a

    instance-of v7, v0, Ljava/io/PushbackInputStream;

    if-nez v7, :cond_38

    new-instance v7, Ljava/io/PushbackInputStream;

    invoke-direct {v7, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v7, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    move-object v0, v7

    :cond_38
    check-cast v0, Ljava/io/PushbackInputStream;

    invoke-virtual {v0, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    goto :goto_5a

    :cond_3e
    add-int/2addr v2, v6

    if-gez v2, :cond_53

    add-int/lit16 v2, v1, 0x80

    new-array v2, v2, [C

    array-length v4, v2

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    iget-object v6, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    invoke-static {v6, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    move v9, v4

    move-object v4, v2

    move v2, v9

    :cond_53
    add-int/lit8 v6, v1, 0x1

    int-to-char v5, v5

    aput-char v5, v4, v1

    move v1, v6

    goto :goto_10

    :cond_5a
    :goto_5a
    if-ne v5, v6, :cond_60

    if-nez v1, :cond_60

    const/4 v0, 0x0

    return-object v0

    :cond_60
    invoke-static {v4, v3, v1}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
