.class public final Lb/a/i/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "publicsuffixes.gz"

.field private static final b:[B

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:B = 0x21t

.field private static final f:Lb/a/i/a;


# instance fields
.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final h:Ljava/util/concurrent/CountDownLatch;

.field private i:[B

.field private j:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    sput-object v0, Lb/a/i/a;->b:[B

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lb/a/i/a;->c:[Ljava/lang/String;

    const-string v0, "*"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/a/i/a;->d:[Ljava/lang/String;

    new-instance v0, Lb/a/i/a;

    invoke-direct {v0}, Lb/a/i/a;-><init>()V

    sput-object v0, Lb/a/i/a;->f:Lb/a/i/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lb/a/i/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lb/a/i/a;->h:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static a()Lb/a/i/a;
    .registers 1

    sget-object v0, Lb/a/i/a;->f:Lb/a/i/a;

    return-object v0
.end method

.method private static a([B[[BI)Ljava/lang/String;
    .registers 16

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v0

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_7c

    add-int v3, v0, v2

    div-int/lit8 v3, v3, 0x2

    :goto_a
    const/16 v4, 0xa

    if-ltz v3, :cond_15

    aget-byte v5, p0, v3

    if-eq v5, v4, :cond_15

    add-int/lit8 v3, v3, -0x1

    goto :goto_a

    :cond_15
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_19
    add-int v7, v3, v6

    aget-byte v8, p0, v7

    if-eq v8, v4, :cond_22

    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_22
    sub-int v4, v7, v3

    move v8, p2

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_28
    :goto_28
    if-eqz v6, :cond_30

    const/16 v6, 0x2e

    const/4 v6, 0x0

    const/16 v11, 0x2e

    goto :goto_36

    :cond_30
    aget-object v11, p1, v8

    aget-byte v11, v11, v9

    and-int/lit16 v11, v11, 0xff

    :goto_36
    add-int v12, v3, v10

    aget-byte v12, p0, v12

    and-int/lit16 v12, v12, 0xff

    sub-int/2addr v11, v12

    if-nez v11, :cond_54

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    if-eq v10, v4, :cond_54

    aget-object v12, p1, v8

    array-length v12, v12

    if-ne v12, v9, :cond_28

    array-length v6, p1

    sub-int/2addr v6, v5

    if-eq v8, v6, :cond_54

    add-int/lit8 v8, v8, 0x1

    const/4 v6, -0x1

    const/4 v6, 0x1

    const/4 v9, -0x1

    goto :goto_28

    :cond_54
    if-gez v11, :cond_59

    :goto_56
    add-int/lit8 v2, v3, -0x1

    goto :goto_4

    :cond_59
    if-lez v11, :cond_5e

    :goto_5b
    add-int/lit8 v0, v7, 0x1

    goto :goto_4

    :cond_5e
    sub-int v5, v4, v10

    aget-object v6, p1, v8

    array-length v6, v6

    sub-int/2addr v6, v9

    :goto_64
    add-int/lit8 v8, v8, 0x1

    array-length v9, p1

    if-ge v8, v9, :cond_6e

    aget-object v9, p1, v8

    array-length v9, v9

    add-int/2addr v6, v9

    goto :goto_64

    :cond_6e
    if-ge v6, v5, :cond_71

    goto :goto_56

    :cond_71
    if-le v6, v5, :cond_74

    goto :goto_5b

    :cond_74
    new-instance p1, Ljava/lang/String;

    sget-object p2, Lb/a/c;->e:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v3, v4, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p1

    :cond_7c
    const/4 p1, 0x0

    return-object p1
.end method

.method private a([B[B)V
    .registers 3

    iput-object p1, p0, Lb/a/i/a;->i:[B

    iput-object p2, p0, Lb/a/i/a;->j:[B

    iget-object p1, p0, Lb/a/i/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lb/a/i/a;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private a([Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Lb/a/i/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_6a

    iget-object v0, p0, Lb/a/i/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6a

    const-class v0, Lb/a/i/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v4, "publicsuffixes.gz"

    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_59

    new-instance v4, Lc/l;

    invoke-static {v0}, Lc/p;->a(Ljava/io/InputStream;)Lc/y;

    move-result-object v0

    invoke-direct {v4, v0}, Lc/l;-><init>(Lc/y;)V

    invoke-static {v4}, Lc/p;->a(Lc/y;)Lc/e;

    move-result-object v0

    :try_start_2e
    invoke-interface {v0}, Lc/e;->i()I

    move-result v4

    new-array v4, v4, [B

    invoke-interface {v0, v4}, Lc/e;->b([B)V

    invoke-interface {v0}, Lc/e;->i()I

    move-result v5

    new-array v5, v5, [B

    invoke-interface {v0, v5}, Lc/e;->b([B)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_40} :catch_46
    .catchall {:try_start_2e .. :try_end_40} :catchall_44

    invoke-static {v0}, Lb/a/c;->a(Ljava/io/Closeable;)V

    goto :goto_5b

    :catchall_44
    move-exception p1

    goto :goto_55

    :catch_46
    move-exception v4

    :try_start_47
    invoke-static {}, Lb/a/h/e;->b()Lb/a/h/e;

    move-result-object v5

    const/4 v6, 0x5

    const-string v7, "Failed to read public suffix list"

    invoke-virtual {v5, v6, v7, v4}, Lb/a/h/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_44

    invoke-static {v0}, Lb/a/c;->a(Ljava/io/Closeable;)V

    goto :goto_59

    :goto_55
    invoke-static {v0}, Lb/a/c;->a(Ljava/io/Closeable;)V

    throw p1

    :cond_59
    :goto_59
    move-object v4, v2

    move-object v5, v4

    :goto_5b
    monitor-enter p0

    :try_start_5c
    iput-object v4, p0, Lb/a/i/a;->i:[B

    iput-object v5, p0, Lb/a/i/a;->j:[B

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_67

    iget-object v0, p0, Lb/a/i/a;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_6f

    :catchall_67
    move-exception p1

    :try_start_68
    monitor-exit p0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw p1

    :cond_6a
    :try_start_6a
    iget-object v0, p0, Lb/a/i/a;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_6f
    .catch Ljava/lang/InterruptedException; {:try_start_6a .. :try_end_6f} :catch_6f

    :catch_6f
    :goto_6f
    monitor-enter p0

    :try_start_70
    iget-object v0, p0, Lb/a/i/a;->i:[B

    if-nez v0, :cond_7c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7c
    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_70 .. :try_end_7d} :catchall_10e

    array-length v0, p1

    new-array v0, v0, [[B

    const/4 v4, 0x0

    :goto_81
    array-length v5, p1

    if-ge v4, v5, :cond_91

    aget-object v5, p1, v4

    sget-object v6, Lb/a/c;->e:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    aput-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_81

    :cond_91
    const/4 p1, 0x0

    :goto_92
    array-length v4, v0

    if-ge p1, v4, :cond_a1

    iget-object v4, p0, Lb/a/i/a;->i:[B

    invoke-static {v4, v0, p1}, Lb/a/i/a;->a([B[[BI)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9e

    goto :goto_a2

    :cond_9e
    add-int/lit8 p1, p1, 0x1

    goto :goto_92

    :cond_a1
    move-object v4, v2

    :goto_a2
    array-length p1, v0

    if-le p1, v3, :cond_c0

    invoke-virtual {v0}, [[B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    const/4 v5, 0x0

    :goto_ac
    array-length v6, p1

    sub-int/2addr v6, v3

    if-ge v5, v6, :cond_c0

    sget-object v6, Lb/a/i/a;->b:[B

    aput-object v6, p1, v5

    iget-object v6, p0, Lb/a/i/a;->i:[B

    invoke-static {v6, p1, v5}, Lb/a/i/a;->a([B[[BI)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_bd

    goto :goto_c1

    :cond_bd
    add-int/lit8 v5, v5, 0x1

    goto :goto_ac

    :cond_c0
    move-object v6, v2

    :goto_c1
    if-eqz v6, :cond_d3

    :goto_c3
    array-length p1, v0

    sub-int/2addr p1, v3

    if-ge v1, p1, :cond_d3

    iget-object p1, p0, Lb/a/i/a;->j:[B

    invoke-static {p1, v0, v1}, Lb/a/i/a;->a([B[[BI)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d0

    goto :goto_d4

    :cond_d0
    add-int/lit8 v1, v1, 0x1

    goto :goto_c3

    :cond_d3
    move-object p1, v2

    :goto_d4
    if-eqz p1, :cond_eb

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_eb
    if-nez v4, :cond_f2

    if-nez v6, :cond_f2

    sget-object p1, Lb/a/i/a;->d:[Ljava/lang/String;

    return-object p1

    :cond_f2
    if-eqz v4, :cond_fb

    const-string p1, "\\."

    invoke-virtual {v4, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_fd

    :cond_fb
    sget-object p1, Lb/a/i/a;->c:[Ljava/lang/String;

    :goto_fd
    if-eqz v6, :cond_106

    const-string v0, "\\."

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_108

    :cond_106
    sget-object v0, Lb/a/i/a;->c:[Ljava/lang/String;

    :goto_108
    array-length v1, p1

    array-length v2, v0

    if-le v1, v2, :cond_10d

    return-object p1

    :cond_10d
    return-object v0

    :catchall_10e
    move-exception p1

    :try_start_10f
    monitor-exit p0
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_10e

    throw p1
.end method

.method private b()V
    .registers 7

    const-class v0, Lb/a/i/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "publicsuffixes.gz"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    new-instance v2, Lc/l;

    invoke-static {v0}, Lc/p;->a(Ljava/io/InputStream;)Lc/y;

    move-result-object v0

    invoke-direct {v2, v0}, Lc/l;-><init>(Lc/y;)V

    invoke-static {v2}, Lc/p;->a(Lc/y;)Lc/e;

    move-result-object v0

    :try_start_1c
    invoke-interface {v0}, Lc/e;->i()I

    move-result v2

    new-array v2, v2, [B

    invoke-interface {v0, v2}, Lc/e;->b([B)V

    invoke-interface {v0}, Lc/e;->i()I

    move-result v3

    new-array v3, v3, [B

    invoke-interface {v0, v3}, Lc/e;->b([B)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2e} :catch_35
    .catchall {:try_start_1c .. :try_end_2e} :catchall_33

    invoke-static {v0}, Lb/a/c;->a(Ljava/io/Closeable;)V

    move-object v1, v2

    goto :goto_49

    :catchall_33
    move-exception v1

    goto :goto_44

    :catch_35
    move-exception v2

    :try_start_36
    invoke-static {}, Lb/a/h/e;->b()Lb/a/h/e;

    move-result-object v3

    const/4 v4, 0x5

    const-string v5, "Failed to read public suffix list"

    invoke-virtual {v3, v4, v5, v2}, Lb/a/h/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_33

    invoke-static {v0}, Lb/a/c;->a(Ljava/io/Closeable;)V

    goto :goto_48

    :goto_44
    invoke-static {v0}, Lb/a/c;->a(Ljava/io/Closeable;)V

    throw v1

    :cond_48
    :goto_48
    move-object v3, v1

    :goto_49
    monitor-enter p0

    :try_start_4a
    iput-object v1, p0, Lb/a/i/a;->i:[B

    iput-object v3, p0, Lb/a/i/a;->j:[B

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_55

    iget-object v0, p0, Lb/a/i/a;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_55
    move-exception v0

    :try_start_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "domain == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/a/i/a;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v0

    array-length v3, v1

    const/16 v4, 0x21

    const/4 v5, 0x0

    if-ne v2, v3, :cond_29

    aget-object v2, v1, v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_29

    const/4 p1, 0x0

    return-object p1

    :cond_29
    aget-object v2, v1, v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_35

    array-length v0, v0

    array-length v1, v1

    :goto_33
    sub-int/2addr v0, v1

    goto :goto_3a

    :cond_35
    array-length v0, v0

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :goto_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_45
    array-length v2, p1

    if-ge v0, v2, :cond_55

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
