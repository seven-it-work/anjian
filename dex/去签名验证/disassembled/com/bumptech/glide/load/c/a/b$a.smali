.class public final Lcom/bumptech/glide/load/c/a/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/c/o<",
        "Lcom/bumptech/glide/load/c/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/c/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/c/m<",
            "Lcom/bumptech/glide/load/c/g;",
            "Lcom/bumptech/glide/load/c/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/c/m;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/c/m;-><init>(J)V

    iput-object v0, p0, Lcom/bumptech/glide/load/c/a/b$a;->a:Lcom/bumptech/glide/load/c/m;

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/c/r;)Lcom/bumptech/glide/load/c/n;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c/r;",
            ")",
            "Lcom/bumptech/glide/load/c/n<",
            "Lcom/bumptech/glide/load/c/g;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/bumptech/glide/load/c/a/b;

    iget-object v0, p0, Lcom/bumptech/glide/load/c/a/b$a;->a:Lcom/bumptech/glide/load/c/m;

    invoke-direct {p1, v0}, Lcom/bumptech/glide/load/c/a/b;-><init>(Lcom/bumptech/glide/load/c/m;)V

    return-object p1
.end method

.method public final a()V
    .registers 1

    return-void
.end method
