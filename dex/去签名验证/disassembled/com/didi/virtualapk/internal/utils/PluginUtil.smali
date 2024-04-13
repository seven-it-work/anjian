.class public Lcom/didi/virtualapk/internal/utils/PluginUtil;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "VA.NativeLib"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyNativeLib(Ljava/io/File;Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/io/File;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    :try_start_d
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt p0, v3, :cond_46

    sget-object p0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v3, p0

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_5b

    aget-object v5, p0, v4

    invoke-static {v2, p1, v5, p2, p3}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->findAndCopyNativeLib(Ljava/util/zip/ZipFile;Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/io/File;)Z

    move-result v5
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_6d

    if-eqz v5, :cond_43

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    const-string p0, "VA.NativeLib"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Done! +"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long v2, p2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_46
    :try_start_46
    sget-object p0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v2, p1, p0, p2, p3}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->findAndCopyNativeLib(Ljava/util/zip/ZipFile;Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/io/File;)Z

    move-result p0
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_6d

    if-eqz p0, :cond_5b

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    const-string p0, "VA.NativeLib"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Done! +"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2d

    :cond_5b
    :try_start_5b
    const-string p0, "armeabi"

    invoke-static {v2, p1, p0, p2, p3}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->findAndCopyNativeLib(Ljava/util/zip/ZipFile;Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/io/File;)Z
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_6d

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    const-string p0, "VA.NativeLib"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Done! +"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2d

    :catchall_6d
    move-exception p0

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    const-string p1, "VA.NativeLib"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Done! +"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "ms"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p0
.end method

.method private static copySo([BLjava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_a
    invoke-virtual {v0, p0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_15

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_a

    :cond_15
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method private static findAndCopyNativeLib(Ljava/util/zip/ZipFile;Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/io/File;)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "VA.NativeLib"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Try to copy plugin\'s cup arch: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lib/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v9, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_36
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_12a

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/zip/ZipEntry;

    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x6c

    if-lt v12, v13, :cond_124

    invoke-virtual {v11, v6}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-gt v12, v13, :cond_12a

    if-nez v7, :cond_5e

    const-string v12, "lib/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_124

    :cond_5e
    const-string v7, ".so"

    invoke-virtual {v11, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11d

    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11d

    if-nez v9, :cond_87

    const-string v7, "VA.NativeLib"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Found plugin\'s cup arch dir: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x2000

    new-array v7, v7, [B

    move-object v9, v7

    const/4 v8, 0x1

    :cond_87
    const/16 v7, 0x2f

    invoke-virtual {v11, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v11, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v11, "VA.NativeLib"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "verify so "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/io/File;

    move-object/from16 v12, p4

    invoke-direct {v11, v12, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_ea

    invoke-static {v0, v7}, Lcom/didi/virtualapk/internal/utils/Settings;->getSoVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    iget v14, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v13, v14, :cond_ea

    const-string v7, "VA.NativeLib"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "skip existing so : "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v11, p0

    goto :goto_121

    :cond_ea
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v11, "VA.NativeLib"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "copy so "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v11, p0

    invoke-virtual {v11, v10}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v9, v10, v13}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->copySo([BLjava/io/InputStream;Ljava/io/OutputStream;)V

    iget v10, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0, v7, v10}, Lcom/didi/virtualapk/internal/utils/Settings;->setSoVersion(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_121

    :cond_11d
    move-object/from16 v11, p0

    move-object/from16 v12, p4

    :goto_121
    const/4 v7, 0x1

    goto/16 :goto_36

    :cond_124
    move-object/from16 v11, p0

    move-object/from16 v12, p4

    goto/16 :goto_36

    :cond_12a
    if-nez v7, :cond_134

    const-string v0, "VA.NativeLib"

    const-string v1, "Fast skip all!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_134
    return v8
.end method

.method public static getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_f

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-static {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p0

    const-string v0, "getIBinder"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v4

    invoke-virtual {p0, v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-object p0
.end method

.method public static getComponent(Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-static {p0}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->isIntentFromPlugin(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v1, v0

    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "va.intent.category.package."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const/16 v0, 0x1b

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_2e
    const-string v3, "va.intent.category.activity."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/16 v1, 0x1c

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_3d
    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_43
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static getTheme(Landroid/content/Context;Landroid/content/ComponentName;)I
    .registers 3

    invoke-static {p0}, Lcom/didi/virtualapk/PluginManager;->getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-nez p0, :cond_13

    return v0

    :cond_13
    iget p1, p0, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz p1, :cond_1a

    iget p0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    return p0

    :cond_1a
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_25

    iget p1, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    if-eqz p1, :cond_25

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    return p0

    :cond_25
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0, p0}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->selectDefaultTheme(II)I

    move-result p0

    return p0
.end method

.method public static getTheme(Landroid/content/Context;Landroid/content/Intent;)I
    .registers 2

    invoke-static {p1}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->getComponent(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->getTheme(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result p0

    return p0
.end method

.method public static hookActivityResources(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_11

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->isVivo(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    :try_start_11
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lcom/didi/virtualapk/PluginManager;->getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object p1

    invoke-virtual {p1}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_65

    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    const-string v1, "mResources"

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    invoke-virtual {p1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    invoke-static {p0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p0

    const-string v1, "mThemeResource"

    invoke-virtual {p0, v1}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    const-string v1, "mTheme"

    invoke-virtual {p0, v1}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    const-string v0, "mResources"

    invoke-virtual {p0, v0}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_65} :catch_66

    :cond_65
    return-void

    :catch_66
    move-exception p0

    const-string p1, "VA"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static isIntentFromPlugin(Landroid/content/Intent;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_28

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_a

    return v0

    :cond_a
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "va.intent.category."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_28
    return v0
.end method

.method public static final isLocalService(Landroid/content/pm/ServiceInfo;)Z
    .registers 2

    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method public static isVivo(Landroid/content/res/Resources;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.content.res.VivoResources"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void

    :cond_a
    invoke-static {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p0

    const-string v0, "putIBinder"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/os/IBinder;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p0, v0, v2}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v4

    aput-object p2, v0, v5

    invoke-virtual {p0, v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static selectDefaultTheme(II)I
    .registers 8

    const v2, 0x1030005

    const v3, 0x103006b

    const v4, 0x1030128

    const v5, 0x103013f

    move v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->selectSystemTheme(IIIIII)I

    move-result p0

    return p0
.end method

.method public static selectSystemTheme(IIIIII)I
    .registers 6

    if-eqz p0, :cond_3

    return p0

    :cond_3
    const/16 p0, 0xb

    if-ge p1, p0, :cond_8

    return p2

    :cond_8
    const/16 p0, 0xe

    if-ge p1, p0, :cond_d

    return p3

    :cond_d
    const/16 p0, 0x18

    if-ge p1, p0, :cond_12

    return p4

    :cond_12
    return p5
.end method
