.class final Lcom/b/a/a/e/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/b/x;


# instance fields
.field a:I

.field b:B

.field c:I

.field d:I

.field e:S

.field private final f:Lcom/b/b/h;


# direct methods
.method public constructor <init>(Lcom/b/b/h;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/e/z;->f:Lcom/b/b/h;

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/b/f;J)J
    .registers 12

    :cond_0
    iget v0, p0, Lcom/b/a/a/e/z;->d:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/b/a/a/e/z;->f:Lcom/b/b/h;

    iget-short v3, p0, Lcom/b/a/a/e/z;->e:S

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lcom/b/b/h;->f(J)V

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/b/a/a/e/z;->e:S

    iget-byte v3, p0, Lcom/b/a/a/e/z;->b:B

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_18

    return-wide v1

    :cond_18
    iget v1, p0, Lcom/b/a/a/e/z;->c:I

    iget-object v2, p0, Lcom/b/a/a/e/z;->f:Lcom/b/b/h;

    invoke-static {v2}, Lcom/b/a/a/e/y;->a(Lcom/b/b/h;)I

    move-result v2

    iput v2, p0, Lcom/b/a/a/e/z;->d:I

    iput v2, p0, Lcom/b/a/a/e/z;->a:I

    iget-object v2, p0, Lcom/b/a/a/e/z;->f:Lcom/b/b/h;

    invoke-interface {v2}, Lcom/b/b/h;->e()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iget-object v3, p0, Lcom/b/a/a/e/z;->f:Lcom/b/b/h;

    invoke-interface {v3}, Lcom/b/b/h;->e()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/b/a/a/e/z;->b:B

    sget-object v3, Lcom/b/a/a/e/y;->a:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_52

    sget-object v3, Lcom/b/a/a/e/y;->a:Ljava/util/logging/Logger;

    iget v5, p0, Lcom/b/a/a/e/z;->c:I

    iget v6, p0, Lcom/b/a/a/e/z;->a:I

    iget-byte v7, p0, Lcom/b/a/a/e/z;->b:B

    invoke-static {v4, v5, v6, v2, v7}, Lcom/b/a/a/e/g;->a(ZIIBB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_52
    iget-object v3, p0, Lcom/b/a/a/e/z;->f:Lcom/b/b/h;

    invoke-interface {v3}, Lcom/b/b/h;->g()I

    move-result v3

    const v5, 0x7fffffff

    and-int/2addr v3, v5

    iput v3, p0, Lcom/b/a/a/e/z;->c:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_71

    const-string p1, "%s != TYPE_CONTINUATION"

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_71
    iget v2, p0, Lcom/b/a/a/e/z;->c:I

    if-eq v2, v1, :cond_0

    const-string p1, "TYPE_CONTINUATION streamId changed"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_7e
    iget-object v0, p0, Lcom/b/a/a/e/z;->f:Lcom/b/b/h;

    iget v3, p0, Lcom/b/a/a/e/z;->d:I

    int-to-long v3, v3

    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v0, p1, p2, p3}, Lcom/b/b/h;->a(Lcom/b/b/f;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_90

    return-wide v1

    :cond_90
    iget p3, p0, Lcom/b/a/a/e/z;->d:I

    int-to-long v0, p3

    sub-long v2, v0, p1

    long-to-int p3, v2

    iput p3, p0, Lcom/b/a/a/e/z;->d:I

    return-wide p1
.end method

.method public final a()Lcom/b/b/y;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/e/z;->f:Lcom/b/b/h;

    invoke-interface {v0}, Lcom/b/b/h;->a()Lcom/b/b/y;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .registers 1

    return-void
.end method
