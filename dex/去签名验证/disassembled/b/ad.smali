.class public abstract Lb/ad;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lb/x;Lc/f;)Lb/ad;
    .registers 3
    .param p0    # Lb/x;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lb/ad$1;

    invoke-direct {v0, p0, p1}, Lb/ad$1;-><init>(Lb/x;Lc/f;)V

    return-object v0
.end method

.method public static create(Lb/x;Ljava/io/File;)Lb/ad;
    .registers 3
    .param p0    # Lb/x;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_a

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "content == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance v0, Lb/ad$3;

    invoke-direct {v0, p0, p1}, Lb/ad$3;-><init>(Lb/x;Ljava/io/File;)V

    return-object v0
.end method

.method public static create(Lb/x;Ljava/lang/String;)Lb/ad;
    .registers 4
    .param p0    # Lb/x;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lb/a/c;->e:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_22

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/x;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_22

    sget-object v0, Lb/a/c;->e:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; charset=utf-8"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb/x;->a(Ljava/lang/String;)Lb/x;

    move-result-object p0

    :cond_22
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lb/ad;->create(Lb/x;[B)Lb/ad;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lb/x;[B)Lb/ad;
    .registers 4
    .param p0    # Lb/x;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lb/ad;->create(Lb/x;[BII)Lb/ad;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lb/x;[BII)Lb/ad;
    .registers 11
    .param p0    # Lb/x;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_a

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "content == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lb/a/c;->a(JJJ)V

    new-instance v0, Lb/ad$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lb/ad$2;-><init>(Lb/x;I[BI)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract contentType()Lb/x;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract writeTo(Lc/d;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
