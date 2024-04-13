.class final Lcom/cyjh/elfin/floatingwindowprocess/a/c$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/floatingwindowprocess/a/c$1;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/floatingwindowprocess/a/c$1;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/a/c$1;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c$1$1;->a:Lcom/cyjh/elfin/floatingwindowprocess/a/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->getInstance()Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->stopLoop()V

    return-void
.end method
