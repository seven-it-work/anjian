.class Lcom/didi/virtualapk/internal/PluginContext;
.super Landroid/content/ContextWrapper;


# instance fields
.field private final mPlugin:Lcom/didi/virtualapk/internal/LoadedPlugin;


# direct methods
.method public constructor <init>(Lcom/didi/virtualapk/internal/LoadedPlugin;)V
    .registers 3

    invoke-virtual {p1}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPluginManager()Lcom/didi/virtualapk/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/didi/virtualapk/internal/PluginContext;->mPlugin:Lcom/didi/virtualapk/internal/LoadedPlugin;

    return-void
.end method

.method public constructor <init>(Lcom/didi/virtualapk/internal/LoadedPlugin;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/didi/virtualapk/internal/PluginContext;->mPlugin:Lcom/didi/virtualapk/internal/LoadedPlugin;

    return-void
.end method

.method private getHostContext()Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/PluginContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/internal/PluginContext;->mPlugin:Lcom/didi/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/internal/PluginContext;->mPlugin:Lcom/didi/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/internal/PluginContext;->mPlugin:Lcom/didi/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .registers 3

    new-instance v0, Lcom/didi/virtualapk/internal/PluginContentResolver;

    invoke-direct {p0}, Lcom/didi/virtualapk/internal/PluginContext;->getHostContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/virtualapk/internal/PluginContentResolver;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/internal/PluginContext;->mPlugin:Lcom/didi/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/internal/PluginContext;->mPlugin:Lcom/didi/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :goto_8
    invoke-direct {p0}, Lcom/didi/virtualapk/internal/PluginContext;->getHostContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_11
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_8

    :cond_1a
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/internal/PluginContext;->mPlugin:Lcom/didi/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3

    iget-object v0, p0, Lcom/didi/virtualapk/internal/PluginContext;->mPlugin:Lcom/didi/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPluginManager()Lcom/didi/virtualapk/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/internal/ComponentsHandler;->transformIntentToExplicitAsNeeded(Landroid/content/Intent;)Landroid/content/Intent;

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
