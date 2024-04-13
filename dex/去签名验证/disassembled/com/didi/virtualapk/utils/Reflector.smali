.class public Lcom/didi/virtualapk/utils/Reflector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/virtualapk/utils/Reflector$QuietReflector;,
        Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "VA.Reflector"


# instance fields
.field protected mCaller:Ljava/lang/Object;

.field protected mConstructor:Ljava/lang/reflect/Constructor;

.field protected mField:Ljava/lang/reflect/Field;

.field protected mMethod:Ljava/lang/reflect/Method;

.field protected mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static on(Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/didi/virtualapk/utils/Reflector;"
        }
    .end annotation

    new-instance v0, Lcom/didi/virtualapk/utils/Reflector;

    invoke-direct {v0}, Lcom/didi/virtualapk/utils/Reflector;-><init>()V

    iput-object p0, v0, Lcom/didi/virtualapk/utils/Reflector;->mType:Ljava/lang/Class;

    return-object v0
.end method

.method public static on(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    const-class v0, Lcom/didi/virtualapk/utils/Reflector;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/didi/virtualapk/utils/Reflector;->on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p0

    return-object p0
.end method

.method public static on(Ljava/lang/String;Z)Lcom/didi/virtualapk/utils/Reflector;
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    const-class v0, Lcom/didi/virtualapk/utils/Reflector;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/didi/virtualapk/utils/Reflector;->on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p0

    return-object p0
.end method

.method public static on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/ClassLoader;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/didi/virtualapk/utils/Reflector;->on(Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    new-instance p1, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string p2, "Oops!"

    invoke-direct {p1, p2, p0}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 2
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector;->on(Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/virtualapk/utils/Reflector;->bind(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
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

    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->checked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mCaller:Ljava/lang/Object;

    return-object p0
.end method

.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mCaller:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/didi/virtualapk/utils/Reflector;->callByCaller(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mMethod:Ljava/lang/reflect/Method;

    const-string v1, "Method"

    invoke-virtual {p0, p1, v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->check(Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/String;)V

    :try_start_7
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_d} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_d} :catch_e

    return-object p1

    :catch_e
    move-exception p1

    new-instance p2, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v0, "Oops!"

    invoke-direct {p2, v0, p1}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_17
    move-exception p1

    new-instance p2, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v0, "Oops!"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected check(Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/reflect/Member;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    if-nez p2, :cond_19

    new-instance p1, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " was null!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    if-nez p1, :cond_2d

    invoke-interface {p2}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result p2

    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p2

    if-nez p2, :cond_2d

    new-instance p1, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string p2, "Need a caller!"

    invoke-direct {p1, p2}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2d
    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->checked(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected checked(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    if-eqz p1, :cond_2e

    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p1

    :cond_b
    new-instance v0, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Caller ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] is not a instance of type ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mType:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    return-object p1
.end method

.method public varargs constructor([Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 4
    .param p1    # [Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/didi/virtualapk/utils/Reflector;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mConstructor:Ljava/lang/reflect/Constructor;

    iget-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mConstructor:Ljava/lang/reflect/Constructor;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mMethod:Ljava/lang/reflect/Method;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p1

    new-instance v0, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v1, "Oops!"

    invoke-direct {v0, v1, p1}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    iget-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mConstructor:Ljava/lang/reflect/Constructor;

    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mMethod:Ljava/lang/reflect/Method;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p1

    new-instance v0, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v1, "Oops!"

    invoke-direct {v0, v1, p1}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected findField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    iget-object v1, p0, Lcom/didi/virtualapk/utils/Reflector;->mType:Ljava/lang/Class;

    :goto_a
    if-eqz v1, :cond_16

    :try_start_c
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldException; {:try_start_c .. :try_end_10} :catch_11

    return-object v2

    :catch_11
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_a

    :cond_16
    throw v0
.end method

.method protected varargs findMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
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
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mType:Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    iget-object v1, p0, Lcom/didi/virtualapk/utils/Reflector;->mType:Ljava/lang/Class;

    :goto_a
    if-eqz v1, :cond_16

    :try_start_c
    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_10} :catch_11

    return-object v2

    :catch_11
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_a

    :cond_16
    throw v0
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mCaller:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/didi/virtualapk/utils/Reflector;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    const-string v1, "Field"

    invoke-virtual {p0, p1, v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->check(Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/String;)V

    :try_start_7
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_d} :catch_e

    return-object p1

    :catch_e
    move-exception p1

    new-instance v0, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v1, "Oops!"

    invoke-direct {v0, v1, p1}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public varargs method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;
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
            "Lcom/didi/virtualapk/utils/Reflector;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/didi/virtualapk/utils/Reflector;->findMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mMethod:Ljava/lang/reflect/Method;

    iget-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mMethod:Ljava/lang/reflect/Method;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mConstructor:Ljava/lang/reflect/Constructor;

    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mField:Ljava/lang/reflect/Field;
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p1

    new-instance p2, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v0, "Oops!"

    invoke-direct {p2, v0, p1}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mConstructor:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_c

    new-instance p1, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v0, "Constructor was null!"

    invoke-direct {p1, v0}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_12
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_12} :catch_1c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_12} :catch_13

    return-object p1

    :catch_13
    move-exception p1

    new-instance v0, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v1, "Oops!"

    invoke-direct {v0, v1, p1}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1c
    move-exception p1

    new-instance v0, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v1, "Oops!"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mCaller:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 5
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

    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    const-string v1, "Field"

    invoke-virtual {p0, p1, v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->check(Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/String;)V

    :try_start_7
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p1

    new-instance p2, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v0, "Oops!"

    invoke-direct {p2, v0, p1}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public unbind()Lcom/didi/virtualapk/utils/Reflector;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mCaller:Ljava/lang/Object;

    return-object p0
.end method
