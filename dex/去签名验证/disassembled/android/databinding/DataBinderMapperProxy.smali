.class public Landroid/databinding/DataBinderMapperProxy;
.super Landroid/databinding/DataBinderMapper;

# interfaces
.implements Lcom/didi/virtualapk/PluginManager$Callback;


# static fields
.field public static final TAG:Ljava/lang/String; = "VA.DataBinderMapperProxy"


# instance fields
.field private mCache:[Landroid/databinding/DataBinderMapper;

.field private final mMappers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/databinding/DataBinderMapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/databinding/DataBinderMapper;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/databinding/DataBinderMapperProxy;->mMappers:Ljava/util/LinkedList;

    check-cast p1, Landroid/databinding/DataBinderMapper;

    invoke-direct {p0, p1}, Landroid/databinding/DataBinderMapperProxy;->addMapper(Landroid/databinding/DataBinderMapper;)V

    return-void
.end method

.method private addMapper(Landroid/databinding/DataBinderMapper;)V
    .registers 6

    iget-object v0, p0, Landroid/databinding/DataBinderMapperProxy;->mMappers:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/databinding/DataBinderMapperProxy;->mMappers:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/databinding/DataBinderMapperProxy;->mCache:[Landroid/databinding/DataBinderMapper;

    iget-object v1, p0, Landroid/databinding/DataBinderMapperProxy;->mMappers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_2e

    const-string v0, "VA.DataBinderMapperProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Added mapper: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", size: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_2e
    move-exception p1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p1
.end method

.method private getCache()[Landroid/databinding/DataBinderMapper;
    .registers 4

    iget-object v0, p0, Landroid/databinding/DataBinderMapperProxy;->mMappers:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/databinding/DataBinderMapperProxy;->mCache:[Landroid/databinding/DataBinderMapper;

    if-nez v1, :cond_19

    iget-object v1, p0, Landroid/databinding/DataBinderMapperProxy;->mMappers:Ljava/util/LinkedList;

    iget-object v2, p0, Landroid/databinding/DataBinderMapperProxy;->mMappers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/databinding/DataBinderMapper;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/databinding/DataBinderMapper;

    iput-object v1, p0, Landroid/databinding/DataBinderMapperProxy;->mCache:[Landroid/databinding/DataBinderMapper;

    :cond_19
    iget-object v1, p0, Landroid/databinding/DataBinderMapperProxy;->mCache:[Landroid/databinding/DataBinderMapper;

    monitor-exit v0

    return-object v1

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method


# virtual methods
.method public convertBrIdToString(I)Ljava/lang/String;
    .registers 6

    invoke-direct {p0}, Landroid/databinding/DataBinderMapperProxy;->getCache()[Landroid/databinding/DataBinderMapper;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/databinding/DataBinderMapper;->convertBrIdToString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    return-object v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDataBinder(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;
    .registers 8

    invoke-direct {p0}, Landroid/databinding/DataBinderMapperProxy;->getCache()[Landroid/databinding/DataBinderMapper;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2, p3}, Landroid/databinding/DataBinderMapper;->getDataBinder(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object v3

    if-eqz v3, :cond_11

    return-object v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDataBinder(Landroid/databinding/DataBindingComponent;[Landroid/view/View;I)Landroid/databinding/ViewDataBinding;
    .registers 8

    invoke-direct {p0}, Landroid/databinding/DataBinderMapperProxy;->getCache()[Landroid/databinding/DataBinderMapper;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2, p3}, Landroid/databinding/DataBinderMapper;->getDataBinder(Landroid/databinding/DataBindingComponent;[Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object v3

    if-eqz v3, :cond_11

    return-object v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLayoutId(Ljava/lang/String;)I
    .registers 7

    invoke-direct {p0}, Landroid/databinding/DataBinderMapperProxy;->getCache()[Landroid/databinding/DataBinderMapper;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_15

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Landroid/databinding/DataBinderMapper;->getLayoutId(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_12

    return v4

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_15
    return v2
.end method

.method public onAddedLoadedPlugin(Lcom/didi/virtualapk/internal/LoadedPlugin;)V
    .registers 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.databinding.DataBinderMapper_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VA.DataBinderMapperProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Try to find the class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/databinding/DataBinderMapper;

    invoke-direct {p0, p1}, Landroid/databinding/DataBinderMapperProxy;->addMapper(Landroid/databinding/DataBinderMapper;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    return-void

    :catch_40
    move-exception p1

    const-string v0, "VA.DataBinderMapperProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
