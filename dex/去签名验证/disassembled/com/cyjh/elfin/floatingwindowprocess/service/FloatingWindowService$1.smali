.class final Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService$1;->a:Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/entity/ElfinFloatViewEvent;

    const/16 v2, 0x2775

    invoke-direct {v1, v2}, Lcom/cyjh/elfin/entity/ElfinFloatViewEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    return-void
.end method
