.class final Lcom/bumptech/glide/b/a$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:[J

.field c:[Ljava/io/File;

.field d:[Ljava/io/File;

.field e:Z

.field f:Lcom/bumptech/glide/b/a$b;

.field g:J

.field final synthetic h:Lcom/bumptech/glide/b/a;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/b/a;Ljava/lang/String;)V
    .registers 9

    iput-object p1, p0, Lcom/bumptech/glide/b/a$c;->h:Lcom/bumptech/glide/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/b/a$c;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/bumptech/glide/b/a;->f(Lcom/bumptech/glide/b/a;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/bumptech/glide/b/a$c;->b:[J

    invoke-static {p1}, Lcom/bumptech/glide/b/a;->f(Lcom/bumptech/glide/b/a;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/bumptech/glide/b/a$c;->c:[Ljava/io/File;

    invoke-static {p1}, Lcom/bumptech/glide/b/a;->f(Lcom/bumptech/glide/b/a;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/bumptech/glide/b/a$c;->d:[Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    :goto_2e
    invoke-static {p1}, Lcom/bumptech/glide/b/a;->f(Lcom/bumptech/glide/b/a;)I

    move-result v2

    if-ge v1, v2, :cond_64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/b/a$c;->c:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Lcom/bumptech/glide/b/a;->g(Lcom/bumptech/glide/b/a;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/b/a$c;->d:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Lcom/bumptech/glide/b/a;->g(Lcom/bumptech/glide/b/a;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_64
    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/b/a;Ljava/lang/String;B)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/b/a$c;-><init>(Lcom/bumptech/glide/b/a;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Lcom/bumptech/glide/b/a$c;J)J
    .registers 3

    iput-wide p1, p0, Lcom/bumptech/glide/b/a$c;->g:J

    return-wide p1
.end method

.method private static synthetic a(Lcom/bumptech/glide/b/a$c;Lcom/bumptech/glide/b/a$b;)Lcom/bumptech/glide/b/a$b;
    .registers 2

    iput-object p1, p0, Lcom/bumptech/glide/b/a$c;->f:Lcom/bumptech/glide/b/a$b;

    return-object p1
.end method

.method private a(I)Ljava/io/File;
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/b/a$c;->c:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private static synthetic a(Lcom/bumptech/glide/b/a$c;[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    iget-object v1, p0, Lcom/bumptech/glide/b/a$c;->h:Lcom/bumptech/glide/b/a;

    invoke-static {v1}, Lcom/bumptech/glide/b/a;->f(Lcom/bumptech/glide/b/a;)I

    move-result v1

    if-eq v0, v1, :cond_e

    invoke-static {p1}, Lcom/bumptech/glide/b/a$c;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_e
    const/4 v0, 0x0

    :goto_f
    :try_start_f
    array-length v1, p1

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Lcom/bumptech/glide/b/a$c;->b:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_1c} :catch_20

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1f
    return-void

    :catch_20
    invoke-static {p1}, Lcom/bumptech/glide/b/a$c;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private static synthetic a(Lcom/bumptech/glide/b/a$c;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/b/a$c;->e:Z

    return v0
.end method

.method private static synthetic b(Lcom/bumptech/glide/b/a$c;)Lcom/bumptech/glide/b/a$b;
    .registers 1

    iget-object p0, p0, Lcom/bumptech/glide/b/a$c;->f:Lcom/bumptech/glide/b/a$b;

    return-object p0
.end method

.method private b(I)Ljava/io/File;
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/b/a$c;->d:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private static b([Ljava/lang/String;)Ljava/io/IOException;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic c(Lcom/bumptech/glide/b/a$c;)[J
    .registers 1

    iget-object p0, p0, Lcom/bumptech/glide/b/a$c;->b:[J

    return-object p0
.end method

.method private static synthetic d(Lcom/bumptech/glide/b/a$c;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bumptech/glide/b/a$c;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic e(Lcom/bumptech/glide/b/a$c;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/bumptech/glide/b/a$c;->e:Z

    return p0
.end method

.method private static synthetic f(Lcom/bumptech/glide/b/a$c;)J
    .registers 3

    iget-wide v0, p0, Lcom/bumptech/glide/b/a$c;->g:J

    return-wide v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/b/a$c;->b:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_18

    aget-wide v4, v1, v3

    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final a([Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    iget-object v1, p0, Lcom/bumptech/glide/b/a$c;->h:Lcom/bumptech/glide/b/a;

    invoke-static {v1}, Lcom/bumptech/glide/b/a;->f(Lcom/bumptech/glide/b/a;)I

    move-result v1

    if-eq v0, v1, :cond_e

    invoke-static {p1}, Lcom/bumptech/glide/b/a$c;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_e
    const/4 v0, 0x0

    :goto_f
    :try_start_f
    array-length v1, p1

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Lcom/bumptech/glide/b/a$c;->b:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_1c} :catch_20

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1f
    return-void

    :catch_20
    invoke-static {p1}, Lcom/bumptech/glide/b/a$c;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method
