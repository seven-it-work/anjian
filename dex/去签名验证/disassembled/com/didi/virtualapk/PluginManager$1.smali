.class Lcom/didi/virtualapk/PluginManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/virtualapk/PluginManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/virtualapk/PluginManager;


# direct methods
.method constructor <init>(Lcom/didi/virtualapk/PluginManager;)V
    .registers 2

    iput-object p1, p0, Lcom/didi/virtualapk/PluginManager$1;->this$0:Lcom/didi/virtualapk/PluginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager$1;->this$0:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0}, Lcom/didi/virtualapk/PluginManager;->doInWorkThread()V

    return-void
.end method
