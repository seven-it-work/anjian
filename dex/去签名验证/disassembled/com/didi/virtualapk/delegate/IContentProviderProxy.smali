.class public Lcom/didi/virtualapk/delegate/IContentProviderProxy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "VA.IContentProviderProxy"


# instance fields
.field private mBase:Landroid/content/IContentProvider;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/IContentProvider;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/didi/virtualapk/delegate/IContentProviderProxy;->mBase:Landroid/content/IContentProvider;

    iput-object p1, p0, Lcom/didi/virtualapk/delegate/IContentProviderProxy;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getBundleParameter([Ljava/lang/Object;)Landroid/os/Bundle;
    .registers 4

    if-eqz p1, :cond_14

    const/4 v0, 0x0

    :goto_3
    array-length v1, p1

    if-ge v0, v1, :cond_14

    aget-object v1, p1, v0

    instance-of v1, v1, Landroid/os/Bundle;

    if-eqz v1, :cond_11

    aget-object p1, p1, v0

    check-cast p1, Landroid/os/Bundle;

    return-object p1

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public static newInstance(Landroid/content/Context;Landroid/content/IContentProvider;)Landroid/content/IContentProvider;
    .registers 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/IContentProvider;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/didi/virtualapk/delegate/IContentProviderProxy;

    invoke-direct {v2, p0, p1}, Lcom/didi/virtualapk/delegate/IContentProviderProxy;-><init>(Landroid/content/Context;Landroid/content/IContentProvider;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/IContentProvider;

    return-object p0
.end method

.method private wrapperUri(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_16

    const/4 v2, 0x0

    :goto_5
    array-length v3, p2

    if-ge v2, v3, :cond_16

    aget-object v3, p2, v2

    instance-of v3, v3, Landroid/net/Uri;

    if-eqz v3, :cond_13

    aget-object v3, p2, v2

    check-cast v3, Landroid/net/Uri;

    goto :goto_18

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_16
    move-object v3, v0

    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "call"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-direct {p0, p2}, Lcom/didi/virtualapk/delegate/IContentProviderProxy;->getBundleParameter([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_36

    const-string v4, "wrapper_uri"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_36

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :cond_36
    if-nez v3, :cond_39

    return-void

    :cond_39
    iget-object v4, p0, Lcom/didi/virtualapk/delegate/IContentProviderProxy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/didi/virtualapk/PluginManager;->getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/didi/virtualapk/PluginManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_6b

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/didi/virtualapk/internal/PluginContentResolver;->wrapperUri(Lcom/didi/virtualapk/internal/LoadedPlugin;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "call"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_69

    const-string p1, "wrapper_uri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_69
    aput-object v1, p2, v2

    :cond_6b
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p1, "VA.IContentProviderProxy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2, p3}, Lcom/didi/virtualapk/delegate/IContentProviderProxy;->wrapperUri(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    :try_start_24
    iget-object p1, p0, Lcom/didi/virtualapk/delegate/IContentProviderProxy;->mBase:Landroid/content/IContentProvider;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_24 .. :try_end_2a} :catch_2b

    return-object p1

    :catch_2b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    throw p1
.end method
