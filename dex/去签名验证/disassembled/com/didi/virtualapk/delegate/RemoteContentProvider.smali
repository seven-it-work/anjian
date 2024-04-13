.class public Lcom/didi/virtualapk/delegate/RemoteContentProvider;
.super Landroid/content/ContentProvider;


# static fields
.field public static final KEY_PKG:Ljava/lang/String; = "pkg"

.field public static final KEY_PLUGIN:Ljava/lang/String; = "plugin"

.field public static final KEY_URI:Ljava/lang/String; = "uri"

.field public static final KEY_WRAPPER_URI:Ljava/lang/String; = "wrapper_uri"

.field private static final TAG:Ljava/lang/String; = "VA.RemoteContentProvider"

.field private static sCachedProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/ContentProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->sCachedProviders:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->sCachedProviders:Ljava/util/Map;

    return-object v0
.end method

.method public static getAuthority(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".VirtualAPK.Provider"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;
    .registers 11

    invoke-virtual {p0}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/virtualapk/PluginManager;->getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object v3

    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->sCachedProviders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProvider;

    if-eqz v1, :cond_21

    return-object v1

    :cond_21
    sget-object v7, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->sCachedProviders:Ljava/util/Map;

    monitor-enter v7

    :try_start_24
    const-string v1, "pkg"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v1
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_66

    if-nez v1, :cond_45

    :try_start_30
    new-instance v1, Ljava/io/File;

    const-string v2, "plugin"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/didi/virtualapk/PluginManager;->loadPlugin(Ljava/io/File;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3e} :catch_3f
    .catchall {:try_start_30 .. :try_end_3e} :catchall_66

    goto :goto_45

    :catch_3f
    move-exception v1

    :try_start_40
    const-string v2, "VA.RemoteContentProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_45
    :goto_45
    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lcom/didi/virtualapk/PluginManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    if-eqz v5, :cond_63

    new-instance v8, Lcom/didi/virtualapk/delegate/RemoteContentProvider$1;

    move-object v1, v8

    move-object v2, p0

    move-object v4, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/didi/virtualapk/delegate/RemoteContentProvider$1;-><init>(Lcom/didi/virtualapk/delegate/RemoteContentProvider;Lcom/didi/virtualapk/PluginManager;Landroid/net/Uri;Landroid/content/pm/ProviderInfo;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v8, p1}, Lcom/didi/virtualapk/utils/RunUtil;->runOnUiThread(Ljava/lang/Runnable;Z)V

    sget-object p1, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->sCachedProviders:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentProvider;

    monitor-exit v7

    return-object p1

    :cond_63
    monitor-exit v7

    const/4 p1, 0x0

    return-object p1

    :catchall_66
    move-exception p1

    monitor-exit v7
    :try_end_68
    .catchall {:try_start_40 .. :try_end_68} :catchall_66

    throw p1
.end method

.method public static getUri(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/content/ContentProviderOperation;

    const-string v2, "mUri"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "uri"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_4d

    goto :goto_11

    :cond_2f
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4a

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProviderOperation;

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;

    move-result-object v1

    if-eqz v1, :cond_4a

    invoke-virtual {v1, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    return-object p1

    :cond_4a
    new-array p1, v0, [Landroid/content/ContentProviderResult;

    return-object p1

    :catch_4d
    new-array p1, v0, [Landroid/content/ContentProviderResult;

    return-object p1
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 5

    invoke-direct {p0, p1}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7

    const-string v0, "VA.RemoteContentProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with extras : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p3, :cond_3c

    const-string v1, "wrapper_uri"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_27

    return-object v0

    :cond_27
    const-string v1, "wrapper_uri"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;

    move-result-object v1

    if-eqz v1, :cond_3c

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_3c
    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    invoke-direct {p0, p1}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5

    invoke-direct {p0, p1}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v0, :cond_14

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    :cond_14
    return-object p1
.end method

.method public onCreate()Z
    .registers 4

    const-string v0, "VA.RemoteContentProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate, current thread:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12

    invoke-direct {p0, p1}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v0, :cond_19

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    invoke-direct {p0, p1}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method
