.class public final Lcom/bumptech/glide/load/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/m<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final c:Lcom/bumptech/glide/load/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/m<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bumptech/glide/load/d/b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/d/b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/d/b;->c:Lcom/bumptech/glide/load/m;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bumptech/glide/load/d/b;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/d/b<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/d/b;->c:Lcom/bumptech/glide/load/m;

    check-cast v0, Lcom/bumptech/glide/load/d/b;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/bumptech/glide/load/b/u;II)Lcom/bumptech/glide/load/b/u;
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/b/u;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/b/u<",
            "TT;>;II)",
            "Lcom/bumptech/glide/load/b/u<",
            "TT;>;"
        }
    .end annotation

    return-object p2
.end method

.method public final a(Ljava/security/MessageDigest;)V
    .registers 2
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
