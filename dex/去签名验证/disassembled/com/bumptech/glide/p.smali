.class public abstract Lcom/bumptech/glide/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CHI",
        "LD:Lcom/bumptech/glide/p<",
        "TCHI",
        "LD;",
        "TTranscodeType;>;TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field a:Lcom/bumptech/glide/request/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/a/g<",
            "-TTranscodeType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bumptech/glide/request/a/e;->a()Lcom/bumptech/glide/request/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/p;->a:Lcom/bumptech/glide/request/a/g;

    return-void
.end method

.method private a(I)Lcom/bumptech/glide/p;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TCHI",
            "LD;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/a/h;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/a/h;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/p;->a(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/p;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/bumptech/glide/request/a/j$a;)Lcom/bumptech/glide/p;
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/a/j$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/j$a;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/a/i;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/a/i;-><init>(Lcom/bumptech/glide/request/a/j$a;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/p;->a(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/p;

    move-result-object p1

    return-object p1
.end method

.method private b()Lcom/bumptech/glide/p;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/request/a/e;->a()Lcom/bumptech/glide/request/a/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/p;->a(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/p;

    move-result-object v0

    return-object v0
.end method

.method private c()Lcom/bumptech/glide/request/a/g;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/a/g<",
            "-TTranscodeType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/p;->a:Lcom/bumptech/glide/request/a/g;

    return-object v0
.end method

.method private d()Lcom/bumptech/glide/p;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/bumptech/glide/p;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/p;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/p;
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/a/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/g<",
            "-TTranscodeType;>;)TCHI",
            "LD;"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/a/g;

    iput-object p1, p0, Lcom/bumptech/glide/p;->a:Lcom/bumptech/glide/request/a/g;

    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/p;->a()Lcom/bumptech/glide/p;

    move-result-object v0

    return-object v0
.end method
