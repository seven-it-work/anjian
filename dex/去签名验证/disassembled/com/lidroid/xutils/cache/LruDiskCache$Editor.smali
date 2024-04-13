.class public final Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/cache/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)V
    .registers 3

    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->readable:Z
    invoke-static {p2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Z

    move-result p2

    if-eqz p2, :cond_f

    const/4 p1, 0x0

    goto :goto_15

    :cond_f
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I
    invoke-static {p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$7(Lcom/lidroid/xutils/cache/LruDiskCache;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_15
    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->written:[Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)V

    return-void
.end method

.method static synthetic access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->hasErrors:Z

    return-void
.end method

.method static synthetic access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    .registers 1

    iget-object p0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    return-object p0
.end method

.method static synthetic access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)[Z
    .registers 1

    iget-object p0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->written:[Z

    return-object p0
.end method


# virtual methods
.method public final abort()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    const/4 v1, 0x0

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache;->completeEdit(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$10(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    return-void
.end method

.method public final abortUnlessCommitted()V
    .registers 2

    iget-boolean v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->committed:Z

    if-nez v0, :cond_7

    :try_start_4
    invoke-virtual {p0}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->abort()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    :cond_7
    return-void
.end method

.method public final commit()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->hasErrors:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    const/4 v2, 0x0

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache;->completeEdit(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V
    invoke-static {v0, p0, v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$10(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->diskKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$11(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;)Z

    goto :goto_1c

    :cond_17
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache;->completeEdit(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$10(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    :goto_1c
    iput-boolean v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->committed:Z

    return-void
.end method

.method public final getString(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_b

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$6(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public final newInputStream(I)Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v1

    if-eq v1, p0, :cond_11

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_11
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->readable:Z
    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_2b

    return-object v2

    :cond_1c
    :try_start_1c
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    invoke-virtual {v3, p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_27} :catch_29
    .catchall {:try_start_1c .. :try_end_27} :catchall_2b

    :try_start_27
    monitor-exit v0

    return-object v1

    :catch_29
    monitor-exit v0

    return-object v2

    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public final newOutputStream(I)Ljava/io/OutputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v1

    if-eq v1, p0, :cond_11

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_11
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->readable:Z
    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->written:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    :cond_1e
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    invoke-virtual {v1, p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object p1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_46

    :try_start_24
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_29} :catch_2a
    .catchall {:try_start_24 .. :try_end_29} :catchall_46

    goto :goto_38

    :catch_2a
    :try_start_2a
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache;->directory:Ljava/io/File;
    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_46

    :try_start_33
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_38} :catch_40
    .catchall {:try_start_33 .. :try_end_38} :catchall_46

    :goto_38
    :try_start_38
    new-instance p1, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Ljava/io/OutputStream;Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;)V

    monitor-exit v0

    return-object p1

    :catch_40
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;
    invoke-static {}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$9()Ljava/io/OutputStream;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_46
    move-exception p1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_46

    throw p1
.end method

.method public final set(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object p1

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    :try_start_c
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_13

    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_13
    move-exception p1

    move-object v0, v1

    goto :goto_17

    :catchall_16
    move-exception p1

    :goto_17
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method public final setEntryExpiryTimestamp(J)V
    .registers 4

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    invoke-static {v0, p1, p2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$1(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;J)V

    return-void
.end method
