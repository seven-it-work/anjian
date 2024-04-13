.class public final Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_4f

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    return-object v0

    :cond_10
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :cond_15
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    if-ne v2, v3, :cond_28

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-nez p0, :cond_15

    return-object v0

    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_4a

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_28

    return-object v0

    :cond_4a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4f
    return-object v0
.end method

.method public static copyAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x1000

    new-array p2, p2, [B

    :goto_11
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_1c

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_11

    :cond_1c
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public static copyRawFile(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    goto :goto_39

    :cond_11
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :cond_39
    :goto_39
    const/16 p2, 0x1000

    new-array p2, p2, [B

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_45
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_45} :catch_96
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_45} :catch_86
    .catchall {:try_start_2 .. :try_end_45} :catchall_83

    :try_start_45
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_4a} :catch_7d
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4a} :catch_77
    .catchall {:try_start_45 .. :try_end_4a} :catchall_71

    :goto_4a
    :try_start_4a
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_54

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_4a .. :try_end_53} :catch_6d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_53} :catch_69
    .catchall {:try_start_4a .. :try_end_53} :catchall_65

    goto :goto_4a

    :cond_54
    const/4 v1, 0x1

    if-eqz p0, :cond_5d

    :try_start_57
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_5d

    :catch_5b
    move-exception p0

    goto :goto_61

    :cond_5d
    :goto_5d
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_60} :catch_5b

    return v1

    :goto_61
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v1

    :catchall_65
    move-exception p2

    move-object v0, p0

    move-object p0, p2

    goto :goto_a7

    :catch_69
    move-exception p2

    move-object v0, p0

    move-object p0, p2

    goto :goto_88

    :catch_6d
    move-exception p2

    move-object v0, p0

    move-object p0, p2

    goto :goto_98

    :catchall_71
    move-exception p1

    move-object v5, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v5

    goto :goto_a7

    :catch_77
    move-exception p1

    move-object v5, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v5

    goto :goto_88

    :catch_7d
    move-exception p1

    move-object v5, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v5

    goto :goto_98

    :catchall_83
    move-exception p0

    move-object p1, v0

    goto :goto_a7

    :catch_86
    move-exception p0

    move-object p1, v0

    :goto_88
    :try_start_88
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_a6

    if-eqz v0, :cond_90

    :try_start_8d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_90
    if-eqz p1, :cond_a5

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_95} :catch_5b

    return v1

    :catch_96
    move-exception p0

    move-object p1, v0

    :goto_98
    :try_start_98
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_a6

    if-eqz v0, :cond_a0

    :try_start_9d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_a0
    if-eqz p1, :cond_a5

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a5} :catch_5b

    :cond_a5
    return v1

    :catchall_a6
    move-exception p0

    :goto_a7
    if-eqz v0, :cond_af

    :try_start_a9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_af

    :catch_ad
    move-exception p1

    goto :goto_b5

    :cond_af
    :goto_af
    if-eqz p1, :cond_b8

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_b4} :catch_ad

    goto :goto_b8

    :goto_b5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_b8
    :goto_b8
    throw p0
.end method

.method public static file2Text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x400

    :try_start_c
    new-array p0, p0, [B

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_13
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_2c

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v1, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_22} :catch_28
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_22} :catch_23

    goto :goto_13

    :catch_23
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c

    :catch_28
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_2c
    :goto_2c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBaseFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1b

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1b

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1b
    return-object p0
.end method

.method public static varargs makeAbsolutePath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    array-length v3, p1

    if-ge v2, v3, :cond_11

    aget-object v3, p1, v2

    if-nez v3, :cond_e

    return-object v0

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_11
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_21
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2d
    :goto_2d
    array-length p0, p1

    if-ge v1, p0, :cond_41

    aget-object p0, p1, v1

    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3e

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne p0, p1, :cond_56

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_56
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final moveFiles(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_16

    const/4 v1, 0x1

    return v1

    :cond_16
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1e

    const/4 v1, 0x2

    return v1

    :cond_1e
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_26

    const/4 v1, 0x3

    return v1

    :cond_26
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_104

    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_54

    if-nez p2, :cond_54

    const/4 v1, 0x4

    return v1

    :cond_54
    const/4 v4, 0x0

    :try_start_55
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_5e} :catch_de
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5e} :catch_c5
    .catchall {:try_start_55 .. :try_end_5e} :catchall_c1

    :try_start_5e
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_7f
    .catch Ljava/io/FileNotFoundException; {:try_start_5e .. :try_end_7f} :catch_bc
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_7f} :catch_b7
    .catchall {:try_start_5e .. :try_end_7f} :catchall_b3

    const-wide/16 v13, 0x0

    move-wide v15, v13

    :goto_82
    const/4 v4, 0x0

    sub-long v11, v13, v15

    move-object v7, v2

    move-object v8, v1

    move-wide v9, v15

    :try_start_88
    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v6

    const/4 v4, 0x0

    add-long v8, v15, v6

    cmp-long v4, v8, v13

    if-ltz v4, :cond_ab

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_96
    .catch Ljava/io/FileNotFoundException; {:try_start_88 .. :try_end_96} :catch_b1
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_96} :catch_af
    .catchall {:try_start_88 .. :try_end_96} :catchall_ad

    if-eqz v1, :cond_9f

    :try_start_98
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_9f

    :catch_9c
    move-exception v0

    move-object v1, v0

    goto :goto_a6

    :cond_9f
    :goto_9f
    if-eqz v2, :cond_107

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a4} :catch_9c

    goto/16 :goto_107

    :goto_a6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_107

    :cond_ab
    move-wide v15, v8

    goto :goto_82

    :catchall_ad
    move-exception v0

    goto :goto_b5

    :catch_af
    move-exception v0

    goto :goto_b9

    :catch_b1
    move-exception v0

    goto :goto_be

    :catchall_b3
    move-exception v0

    move-object v2, v4

    :goto_b5
    move-object v4, v1

    goto :goto_f0

    :catch_b7
    move-exception v0

    move-object v2, v4

    :goto_b9
    move-object v4, v1

    move-object v1, v0

    goto :goto_c8

    :catch_bc
    move-exception v0

    move-object v2, v4

    :goto_be
    move-object v4, v1

    move-object v1, v0

    goto :goto_e1

    :catchall_c1
    move-exception v0

    move-object v1, v0

    move-object v2, v4

    goto :goto_f1

    :catch_c5
    move-exception v0

    move-object v1, v0

    move-object v2, v4

    :goto_c8
    :try_start_c8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_ef

    if-eqz v4, :cond_d4

    :try_start_cd
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_d4

    :catch_d1
    move-exception v0

    move-object v1, v0

    goto :goto_da

    :cond_d4
    :goto_d4
    if-eqz v2, :cond_108

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d9} :catch_d1

    return v5

    :goto_da
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return v5

    :catch_de
    move-exception v0

    move-object v1, v0

    move-object v2, v4

    :goto_e1
    :try_start_e1
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_e4
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_ef

    if-eqz v4, :cond_e9

    :try_start_e6
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    :cond_e9
    if-eqz v2, :cond_108

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_ee} :catch_d1

    return v5

    :catchall_ef
    move-exception v0

    :goto_f0
    move-object v1, v0

    :goto_f1
    if-eqz v4, :cond_fa

    :try_start_f3
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_fa

    :catch_f7
    move-exception v0

    move-object v2, v0

    goto :goto_100

    :cond_fa
    :goto_fa
    if-eqz v2, :cond_103

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_ff} :catch_f7

    goto :goto_103

    :goto_100
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_103
    :goto_103
    throw v1

    :cond_104
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    :cond_107
    :goto_107
    const/4 v5, 0x0

    :cond_108
    return v5
.end method

.method public static recursionDeleteFiles(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_2a

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2a

    array-length v0, p0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_2a

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->recursionDeleteFiles(Ljava/lang/String;)V

    :cond_24
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_2a
    return-void
.end method

.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;)V
    .registers 3

    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method
