.class Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;


# direct methods
.method private constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Ljava/io/OutputStream;)V
    .registers 3

    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Ljava/io/OutputStream;Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    return-void
.end method

.method public flush()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    return-void
.end method

.method public write(I)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    iget-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    return-void
.end method

.method public write([BII)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    iget-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    return-void
.end method
