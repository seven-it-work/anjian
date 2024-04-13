.class public Lcom/umeng/commonsdk/statistics/idtracking/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/idtracking/g$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ImprintHandler"

.field private static b:Ljava/lang/Object; = null

.field private static final c:Ljava/lang/String; = ".imprint"

.field private static final d:[B

.field private static h:Lcom/umeng/commonsdk/statistics/idtracking/g;

.field private static i:Landroid/content/Context;


# instance fields
.field private e:Lcom/umeng/commonsdk/statistics/internal/d;

.field private f:Lcom/umeng/commonsdk/statistics/idtracking/g$a;

.field private g:Lcom/umeng/commonsdk/statistics/proto/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/idtracking/g;->b:Ljava/lang/Object;

    const-string v0, "pbl0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/idtracking/g;->d:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/umeng/commonsdk/statistics/idtracking/g$a;

    invoke-direct {v0}, Lcom/umeng/commonsdk/statistics/idtracking/g$a;-><init>()V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/g;->f:Lcom/umeng/commonsdk/statistics/idtracking/g$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/g;->g:Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/commonsdk/statistics/idtracking/g;->i:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/g;
    .registers 3

    const-class v0, Lcom/umeng/commonsdk/statistics/idtracking/g;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/g;->h:Lcom/umeng/commonsdk/statistics/idtracking/g;

    if-nez v1, :cond_11

    new-instance v1, Lcom/umeng/commonsdk/statistics/idtracking/g;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/statistics/idtracking/g;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/umeng/commonsdk/statistics/idtracking/g;->h:Lcom/umeng/commonsdk/statistics/idtracking/g;

    invoke-direct {v1}, Lcom/umeng/commonsdk/statistics/idtracking/g;->e()V

    :cond_11
    sget-object p0, Lcom/umeng/commonsdk/statistics/idtracking/g;->h:Lcom/umeng/commonsdk/statistics/idtracking/g;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Lcom/umeng/commonsdk/statistics/proto/d;Lcom/umeng/commonsdk/statistics/proto/d;)Lcom/umeng/commonsdk/statistics/proto/d;
    .registers 7

    if-nez p2, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->c()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/d;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/proto/e;->d()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_37
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/idtracking/g;->f:Lcom/umeng/commonsdk/statistics/idtracking/g$a;

    invoke-virtual {v3, v2}, Lcom/umeng/commonsdk/statistics/idtracking/g$a;->a(Ljava/lang/String;)V

    goto :goto_13

    :cond_46
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/d;->f()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/umeng/commonsdk/statistics/proto/d;->a(I)Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/idtracking/g;->a(Lcom/umeng/commonsdk/statistics/proto/d;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/umeng/commonsdk/statistics/proto/d;->a(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/d;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-nez p1, :cond_8

    if-eqz p2, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    const/4 p1, 0x1

    return p1

    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private c(Lcom/umeng/commonsdk/statistics/proto/d;)Z
    .registers 8

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/idtracking/g;->a(Lcom/umeng/commonsdk/statistics/proto/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    :cond_10
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->c()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/proto/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->reverseHexString(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/g;->a(Lcom/umeng/commonsdk/statistics/proto/e;)[B

    move-result-object v0

    const/4 v3, 0x0

    :goto_35
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1c

    aget-byte v4, v2, v3

    aget-byte v5, v0, v3

    if-eq v4, v5, :cond_3f

    return v1

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_42
    const/4 p1, 0x1

    return p1
.end method

.method private d(Lcom/umeng/commonsdk/statistics/proto/d;)Lcom/umeng/commonsdk/statistics/proto/d;
    .registers 7

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->c()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/proto/e;->d()Z

    move-result v4

    if-nez v4, :cond_17

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_37
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    :cond_4b
    return-object p1
.end method

.method private e()V
    .registers 6

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/g;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".imprint"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/g;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_18

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_5b

    return-void

    :cond_18
    const/4 v0, 0x0

    :try_start_19
    sget-object v2, Lcom/umeng/commonsdk/statistics/idtracking/g;->i:Landroid/content/Context;

    const-string v3, ".imprint"

    invoke-virtual {v2, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_21} :catch_2e
    .catchall {:try_start_19 .. :try_end_21} :catchall_2c

    :try_start_21
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->readStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v3
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_25} :catch_2a
    .catchall {:try_start_21 .. :try_end_25} :catchall_53

    :try_start_25
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_5b

    move-object v0, v3

    goto :goto_36

    :catch_2a
    move-exception v3

    goto :goto_30

    :catchall_2c
    move-exception v2

    goto :goto_57

    :catch_2e
    move-exception v3

    move-object v2, v0

    :goto_30
    :try_start_30
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_53

    :try_start_33
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_5b

    :goto_36
    if-eqz v0, :cond_51

    :try_start_38
    new-instance v2, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-direct {v2}, Lcom/umeng/commonsdk/statistics/proto/d;-><init>()V

    new-instance v3, Lcom/umeng/commonsdk/proguard/ad;

    invoke-direct {v3}, Lcom/umeng/commonsdk/proguard/ad;-><init>()V

    invoke-virtual {v3, v2, v0}, Lcom/umeng/commonsdk/proguard/ad;->a(Lcom/umeng/commonsdk/proguard/aa;[B)V

    iput-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/g;->g:Lcom/umeng/commonsdk/statistics/proto/d;

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/g;->f:Lcom/umeng/commonsdk/statistics/idtracking/g$a;

    invoke-virtual {v0, v2}, Lcom/umeng/commonsdk/statistics/idtracking/g$a;->a(Lcom/umeng/commonsdk/statistics/proto/d;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_4c} :catch_4d
    .catchall {:try_start_38 .. :try_end_4c} :catchall_5b

    goto :goto_51

    :catch_4d
    move-exception v0

    :try_start_4e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_51
    :goto_51
    monitor-exit v1

    return-void

    :catchall_53
    move-exception v0

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    :goto_57
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V

    throw v2

    :catchall_5b
    move-exception v0

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_4e .. :try_end_5d} :catchall_5b

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()Lcom/umeng/commonsdk/statistics/proto/d;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/g;->g:Lcom/umeng/commonsdk/statistics/proto/d;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/umeng/commonsdk/statistics/proto/d;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->c()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/proto/e;->d()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/proto/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_44
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/proto/e;->e()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/proto/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_5f
    iget p1, p1, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/umeng/commonsdk/statistics/internal/d;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/g;->e:Lcom/umeng/commonsdk/statistics/internal/d;

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/statistics/proto/e;)[B
    .registers 8

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/e;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/g;->d:[B

    const/4 v1, 0x4

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v1, :cond_28

    aget-byte v4, p1, v3

    aget-byte v5, v0, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_28
    return-object v2
.end method

.method public b()Lcom/umeng/commonsdk/statistics/idtracking/g$a;
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/g;->f:Lcom/umeng/commonsdk/statistics/idtracking/g$a;

    return-object v0
.end method

.method public b(Lcom/umeng/commonsdk/statistics/proto/d;)V
    .registers 5

    if-nez p1, :cond_c

    sget-boolean p1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz p1, :cond_b

    const-string p1, "Imprint is null"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    :cond_b
    return-void

    :cond_c
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/idtracking/g;->c(Lcom/umeng/commonsdk/statistics/proto/d;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-boolean p1, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz p1, :cond_1b

    const-string p1, "Imprint is not valid"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    :cond_1b
    return-void

    :cond_1c
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v0, :cond_25

    const-string v0, "Imprint is ok"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    :cond_25
    monitor-enter p0

    :try_start_26
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/g;->g:Lcom/umeng/commonsdk/statistics/proto/d;

    const/4 v1, 0x0

    if-nez v0, :cond_2d

    move-object v2, v1

    goto :goto_31

    :cond_2d
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/proto/d;->i()Ljava/lang/String;

    move-result-object v2

    :goto_31
    if-nez v0, :cond_38

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/idtracking/g;->d(Lcom/umeng/commonsdk/statistics/proto/d;)Lcom/umeng/commonsdk/statistics/proto/d;

    move-result-object p1

    goto :goto_3c

    :cond_38
    invoke-direct {p0, v0, p1}, Lcom/umeng/commonsdk/statistics/idtracking/g;->a(Lcom/umeng/commonsdk/statistics/proto/d;Lcom/umeng/commonsdk/statistics/proto/d;)Lcom/umeng/commonsdk/statistics/proto/d;

    move-result-object p1

    :goto_3c
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/g;->g:Lcom/umeng/commonsdk/statistics/proto/d;

    if-nez p1, :cond_41

    goto :goto_45

    :cond_41
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->i()Ljava/lang/String;

    move-result-object v1

    :goto_45
    invoke-direct {p0, v2, v1}, Lcom/umeng/commonsdk/statistics/idtracking/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_26 .. :try_end_4c} :catchall_67

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/g;->g:Lcom/umeng/commonsdk/statistics/proto/d;

    if-eqz v0, :cond_66

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz p1, :cond_66

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/g;->f:Lcom/umeng/commonsdk/statistics/idtracking/g$a;

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/g;->g:Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/statistics/idtracking/g$a;->a(Lcom/umeng/commonsdk/statistics/proto/d;)V

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/g;->e:Lcom/umeng/commonsdk/statistics/internal/d;

    if-eqz p1, :cond_66

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/g;->e:Lcom/umeng/commonsdk/statistics/internal/d;

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/g;->f:Lcom/umeng/commonsdk/statistics/idtracking/g$a;

    invoke-interface {p1, v0}, Lcom/umeng/commonsdk/statistics/internal/d;->onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/g$a;)V

    :cond_66
    return-void

    :catchall_67
    move-exception p1

    :try_start_68
    monitor-exit p0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw p1
.end method

.method public c()V
    .registers 7

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/g;->g:Lcom/umeng/commonsdk/statistics/proto/d;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/g;->b:Ljava/lang/Object;

    monitor-enter v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_38

    :try_start_8
    new-instance v1, Lcom/umeng/commonsdk/proguard/aj;

    invoke-direct {v1}, Lcom/umeng/commonsdk/proguard/aj;-><init>()V

    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/g;->g:Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {v1, v2}, Lcom/umeng/commonsdk/proguard/aj;->a(Lcom/umeng/commonsdk/proguard/aa;)[B

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/umeng/commonsdk/statistics/idtracking/g;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, ".imprint"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_35

    :try_start_25
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_30

    :try_start_2b
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/OutputStream;)V

    monitor-exit v0

    return-void

    :catchall_30
    move-exception v1

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/OutputStream;)V

    throw v1

    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_35

    :try_start_37
    throw v1
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_38} :catch_38

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public d()Z
    .registers 4

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/g;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".imprint"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method
