.class public final Lcom/cyjh/mobileanjian/ipc/utils/j;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_10} :catch_25
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_10} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_10} :catch_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_10} :catch_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_29

    :catch_16
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_29

    :catch_1b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_29

    :catch_20
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_29

    :catch_25
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_29
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_11} :catch_26
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_11} :catch_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_11} :catch_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_11} :catch_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    return-object v0

    :catch_17
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-object v0

    :catch_1c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return-object v0

    :catch_21
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    return-object v0

    :catch_26
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_c} :catch_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_c} :catch_17
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_c} :catch_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2a

    :catch_12
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2a

    :catch_17
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2a

    :catch_1c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2a

    :catch_21
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2a

    :catch_26
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_d} :catch_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_d} :catch_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_d} :catch_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_d} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_d} :catch_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    return-object v0

    :catch_13
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    return-object v0

    :catch_18
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    return-object v0

    :catch_1d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-object v0

    :catch_22
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return-object v0

    :catch_27
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_10} :catch_25
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_10} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_10} :catch_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_10} :catch_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    return-void

    :catch_16
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-void

    :catch_1b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return-void

    :catch_20
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    return-void

    :catch_25
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_f} :catch_24
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_f} :catch_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_f} :catch_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_f} :catch_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    return-void

    :catch_15
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-void

    :catch_1a
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return-void

    :catch_1f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    return-void

    :catch_24
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    return-void
.end method
