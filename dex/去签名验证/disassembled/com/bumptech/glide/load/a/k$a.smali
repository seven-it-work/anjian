.class public final Lcom/bumptech/glide/load/a/k$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/a/e$a<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/b/a/b;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b/a/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/a/k$a;->a:Lcom/bumptech/glide/load/b/a/b;

    return-void
.end method

.method private a(Ljava/io/InputStream;)Lcom/bumptech/glide/load/a/e;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/bumptech/glide/load/a/e<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/a/k;

    iget-object v1, p0, Lcom/bumptech/glide/load/a/k$a;->a:Lcom/bumptech/glide/load/b/a/b;

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/a/k;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/b/a/b;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lcom/bumptech/glide/load/a/e;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    check-cast p1, Ljava/io/InputStream;

    new-instance v0, Lcom/bumptech/glide/load/a/k;

    iget-object v1, p0, Lcom/bumptech/glide/load/a/k$a;->a:Lcom/bumptech/glide/load/b/a/b;

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/a/k;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/b/a/b;)V

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
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method
