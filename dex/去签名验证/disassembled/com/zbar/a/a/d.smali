.class public final Lcom/zbar/a/a/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "d"

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Lcom/zbar/a/a/d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_d

    :goto_b
    move-object v0, v3

    goto :goto_49

    :cond_d
    const-string v4, "getService"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-static {v0, v4, v5}, Lcom/zbar/a/a/d;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_1c

    goto :goto_b

    :cond_1c
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "hardware"

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/zbar/a/a/d;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_29

    goto :goto_b

    :cond_29
    const-string v4, "android.os.IHardwareService$Stub"

    invoke-static {v4}, Lcom/zbar/a/a/d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_32

    goto :goto_b

    :cond_32
    const-string v5, "asInterface"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Lcom/zbar/a/a/d;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-nez v4, :cond_41

    goto :goto_b

    :cond_41
    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v4, v3, v5}, Lcom/zbar/a/a/d;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_49
    sput-object v0, Lcom/zbar/a/a/d;->b:Ljava/lang/Object;

    if-nez v0, :cond_4e

    goto :goto_5e

    :cond_4e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "setFlashlightEnabled"

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Lcom/zbar/a/a/d;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    :goto_5e
    sput-object v3, Lcom/zbar/a/a/d;->c:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/zbar/a/a/d;->b:Ljava/lang/Object;

    if-nez v0, :cond_6c

    sget-object v0, Lcom/zbar/a/a/d;->a:Ljava/lang/String;

    const-string v1, "This device does supports control of a flashlight"

    :goto_68
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6c
    sget-object v0, Lcom/zbar/a/a/d;->a:Ljava/lang/String;

    const-string v1, "This device does not support control of a flashlight"

    goto :goto_68
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_5} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_5} :catch_6

    return-object v1

    :catch_6
    move-exception v1

    sget-object v2, Lcom/zbar/a/a/d;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected error while finding class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1a
    return-object v0
.end method

.method private static varargs a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_5} :catch_31
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_5} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_5} :catch_6

    return-object p1

    :catch_6
    move-exception p1

    sget-object p2, Lcom/zbar/a/a/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected error while invoking "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_17
    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catch_1b
    move-exception p1

    sget-object p2, Lcom/zbar/a/a/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected error while invoking "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_17

    :catch_31
    move-exception p1

    sget-object p2, Lcom/zbar/a/a/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected error while invoking "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_10
.end method

.method private static varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_5} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    move-exception p0

    sget-object p2, Lcom/zbar/a/a/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected error while finding method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1a
    return-object v0
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "setFlashlightEnabled"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/zbar/a/a/d;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .registers 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/zbar/a/a/d;->a(Z)V

    return-void
.end method

.method private static a(Z)V
    .registers 5

    sget-object v0, Lcom/zbar/a/a/d;->b:Ljava/lang/Object;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/zbar/a/a/d;->c:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/zbar/a/a/d;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/zbar/a/a/d;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-void
.end method

.method public static b()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zbar/a/a/d;->a(Z)V

    return-void
.end method

.method private static c()Ljava/lang/Object;
    .registers 8

    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Lcom/zbar/a/a/d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0, v2, v4}, Lcom/zbar/a/a/d;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_1b

    return-object v1

    :cond_1b
    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "hardware"

    aput-object v4, v2, v6

    invoke-static {v0, v1, v2}, Lcom/zbar/a/a/d;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_28

    return-object v1

    :cond_28
    const-string v2, "android.os.IHardwareService$Stub"

    invoke-static {v2}, Lcom/zbar/a/a/d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_31

    return-object v1

    :cond_31
    const-string v4, "asInterface"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/zbar/a/a/d;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-nez v2, :cond_40

    return-object v1

    :cond_40
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v1, v3}, Lcom/zbar/a/a/d;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
