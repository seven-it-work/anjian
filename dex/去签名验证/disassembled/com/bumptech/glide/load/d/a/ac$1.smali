.class final Lcom/bumptech/glide/load/d/a/ac$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/d/a/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/i$a<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/d/a/ac$1;->a:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private a([BLjava/lang/Long;Ljava/security/MessageDigest;)V
    .registers 7
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p3, p1}, Ljava/security/MessageDigest;->update([B)V

    iget-object p1, p0, Lcom/bumptech/glide/load/d/a/ac$1;->a:Ljava/nio/ByteBuffer;

    monitor-enter p1

    :try_start_6
    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/ac$1;->a:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/ac$1;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/security/MessageDigest;->update([B)V

    monitor-exit p1

    return-void

    :catchall_1f
    move-exception p2

    monitor-exit p1
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw p2
.end method


# virtual methods
.method public final synthetic a([BLjava/lang/Object;Ljava/security/MessageDigest;)V
    .registers 7
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p3, p1}, Ljava/security/MessageDigest;->update([B)V

    iget-object p1, p0, Lcom/bumptech/glide/load/d/a/ac$1;->a:Ljava/nio/ByteBuffer;

    monitor-enter p1

    :try_start_8
    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/ac$1;->a:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/ac$1;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/security/MessageDigest;->update([B)V

    monitor-exit p1

    return-void

    :catchall_21
    move-exception p2

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_21

    throw p2
.end method
