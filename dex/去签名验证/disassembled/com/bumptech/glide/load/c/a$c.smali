.class public final Lcom/bumptech/glide/load/c/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/c/a$a;
.implements Lcom/bumptech/glide/load/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/c/a$a<",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/bumptech/glide/load/c/o<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/c/a$c;->a:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/bumptech/glide/load/a/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/load/a/d<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/a/m;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/a/m;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method

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
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/bumptech/glide/load/c/a;

    iget-object v0, p0, Lcom/bumptech/glide/load/c/a$c;->a:Landroid/content/res/AssetManager;

    invoke-direct {p1, v0, p0}, Lcom/bumptech/glide/load/c/a;-><init>(Landroid/content/res/AssetManager;Lcom/bumptech/glide/load/c/a$a;)V

    return-object p1
.end method

.method public final a()V
    .registers 1

    return-void
.end method
