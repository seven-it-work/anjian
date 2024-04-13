.class final Lb/a/f/h$a;
.super Ljava/lang/Object;

# interfaces
.implements Lc/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/f/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:B

.field c:I

.field d:I

.field e:S

.field private final f:Lc/e;


# direct methods
.method constructor <init>(Lc/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/f/h$a;->f:Lc/e;

    return-void
.end method

.method private a()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lb/a/f/h$a;->c:I

    iget-object v1, p0, Lb/a/f/h$a;->f:Lc/e;

    invoke-static {v1}, Lb/a/f/h;->a(Lc/e;)I

    move-result v1

    iput v1, p0, Lb/a/f/h$a;->d:I

    iput v1, p0, Lb/a/f/h$a;->a:I

    iget-object v1, p0, Lb/a/f/h$a;->f:Lc/e;

    invoke-interface {v1}, Lc/e;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iget-object v2, p0, Lb/a/f/h$a;->f:Lc/e;

    invoke-interface {v2}, Lc/e;->g()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Lb/a/f/h$a;->b:B

    sget-object v2, Lb/a/f/h;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3a

    sget-object v2, Lb/a/f/h;->a:Ljava/util/logging/Logger;

    iget v4, p0, Lb/a/f/h$a;->c:I

    iget v5, p0, Lb/a/f/h$a;->a:I

    iget-byte v6, p0, Lb/a/f/h$a;->b:B

    invoke-static {v3, v4, v5, v1, v6}, Lb/a/f/e;->a(ZIIBB)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_3a
    iget-object v2, p0, Lb/a/f/h$a;->f:Lc/e;

    invoke-interface {v2}, Lc/e;->i()I

    move-result v2

    const v4, 0x7fffffff

    and-int/2addr v2, v4

    iput v2, p0, Lb/a/f/h$a;->c:I

    const/16 v2, 0x9

    const/4 v4, 0x0

    if-eq v1, v2, :cond_5a

    const-string v0, "%s != TYPE_CONTINUATION"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_5a
    iget v1, p0, Lb/a/f/h$a;->c:I

    if-eq v1, v0, :cond_67

    const-string v0, "TYPE_CONTINUATION streamId changed"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_67
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final read(Lc/c;J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget v0, p0, Lb/a/f/h$a;->d:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_7e

    iget-object v0, p0, Lb/a/f/h$a;->f:Lc/e;

    iget-short v3, p0, Lb/a/f/h$a;->e:S

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lc/e;->h(J)V

    const/4 v0, 0x0

    iput-short v0, p0, Lb/a/f/h$a;->e:S

    iget-byte v3, p0, Lb/a/f/h$a;->b:B

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_18

    return-wide v1

    :cond_18
    iget v1, p0, Lb/a/f/h$a;->c:I

    iget-object v2, p0, Lb/a/f/h$a;->f:Lc/e;

    invoke-static {v2}, Lb/a/f/h;->a(Lc/e;)I

    move-result v2

    iput v2, p0, Lb/a/f/h$a;->d:I

    iput v2, p0, Lb/a/f/h$a;->a:I

    iget-object v2, p0, Lb/a/f/h$a;->f:Lc/e;

    invoke-interface {v2}, Lc/e;->g()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iget-object v3, p0, Lb/a/f/h$a;->f:Lc/e;

    invoke-interface {v3}, Lc/e;->g()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    iput-byte v3, p0, Lb/a/f/h$a;->b:B

    sget-object v3, Lb/a/f/h;->a:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_52

    sget-object v3, Lb/a/f/h;->a:Ljava/util/logging/Logger;

    iget v5, p0, Lb/a/f/h$a;->c:I

    iget v6, p0, Lb/a/f/h$a;->a:I

    iget-byte v7, p0, Lb/a/f/h$a;->b:B

    invoke-static {v4, v5, v6, v2, v7}, Lb/a/f/e;->a(ZIIBB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_52
    iget-object v3, p0, Lb/a/f/h$a;->f:Lc/e;

    invoke-interface {v3}, Lc/e;->i()I

    move-result v3

    const v5, 0x7fffffff

    and-int/2addr v3, v5

    iput v3, p0, Lb/a/f/h$a;->c:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_71

    const-string p1, "%s != TYPE_CONTINUATION"

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_71
    iget v2, p0, Lb/a/f/h$a;->c:I

    if-eq v2, v1, :cond_0

    const-string p1, "TYPE_CONTINUATION streamId changed"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_7e
    iget-object v0, p0, Lb/a/f/h$a;->f:Lc/e;

    iget v3, p0, Lb/a/f/h$a;->d:I

    int-to-long v3, v3

    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v0, p1, p2, p3}, Lc/e;->read(Lc/c;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_90

    return-wide v1

    :cond_90
    iget p3, p0, Lb/a/f/h$a;->d:I

    int-to-long v0, p3

    sub-long v2, v0, p1

    long-to-int p3, v2

    iput p3, p0, Lb/a/f/h$a;->d:I

    return-wide p1
.end method

.method public final timeout()Lc/z;
    .registers 2

    iget-object v0, p0, Lb/a/f/h$a;->f:Lc/e;

    invoke-interface {v0}, Lc/e;->timeout()Lc/z;

    move-result-object v0

    return-object v0
.end method
