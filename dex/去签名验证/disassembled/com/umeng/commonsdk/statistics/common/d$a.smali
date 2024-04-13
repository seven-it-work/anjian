.class public Lcom/umeng/commonsdk/statistics/common/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/common/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private b:Ljava/io/File;

.field private c:Ljava/io/FilenameFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, ".um"

    invoke-direct {p0, p1, v0}, Lcom/umeng/commonsdk/statistics/common/d$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->a:I

    new-instance v0, Lcom/umeng/commonsdk/statistics/common/d$a$1;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/statistics/common/d$a$1;-><init>(Lcom/umeng/commonsdk/statistics/common/d$a;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->c:Ljava/io/FilenameFilter;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Ljava/io/File;

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_2e

    :cond_29
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    :cond_2e
    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/commonsdk/statistics/common/d$b;)V
    .registers 7

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->c:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    array-length v2, v0

    const/16 v3, 0xa

    if-lt v2, v3, :cond_20

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v2, v0

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_20

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_20
    if-eqz v0, :cond_47

    array-length v2, v0

    if-lez v2, :cond_47

    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Ljava/io/File;

    invoke-interface {p1, v2}, Lcom/umeng/commonsdk/statistics/common/d$b;->a(Ljava/io/File;)V

    array-length v2, v0

    :goto_2b
    if-ge v1, v2, :cond_42

    :try_start_2d
    aget-object v3, v0, v1

    invoke-interface {p1, v3}, Lcom/umeng/commonsdk/statistics/common/d$b;->b(Ljava/io/File;)Z

    move-result v3
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_33} :catch_3a
    .catchall {:try_start_2d .. :try_end_33} :catchall_38

    if-eqz v3, :cond_3f

    aget-object v3, v0, v1

    goto :goto_3c

    :catchall_38
    move-exception p1

    throw p1

    :catch_3a
    aget-object v3, v0, v1

    :goto_3c
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_42
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Ljava/io/File;

    invoke-interface {p1, v0}, Lcom/umeng/commonsdk/statistics/common/d$b;->c(Ljava/io/File;)V

    :cond_47
    return-void
.end method

.method public a([B)V
    .registers 8

    if-eqz p1, :cond_26

    array-length v0, p1

    if-nez v0, :cond_6

    return-void

    :cond_6
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "um_cache_%d.env"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_23
    invoke-static {v1, p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->writeFile(Ljava/io/File;[B)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_26

    :catch_26
    :cond_26
    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_d

    array-length v0, v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .registers 5

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->c:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_19

    array-length v1, v0

    if-lez v1, :cond_19

    array-length v1, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_19
    return-void
.end method

.method public c()I
    .registers 3

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->c:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_f

    array-length v1, v0

    if-lez v1, :cond_f

    array-length v0, v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method
