.class public final La/a/a/c;
.super Ljava/io/OutputStream;


# instance fields
.field private a:Ljava/io/OutputStream;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    const/16 v0, 0x4c

    invoke-direct {p0, p1, v0}, La/a/a/c;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 4

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/c;->a:Ljava/io/OutputStream;

    const/4 v0, 0x0

    iput v0, p0, La/a/a/c;->b:I

    iput v0, p0, La/a/a/c;->c:I

    iput v0, p0, La/a/a/c;->d:I

    iput v0, p0, La/a/a/c;->e:I

    iput-object p1, p0, La/a/a/c;->a:Ljava/io/OutputStream;

    iput p2, p0, La/a/a/c;->e:I

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, La/a/a/c;->c:I

    if-lez v0, :cond_7a

    iget v0, p0, La/a/a/c;->e:I

    const/4 v1, 0x0

    if-lez v0, :cond_1c

    iget v0, p0, La/a/a/c;->d:I

    iget v2, p0, La/a/a/c;->e:I

    if-ne v0, v2, :cond_1c

    iget-object v0, p0, La/a/a/c;->a:Ljava/io/OutputStream;

    const-string v2, "\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    iput v1, p0, La/a/a/c;->d:I

    :cond_1c
    sget-object v0, La/a/a/d;->a:Ljava/lang/String;

    iget v2, p0, La/a/a/c;->b:I

    shl-int/lit8 v2, v2, 0x8

    ushr-int/lit8 v2, v2, 0x1a

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-object v2, La/a/a/d;->a:Ljava/lang/String;

    iget v3, p0, La/a/a/c;->b:I

    shl-int/lit8 v3, v3, 0xe

    ushr-int/lit8 v3, v3, 0x1a

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget v3, p0, La/a/a/c;->c:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3c

    sget-char v3, La/a/a/d;->b:C

    goto :goto_48

    :cond_3c
    sget-object v3, La/a/a/d;->a:Ljava/lang/String;

    iget v4, p0, La/a/a/c;->b:I

    shl-int/lit8 v4, v4, 0x14

    ushr-int/lit8 v4, v4, 0x1a

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_48
    iget v4, p0, La/a/a/c;->c:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_50

    sget-char v4, La/a/a/d;->b:C

    goto :goto_5c

    :cond_50
    sget-object v4, La/a/a/d;->a:Ljava/lang/String;

    iget v5, p0, La/a/a/c;->b:I

    shl-int/lit8 v5, v5, 0x1a

    ushr-int/lit8 v5, v5, 0x1a

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_5c
    iget-object v5, p0, La/a/a/c;->a:Ljava/io/OutputStream;

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, La/a/a/c;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, La/a/a/c;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, La/a/a/c;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, La/a/a/c;->d:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, La/a/a/c;->d:I

    iput v1, p0, La/a/a/c;->c:I

    iput v1, p0, La/a/a/c;->b:I

    :cond_7a
    return-void
.end method

.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, La/a/a/c;->a()V

    iget-object v0, p0, La/a/a/c;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public final write(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 p1, p1, 0xff

    iget v0, p0, La/a/a/c;->c:I

    mul-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x10

    shl-int/2addr p1, v0

    iget v0, p0, La/a/a/c;->b:I

    or-int/2addr p1, v0

    iput p1, p0, La/a/a/c;->b:I

    iget p1, p0, La/a/a/c;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, La/a/a/c;->c:I

    iget p1, p0, La/a/a/c;->c:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1c

    invoke-virtual {p0}, La/a/a/c;->a()V

    :cond_1c
    return-void
.end method
