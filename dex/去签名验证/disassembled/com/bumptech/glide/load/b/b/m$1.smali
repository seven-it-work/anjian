.class final Lcom/bumptech/glide/load/b/b/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/util/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/util/a/a$a<",
        "Lcom/bumptech/glide/load/b/b/m$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/b/b/m;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/b/m;)V
    .registers 2

    iput-object p1, p0, Lcom/bumptech/glide/load/b/b/m$1;->a:Lcom/bumptech/glide/load/b/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b()Lcom/bumptech/glide/load/b/b/m$a;
    .registers 2

    :try_start_0
    new-instance v0, Lcom/bumptech/glide/load/b/b/m$a;

    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/b/b/m$a;-><init>(Ljava/security/MessageDigest;)V
    :try_end_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/bumptech/glide/load/b/b/m$1;->b()Lcom/bumptech/glide/load/b/b/m$a;

    move-result-object v0

    return-object v0
.end method
