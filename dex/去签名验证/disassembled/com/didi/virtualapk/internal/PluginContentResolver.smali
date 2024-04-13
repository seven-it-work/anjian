.class public Lcom/didi/virtualapk/internal/PluginContentResolver;
.super Landroid/content/ContentResolverWrapper;


# instance fields
.field private mPluginManager:Lcom/didi/virtualapk/PluginManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/ContentResolverWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/didi/virtualapk/PluginManager;->getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/internal/PluginContentResolver;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    return-void
.end method

.method public static getAuthority(Landroid/content/Context;)Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBundleForCall(Landroid/net/Uri;)Landroid/os/Bundle;
    .registers 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "wrapper_uri"

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUri(Landroid/content/Context;)Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wrapperUri(Lcom/didi/virtualapk/internal/LoadedPlugin;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 6
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getHostContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/?plugin="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getLocation()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "&pkg="

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "&uri="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 5

    iget-object v0, p0, Lcom/didi/virtualapk/internal/PluginContentResolver;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/didi/virtualapk/PluginManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object p1, p0, Lcom/didi/virtualapk/internal/PluginContentResolver;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {p1}, Lcom/didi/virtualapk/PluginManager;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object p1

    return-object p1

    :cond_10
    invoke-super {p0, p1, p2}, Landroid/content/ContentResolverWrapper;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object p1

    return-object p1
.end method

.method protected acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 5

    iget-object v0, p0, Lcom/didi/virtualapk/internal/PluginContentResolver;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/didi/virtualapk/PluginManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object p1, p0, Lcom/didi/virtualapk/internal/PluginContentResolver;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {p1}, Lcom/didi/virtualapk/PluginManager;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object p1

    return-object p1

    :cond_10
    invoke-super {p0, p1, p2}, Landroid/content/ContentResolverWrapper;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object p1

    return-object p1
.end method

.method protected acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-object v0, p0, Lcom/didi/virtualapk/internal/PluginContentResolver;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/didi/virtualapk/PluginManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object p1, p0, Lcom/didi/virtualapk/internal/PluginContentResolver;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {p1}, Lcom/didi/virtualapk/PluginManager;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object p1

    return-object p1

    :cond_10
    invoke-super {p0, p1, p2}, Landroid/content/ContentResolverWrapper;->acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object p1

    return-object p1
.end method

.method public appNotRespondingViaProvider(Landroid/content/IContentProvider;)V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    return-void
.end method

.method public releaseProvider(Landroid/content/IContentProvider;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public releaseUnstableProvider(Landroid/content/IContentProvider;)Z
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method protected resolveUserIdFromAuthority(Ljava/lang/String;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public unstableProviderDied(Landroid/content/IContentProvider;)V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    return-void
.end method
