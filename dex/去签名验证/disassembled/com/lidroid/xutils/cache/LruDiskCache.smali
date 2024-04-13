.class public final Lcom/lidroid/xutils/cache/LruDiskCache;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/cache/LruDiskCache$Editor;,
        Lcom/lidroid/xutils/cache/LruDiskCache$Entry;,
        Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;,
        Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:C = 'C'

.field private static final DELETE:C = 'D'

.field private static final EXPIRY_PREFIX:C = 't'

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

.field private static final READ:C = 'R'

.field private static final UPDATE:C = 'U'

.field static final VERSION:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/cache/LruDiskCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/lidroid/xutils/cache/LruDiskCache$2;

    invoke-direct {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$2;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/cache/LruDiskCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .registers 21

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    new-instance v4, Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    iput-wide v2, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->nextSequenceNumber:J

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/lidroid/xutils/cache/LruDiskCache$1;

    invoke-direct {v2, v0}, Lcom/lidroid/xutils/cache/LruDiskCache$1;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;)V

    iput-object v2, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    new-instance v2, Lcom/lidroid/xutils/cache/MD5FileNameGenerator;

    invoke-direct {v2}, Lcom/lidroid/xutils/cache/MD5FileNameGenerator;-><init>()V

    iput-object v2, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    iput-object v1, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->directory:Ljava/io/File;

    move/from16 v2, p2

    iput v2, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->appVersion:I

    new-instance v2, Ljava/io/File;

    const-string v3, "journal"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, "journal.tmp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileTmp:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, "journal.bkp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileBackup:Ljava/io/File;

    move/from16 v1, p3

    iput v1, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    move-wide/from16 v1, p4

    iput-wide v1, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->maxSize:J

    return-void
.end method

.method static synthetic access$0(Lcom/lidroid/xutils/cache/LruDiskCache;)Ljava/io/Writer;
    .registers 1

    iget-object p0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    return-object p0
.end method

.method static synthetic access$1(Lcom/lidroid/xutils/cache/LruDiskCache;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$10(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/cache/LruDiskCache;->completeEdit(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$11(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2(Lcom/lidroid/xutils/cache/LruDiskCache;)Z
    .registers 1

    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->journalRebuildRequired()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3(Lcom/lidroid/xutils/cache/LruDiskCache;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$4(Lcom/lidroid/xutils/cache/LruDiskCache;I)V
    .registers 2

    iput p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    return-void
.end method

.method static synthetic access$5(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;J)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/lidroid/xutils/cache/LruDiskCache;->editByDiskKey(Ljava/lang/String;J)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7(Lcom/lidroid/xutils/cache/LruDiskCache;)I
    .registers 1

    iget p0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    return p0
.end method

.method static synthetic access$8(Lcom/lidroid/xutils/cache/LruDiskCache;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->directory:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$9()Ljava/io/OutputStream;
    .registers 1

    sget-object v0, Lcom/lidroid/xutils/cache/LruDiskCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-object v0
.end method

.method private checkNotClosed()V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method private declared-synchronized completeEdit(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    invoke-static {p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    move-result-object v0

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v1

    if-eq v1, p1, :cond_11

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_11
    const/4 v1, 0x0

    if-eqz p2, :cond_51

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->readable:Z
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_51

    const/4 v2, 0x0

    :goto_1b
    iget v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-lt v2, v3, :cond_20

    goto :goto_51

    :cond_20
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->written:[Z
    invoke-static {p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-nez v3, :cond_3f

    invoke-virtual {p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->abort()V

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    invoke-virtual {v0, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4e

    invoke-virtual {p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->abort()V
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_119

    monitor-exit p0

    return-void

    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_51
    :goto_51
    :try_start_51
    iget p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-lt v1, p1, :cond_e5

    iget p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$6(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->readable:Z
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Z

    move-result p1

    or-int/2addr p1, p2

    const/16 v2, 0xa

    if-eqz p1, :cond_a6

    invoke-static {v0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$5(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Z)V

    iget-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "C "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->diskKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->expiryTimestamp:J
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$9(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_c9

    iget-wide p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->nextSequenceNumber:J

    const-wide/16 v1, 0x1

    add-long v3, p1, v1

    iput-wide v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->nextSequenceNumber:J

    invoke-static {v0, p1, p2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$11(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;J)V

    goto :goto_c9

    :cond_a6
    iget-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->diskKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "D "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->diskKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_c9
    :goto_c9
    iget-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    iget-wide p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    iget-wide v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->maxSize:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_dc

    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_e3

    :cond_dc
    iget-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_e3
    .catchall {:try_start_51 .. :try_end_e3} :catchall_119

    :cond_e3
    monitor-exit p0

    return-void

    :cond_e5
    :try_start_e5
    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_112

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_115

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object p1

    aget-wide v3, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object p1

    aput-wide v5, p1, v1

    iget-wide v7, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    const/4 p1, 0x0

    sub-long v9, v7, v3

    add-long v2, v9, v5

    iput-wide v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    goto :goto_115

    :cond_112
    invoke-static {p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteIfExists(Ljava/io/File;)V
    :try_end_115
    .catchall {:try_start_e5 .. :try_end_115} :catchall_119

    :cond_115
    :goto_115
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_51

    :catchall_119
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static deleteContents(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1a

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not a readable directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    array-length p0, v0

    const/4 v1, 0x0

    :goto_1c
    if-lt v1, p0, :cond_1f

    return-void

    :cond_1f
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteContents(Ljava/io/File;)V

    :cond_2a
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_4a

    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to delete file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c
.end method

.method private static deleteIfExists(Ljava/io/File;)V
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

.method private declared-synchronized editByDiskKey(Ljava/lang/String;J)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->checkNotClosed()V

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    const/4 v1, 0x0

    if-eqz v3, :cond_1f

    if-eqz v0, :cond_1d

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->sequenceNumber:J
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$10(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J

    move-result-wide v2
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_5b

    cmp-long v4, v2, p2

    if-eqz v4, :cond_1f

    :cond_1d
    monitor-exit p0

    return-object v1

    :cond_1f
    if-nez v0, :cond_2c

    :try_start_21
    new-instance v0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    invoke-direct {v0, p0, p1, v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)V

    iget-object p2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    :cond_2c
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object p2
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_5b

    if-eqz p2, :cond_34

    monitor-exit p0

    return-object v1

    :cond_34
    :goto_34
    :try_start_34
    new-instance p2, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    invoke-direct {p2, p0, v0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    invoke-static {v0, p2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$6(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    iget-object p3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "U "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_59
    .catchall {:try_start_34 .. :try_end_59} :catchall_5b

    monitor-exit p0

    return-object p2

    :catchall_5b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getByDiskKey(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->checkNotClosed()V

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_fe

    const/4 v1, 0x0

    if-nez v0, :cond_11

    monitor-exit p0

    return-object v1

    :cond_11
    :try_start_11
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->readable:Z
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Z

    move-result v2
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_fe

    if-nez v2, :cond_19

    monitor-exit p0

    return-object v1

    :cond_19
    :try_start_19
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->expiryTimestamp:J
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$9(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-gez v6, :cond_98

    :goto_28
    iget v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-lt v3, v4, :cond_5c

    iget v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "D "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_5a

    iget-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_5a
    .catchall {:try_start_19 .. :try_end_5a} :catchall_fe

    :cond_5a
    monitor-exit p0

    return-object v1

    :cond_5c
    :try_start_5c
    invoke-virtual {v0, v3}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_80

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_80

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to delete "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_80
    iget-wide v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v6

    aget-wide v7, v6, v3

    const/4 v6, 0x0

    sub-long v9, v4, v7

    iput-wide v9, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v4

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_98
    iget v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    new-array v10, v4, [Ljava/io/FileInputStream;
    :try_end_9c
    .catchall {:try_start_5c .. :try_end_9c} :catchall_fe

    const/4 v4, 0x0

    :goto_9d
    :try_start_9d
    iget v5, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I
    :try_end_9f
    .catch Ljava/io/FileNotFoundException; {:try_start_9d .. :try_end_9f} :catch_eb
    .catchall {:try_start_9d .. :try_end_9f} :catchall_fe

    if-lt v4, v5, :cond_dd

    :try_start_a1
    iget v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "R "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_ca

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_ca
    new-instance v1, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->sequenceNumber:J
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$10(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J

    move-result-wide v8

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v11

    const/4 v12, 0x0

    move-object v5, v1

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v5 .. v12}, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;J[Ljava/io/FileInputStream;[JLcom/lidroid/xutils/cache/LruDiskCache$Snapshot;)V
    :try_end_db
    .catchall {:try_start_a1 .. :try_end_db} :catchall_fe

    monitor-exit p0

    return-object v1

    :cond_dd
    :try_start_dd
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v0, v4}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v5, v10, v4
    :try_end_e8
    .catch Ljava/io/FileNotFoundException; {:try_start_dd .. :try_end_e8} :catch_eb
    .catchall {:try_start_dd .. :try_end_e8} :catchall_fe

    add-int/lit8 v4, v4, 0x1

    goto :goto_9d

    :catch_eb
    :goto_eb
    :try_start_eb
    iget p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-lt v3, p1, :cond_f0

    goto :goto_fc

    :cond_f0
    aget-object p1, v10, v3

    if-eqz p1, :cond_fc

    aget-object p1, v10, v3

    invoke-static {p1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_f9
    .catchall {:try_start_eb .. :try_end_f9} :catchall_fe

    add-int/lit8 v3, v3, 0x1

    goto :goto_eb

    :cond_fc
    :goto_fc
    monitor-exit p0

    return-object v1

    :catchall_fe
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private journalRebuildRequired()Z
    .registers 3

    iget v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_12

    iget v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/lidroid/xutils/cache/LruDiskCache;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-gtz v2, :cond_e

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    if-gtz p2, :cond_18

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3a

    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_3a

    :cond_36
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    :cond_3a
    :goto_3a
    new-instance v0, Lcom/lidroid/xutils/cache/LruDiskCache;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/lidroid/xutils/cache/LruDiskCache;-><init>(Ljava/io/File;IIJ)V

    iget-object v1, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8f

    :try_start_4c
    invoke-direct {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->readJournal()V

    invoke-direct {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->processJournal()V

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v4, "US-ASCII"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_68} :catch_69

    return-object v0

    :catch_69
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DiskLruCache "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->delete()V

    :cond_8f
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_9b

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_a8

    :cond_9b
    new-instance v0, Lcom/lidroid/xutils/cache/LruDiskCache;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/lidroid/xutils/cache/LruDiskCache;-><init>(Ljava/io/File;IIJ)V

    invoke-direct {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->rebuildJournal()V

    :cond_a8
    return-object v0
.end method

.method private processJournal()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_16

    return-void

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_37

    :goto_23
    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-lt v3, v2, :cond_28

    goto :goto_f

    :cond_28
    iget-wide v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J
    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    add-long v8, v4, v6

    iput-wide v8, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_37
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$6(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    :goto_3b
    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-lt v3, v2, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    :cond_43
    invoke-virtual {v1, v3}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    invoke-virtual {v1, v3}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3b
.end method

.method private static readFully(Ljava/io/Reader;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_23

    const/16 v0, 0x400

    :try_start_8
    new-array v0, v0, [C

    :goto_a
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1c

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_21

    invoke-static {p0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :cond_1c
    const/4 v3, 0x0

    :try_start_1d
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/StringWriter;->write([CII)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_a

    :catchall_21
    move-exception v0

    goto :goto_27

    :catchall_23
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_27
    invoke-static {p0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method private readJournal()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, p0, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/io/InputStream;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_9d

    :try_start_d
    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const-string v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6a

    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6a

    iget v6, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->appVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    iget v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    const-string v3, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_4f
    .catchall {:try_start_d .. :try_end_4f} :catchall_9b

    if-nez v3, :cond_52

    goto :goto_6a

    :cond_52
    const/4 v0, 0x0

    :goto_53
    :try_start_53
    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/io/EOFException; {:try_start_53 .. :try_end_5a} :catch_5d
    .catchall {:try_start_53 .. :try_end_5a} :catchall_9b

    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    :catch_5d
    :try_start_5d
    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I
    :try_end_66
    .catchall {:try_start_5d .. :try_end_66} :catchall_9b

    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_6a
    :goto_6a
    :try_start_6a
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unexpected journal header: ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_9b
    .catchall {:try_start_6a .. :try_end_9b} :catchall_9b

    :catchall_9b
    move-exception v0

    goto :goto_a1

    :catchall_9d
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_a1
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_ba

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_24

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x44

    if-ne v4, v5, :cond_28

    iget-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_24
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_28
    iget-object v5, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    const/4 v6, 0x0

    if-nez v5, :cond_3d

    new-instance v5, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    invoke-direct {v5, p0, v1, v6}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)V

    iget-object v7, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v1, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    const/16 v1, 0x43

    if-eq v4, v1, :cond_66

    const/16 v0, 0x52

    if-eq v4, v0, :cond_65

    const/16 v0, 0x55

    if-eq v4, v0, :cond_5d

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d
    new-instance p1, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    invoke-direct {p1, p0, v5, v6}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    invoke-static {v5, p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$6(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    :cond_65
    return-void

    :cond_66
    invoke-static {v5, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$5(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Z)V

    invoke-static {v5, v6}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$6(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_b9

    :try_start_7a
    aget-object v1, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x74

    if-ne v1, v4, :cond_99

    aget-object v1, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$1(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;J)V

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->setLengths([Ljava/lang/String;I)V
    invoke-static {v5, v0, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$7(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;[Ljava/lang/String;I)V

    return-void

    :cond_99
    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v5, v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$1(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;J)V

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->setLengths([Ljava/lang/String;I)V
    invoke-static {v5, v0, v3}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$7(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;[Ljava/lang/String;I)V
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_a4} :catch_a5

    return-void

    :catch_a5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b9
    return-void

    :cond_ba
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

.method private declared-synchronized rebuildJournal()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f4

    :cond_a
    const/4 v0, 0x0

    :try_start_b
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v4, "US-ASCII"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_ec

    :try_start_1e
    const-string v0, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->appVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_61
    .catchall {:try_start_1e .. :try_end_61} :catchall_ea

    if-nez v2, :cond_9a

    :try_start_63
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileBackup:Ljava/io/File;

    invoke-static {v0, v2, v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    :cond_76
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileTmp:Ljava/io/File;

    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/lidroid/xutils/cache/LruDiskCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v1, "US-ASCII"

    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_98
    .catchall {:try_start_63 .. :try_end_98} :catchall_f4

    monitor-exit p0

    return-void

    :cond_9a
    :try_start_9a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v3

    const/16 v4, 0xa

    if-eqz v3, :cond_c1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "U "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->diskKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_bd
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_5d

    :cond_c1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "C "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->diskKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " t"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->expiryTimestamp:J
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$9(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_e9
    .catchall {:try_start_9a .. :try_end_e9} :catchall_ea

    goto :goto_bd

    :catchall_ea
    move-exception v0

    goto :goto_f0

    :catchall_ec
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_f0
    :try_start_f0
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
    :try_end_f4
    .catchall {:try_start_f0 .. :try_end_f4} :catchall_f4

    :catchall_f4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeByDiskKey(Ljava/lang/String;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->checkNotClosed()V

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_88

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_16

    goto :goto_88

    :cond_16
    :goto_16
    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-lt v1, v2, :cond_4c

    iget v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "D "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_8a

    :cond_4a
    monitor-exit p0

    return v1

    :cond_4c
    :try_start_4c
    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_70

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to delete "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_70
    iget-wide v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v4

    aget-wide v5, v4, v1

    const/4 v4, 0x0

    sub-long v7, v2, v5

    iput-wide v7, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1
    :try_end_85
    .catchall {:try_start_4c .. :try_end_85} :catchall_8a

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_88
    :goto_88
    monitor-exit p0

    return v1

    :catchall_8a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_5

    invoke-static {p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

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

.method private trimToSize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-wide v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    iget-wide v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->maxSize:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

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

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3d

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->trimToSize()V

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_3d

    monitor-exit p0

    return-void

    :cond_29
    :try_start_29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_16

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->abort()V
    :try_end_3c
    .catchall {:try_start_29 .. :try_end_3c} :catchall_3d

    goto :goto_16

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final delete()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteContents(Ljava/io/File;)V

    return-void
.end method

.method public final edit(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/cache/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->editByDiskKey(Ljava/lang/String;J)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->checkNotClosed()V

    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->trimToSize()V

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

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

.method public final get(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/cache/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->getByDiskKey(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;

    move-result-object p1

    return-object p1
.end method

.method public final getCacheFile(Ljava/lang/String;I)Ljava/io/File;
    .registers 7

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/cache/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->directory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_29

    return-object v1

    :cond_29
    :try_start_29
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->remove(Ljava/lang/String;)Z
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2c

    :catch_2c
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getDirectory()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public final declared-synchronized getExpiryTimestamp(Ljava/lang/String;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/cache/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->checkNotClosed()V

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1e

    if-nez p1, :cond_18

    const-wide/16 v0, 0x0

    monitor-exit p0

    return-wide v0

    :cond_18
    :try_start_18
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->expiryTimestamp:J
    invoke-static {p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$9(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J

    move-result-wide v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-wide v0

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getFileNameGenerator()Lcom/lidroid/xutils/cache/FileNameGenerator;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    return-object v0
.end method

.method public final declared-synchronized getMaxSize()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->maxSize:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isClosed()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;
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

.method public final remove(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/cache/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final setFileNameGenerator(Lcom/lidroid/xutils/cache/FileNameGenerator;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    :cond_4
    return-void
.end method

.method public final declared-synchronized setMaxSize(J)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->maxSize:J

    iget-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

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

.method public final declared-synchronized size()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
