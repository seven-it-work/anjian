.class final Lcom/android/volley/toolbox/k$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/k;->a(Ljava/lang/String;Lcom/android/volley/toolbox/k$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/volley/toolbox/k;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/k;)V
    .registers 2

    iput-object p1, p0, Lcom/android/volley/toolbox/k$4;->a:Lcom/android/volley/toolbox/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/volley/toolbox/k$4;->a:Lcom/android/volley/toolbox/k;

    iget-object v0, v0, Lcom/android/volley/toolbox/k;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/volley/toolbox/k$a;

    iget-object v2, v1, Lcom/android/volley/toolbox/k$a;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/volley/toolbox/k$c;

    iget-object v4, v3, Lcom/android/volley/toolbox/k$c;->b:Lcom/android/volley/toolbox/k$d;

    if-eqz v4, :cond_1e

    iget-object v4, v1, Lcom/android/volley/toolbox/k$a;->b:Lcom/android/volley/s;

    if-nez v4, :cond_3d

    iget-object v4, v1, Lcom/android/volley/toolbox/k$a;->a:Landroid/graphics/Bitmap;

    iput-object v4, v3, Lcom/android/volley/toolbox/k$c;->a:Landroid/graphics/Bitmap;

    iget-object v4, v3, Lcom/android/volley/toolbox/k$c;->b:Lcom/android/volley/toolbox/k$d;

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lcom/android/volley/toolbox/k$d;->a(Lcom/android/volley/toolbox/k$c;Z)V

    goto :goto_1e

    :cond_3d
    iget-object v3, v3, Lcom/android/volley/toolbox/k$c;->b:Lcom/android/volley/toolbox/k$d;

    iget-object v4, v1, Lcom/android/volley/toolbox/k$a;->b:Lcom/android/volley/s;

    invoke-interface {v3, v4}, Lcom/android/volley/toolbox/k$d;->a(Lcom/android/volley/s;)V

    goto :goto_1e

    :cond_45
    iget-object v0, p0, Lcom/android/volley/toolbox/k$4;->a:Lcom/android/volley/toolbox/k;

    iget-object v0, v0, Lcom/android/volley/toolbox/k;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/volley/toolbox/k$4;->a:Lcom/android/volley/toolbox/k;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/volley/toolbox/k;->c:Ljava/lang/Runnable;

    return-void
.end method
