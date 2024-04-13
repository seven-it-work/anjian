.class final Lcom/bumptech/glide/o$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/o;->a(Lcom/bumptech/glide/request/target/Target;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/request/target/Target;

.field final synthetic b:Lcom/bumptech/glide/o;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/o;Lcom/bumptech/glide/request/target/Target;)V
    .registers 3

    iput-object p1, p0, Lcom/bumptech/glide/o$2;->b:Lcom/bumptech/glide/o;

    iput-object p2, p0, Lcom/bumptech/glide/o$2;->a:Lcom/bumptech/glide/request/target/Target;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/o$2;->b:Lcom/bumptech/glide/o;

    iget-object v1, p0, Lcom/bumptech/glide/o$2;->a:Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/o;->a(Lcom/bumptech/glide/request/target/Target;)V

    return-void
.end method
