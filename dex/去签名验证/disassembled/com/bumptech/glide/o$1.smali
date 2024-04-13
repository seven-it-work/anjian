.class final Lcom/bumptech/glide/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/o;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/o;)V
    .registers 2

    iput-object p1, p0, Lcom/bumptech/glide/o$1;->a:Lcom/bumptech/glide/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/o$1;->a:Lcom/bumptech/glide/o;

    iget-object v0, v0, Lcom/bumptech/glide/o;->c:Lcom/bumptech/glide/manager/h;

    iget-object v1, p0, Lcom/bumptech/glide/o$1;->a:Lcom/bumptech/glide/o;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/h;->a(Lcom/bumptech/glide/manager/i;)V

    return-void
.end method
