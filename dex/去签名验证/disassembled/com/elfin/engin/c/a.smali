.class public final Lcom/elfin/engin/c/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    const-string v0, "com.cyjh.gundam"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".R"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1e
    array-length v4, v0

    if-ge v3, v4, :cond_3c

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    aget-object v2, v0, v3

    goto :goto_3c

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_3c
    :goto_3c
    if-eqz v2, :cond_60

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_46
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_46} :catch_5c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_46} :catch_57
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_46} :catch_52
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_46} :catch_4d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_46} :catch_48

    move v1, p0

    return v1

    :catch_48
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    return v1

    :catch_4d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return v1

    :catch_52
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    return v1

    :catch_57
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return v1

    :catch_5c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_60
    return v1
.end method
