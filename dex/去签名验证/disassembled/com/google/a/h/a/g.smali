.class Lcom/google/a/h/a/g;
.super Ljava/lang/Object;


# static fields
.field private static final c:I = 0x5


# instance fields
.field final a:Lcom/google/a/h/a/c;

.field final b:[Lcom/google/a/h/a/d;


# direct methods
.method constructor <init>(Lcom/google/a/h/a/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/a/h/a/c;

    invoke-direct {v0, p1}, Lcom/google/a/h/a/c;-><init>(Lcom/google/a/h/a/c;)V

    iput-object v0, p0, Lcom/google/a/h/a/g;->a:Lcom/google/a/h/a/c;

    iget v0, p1, Lcom/google/a/h/a/c;->i:I

    iget p1, p1, Lcom/google/a/h/a/c;->h:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array p1, v0, [Lcom/google/a/h/a/d;

    iput-object p1, p0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    return-void
.end method

.method private a()Lcom/google/a/h/a/c;
    .registers 2

    iget-object v0, p0, Lcom/google/a/h/a/g;->a:Lcom/google/a/h/a/c;

    return-object v0
.end method

.method private b()[Lcom/google/a/h/a/d;
    .registers 2

    iget-object v0, p0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    return-object v0
.end method


# virtual methods
.method final a(I)Lcom/google/a/h/a/d;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/google/a/h/a/g;->c(I)Lcom/google/a/h/a/d;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    const/4 v0, 0x1

    :goto_8
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2d

    invoke-virtual {p0, p1}, Lcom/google/a/h/a/g;->b(I)I

    move-result v1

    sub-int/2addr v1, v0

    if-ltz v1, :cond_19

    iget-object v2, p0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    aget-object v1, v2, v1

    if-eqz v1, :cond_19

    return-object v1

    :cond_19
    invoke-virtual {p0, p1}, Lcom/google/a/h/a/g;->b(I)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    array-length v2, v2

    if-ge v1, v2, :cond_2a

    iget-object v2, p0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    aget-object v1, v2, v1

    if-eqz v1, :cond_2a

    return-object v1

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2d
    const/4 p1, 0x0

    return-object p1
.end method

.method final a(ILcom/google/a/h/a/d;)V
    .registers 4

    iget-object v0, p0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    invoke-virtual {p0, p1}, Lcom/google/a/h/a/g;->b(I)I

    move-result p1

    aput-object p2, v0, p1

    return-void
.end method

.method final b(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/a/h/a/g;->a:Lcom/google/a/h/a/c;

    iget v0, v0, Lcom/google/a/h/a/c;->h:I

    sub-int/2addr p1, v0

    return p1
.end method

.method final c(I)Lcom/google/a/h/a/d;
    .registers 3

    iget-object v0, p0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    invoke-virtual {p0, p1}, Lcom/google/a/h/a/g;->b(I)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 13

    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    iget-object v2, p0, Lcom/google/a/h/a/g;->b:[Lcom/google/a/h/a/d;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_c
    if-ge v5, v3, :cond_49

    aget-object v7, v2, v5

    const/4 v8, 0x1

    if-nez v7, :cond_24

    const-string v7, "%3d:    |   %n"

    new-array v8, v8, [Ljava/lang/Object;

    add-int/lit8 v9, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v4

    invoke-virtual {v0, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v6, v9

    goto :goto_46

    :cond_24
    const-string v9, "%3d: %3d|%3d%n"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    add-int/lit8 v11, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v4

    iget v6, v7, Lcom/google/a/h/a/d;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v8

    const/4 v6, 0x2

    iget v7, v7, Lcom/google/a/h/a/d;->d:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v6

    invoke-virtual {v0, v9, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v6, v11

    :goto_46
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_49
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_4d} :catch_53
    .catchall {:try_start_6 .. :try_end_4d} :catchall_51

    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    return-object v2

    :catchall_51
    move-exception v2

    goto :goto_55

    :catch_53
    move-exception v1

    :try_start_54
    throw v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_51

    :goto_55
    if-eqz v1, :cond_60

    :try_start_57
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_63

    :catch_5b
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_63

    :cond_60
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    :goto_63
    throw v2
.end method
