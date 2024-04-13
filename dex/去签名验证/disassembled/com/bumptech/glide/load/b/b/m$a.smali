.class final Lcom/bumptech/glide/load/b/b/m$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/util/a/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/security/MessageDigest;

.field private final b:Lcom/bumptech/glide/util/a/c;


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/util/a/c$b;

    invoke-direct {v0}, Lcom/bumptech/glide/util/a/c$b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/b/m$a;->b:Lcom/bumptech/glide/util/a/c;

    iput-object p1, p0, Lcom/bumptech/glide/load/b/b/m$a;->a:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public final g_()Lcom/bumptech/glide/util/a/c;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/m$a;->b:Lcom/bumptech/glide/util/a/c;

    return-object v0
.end method
