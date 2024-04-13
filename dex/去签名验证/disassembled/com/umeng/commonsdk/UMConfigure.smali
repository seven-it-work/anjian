.class public Lcom/umeng/commonsdk/UMConfigure;
.super Ljava/lang/Object;


# static fields
.field public static final DEVICE_TYPE_BOX:I = 0x2

.field public static final DEVICE_TYPE_PHONE:I = 0x1

.field private static final KEY_FILE_NAME_APPKEY:Ljava/lang/String; = "APPKEY"

.field private static final KEY_FILE_NAME_LOG:Ljava/lang/String; = "LOG"

.field private static final KEY_METHOD_NAME_PUSH_SETCHANNEL:Ljava/lang/String; = "setMessageChannel"

.field private static final KEY_METHOD_NAME_PUSH_SET_SECRET:Ljava/lang/String; = "setSecret"

.field private static final KEY_METHOD_NAME_SETAPPKEY:Ljava/lang/String; = "setAppkey"

.field private static final KEY_METHOD_NAME_SETCHANNEL:Ljava/lang/String; = "setChannel"

.field private static final KEY_METHOD_NAME_SETDEBUGMODE:Ljava/lang/String; = "setDebugMode"

.field private static final TAG:Ljava/lang/String; = "UMConfigure"

.field private static debugLog:Z

.field private static readUMAmapTimer:Lcom/umeng/commonsdk/amap/b;

.field private static writeUMAmapTimer:Lcom/umeng/commonsdk/amap/b;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    sget-boolean v0, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v0, :cond_21

    const-string v0, "UMConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getClass e is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getDecInstanceObject(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_96

    const/4 v1, 0x0

    :try_start_4
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_a} :catch_b

    goto :goto_28

    :catch_b
    move-exception p0

    sget-boolean v2, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v2, :cond_27

    const-string v2, "UMConfigure"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getDecInstanceObject e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    move-object p0, v0

    :goto_28
    if-eqz p0, :cond_8b

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :try_start_2e
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_34} :catch_78
    .catch Ljava/lang/InstantiationException; {:try_start_2e .. :try_end_34} :catch_65
    .catch Ljava/lang/IllegalAccessException; {:try_start_2e .. :try_end_34} :catch_52
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2e .. :try_end_34} :catch_35

    return-object p0

    :catch_35
    move-exception p0

    sget-boolean v1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v1, :cond_96

    const-string v1, "UMConfigure"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDecInstanceObject e is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_47
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    :catch_52
    move-exception p0

    sget-boolean v1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v1, :cond_96

    const-string v1, "UMConfigure"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDecInstanceObject e is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_47

    :catch_65
    move-exception p0

    sget-boolean v1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v1, :cond_96

    const-string v1, "UMConfigure"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDecInstanceObject e is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_47

    :catch_78
    move-exception p0

    sget-boolean v1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v1, :cond_96

    const-string v1, "UMConfigure"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDecInstanceObject e is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_47

    :cond_8b
    sget-boolean p0, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p0, :cond_96

    const-string p0, "UMConfigure"

    const-string v1, "getDecInstanceObject constructor is  null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_96
    :goto_96
    move-object p0, v0

    return-object p0
.end method

.method private static getDecMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
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

    if-eqz p0, :cond_38

    :try_start_3
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_7} :catch_9

    move-object v0, p0

    goto :goto_25

    :catch_9
    move-exception p0

    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_25

    const-string p1, "UMConfigure"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "getDecMethod e is "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    :goto_25
    if-eqz v0, :cond_2c

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object v0

    :cond_2c
    sget-boolean p0, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p0, :cond_41

    const-string p0, "UMConfigure"

    const-string p1, "getDecMethod met is null"

    :goto_34
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_38
    sget-boolean p0, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p0, :cond_41

    const-string p0, "UMConfigure"

    const-string p1, "getDecMethod className is null"

    goto :goto_34

    :cond_41
    return-object v0
.end method

.method private getInstanceObject(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_37

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_6} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    sget-boolean v0, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v0, :cond_42

    const-string v0, "UMConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getInstanceObject e is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    :catch_24
    move-exception p1

    sget-boolean v0, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v0, :cond_42

    const-string v0, "UMConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getInstanceObject e is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    :cond_37
    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_42

    const-string p1, "UMConfigure"

    const-string v0, "getInstanceObject cla is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    :goto_42
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getUMIDString(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getUMId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static init(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1, p2}, Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 12

    if-nez p0, :cond_14

    :try_start_2
    sget-boolean p0, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p0, :cond_d

    const-string p0, "UMConfigure"

    const-string p1, "context is null !!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void

    :catch_e
    move-exception p0

    goto/16 :goto_285

    :catch_11
    move-exception p0

    goto/16 :goto_29d

    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkeyByXML(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :cond_22
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getChannelByXML(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :cond_2c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string p2, "Unknown"

    :cond_34
    invoke-static {p0, p2}, Lcom/umeng/commonsdk/utils/UMUtils;->setChannel(Landroid/content/Context;Ljava/lang/String;)V

    sget-boolean v0, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v0, :cond_4e

    const-string v0, "UMConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "channel is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->saveSDKComponent()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_51} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_51} :catch_e

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_53
    const-string v2, "com.umeng.message.PushAgent"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_a4

    const-string v3, "getInstance"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_a4

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a4

    const-string v4, "setAppkey"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_a4

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_8b} :catch_8c
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_8b} :catch_e

    goto :goto_a4

    :catch_8c
    move-exception v2

    :try_start_8d
    sget-boolean v3, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v3, :cond_a4

    const-string v3, "UMConfigure"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "e is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_a4} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_a4} :catch_e

    :cond_a4
    :goto_a4
    :try_start_a4
    const-string v2, "com.umeng.message.PushAgent"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_f5

    const-string v3, "getInstance"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_f5

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_f5

    const-string v4, "setMessageChannel"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_f5

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p2, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_dc} :catch_dd
    .catch Ljava/lang/Throwable; {:try_start_a4 .. :try_end_dc} :catch_e

    goto :goto_f5

    :catch_dd
    move-exception p2

    :try_start_de
    sget-boolean v2, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v2, :cond_f5

    const-string v2, "UMConfigure"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_f5} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_de .. :try_end_f5} :catch_e

    :cond_f5
    :goto_f5
    :try_start_f5
    const-string p2, "com.umeng.socialize.UMShareAPI"

    invoke-static {p2}, Lcom/umeng/commonsdk/UMConfigure;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-string v2, "APPKEY"

    invoke-static {p2, v2, p1}, Lcom/umeng/commonsdk/UMConfigure;->setFile(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_13a

    const-string v2, "init"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {p2, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_13a

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    aput-object p1, v3, v1

    invoke-virtual {v2, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_121
    .catch Ljava/lang/Throwable; {:try_start_f5 .. :try_end_121} :catch_122
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_121} :catch_11

    goto :goto_13a

    :catch_122
    move-exception p2

    :try_start_123
    sget-boolean v2, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v2, :cond_13a

    const-string v2, "UMConfigure"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "e is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13a
    :goto_13a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_14c

    sget-boolean p0, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p0, :cond_14b

    const-string p0, "UMConfigure"

    const-string p1, "appkey is null !!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14b
    return-void

    :cond_14c
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/utils/UMUtils;->setAppkey(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getLastAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_173

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_173

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_170

    sget-boolean v2, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v2, :cond_170

    const-string v2, "UMConfigure"

    const-string v3, "appkey is change !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_170
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/utils/UMUtils;->setLastAppkey(Landroid/content/Context;Ljava/lang/String;)V

    :cond_173
    sget-boolean v2, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v2, :cond_192

    const-string v2, "UMConfigure"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "current appkey is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", last appkey is "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_192
    invoke-static {p3}, Lcom/umeng/commonsdk/statistics/b;->a(I)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a7

    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_212

    const-string p1, "UMConfigure"

    const-string p2, "push secret \u975e\u6cd5 \uff01\uff01\uff01"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_212

    :cond_1a7
    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_1be

    const-string p1, "UMConfigure"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "push secret is "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1be
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_1be} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_123 .. :try_end_1be} :catch_e

    :cond_1be
    :try_start_1be
    const-string p1, "com.umeng.message.PushAgent"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_212

    const-string p2, "getInstance"

    new-array p3, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, p3, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_212

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p0, p3, v0

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_212

    const-string p3, "setSecret"

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-virtual {p1, p3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_212

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p4, p3, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f9
    .catch Ljava/lang/Throwable; {:try_start_1be .. :try_end_1f9} :catch_1fa
    .catch Ljava/lang/Exception; {:try_start_1be .. :try_end_1f9} :catch_11

    goto :goto_212

    :catch_1fa
    move-exception p1

    :try_start_1fb
    sget-boolean p2, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p2, :cond_212

    const-string p2, "UMConfigure"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "push secret e is "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_212
    .catch Ljava/lang/Exception; {:try_start_1fb .. :try_end_212} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_1fb .. :try_end_212} :catch_e

    :cond_212
    :goto_212
    :try_start_212
    const-string p1, "com.umeng.error.UMError"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_24b

    const-string p2, "init"

    new-array p3, v1, [Ljava/lang/Class;

    const-class p4, Landroid/content/Context;

    aput-object p4, p3, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_24b

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p0, p3, v0

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_232
    .catch Ljava/lang/Throwable; {:try_start_212 .. :try_end_232} :catch_233
    .catch Ljava/lang/Exception; {:try_start_212 .. :try_end_232} :catch_11

    goto :goto_24b

    :catch_233
    move-exception p1

    :try_start_234
    sget-boolean p2, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p2, :cond_24b

    const-string p2, "UMConfigure"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "crash e is "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24b
    .catch Ljava/lang/Exception; {:try_start_234 .. :try_end_24b} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_234 .. :try_end_24b} :catch_e

    :cond_24b
    :goto_24b
    :try_start_24b
    const-string p1, "com.umeng.commonsdk.UMConfigureImpl"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_26b

    const-string p2, "init"

    new-array p3, v1, [Ljava/lang/Class;

    const-class p4, Landroid/content/Context;

    aput-object p4, p3, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_26b

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p0, p3, v0

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26b
    .catch Ljava/lang/Throwable; {:try_start_24b .. :try_end_26b} :catch_26c
    .catch Ljava/lang/Exception; {:try_start_24b .. :try_end_26b} :catch_11

    :cond_26b
    return-void

    :catch_26c
    move-exception p0

    :try_start_26d
    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_284

    const-string p1, "UMConfigure"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "crash e is "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_284
    .catch Ljava/lang/Exception; {:try_start_26d .. :try_end_284} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_26d .. :try_end_284} :catch_e

    :cond_284
    return-void

    :goto_285
    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_29c

    const-string p1, "UMConfigure"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "init e is "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29c
    return-void

    :goto_29d
    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_2b4

    const-string p1, "UMConfigure"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "init e is "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b4
    return-void
.end method

.method private static invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 4

    if-eqz p0, :cond_5e

    if-eqz p1, :cond_5e

    :try_start_4
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_7} :catch_42
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_7} :catch_25
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_5e

    const-string p1, "UMConfigure"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "invoke e is "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_25
    move-exception p0

    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_41

    const-string p1, "UMConfigure"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "invoke e is "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    return-void

    :catch_42
    move-exception p0

    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_5e

    const-string p1, "UMConfigure"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "invoke e is "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    return-void
.end method

.method private static invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 4

    if-eqz p0, :cond_5d

    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_6} :catch_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_6} :catch_24
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception p0

    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_5d

    const-string p1, "UMConfigure"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke e is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_24
    move-exception p0

    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_40

    const-string p1, "UMConfigure"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke e is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return-void

    :catch_41
    move-exception p0

    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_5d

    const-string p1, "UMConfigure"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke e is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    return-void
.end method

.method private static saveSDKComponent()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "com.umeng.analytics.MobclickAgent"

    invoke-static {v1}, Lcom/umeng/commonsdk/UMConfigure;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_12

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_12
    const-string v1, "com.umeng.message.PushAgent"

    invoke-static {v1}, Lcom/umeng/commonsdk/UMConfigure;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1f

    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1f
    const-string v1, "com.umeng.socialize.UMShareAPI"

    invoke-static {v1}, Lcom/umeng/commonsdk/UMConfigure;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2c

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2c
    const-string v1, "com.umeng.error.UMError"

    invoke-static {v1}, Lcom/umeng/commonsdk/UMConfigure;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_39

    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_39
    const-string v1, "com.umeng.commonsdk.UMConfigureImpl"

    invoke-static {v1}, Lcom/umeng/commonsdk/UMConfigure;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_46

    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_46
    const-string v1, "com.umeng.commonsdk.amap.UMAmapConfig"

    invoke-static {v1}, Lcom/umeng/commonsdk/UMConfigure;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_53

    const-string v1, "o"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/commonsdk/statistics/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->module:Ljava/lang/String;

    :cond_65
    return-void
.end method

.method private static setCheckDevice(Z)V
    .registers 1

    sput-boolean p0, Lcom/umeng/commonsdk/statistics/b;->d:Z

    return-void
.end method

.method public static setEncryptEnabled(Z)V
    .registers 1

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/c;->a(Z)V

    invoke-static {p0}, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->setEncryptEnabled(Z)V

    return-void
.end method

.method private static setFile(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_45

    :try_start_2
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-boolean p2, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p2, :cond_28

    const-string p2, "UMConfigure"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setFile value is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_29

    :cond_28
    return-void

    :catch_29
    move-exception p0

    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_45

    const-string p1, "UMConfigure"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "setFile e is "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    return-void
.end method

.method private static setFile(Ljava/lang/Class;Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    if-eqz p0, :cond_49

    :try_start_2
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-boolean p2, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p2, :cond_2c

    const-string p2, "UMConfigure"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setFile value is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2c} :catch_2d

    :cond_2c
    return-void

    :catch_2d
    move-exception p0

    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_49

    const-string p1, "UMConfigure"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "setFile e is "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    return-void
.end method

.method private static setLatencyWindow(J)V
    .registers 2

    long-to-int p0, p0

    mul-int/lit16 p0, p0, 0x3e8

    sput p0, Lcom/umeng/commonsdk/statistics/a;->a:I

    return-void
.end method

.method public static setLogEnabled(Z)V
    .registers 8

    :try_start_0
    sput-boolean p0, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p0, :cond_b

    const-string v0, "UMConfigure"

    const-string v1, "common sdk version is 1.3.2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    sput-boolean p0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    const-string v0, "com.umeng.message.PushAgent"

    invoke-static {v0}, Lcom/umeng/commonsdk/UMConfigure;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/UMConfigure;->getDecInstanceObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setDebugMode"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0, v2, v4}, Lcom/umeng/commonsdk/UMConfigure;->getDecMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/UMConfigure;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    const-string v0, "com.umeng.socialize.Config"

    invoke-static {v0}, Lcom/umeng/commonsdk/UMConfigure;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "DEBUG"

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/UMConfigure;->setFile(Ljava/lang/Class;Ljava/lang/String;Z)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_55
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3b} :catch_3c

    return-void

    :catch_3c
    move-exception p0

    sget-boolean v0, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v0, :cond_54

    const-string v0, "UMConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set log enabled e is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    return-void

    :catch_55
    move-exception p0

    sget-boolean v0, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v0, :cond_6d

    const-string v0, "UMConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set log enabled e is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    return-void
.end method
