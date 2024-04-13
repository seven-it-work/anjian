.class final Lcom/bumptech/glide/load/b/c/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final c:I = 0x9


# instance fields
.field final a:Lcom/bumptech/glide/load/b/c/a$b;

.field final b:Z

.field private final d:Ljava/lang/String;

.field private e:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/b/c/a$b;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/b/c/a$a;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/bumptech/glide/load/b/c/a$a;->a:Lcom/bumptech/glide/load/b/c/a$b;

    iput-boolean p3, p0, Lcom/bumptech/glide/load/b/c/a$a;->b:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/bumptech/glide/load/b/c/a$a$1;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glide-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bumptech/glide/load/b/c/a$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-thread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bumptech/glide/load/b/c/a$a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/bumptech/glide/load/b/c/a$a$1;-><init>(Lcom/bumptech/glide/load/b/c/a$a;Ljava/lang/Runnable;Ljava/lang/String;)V

    iget p1, p0, Lcom/bumptech/glide/load/b/c/a$a;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bumptech/glide/load/b/c/a$a;->e:I
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    monitor-exit p0

    return-object v0

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method
