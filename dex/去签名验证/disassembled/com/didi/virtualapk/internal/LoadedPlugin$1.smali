.class Lcom/didi/virtualapk/internal/LoadedPlugin$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/virtualapk/internal/LoadedPlugin;->invokeApplication()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

.field final synthetic val$temp:[Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/didi/virtualapk/internal/LoadedPlugin;[Ljava/lang/Exception;)V
    .registers 3

    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$1;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iput-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$1;->val$temp:[Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$1;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$1;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$1;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v3, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$1;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v3, v3, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v3}, Lcom/didi/virtualapk/PluginManager;->getInstrumentation()Lcom/didi/virtualapk/internal/VAInstrumentation;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/didi/virtualapk/internal/LoadedPlugin;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception v1

    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$1;->val$temp:[Ljava/lang/Exception;

    aput-object v1, v2, v0

    return-void
.end method
