.class public Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
.super Lcom/didi/virtualapk/utils/Reflector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/virtualapk/utils/Reflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuietReflector"
.end annotation


# instance fields
.field protected mIgnored:Ljava/lang/Throwable;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/didi/virtualapk/utils/Reflector;-><init>()V

    return-void
.end method

.method public static on(Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .registers 3
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/didi/virtualapk/utils/Reflector$QuietReflector;"
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance v0, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v1, "Type was null!"

    invoke-direct {v0, v1}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {p0, v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->on(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p0

    return-object p0
.end method

.method private static on(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .registers 3
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/didi/virtualapk/utils/Reflector$QuietReflector;"
        }
    .end annotation

    new-instance v0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    invoke-direct {v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;-><init>()V

    iput-object p0, v0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mType:Ljava/lang/Class;

    iput-object p1, v0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v0
.end method

.method public static on(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p0

    return-object p0
.end method

.method public static on(Ljava/lang/String;Z)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p0

    return-object p0
.end method

.method public static on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/ClassLoader;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5} :catch_c

    :try_start_5
    invoke-static {p0, v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->on(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p1
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_9} :catch_a

    return-object p1

    :catch_a
    move-exception p1

    goto :goto_e

    :catch_c
    move-exception p1

    move-object p0, v0

    :goto_e
    invoke-static {p0, p1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->on(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p0

    return-object p0
.end method

.method public static with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .registers 2
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_8

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->on(Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->on(Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->bind(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skipAlways()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    invoke-super {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->bind(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p1

    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object p0
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->bind(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p1

    return-object p1
.end method

.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    iput-object v1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    invoke-super {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p1

    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v1
.end method

.method public varargs callByCaller(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    iput-object v1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    invoke-super {p0, p1, p2}, Lcom/didi/virtualapk/utils/Reflector;->callByCaller(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p1

    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v1
.end method

.method public varargs constructor([Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .registers 3
    .param p1    # [Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/didi/virtualapk/utils/Reflector$QuietReflector;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skipAlways()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    invoke-super {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->constructor([Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p1

    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object p0
.end method

.method public bridge synthetic constructor([Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 2
    .param p1    # [Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->constructor([Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p1

    return-object p1
.end method

.method public field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skipAlways()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    invoke-super {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p1

    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object p0
.end method

.method public bridge synthetic field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()TR;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    iput-object v1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    invoke-super {p0}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    iput-object v1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    invoke-super {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p1

    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v1
.end method

.method public getIgnored()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v0
.end method

.method public varargs method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/didi/virtualapk/utils/Reflector$QuietReflector;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skipAlways()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    invoke-super {p0, p1, p2}, Lcom/didi/virtualapk/utils/Reflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p1

    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object p0
.end method

.method public bridge synthetic method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p1

    return-object p1
.end method

.method public varargs newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    iput-object v1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    invoke-super {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p1

    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v1
.end method

.method public set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    invoke-super {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p1

    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object p0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    invoke-super {p0, p1, p2}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p1

    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p1

    return-object p1
.end method

.method protected skip()Z
    .registers 2

    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skipAlways()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method protected skipAlways()Z
    .registers 2

    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mType:Ljava/lang/Class;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public unbind()Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .registers 1

    invoke-super {p0}, Lcom/didi/virtualapk/utils/Reflector;->unbind()Lcom/didi/virtualapk/utils/Reflector;

    return-object p0
.end method

.method public bridge synthetic unbind()Lcom/didi/virtualapk/utils/Reflector;
    .registers 2

    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->unbind()Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    return-object v0
.end method
