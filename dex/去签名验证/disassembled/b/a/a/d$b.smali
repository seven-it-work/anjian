.class final Lb/a/a/d$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:[J

.field final c:[Ljava/io/File;

.field final d:[Ljava/io/File;

.field e:Z

.field f:Lb/a/a/d$a;

.field g:J

.field final synthetic h:Lb/a/a/d;


# direct methods
.method constructor <init>(Lb/a/a/d;Ljava/lang/String;)V
    .registers 9

    iput-object p1, p0, Lb/a/a/d$b;->h:Lb/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/a/a/d$b;->a:Ljava/lang/String;

    iget v0, p1, Lb/a/a/d;->j:I

    new-array v0, v0, [J

    iput-object v0, p0, Lb/a/a/d$b;->b:[J

    iget v0, p1, Lb/a/a/d;->j:I

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lb/a/a/d$b;->c:[Ljava/io/File;

    iget v0, p1, Lb/a/a/d;->j:I

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lb/a/a/d$b;->d:[Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    :goto_28
    iget v2, p1, Lb/a/a/d;->j:I

    if-ge v1, v2, :cond_58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/a/a/d$b;->c:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Lb/a/a/d;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/a/a/d$b;->d:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Lb/a/a/d;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_58
    return-void
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


# virtual methods
.method final a()Lb/a/a/d$c;
    .registers 11

    iget-object v0, p0, Lb/a/a/d$b;->h:Lb/a/a/d;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    iget-object v0, p0, Lb/a/a/d$b;->h:Lb/a/a/d;

    iget v0, v0, Lb/a/a/d;->j:I

    new-array v0, v0, [Lc/y;

    iget-object v1, p0, Lb/a/a/d$b;->b:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [J

    const/4 v8, 0x0

    const/4 v1, 0x0

    :goto_1f
    :try_start_1f
    iget-object v2, p0, Lb/a/a/d$b;->h:Lb/a/a/d;

    iget v2, v2, Lb/a/a/d;->j:I

    if-ge v1, v2, :cond_36

    iget-object v2, p0, Lb/a/a/d$b;->h:Lb/a/a/d;

    iget-object v2, v2, Lb/a/a/d;->h:Lb/a/g/a;

    iget-object v3, p0, Lb/a/a/d$b;->c:[Ljava/io/File;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lb/a/g/a;->a(Ljava/io/File;)Lc/y;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_36
    new-instance v9, Lb/a/a/d$c;

    iget-object v2, p0, Lb/a/a/d$b;->h:Lb/a/a/d;

    iget-object v3, p0, Lb/a/a/d$b;->a:Ljava/lang/String;

    iget-wide v4, p0, Lb/a/a/d$b;->g:J

    move-object v1, v9

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lb/a/a/d$c;-><init>(Lb/a/a/d;Ljava/lang/String;J[Lc/y;[J)V
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_43} :catch_44

    return-object v9

    :catch_44
    :goto_44
    iget-object v1, p0, Lb/a/a/d$b;->h:Lb/a/a/d;

    iget v1, v1, Lb/a/a/d;->j:I

    if-ge v8, v1, :cond_56

    aget-object v1, v0, v8

    if-eqz v1, :cond_56

    aget-object v1, v0, v8

    invoke-static {v1}, Lb/a/c;->a(Ljava/io/Closeable;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_44

    :cond_56
    :try_start_56
    iget-object v0, p0, Lb/a/a/d$b;->h:Lb/a/a/d;

    invoke-virtual {v0, p0}, Lb/a/a/d;->a(Lb/a/a/d$b;)Z
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5b} :catch_5b

    :catch_5b
    const/4 v0, 0x0

    return-object v0
.end method

.method final a(Lc/d;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/a/d$b;->b:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_14

    aget-wide v3, v0, v2

    const/16 v5, 0x20

    invoke-interface {p1, v5}, Lc/d;->l(I)Lc/d;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lc/d;->n(J)Lc/d;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_14
    return-void
.end method

.method final a([Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    iget-object v1, p0, Lb/a/a/d$b;->h:Lb/a/a/d;

    iget v1, v1, Lb/a/a/d;->j:I

    if-eq v0, v1, :cond_c

    invoke-static {p1}, Lb/a/a/d$b;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_c
    const/4 v0, 0x0

    :goto_d
    :try_start_d
    array-length v1, p1

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Lb/a/a/d$b;->b:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_1a} :catch_1e

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1d
    return-void

    :catch_1e
    invoke-static {p1}, Lb/a/a/d$b;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method
