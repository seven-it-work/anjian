.class final Lcom/bumptech/glide/load/c/f$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/a/d<",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Lcom/bumptech/glide/load/c/f$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/c/f$d<",
            "TData;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TData;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/bumptech/glide/load/c/f$d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/c/f$d<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/c/f$c;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/bumptech/glide/load/c/f$c;->b:Lcom/bumptech/glide/load/c/f$d;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/c/f$c;->b:Lcom/bumptech/glide/load/c/f$d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/c/f$d;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/bumptech/glide/l;Lcom/bumptech/glide/load/a/d$a;)V
    .registers 5
    .param p1    # Lcom/bumptech/glide/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/a/d$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/l;",
            "Lcom/bumptech/glide/load/a/d$a<",
            "-TData;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lcom/bumptech/glide/load/c/f$c;->b:Lcom/bumptech/glide/load/c/f$d;

    iget-object v0, p0, Lcom/bumptech/glide/load/c/f$c;->a:Ljava/io/File;

    invoke-interface {p1, v0}, Lcom/bumptech/glide/load/c/f$d;->a(Ljava/io/File;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/c/f$c;->c:Ljava/lang/Object;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_a} :catch_10

    iget-object p1, p0, Lcom/bumptech/glide/load/c/f$c;->c:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/a/d$a;->a(Ljava/lang/Object;)V

    return-void

    :catch_10
    move-exception p1

    const-string v0, "FileLoader"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "FileLoader"

    const-string v1, "Failed to open file"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/a/d$a;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/c/f$c;->c:Ljava/lang/Object;

    if-eqz v0, :cond_b

    :try_start_4
    iget-object v0, p0, Lcom/bumptech/glide/load/c/f$c;->b:Lcom/bumptech/glide/load/c/f$d;

    iget-object v1, p0, Lcom/bumptech/glide/load/c/f$c;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/c/f$d;->a(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public final c()V
    .registers 1

    return-void
.end method

.method public final d()Lcom/bumptech/glide/load/a;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/a;->LOCAL:Lcom/bumptech/glide/load/a;

    return-object v0
.end method
