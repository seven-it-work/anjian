.class public Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;
.super Landroid/arch/lifecycle/ViewModelProvider$NewInstanceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/ViewModelProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidViewModelFactory"
.end annotation


# static fields
.field private static sInstance:Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;


# instance fields
.field private mApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 2
    .param p1    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/arch/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    iput-object p1, p0, Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;->mApplication:Landroid/app/Application;

    return-void
.end method

.method public static getInstance(Landroid/app/Application;)Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;
    .registers 2
    .param p0    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;->sInstance:Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    if-nez v0, :cond_b

    new-instance v0, Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    sput-object v0, Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;->sInstance:Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    :cond_b
    sget-object p0, Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;->sInstance:Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    return-object p0
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;
    .registers 6
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/arch/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-class v0, Landroid/arch/lifecycle/AndroidViewModel;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_75

    const/4 v0, 0x1

    :try_start_9
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/app/Application;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;->mApplication:Landroid/app/Application;

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/ViewModel;
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_20} :catch_60
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_20} :catch_4b
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_20} :catch_36
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_20} :catch_21

    return-object v0

    :catch_21
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot create an instance of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_36
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot create an instance of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot create an instance of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_60
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot create an instance of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_75
    invoke-super {p0, p1}, Landroid/arch/lifecycle/ViewModelProvider$NewInstanceFactory;->create(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    return-object p1
.end method
