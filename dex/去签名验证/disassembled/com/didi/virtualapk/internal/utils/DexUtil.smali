.class public Lcom/didi/virtualapk/internal/utils/DexUtil;
.super Ljava/lang/Object;


# static fields
.field private static sHasInsertedNativeLibrary:Z


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

.method private static combineArray(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    add-int v3, v1, v2

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static getDexElements(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p0

    const-string v0, "dexElements"

    invoke-virtual {p0, v0}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getPathList(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p0

    const-string v0, "pathList"

    invoke-virtual {p0, v0}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static insertDex(Ldalvik/system/DexClassLoader;Ljava/lang/ClassLoader;Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lcom/didi/virtualapk/internal/utils/DexUtil;->getPathList(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/virtualapk/internal/utils/DexUtil;->getDexElements(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Lcom/didi/virtualapk/internal/utils/DexUtil;->getPathList(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/virtualapk/internal/utils/DexUtil;->getDexElements(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/virtualapk/internal/utils/DexUtil;->combineArray(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Lcom/didi/virtualapk/internal/utils/DexUtil;->getPathList(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v1

    const-string v2, "dexElements"

    invoke-virtual {v1, v2}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    invoke-static {p0, p1, p2}, Lcom/didi/virtualapk/internal/utils/DexUtil;->insertNativeLibrary(Ldalvik/system/DexClassLoader;Ljava/lang/ClassLoader;Ljava/io/File;)V

    return-void
.end method

.method private static declared-synchronized insertNativeLibrary(Ldalvik/system/DexClassLoader;Ljava/lang/ClassLoader;Ljava/io/File;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/didi/virtualapk/internal/utils/DexUtil;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/didi/virtualapk/internal/utils/DexUtil;->sHasInsertedNativeLibrary:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_ae

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    :try_start_a
    sput-boolean v1, Lcom/didi/virtualapk/internal/utils/DexUtil;->sHasInsertedNativeLibrary:Z

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    invoke-static {p1}, Lcom/didi/virtualapk/internal/utils/DexUtil;->getPathList(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    const/4 v4, 0x0

    if-le v2, v3, :cond_8f

    invoke-static {p1}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p1

    const-string v2, "nativeLibraryDirectories"

    invoke-virtual {p1, v2}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "nativeLibraryPathElements"

    invoke-virtual {p1, p2}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    invoke-static {p0}, Lcom/didi/virtualapk/internal/utils/DexUtil;->getPathList(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/didi/virtualapk/utils/Reflector;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    add-int/lit8 v5, v2, 0x1

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p2, v4, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt p2, v6, :cond_61

    const-string p2, "path"

    :goto_5c
    invoke-virtual {v3, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    goto :goto_64

    :cond_61
    const-string p2, "dir"

    goto :goto_5c

    :goto_64
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_6b
    if-ge v4, v1, :cond_8a

    invoke-static {p0, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "valibs"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_87

    invoke-static {v5, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_8a

    :cond_87
    add-int/lit8 v4, v4, 0x1

    goto :goto_6b

    :cond_8a
    :goto_8a
    invoke-virtual {p1, v5}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    :try_end_8d
    .catchall {:try_start_a .. :try_end_8d} :catchall_ae

    monitor-exit v0

    return-void

    :cond_8f
    :try_start_8f
    invoke-static {p1}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p0

    const-string p1, "nativeLibraryDirectories"

    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/io/File;

    array-length v1, p1

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Ljava/io/File;

    invoke-static {p1, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p2, v2, v1

    invoke-virtual {p0, v2}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    :try_end_ac
    .catchall {:try_start_8f .. :try_end_ac} :catchall_ae

    monitor-exit v0

    return-void

    :catchall_ae
    move-exception p0

    monitor-exit v0

    throw p0
.end method
