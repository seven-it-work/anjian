.class public final Lcom/bumptech/glide/load/d/b/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/d/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/a/e$a<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/a/e;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lcom/bumptech/glide/load/a/e<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/d/b/a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/d/b/a;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lcom/bumptech/glide/load/a/e;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    check-cast p1, Ljava/nio/ByteBuffer;

    new-instance v0, Lcom/bumptech/glide/load/d/b/a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/d/b/a;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public final a()Ljava/lang/Class;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method
