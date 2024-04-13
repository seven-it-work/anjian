.class public final Lcom/bumptech/glide/load/b/b/f;
.super Lcom/bumptech/glide/load/b/b/d;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "image_manager_disk_cache"

    const/high16 v1, 0xfa00000

    invoke-direct {p0, p1, v0, v1}, Lcom/bumptech/glide/load/b/b/f;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const-string v0, "image_manager_disk_cache"

    invoke-direct {p0, p1, v0, p2}, Lcom/bumptech/glide/load/b/b/f;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Lcom/bumptech/glide/load/b/b/f$1;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/b/b/f$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    int-to-long p1, p3

    invoke-direct {p0, v0, p1, p2}, Lcom/bumptech/glide/load/b/b/d;-><init>(Lcom/bumptech/glide/load/b/b/d$a;J)V

    return-void
.end method
