.class public final Lcom/bumptech/glide/load/d/f/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/d/f/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/d/f/e<",
        "TZ;TZ;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/d/f/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d/f/g<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bumptech/glide/load/d/f/g;

    invoke-direct {v0}, Lcom/bumptech/glide/load/d/f/g;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/d/f/g;->a:Lcom/bumptech/glide/load/d/f/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bumptech/glide/load/d/f/e;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/d/f/e<",
            "TZ;TZ;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/d/f/g;->a:Lcom/bumptech/glide/load/d/f/g;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/b/u;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/b/u;
    .registers 3
    .param p1    # Lcom/bumptech/glide/load/b/u;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/u<",
            "TZ;>;",
            "Lcom/bumptech/glide/load/j;",
            ")",
            "Lcom/bumptech/glide/load/b/u<",
            "TZ;>;"
        }
    .end annotation

    return-object p1
.end method
