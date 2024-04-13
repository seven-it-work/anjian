.class public final Lcom/bumptech/glide/e;
.super Lcom/bumptech/glide/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/p<",
        "Lcom/bumptech/glide/e<",
        "TTranscodeType;>;TTranscodeType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/p;-><init>()V

    return-void
.end method

.method private static a(I)Lcom/bumptech/glide/e;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/bumptech/glide/e<",
            "TTranscodeType;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/e;

    invoke-direct {v0}, Lcom/bumptech/glide/e;-><init>()V

    new-instance v1, Lcom/bumptech/glide/request/a/h;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/request/a/h;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/p;->a(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/p;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e;

    return-object p0
.end method

.method private static a(Lcom/bumptech/glide/request/a/j$a;)Lcom/bumptech/glide/e;
    .registers 3
    .param p0    # Lcom/bumptech/glide/request/a/j$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/request/a/j$a;",
            ")",
            "Lcom/bumptech/glide/e<",
            "TTranscodeType;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/e;

    invoke-direct {v0}, Lcom/bumptech/glide/e;-><init>()V

    new-instance v1, Lcom/bumptech/glide/request/a/i;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/request/a/i;-><init>(Lcom/bumptech/glide/request/a/j$a;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/p;->a(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/p;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e;

    return-object p0
.end method

.method private static b()Lcom/bumptech/glide/e;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/e<",
            "TTranscodeType;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/e;

    invoke-direct {v0}, Lcom/bumptech/glide/e;-><init>()V

    invoke-static {}, Lcom/bumptech/glide/request/a/e;->a()Lcom/bumptech/glide/request/a/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/p;->a(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/p;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e;

    return-object v0
.end method

.method private static b(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/e;
    .registers 2
    .param p0    # Lcom/bumptech/glide/request/a/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/request/a/g<",
            "-TTranscodeType;>;)",
            "Lcom/bumptech/glide/e<",
            "TTranscodeType;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/e;

    invoke-direct {v0}, Lcom/bumptech/glide/e;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/e;->a(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/p;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e;

    return-object p0
.end method
