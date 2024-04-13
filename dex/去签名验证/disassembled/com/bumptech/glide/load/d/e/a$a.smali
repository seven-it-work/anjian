.class final Lcom/bumptech/glide/load/d/e/a$a;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/d/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/bumptech/glide/c/b$a;Lcom/bumptech/glide/c/d;Ljava/nio/ByteBuffer;I)Lcom/bumptech/glide/c/b;
    .registers 5

    new-instance v0, Lcom/bumptech/glide/c/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bumptech/glide/c/g;-><init>(Lcom/bumptech/glide/c/b$a;Lcom/bumptech/glide/c/d;Ljava/nio/ByteBuffer;I)V

    return-object v0
.end method
