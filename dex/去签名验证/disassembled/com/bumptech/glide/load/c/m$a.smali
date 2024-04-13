.class final Lcom/bumptech/glide/load/c/m$a;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/c/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bumptech/glide/load/c/m$a<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:I

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bumptech/glide/util/k;->a(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/c/m$a;->a:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/c/m$a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;II)",
            "Lcom/bumptech/glide/load/c/m$a<",
            "TA;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/c/m$a;->a:Ljava/util/Queue;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/bumptech/glide/load/c/m$a;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/c/m$a;

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1a

    if-nez v1, :cond_13

    new-instance v1, Lcom/bumptech/glide/load/c/m$a;

    invoke-direct {v1}, Lcom/bumptech/glide/load/c/m$a;-><init>()V

    :cond_13
    iput-object p0, v1, Lcom/bumptech/glide/load/c/m$a;->d:Ljava/lang/Object;

    iput p1, v1, Lcom/bumptech/glide/load/c/m$a;->c:I

    iput p2, v1, Lcom/bumptech/glide/load/c/m$a;->b:I

    return-object v1

    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method private b(Ljava/lang/Object;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/c/m$a;->d:Ljava/lang/Object;

    iput p2, p0, Lcom/bumptech/glide/load/c/m$a;->c:I

    iput p3, p0, Lcom/bumptech/glide/load/c/m$a;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    sget-object v0, Lcom/bumptech/glide/load/c/m$a;->a:Ljava/util/Queue;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/bumptech/glide/load/c/m$a;->a:Ljava/util/Queue;

    invoke-interface {v1, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/bumptech/glide/load/c/m$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    check-cast p1, Lcom/bumptech/glide/load/c/m$a;

    iget v0, p0, Lcom/bumptech/glide/load/c/m$a;->c:I

    iget v2, p1, Lcom/bumptech/glide/load/c/m$a;->c:I

    if-ne v0, v2, :cond_1f

    iget v0, p0, Lcom/bumptech/glide/load/c/m$a;->b:I

    iget v2, p1, Lcom/bumptech/glide/load/c/m$a;->b:I

    if-ne v0, v2, :cond_1f

    iget-object v0, p0, Lcom/bumptech/glide/load/c/m$a;->d:Ljava/lang/Object;

    iget-object p1, p1, Lcom/bumptech/glide/load/c/m$a;->d:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    return p1

    :cond_1f
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/load/c/m$a;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bumptech/glide/load/c/m$a;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/c/m$a;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
