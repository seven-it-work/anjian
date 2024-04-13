.class public abstract Lb/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/af$a;
    }
.end annotation


# instance fields
.field private reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private charset()Ljava/nio/charset/Charset;
    .registers 3

    invoke-virtual {p0}, Lb/af;->contentType()Lb/x;

    move-result-object v0

    if-eqz v0, :cond_d

    sget-object v1, Lb/a/c;->e:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lb/x;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0

    :cond_d
    sget-object v0, Lb/a/c;->e:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public static create(Lb/x;JLc/e;)Lb/af;
    .registers 5
    .param p0    # Lb/x;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p3, :cond_a

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance v0, Lb/af$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lb/af$1;-><init>(Lb/x;JLc/e;)V

    return-object v0
.end method

.method public static create(Lb/x;Ljava/lang/String;)Lb/af;
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
    new-instance v1, Lc/c;

    invoke-direct {v1}, Lc/c;-><init>()V

    invoke-virtual {v1, p1, v0}, Lc/c;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lc/c;

    move-result-object p1

    iget-wide v0, p1, Lc/c;->c:J

    invoke-static {p0, v0, v1, p1}, Lb/af;->create(Lb/x;JLc/e;)Lb/af;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lb/x;[B)Lb/af;
    .registers 5
    .param p0    # Lb/x;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lc/c;

    invoke-direct {v0}, Lc/c;-><init>()V

    invoke-virtual {v0, p1}, Lc/c;->c([B)Lc/c;

    move-result-object v0

    array-length p1, p1

    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Lb/af;->create(Lb/x;JLc/e;)Lb/af;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final byteStream()Ljava/io/InputStream;
    .registers 2

    invoke-virtual {p0}, Lb/af;->source()Lc/e;

    move-result-object v0

    invoke-interface {v0}, Lc/e;->e()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final bytes()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lb/af;->contentLength()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_1f

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot buffer entire body for content length: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1f
    invoke-virtual {p0}, Lb/af;->source()Lc/e;

    move-result-object v2

    :try_start_23
    invoke-interface {v2}, Lc/e;->v()[B

    move-result-object v3
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_59

    invoke-static {v2}, Lb/a/c;->a(Ljava/io/Closeable;)V

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_58

    array-length v2, v3

    int-to-long v4, v2

    cmp-long v2, v0, v4

    if-eqz v2, :cond_58

    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Content-Length ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") and stream length ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") disagree"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_58
    return-object v3

    :catchall_59
    move-exception v0

    invoke-static {v2}, Lb/a/c;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public final charStream()Ljava/io/Reader;
    .registers 4

    iget-object v0, p0, Lb/af;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Lb/af$a;

    invoke-virtual {p0}, Lb/af;->source()Lc/e;

    move-result-object v1

    invoke-direct {p0}, Lb/af;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lb/af$a;-><init>(Lc/e;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lb/af;->reader:Ljava/io/Reader;

    return-object v0
.end method

.method public close()V
    .registers 2

    invoke-virtual {p0}, Lb/af;->source()Lc/e;

    move-result-object v0

    invoke-static {v0}, Lb/a/c;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public abstract contentLength()J
.end method

.method public abstract contentType()Lb/x;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract source()Lc/e;
.end method

.method public final string()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lb/af;->source()Lc/e;

    move-result-object v0

    :try_start_4
    invoke-direct {p0}, Lb/af;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Lb/a/c;->a(Lc/e;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/e;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    invoke-static {v0}, Lb/a/c;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_14
    move-exception v1

    invoke-static {v0}, Lb/a/c;->a(Ljava/io/Closeable;)V

    throw v1
.end method
