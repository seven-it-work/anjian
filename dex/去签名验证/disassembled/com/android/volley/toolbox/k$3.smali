.class final Lcom/android/volley/toolbox/k$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/k;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;Lcom/android/volley/toolbox/l$a;)Lcom/android/volley/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/android/volley/toolbox/k;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/k;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/volley/toolbox/k$3;->b:Lcom/android/volley/toolbox/k;

    iput-object p2, p0, Lcom/android/volley/toolbox/k$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/s;)V
    .registers 5

    iget-object v0, p0, Lcom/android/volley/toolbox/k$3;->b:Lcom/android/volley/toolbox/k;

    iget-object v1, p0, Lcom/android/volley/toolbox/k$3;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/volley/toolbox/k;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/toolbox/k$a;

    if-eqz v2, :cond_13

    iput-object p1, v2, Lcom/android/volley/toolbox/k$a;->b:Lcom/android/volley/s;

    invoke-virtual {v0, v1, v2}, Lcom/android/volley/toolbox/k;->a(Ljava/lang/String;Lcom/android/volley/toolbox/k$a;)V

    :cond_13
    return-void
.end method
