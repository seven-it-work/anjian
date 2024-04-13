.class public final Lcom/bumptech/glide/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/b/a$a;,
        Lcom/bumptech/glide/b/a$c;,
        Lcom/bumptech/glide/b/a$b;,
        Lcom/bumptech/glide/b/a$d;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "journal"

.field static final b:Ljava/lang/String; = "journal.tmp"

.field static final c:Ljava/lang/String; = "journal.bkp"

.field static final d:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field static final e:Ljava/lang/String; = "1"

.field static final f:J = -0x1L

.field private static final h:Ljava/lang/String; = "CLEAN"

.field private static final i:Ljava/lang/String; = "DIRTY"

.field private static final j:Ljava/lang/String; = "REMOVE"

.field private static final k:Ljava/lang/String; = "READ"


# instance fields
.field final g:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final l:Ljava/io/File;

.field private final m:Ljava/io/File;

.field private final n:Ljava/io/File;

.field private final o:Ljava/io/File;

.field private final p:I

.field private q:J

.field private final r:I

.field private s:J

.field private t:Ljava/io/Writer;

.field private final u:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/b/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private v:I

.field private w:J

.field private final x:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/io/File;J)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/bumptech/glide/b/a;->s:J

    new-instance v4, Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f400000    # 0.75f

    invoke-direct {v4, v5, v7, v6}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    iput-wide v2, v0, Lcom/bumptech/glide/b/a;->w:J

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v15, Lcom/bumptech/glide/b/a$a;

    invoke-direct {v15, v5}, Lcom/bumptech/glide/b/a$a;-><init>(B)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v2, v0, Lcom/bumptech/glide/b/a;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/bumptech/glide/b/a$1;

    invoke-direct {v2, v0}, Lcom/bumptech/glide/b/a$1;-><init>(Lcom/bumptech/glide/b/a;)V

    iput-object v2, v0, Lcom/bumptech/glide/b/a;->x:Ljava/util/concurrent/Callable;

    iput-object v1, v0, Lcom/bumptech/glide/b/a;->l:Ljava/io/File;

    iput v6, v0, Lcom/bumptech/glide/b/a;->p:I

    new-instance v2, Ljava/io/File;

    const-string v3, "journal"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/bumptech/glide/b/a;->m:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, "journal.tmp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/bumptech/glide/b/a;->n:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, "journal.bkp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/bumptech/glide/b/a;->o:Ljava/io/File;

    iput v6, v0, Lcom/bumptech/glide/b/a;->r:I

    move-wide/from16 v1, p2

    iput-wide v1, v0, Lcom/bumptech/glide/b/a;->q:J

    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/b/a;Ljava/lang/String;J)Lcom/bumptech/glide/b/a$b;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/b/a;->a(Ljava/lang/String;J)Lcom/bumptech/glide/b/a$b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/File;J)Lcom/bumptech/glide/b/a;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_e

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_30

    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_30

    :cond_2c
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/b/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    :cond_30
    :goto_30
    new-instance v0, Lcom/bumptech/glide/b/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/b/a;-><init>(Ljava/io/File;J)V

    iget-object v1, v0, Lcom/bumptech/glide/b/a;->m:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6c

    :try_start_3d
    invoke-direct {v0}, Lcom/bumptech/glide/b/a;->b()V

    invoke-direct {v0}, Lcom/bumptech/glide/b/a;->c()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_43} :catch_44

    return-object v0

    :catch_44
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DiskLruCache "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", removing"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/b/a;->a()V

    :cond_6c
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Lcom/bumptech/glide/b/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/b/a;-><init>(Ljava/io/File;J)V

    invoke-direct {v0}, Lcom/bumptech/glide/b/a;->d()V

    return-object v0
.end method

.method static synthetic a(Lcom/bumptech/glide/b/a;)Ljava/io/Writer;
    .registers 1

    iget-object p0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    return-object p0
.end method

.method static synthetic a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/bumptech/glide/b/c;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/bumptech/glide/b/c;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(J)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/bumptech/glide/b/a;->q:J

    iget-object p1, p0, Lcom/bumptech/glide/b/a;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcom/bumptech/glide/b/a;->x:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Lcom/bumptech/glide/b/a$b;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p1, Lcom/bumptech/glide/b/a$b;->a:Lcom/bumptech/glide/b/a$c;

    iget-object v1, v0, Lcom/bumptech/glide/b/a$c;->f:Lcom/bumptech/glide/b/a$b;

    if-eq v1, p1, :cond_d

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_d
    const/4 v1, 0x0

    if-eqz p2, :cond_48

    iget-boolean v2, v0, Lcom/bumptech/glide/b/a$c;->e:Z

    if-nez v2, :cond_48

    const/4 v2, 0x0

    :goto_15
    iget v3, p0, Lcom/bumptech/glide/b/a;->r:I

    if-ge v2, v3, :cond_48

    iget-object v3, p1, Lcom/bumptech/glide/b/a$b;->b:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_36

    invoke-virtual {p1}, Lcom/bumptech/glide/b/a$b;->a()V

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    iget-object v3, v0, Lcom/bumptech/glide/b/a$c;->d:[Ljava/io/File;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_45

    invoke-virtual {p1}, Lcom/bumptech/glide/b/a$b;->a()V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_f8

    monitor-exit p0

    return-void

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_48
    :goto_48
    :try_start_48
    iget p1, p0, Lcom/bumptech/glide/b/a;->r:I

    if-ge v1, p1, :cond_7b

    iget-object p1, v0, Lcom/bumptech/glide/b/a$c;->d:[Ljava/io/File;

    aget-object p1, p1, v1

    if-eqz p2, :cond_75

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_78

    iget-object v2, v0, Lcom/bumptech/glide/b/a$c;->c:[Ljava/io/File;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-object p1, v0, Lcom/bumptech/glide/b/a$c;->b:[J

    aget-wide v3, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    iget-object p1, v0, Lcom/bumptech/glide/b/a$c;->b:[J

    aput-wide v5, p1, v1

    iget-wide v7, p0, Lcom/bumptech/glide/b/a;->s:J

    const/4 p1, 0x0

    sub-long v9, v7, v3

    add-long v2, v9, v5

    iput-wide v2, p0, Lcom/bumptech/glide/b/a;->s:J

    goto :goto_78

    :cond_75
    invoke-static {p1}, Lcom/bumptech/glide/b/a;->a(Ljava/io/File;)V

    :cond_78
    :goto_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    :cond_7b
    iget p1, p0, Lcom/bumptech/glide/b/a;->v:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/bumptech/glide/b/a;->v:I

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/bumptech/glide/b/a$c;->f:Lcom/bumptech/glide/b/a$b;

    iget-boolean p1, v0, Lcom/bumptech/glide/b/a$c;->e:Z

    or-int/2addr p1, p2

    const/16 v2, 0xa

    const/16 v3, 0x20

    if-eqz p1, :cond_bd

    iput-boolean v1, v0, Lcom/bumptech/glide/b/a$c;->e:Z

    iget-object p1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    const-string v1, "CLEAN"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-virtual {p1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object p1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    iget-object v1, v0, Lcom/bumptech/glide/b/a$c;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-virtual {v0}, Lcom/bumptech/glide/b/a$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-virtual {p1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    if-eqz p2, :cond_dc

    iget-wide p1, p0, Lcom/bumptech/glide/b/a;->w:J

    const-wide/16 v1, 0x1

    add-long v3, p1, v1

    iput-wide v3, p0, Lcom/bumptech/glide/b/a;->w:J

    iput-wide p1, v0, Lcom/bumptech/glide/b/a$c;->g:J

    goto :goto_dc

    :cond_bd
    iget-object p1, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    iget-object p2, v0, Lcom/bumptech/glide/b/a$c;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    const-string p2, "REMOVE"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-virtual {p1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object p1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    iget-object p2, v0, Lcom/bumptech/glide/b/a$c;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-virtual {p1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    :cond_dc
    :goto_dc
    iget-object p1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    iget-wide p1, p0, Lcom/bumptech/glide/b/a;->s:J

    iget-wide v0, p0, Lcom/bumptech/glide/b/a;->q:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_ef

    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->h()Z

    move-result p1

    if-eqz p1, :cond_f6

    :cond_ef
    iget-object p1, p0, Lcom/bumptech/glide/b/a;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcom/bumptech/glide/b/a;->x:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_f6
    .catchall {:try_start_48 .. :try_end_f6} :catchall_f8

    :cond_f6
    monitor-exit p0

    return-void

    :catchall_f8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic a(Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/b/a$b;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/b/a;->a(Lcom/bumptech/glide/b/a$b;Z)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_12

    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_12
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_5

    invoke-static {p1}, Lcom/bumptech/glide/b/a;->a(Ljava/io/File;)V

    :cond_5
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_11

    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_11
    return-void
.end method

.method private static b(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/bumptech/glide/b/c;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/bumptech/glide/b/c;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/b/b;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/bumptech/glide/b/a;->m:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Lcom/bumptech/glide/b/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/b/b;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    :try_start_e
    invoke-virtual {v0}, Lcom/bumptech/glide/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bumptech/glide/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bumptech/glide/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bumptech/glide/b/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bumptech/glide/b/b;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_136

    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_136

    iget v6, p0, Lcom/bumptech/glide/b/a;->p:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_136

    iget v3, p0, Lcom/bumptech/glide/b/a;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_136

    const-string v3, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_50
    .catchall {:try_start_e .. :try_end_50} :catchall_167

    if-nez v3, :cond_54

    goto/16 :goto_136

    :cond_54
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_56
    const/4 v3, 0x1

    const/4 v4, -0x1

    :try_start_58
    invoke-virtual {v0}, Lcom/bumptech/glide/b/b;->a()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v4, :cond_78

    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unexpected journal line: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_78
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-ne v6, v4, :cond_95

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    if-ne v7, v9, :cond_99

    const-string v9, "REMOVE"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_99

    iget-object v5, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v8}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f1

    :cond_95
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    :cond_99
    iget-object v9, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bumptech/glide/b/a$c;

    if-nez v9, :cond_ad

    new-instance v9, Lcom/bumptech/glide/b/a$c;

    invoke-direct {v9, p0, v8, v1}, Lcom/bumptech/glide/b/a$c;-><init>(Lcom/bumptech/glide/b/a;Ljava/lang/String;B)V

    iget-object v10, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ad
    const/4 v8, 0x5

    if-eq v6, v4, :cond_cf

    if-ne v7, v8, :cond_cf

    const-string v10, "CLEAN"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_cf

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-boolean v3, v9, Lcom/bumptech/glide/b/a$c;->e:Z

    const/4 v6, 0x0

    iput-object v6, v9, Lcom/bumptech/glide/b/a$c;->f:Lcom/bumptech/glide/b/a$b;

    invoke-virtual {v9, v5}, Lcom/bumptech/glide/b/a$c;->a([Ljava/lang/String;)V

    goto :goto_f1

    :cond_cf
    if-ne v6, v4, :cond_e3

    if-ne v7, v8, :cond_e3

    const-string v8, "DIRTY"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e3

    new-instance v5, Lcom/bumptech/glide/b/a$b;

    invoke-direct {v5, p0, v9, v1}, Lcom/bumptech/glide/b/a$b;-><init>(Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/b/a$c;B)V

    iput-object v5, v9, Lcom/bumptech/glide/b/a$c;->f:Lcom/bumptech/glide/b/a$b;

    goto :goto_f1

    :cond_e3
    if-ne v6, v4, :cond_f5

    const/4 v6, 0x4

    if-ne v7, v6, :cond_f5

    const-string v6, "READ"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f1

    goto :goto_f5

    :cond_f1
    :goto_f1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_56

    :cond_f5
    :goto_f5
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unexpected journal line: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_109
    .catch Ljava/io/EOFException; {:try_start_58 .. :try_end_109} :catch_109
    .catchall {:try_start_58 .. :try_end_109} :catchall_167

    :catch_109
    :try_start_109
    iget-object v5, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/bumptech/glide/b/a;->v:I

    iget v2, v0, Lcom/bumptech/glide/b/b;->b:I

    if-ne v2, v4, :cond_117

    const/4 v1, 0x1

    :cond_117
    if-eqz v1, :cond_11d

    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->d()V

    goto :goto_132

    :cond_11d
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/bumptech/glide/b/a;->m:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lcom/bumptech/glide/b/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;
    :try_end_132
    .catchall {:try_start_109 .. :try_end_132} :catchall_167

    :goto_132
    invoke-static {v0}, Lcom/bumptech/glide/b/c;->a(Ljava/io/Closeable;)V

    return-void

    :cond_136
    :goto_136
    :try_start_136
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unexpected journal header: ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_167
    .catchall {:try_start_136 .. :try_end_167} :catchall_167

    :catchall_167
    move-exception v1

    invoke-static {v0}, Lcom/bumptech/glide/b/c;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method static synthetic b(Lcom/bumptech/glide/b/a;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->l()V

    return-void
.end method

.method private c()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/b/a;->n:Ljava/io/File;

    invoke-static {v0}, Lcom/bumptech/glide/b/a;->a(Ljava/io/File;)V

    iget-object v0, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/b/a$c;

    iget-object v2, v1, Lcom/bumptech/glide/b/a$c;->f:Lcom/bumptech/glide/b/a$b;

    const/4 v3, 0x0

    if-nez v2, :cond_31

    :goto_20
    iget v2, p0, Lcom/bumptech/glide/b/a;->r:I

    if-ge v3, v2, :cond_f

    iget-wide v4, p0, Lcom/bumptech/glide/b/a;->s:J

    iget-object v2, v1, Lcom/bumptech/glide/b/a$c;->b:[J

    aget-wide v6, v2, v3

    add-long v8, v4, v6

    iput-wide v8, p0, Lcom/bumptech/glide/b/a;->s:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_31
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/b/a$c;->f:Lcom/bumptech/glide/b/a$b;

    :goto_34
    iget v2, p0, Lcom/bumptech/glide/b/a;->r:I

    if-ge v3, v2, :cond_49

    iget-object v2, v1, Lcom/bumptech/glide/b/a$c;->c:[Ljava/io/File;

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/bumptech/glide/b/a;->a(Ljava/io/File;)V

    iget-object v2, v1, Lcom/bumptech/glide/b/a$c;->d:[Ljava/io/File;

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/bumptech/glide/b/a;->a(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_49
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    :cond_4d
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1d

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v2, :cond_3a

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    if-ne v1, v4, :cond_3e

    const-string v4, "REMOVE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    iget-object p1, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3a
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_3e
    iget-object v4, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/b/a$c;

    const/4 v5, 0x0

    if-nez v4, :cond_53

    new-instance v4, Lcom/bumptech/glide/b/a$c;

    invoke-direct {v4, p0, v3, v5}, Lcom/bumptech/glide/b/a$c;-><init>(Lcom/bumptech/glide/b/a;Ljava/lang/String;B)V

    iget-object v6, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_53
    const/4 v3, 0x5

    if-eq v0, v2, :cond_75

    if-ne v1, v3, :cond_75

    const-string v6, "CLEAN"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_75

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-boolean v1, v4, Lcom/bumptech/glide/b/a$c;->e:Z

    const/4 v0, 0x0

    iput-object v0, v4, Lcom/bumptech/glide/b/a$c;->f:Lcom/bumptech/glide/b/a$b;

    invoke-virtual {v4, p1}, Lcom/bumptech/glide/b/a$c;->a([Ljava/lang/String;)V

    return-void

    :cond_75
    if-ne v0, v2, :cond_89

    if-ne v1, v3, :cond_89

    const-string v3, "DIRTY"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_89

    new-instance p1, Lcom/bumptech/glide/b/a$b;

    invoke-direct {p1, p0, v4, v5}, Lcom/bumptech/glide/b/a$b;-><init>(Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/b/a$c;B)V

    iput-object p1, v4, Lcom/bumptech/glide/b/a$c;->f:Lcom/bumptech/glide/b/a$b;

    return-void

    :cond_89
    if-ne v0, v2, :cond_98

    const/4 v0, 0x4

    if-ne v1, v0, :cond_98

    const-string v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_97

    goto :goto_98

    :cond_97
    return-void

    :cond_98
    :goto_98
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic c(Lcom/bumptech/glide/b/a;)Z
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->h()Z

    move-result p0

    return p0
.end method

.method private d(Ljava/lang/String;)Lcom/bumptech/glide/b/a$b;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/bumptech/glide/b/a;->a(Ljava/lang/String;J)Lcom/bumptech/glide/b/a$b;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized d()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    :cond_a
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/bumptech/glide/b/a;->n:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/bumptech/glide/b/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_dc

    :try_start_1d
    const-string v1, "libcore.io.DiskLruCache"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v1, p0, Lcom/bumptech/glide/b/a;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v1, p0, Lcom/bumptech/glide/b/a;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/b/a$c;

    iget-object v3, v2, Lcom/bumptech/glide/b/a$c;->f:Lcom/bumptech/glide/b/a$b;

    const/16 v4, 0xa

    if-eqz v3, :cond_85

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "DIRTY "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/bumptech/glide/b/a$c;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_81
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_5c

    :cond_85
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "CLEAN "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/bumptech/glide/b/a$c;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bumptech/glide/b/a$c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_9f
    .catchall {:try_start_1d .. :try_end_9f} :catchall_d7

    goto :goto_81

    :cond_a0
    :try_start_a0
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    iget-object v0, p0, Lcom/bumptech/glide/b/a;->m:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b3

    iget-object v0, p0, Lcom/bumptech/glide/b/a;->m:Ljava/io/File;

    iget-object v2, p0, Lcom/bumptech/glide/b/a;->o:Ljava/io/File;

    invoke-static {v0, v2, v1}, Lcom/bumptech/glide/b/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    :cond_b3
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->n:Ljava/io/File;

    iget-object v2, p0, Lcom/bumptech/glide/b/a;->m:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/bumptech/glide/b/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    iget-object v0, p0, Lcom/bumptech/glide/b/a;->o:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/bumptech/glide/b/a;->m:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v1, Lcom/bumptech/glide/b/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;
    :try_end_d5
    .catchall {:try_start_a0 .. :try_end_d5} :catchall_dc

    monitor-exit p0

    return-void

    :catchall_d7
    move-exception v1

    :try_start_d8
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    throw v1
    :try_end_dc
    .catchall {:try_start_d8 .. :try_end_dc} :catchall_dc

    :catchall_dc
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/bumptech/glide/b/a;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->d()V

    return-void
.end method

.method static synthetic e(Lcom/bumptech/glide/b/a;)I
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/b/a;->v:I

    return v0
.end method

.method private e()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/b/a;->l:Ljava/io/File;

    return-object v0
.end method

.method static synthetic f(Lcom/bumptech/glide/b/a;)I
    .registers 1

    iget p0, p0, Lcom/bumptech/glide/b/a;->r:I

    return p0
.end method

.method private declared-synchronized f()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/bumptech/glide/b/a;->q:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/bumptech/glide/b/a;->s:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic g(Lcom/bumptech/glide/b/a;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/bumptech/glide/b/a;->l:Ljava/io/File;

    return-object p0
.end method

.method private h()Z
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/b/a;->v:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_12

    iget v0, p0, Lcom/bumptech/glide/b/a;->v:I

    iget-object v1, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized i()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j()V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method private declared-synchronized k()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->j()V

    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->l()V

    iget-object v0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private l()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-wide v0, p0, Lcom/bumptech/glide/b/a;->s:J

    iget-wide v2, p0, Lcom/bumptech/glide/b/a;->q:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_22

    iget-object v0, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/b/a;->b(Ljava/lang/String;)Z

    goto :goto_0

    :cond_22
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;J)Lcom/bumptech/glide/b/a$b;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->j()V

    iget-object v0, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/a$c;

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    const/4 v1, 0x0

    if-eqz v3, :cond_1d

    if-eqz v0, :cond_1b

    iget-wide v2, v0, Lcom/bumptech/glide/b/a$c;->g:J
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_59

    cmp-long v4, v2, p2

    if-eqz v4, :cond_1d

    :cond_1b
    monitor-exit p0

    return-object v1

    :cond_1d
    const/4 p2, 0x0

    if-nez v0, :cond_2b

    :try_start_20
    new-instance v0, Lcom/bumptech/glide/b/a$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/b/a$c;-><init>(Lcom/bumptech/glide/b/a;Ljava/lang/String;B)V

    iget-object p3, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {p3, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    :cond_2b
    iget-object p3, v0, Lcom/bumptech/glide/b/a$c;->f:Lcom/bumptech/glide/b/a$b;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_59

    if-eqz p3, :cond_31

    monitor-exit p0

    return-object v1

    :cond_31
    :goto_31
    :try_start_31
    new-instance p3, Lcom/bumptech/glide/b/a$b;

    invoke-direct {p3, p0, v0, p2}, Lcom/bumptech/glide/b/a$b;-><init>(Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/b/a$c;B)V

    iput-object p3, v0, Lcom/bumptech/glide/b/a$c;->f:Lcom/bumptech/glide/b/a$b;

    iget-object p2, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    const-string v0, "DIRTY"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p2, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object p2, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object p1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_57
    .catchall {:try_start_31 .. :try_end_57} :catchall_59

    monitor-exit p0

    return-object p3

    :catchall_59
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Lcom/bumptech/glide/b/a$d;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->j()V

    iget-object v0, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/a$c;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_68

    const/4 v1, 0x0

    if-nez v0, :cond_11

    monitor-exit p0

    return-object v1

    :cond_11
    :try_start_11
    iget-boolean v2, v0, Lcom/bumptech/glide/b/a$c;->e:Z
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_68

    if-nez v2, :cond_17

    monitor-exit p0

    return-object v1

    :cond_17
    :try_start_17
    iget-object v2, v0, Lcom/bumptech/glide/b/a$c;->c:[Ljava/io/File;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v3, :cond_2a

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_68

    if-nez v5, :cond_27

    monitor-exit p0

    return-object v1

    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_2a
    :try_start_2a
    iget v1, p0, Lcom/bumptech/glide/b/a;->v:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/b/a;->v:I

    iget-object v1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    const-string v2, "READ"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object v1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->h()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/bumptech/glide/b/a;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/bumptech/glide/b/a;->x:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_57
    new-instance v8, Lcom/bumptech/glide/b/a$d;

    iget-wide v3, v0, Lcom/bumptech/glide/b/a$c;->g:J

    iget-object v5, v0, Lcom/bumptech/glide/b/a$c;->c:[Ljava/io/File;

    iget-object v6, v0, Lcom/bumptech/glide/b/a$c;->b:[J

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/b/a$d;-><init>(Lcom/bumptech/glide/b/a;Ljava/lang/String;J[Ljava/io/File;[JB)V
    :try_end_66
    .catchall {:try_start_2a .. :try_end_66} :catchall_68

    monitor-exit p0

    return-object v8

    :catchall_68
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/b/a;->close()V

    iget-object v0, p0, Lcom/bumptech/glide/b/a;->l:Ljava/io/File;

    invoke-static {v0}, Lcom/bumptech/glide/b/c;->a(Ljava/io/File;)V

    return-void
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->j()V

    iget-object v0, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/a$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_84

    iget-object v2, v0, Lcom/bumptech/glide/b/a$c;->f:Lcom/bumptech/glide/b/a$b;

    if-eqz v2, :cond_14

    goto :goto_84

    :cond_14
    :goto_14
    iget v2, p0, Lcom/bumptech/glide/b/a;->r:I

    if-ge v1, v2, :cond_50

    iget-object v2, v0, Lcom/bumptech/glide/b/a$c;->c:[Ljava/io/File;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_3c

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to delete "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    iget-wide v2, p0, Lcom/bumptech/glide/b/a;->s:J

    iget-object v4, v0, Lcom/bumptech/glide/b/a$c;->b:[J

    aget-wide v5, v4, v1

    const/4 v4, 0x0

    sub-long v7, v2, v5

    iput-wide v7, p0, Lcom/bumptech/glide/b/a;->s:J

    iget-object v2, v0, Lcom/bumptech/glide/b/a$c;->b:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_50
    iget v0, p0, Lcom/bumptech/glide/b/a;->v:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/b/a;->v:I

    iget-object v0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    const-string v2, "REMOVE"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object v0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object v0, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->h()Z

    move-result p1

    if-eqz p1, :cond_82

    iget-object p1, p0, Lcom/bumptech/glide/b/a;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/bumptech/glide/b/a;->x:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_82
    .catchall {:try_start_1 .. :try_end_82} :catchall_86

    :cond_82
    monitor-exit p0

    return v1

    :cond_84
    :goto_84
    monitor-exit p0

    return v1

    :catchall_86
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_39

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/b/a$c;

    iget-object v2, v1, Lcom/bumptech/glide/b/a$c;->f:Lcom/bumptech/glide/b/a$b;

    if-eqz v2, :cond_16

    iget-object v1, v1, Lcom/bumptech/glide/b/a$c;->f:Lcom/bumptech/glide/b/a$b;

    invoke-virtual {v1}, Lcom/bumptech/glide/b/a$b;->a()V

    goto :goto_16

    :cond_2c
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->l()V

    iget-object v0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_39

    monitor-exit p0

    return-void

    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method
