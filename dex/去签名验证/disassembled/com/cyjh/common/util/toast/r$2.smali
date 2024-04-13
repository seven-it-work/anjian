.class final Lcom/cyjh/common/util/toast/r$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/common/util/toast/r;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/cyjh/common/util/toast/r;


# direct methods
.method constructor <init>(Lcom/cyjh/common/util/toast/r;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/common/util/toast/r$2;->b:Lcom/cyjh/common/util/toast/r;

    iput-object p2, p0, Lcom/cyjh/common/util/toast/r$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/common/util/toast/r$2;->b:Lcom/cyjh/common/util/toast/r;

    invoke-static {v0}, Lcom/cyjh/common/util/toast/r;->a(Lcom/cyjh/common/util/toast/r;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/common/util/toast/r$2;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
