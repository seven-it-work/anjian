.class public final Lcom/bumptech/glide/load/b/b/g;
.super Lcom/bumptech/glide/load/b/b/d;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "image_manager_disk_cache"

    const-wide/32 v1, 0xfa00000

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/bumptech/glide/load/b/b/g;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;J)V
    .registers 5

    const-string v0, "image_manager_disk_cache"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/bumptech/glide/load/b/b/g;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 6

    new-instance v0, Lcom/bumptech/glide/load/b/b/g$1;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/b/b/g$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4}, Lcom/bumptech/glide/load/b/b/d;-><init>(Lcom/bumptech/glide/load/b/b/d$a;J)V

    return-void
.end method
