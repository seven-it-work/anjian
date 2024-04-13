.class public Landroid/arch/lifecycle/MediatorLiveData;
.super Landroid/arch/lifecycle/MutableLiveData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/MediatorLiveData$Source;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/lifecycle/MutableLiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mSources:Landroid/arch/core/internal/SafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/internal/SafeIterableMap<",
            "Landroid/arch/lifecycle/LiveData<",
            "*>;",
            "Landroid/arch/lifecycle/MediatorLiveData$Source<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    new-instance v0, Landroid/arch/core/internal/SafeIterableMap;

    invoke-direct {v0}, Landroid/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/MediatorLiveData;->mSources:Landroid/arch/core/internal/SafeIterableMap;

    return-void
.end method


# virtual methods
.method public addSource(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/Observer;)V
    .registers 5
    .param p1    # Landroid/arch/lifecycle/LiveData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/arch/lifecycle/Observer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/arch/lifecycle/LiveData<",
            "TS;>;",
            "Landroid/arch/lifecycle/Observer<",
            "TS;>;)V"
        }
    .end annotation

    new-instance v0, Landroid/arch/lifecycle/MediatorLiveData$Source;

    invoke-direct {v0, p1, p2}, Landroid/arch/lifecycle/MediatorLiveData$Source;-><init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/Observer;)V

    iget-object v1, p0, Landroid/arch/lifecycle/MediatorLiveData;->mSources:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v1, p1, v0}, Landroid/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/lifecycle/MediatorLiveData$Source;

    if-eqz p1, :cond_1b

    iget-object v1, p1, Landroid/arch/lifecycle/MediatorLiveData$Source;->mObserver:Landroid/arch/lifecycle/Observer;

    if-eq v1, p2, :cond_1b

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This source was already added with the different observer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    if-eqz p1, :cond_1e

    return-void

    :cond_1e
    invoke-virtual {p0}, Landroid/arch/lifecycle/MediatorLiveData;->hasActiveObservers()Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-virtual {v0}, Landroid/arch/lifecycle/MediatorLiveData$Source;->plug()V

    :cond_27
    return-void
.end method

.method protected onActive()V
    .registers 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Landroid/arch/lifecycle/MediatorLiveData;->mSources:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0}, Landroid/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/MediatorLiveData$Source;

    invoke-virtual {v1}, Landroid/arch/lifecycle/MediatorLiveData$Source;->plug()V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method protected onInactive()V
    .registers 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Landroid/arch/lifecycle/MediatorLiveData;->mSources:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0}, Landroid/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/MediatorLiveData$Source;

    invoke-virtual {v1}, Landroid/arch/lifecycle/MediatorLiveData$Source;->unplug()V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public removeSource(Landroid/arch/lifecycle/LiveData;)V
    .registers 3
    .param p1    # Landroid/arch/lifecycle/LiveData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/arch/lifecycle/LiveData<",
            "TS;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/arch/lifecycle/MediatorLiveData;->mSources:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0, p1}, Landroid/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/lifecycle/MediatorLiveData$Source;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/arch/lifecycle/MediatorLiveData$Source;->unplug()V

    :cond_d
    return-void
.end method
