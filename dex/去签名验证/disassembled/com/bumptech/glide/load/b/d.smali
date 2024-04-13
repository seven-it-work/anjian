.class final Lcom/bumptech/glide/load/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/b/b/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/b/b/a$b;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/load/j;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/d;Ljava/lang/Object;Lcom/bumptech/glide/load/j;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d<",
            "TDataType;>;TDataType;",
            "Lcom/bumptech/glide/load/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/b/d;->a:Lcom/bumptech/glide/load/d;

    iput-object p2, p0, Lcom/bumptech/glide/load/b/d;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/bumptech/glide/load/b/d;->c:Lcom/bumptech/glide/load/j;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)Z
    .registers 5
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/load/b/d;->a:Lcom/bumptech/glide/load/d;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/d;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/d;->c:Lcom/bumptech/glide/load/j;

    invoke-interface {v0, v1, p1, v2}, Lcom/bumptech/glide/load/d;->a(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/j;)Z

    move-result p1

    return p1
.end method
