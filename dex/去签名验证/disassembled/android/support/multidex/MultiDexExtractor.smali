.class final Landroid/support/multidex/MultiDexExtractor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/multidex/MultiDexExtractor$ExtractedDex;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x4000

.field private static final DEX_PREFIX:Ljava/lang/String; = "classes"

.field private static final DEX_SUFFIX:Ljava/lang/String; = ".dex"

.field private static final EXTRACTED_NAME_EXT:Ljava/lang/String; = ".classes"

.field private static final EXTRACTED_SUFFIX:Ljava/lang/String; = ".zip"

.field private static final KEY_CRC:Ljava/lang/String; = "crc"

.field private static final KEY_DEX_CRC:Ljava/lang/String; = "dex.crc."

.field private static final KEY_DEX_NUMBER:Ljava/lang/String; = "dex.number"

.field private static final KEY_DEX_TIME:Ljava/lang/String; = "dex.time."

.field private static final KEY_TIME_STAMP:Ljava/lang/String; = "timestamp"

.field private static final LOCK_FILENAME:Ljava/lang/String; = "MultiDex.lock"

.field private static final MAX_EXTRACT_ATTEMPTS:I = 0x3

.field private static final NO_VALUE:J = -0x1L

.field private static final PREFS_FILE:Ljava/lang/String; = "multidex.version"

.field private static final TAG:Ljava/lang/String; = "MultiDex"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .registers 3

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    const-string v0, "MultiDex"

    const-string v1, "Failed to close resource"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static extract(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tmp-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, ".zip"

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {p3, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p3

    const-string v0, "MultiDex"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Extracting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_33
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_ea

    :try_start_42
    new-instance v1, Ljava/util/zip/ZipEntry;

    const-string v2, "classes.dex"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/zip/ZipEntry;->setTime(J)V

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 p1, 0x4000

    new-array p1, p1, [B

    :goto_57
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_63

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_57

    :cond_63
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_66
    .catchall {:try_start_42 .. :try_end_66} :catchall_e5

    :try_start_66
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    invoke-virtual {p3}, Ljava/io/File;->setReadOnly()Z

    move-result p1

    if-nez p1, :cond_98

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to mark readonly \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" (tmp of \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_98
    const-string p1, "MultiDex"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Renaming to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_de

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to rename \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" to \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_de
    .catchall {:try_start_66 .. :try_end_de} :catchall_ea

    :cond_de
    invoke-static {p0}, Landroid/support/multidex/MultiDexExtractor;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    return-void

    :catchall_e5
    move-exception p1

    :try_start_e6
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    throw p1
    :try_end_ea
    .catchall {:try_start_e6 .. :try_end_ea} :catchall_ea

    :catchall_ea
    move-exception p1

    invoke-static {p0}, Landroid/support/multidex/MultiDexExtractor;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    throw p1
.end method

.method private static getMultiDexPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    const-string v0, "multidex.version"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_a

    const/4 v1, 0x0

    goto :goto_b

    :cond_a
    const/4 v1, 0x4

    :goto_b
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static getTimeStamp(Ljava/io/File;)J
    .registers 7

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_f

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    move-wide v0, v4

    :cond_f
    return-wide v0
.end method

.method private static getZipCrc(Ljava/io/File;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Landroid/support/multidex/ZipUtil;->getZipCrc(Ljava/io/File;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_f

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    move-wide v0, v4

    :cond_f
    return-wide v0
.end method

.method private static isModified(Landroid/content/Context;Ljava/io/File;JLjava/lang/String;)Z
    .registers 12

    invoke-static {p0}, Landroid/support/multidex/MultiDexExtractor;->getMultiDexPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {p1}, Landroid/support/multidex/MultiDexExtractor;->getTimeStamp(Ljava/io/File;)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_3f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "crc"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    cmp-long p4, p0, p2

    if-eqz p4, :cond_3d

    goto :goto_3f

    :cond_3d
    const/4 p0, 0x0

    return p0

    :cond_3f
    :goto_3f
    const/4 p0, 0x1

    return p0
.end method

.method static load(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v2, p3

    move/from16 v1, p4

    const-string v3, "MultiDex"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MultiDexExtractor.load("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/support/multidex/MultiDexExtractor;->getZipCrc(Ljava/io/File;)J

    move-result-wide v5

    new-instance v8, Ljava/io/File;

    const-string v3, "MultiDex.lock"

    move-object/from16 v4, p2

    invoke-direct {v8, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v9, v8, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v10, 0x0

    :try_start_45
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v11
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_103

    :try_start_49
    const-string v3, "MultiDex"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "Blocking on lock "

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v12
    :try_end_64
    .catchall {:try_start_49 .. :try_end_64} :catchall_ff

    :try_start_64
    const-string v3, "MultiDex"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " locked"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_a3

    move-object v1, p0

    move-object v3, p1

    invoke-static {v1, v3, v5, v6, v2}, Landroid/support/multidex/MultiDexExtractor;->isModified(Landroid/content/Context;Ljava/io/File;JLjava/lang/String;)Z

    move-result v7
    :try_end_86
    .catchall {:try_start_64 .. :try_end_86} :catchall_fc

    if-nez v7, :cond_a5

    :try_start_88
    invoke-static/range {p0 .. p3}, Landroid/support/multidex/MultiDexExtractor;->loadExistingExtractions(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8c} :catch_8e
    .catchall {:try_start_88 .. :try_end_8c} :catchall_fc

    move-object v13, v7

    goto :goto_b5

    :catch_8e
    move-exception v0

    :try_start_8f
    const-string v7, "MultiDex"

    const-string v13, "Failed to reload existing extracted secondary dex files, falling back to fresh extraction"

    invoke-static {v7, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static/range {p1 .. p2}, Landroid/support/multidex/MultiDexExtractor;->performExtractions(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v13

    invoke-static {v3}, Landroid/support/multidex/MultiDexExtractor;->getTimeStamp(Ljava/io/File;)J

    move-result-wide v3

    :goto_9e
    move-object v7, v13

    invoke-static/range {v1 .. v7}, Landroid/support/multidex/MultiDexExtractor;->putStoredApkInfo(Landroid/content/Context;Ljava/lang/String;JJLjava/util/List;)V

    goto :goto_b5

    :cond_a3
    move-object v1, p0

    move-object v3, p1

    :cond_a5
    const-string v7, "MultiDex"

    const-string v13, "Detected that extraction must be performed."

    invoke-static {v7, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p2}, Landroid/support/multidex/MultiDexExtractor;->performExtractions(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v13

    invoke-static {v3}, Landroid/support/multidex/MultiDexExtractor;->getTimeStamp(Ljava/io/File;)J

    move-result-wide v3
    :try_end_b4
    .catchall {:try_start_8f .. :try_end_b4} :catchall_fc

    goto :goto_9e

    :goto_b5
    if-eqz v12, :cond_d4

    :try_start_b7
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_bb

    goto :goto_d4

    :catch_bb
    move-exception v0

    const-string v1, "MultiDex"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to release lock on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v0

    :cond_d4
    :goto_d4
    if-eqz v11, :cond_d9

    invoke-static {v11}, Landroid/support/multidex/MultiDexExtractor;->closeQuietly(Ljava/io/Closeable;)V

    :cond_d9
    invoke-static {v9}, Landroid/support/multidex/MultiDexExtractor;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v10, :cond_df

    throw v10

    :cond_df
    const-string v1, "MultiDex"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " secondary dex files"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :catchall_fc
    move-exception v0

    move-object v1, v0

    goto :goto_107

    :catchall_ff
    move-exception v0

    move-object v1, v0

    move-object v12, v10

    goto :goto_107

    :catchall_103
    move-exception v0

    move-object v1, v0

    move-object v11, v10

    move-object v12, v11

    :goto_107
    if-eqz v12, :cond_124

    :try_start_109
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_10c} :catch_10d

    goto :goto_124

    :catch_10d
    const-string v2, "MultiDex"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to release lock on "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_124
    :goto_124
    if-eqz v11, :cond_129

    invoke-static {v11}, Landroid/support/multidex/MultiDexExtractor;->closeQuietly(Ljava/io/Closeable;)V

    :cond_129
    invoke-static {v9}, Landroid/support/multidex/MultiDexExtractor;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method private static loadExistingExtractions(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/multidex/MultiDexExtractor$ExtractedDex;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p3

    const-string v1, "MultiDex"

    const-string v2, "loading existing secondary dex files"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".classes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p0 .. p0}, Landroid/support/multidex/MultiDexExtractor;->getMultiDexPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "dex.number"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    add-int/lit8 v5, v3, -0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x2

    :goto_40
    if-gt v5, v3, :cond_111

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ".zip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;

    move-object/from16 v8, p2

    invoke-direct {v7, v8, v6}, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->isFile()Z

    move-result v6

    if-eqz v6, :cond_f4

    invoke-static {v7}, Landroid/support/multidex/MultiDexExtractor;->getZipCrc(Ljava/io/File;)J

    move-result-wide v9

    iput-wide v9, v7, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->crc:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "dex.crc."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v9, -0x1

    invoke-interface {v2, v6, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "dex.time."

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v7}, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->lastModified()J

    move-result-wide v13

    cmp-long v6, v9, v13

    if-nez v6, :cond_b6

    move-object v15, v1

    move-object/from16 v16, v2

    iget-wide v1, v7, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->crc:J

    cmp-long v6, v11, v1

    if-eqz v6, :cond_ad

    goto :goto_b6

    :cond_ad
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move-object v1, v15

    move-object/from16 v2, v16

    goto :goto_40

    :cond_b6
    :goto_b6
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid extracted dex: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (key \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"), expected modification time: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", modification time: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", expected crc: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", file crc: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v7, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->crc:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing extracted secondary dex file \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_111
    return-object v4
.end method

.method private static performExtractions(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/multidex/MultiDexExtractor$ExtractedDex;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".classes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/multidex/MultiDexExtractor;->prepareDexDir(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    const/4 p0, 0x2

    :try_start_23
    const-string v3, "classes2.dex"

    :goto_25
    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_12b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;

    invoke-direct {v5, p1, v4}, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "MultiDex"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Extraction is needed for file "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_5d
    :goto_5d
    const/4 v8, 0x3

    if-ge v6, v8, :cond_ed

    if-nez v7, :cond_ed

    add-int/lit8 v6, v6, 0x1

    invoke-static {v2, v3, v5, v0}, Landroid/support/multidex/MultiDexExtractor;->extract(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_23 .. :try_end_67} :catchall_138

    :try_start_67
    invoke-static {v5}, Landroid/support/multidex/MultiDexExtractor;->getZipCrc(Ljava/io/File;)J

    move-result-wide v7

    iput-wide v7, v5, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->crc:J
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6d} :catch_6f
    .catchall {:try_start_67 .. :try_end_6d} :catchall_138

    const/4 v7, 0x1

    goto :goto_88

    :catch_6f
    move-exception v7

    :try_start_70
    const-string v8, "MultiDex"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failed to read crc from "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x0

    :goto_88
    const-string v8, "MultiDex"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Extraction "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_96

    const-string v10, "succeeded"

    goto :goto_98

    :cond_96
    const-string v10, "failed"

    :goto_98
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " - length "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " - crc: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v5, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->crc:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_5d

    invoke-virtual {v5}, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->delete()Z

    invoke-virtual {v5}, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->exists()Z

    move-result v8

    if-eqz v8, :cond_5d

    const-string v8, "MultiDex"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failed to delete corrupted secondary dex \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5d

    :cond_ed
    if-nez v7, :cond_114

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not create zip file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for secondary dex ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_114
    add-int/lit8 p0, p0, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "classes"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".dex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_129
    .catchall {:try_start_70 .. :try_end_129} :catchall_138

    goto/16 :goto_25

    :cond_12b
    :try_start_12b
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_12e
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_12e} :catch_12f

    return-object v1

    :catch_12f
    move-exception p0

    const-string p1, "MultiDex"

    const-string v0, "Failed to close resource"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catchall_138
    move-exception p0

    :try_start_139
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_13c
    .catch Ljava/io/IOException; {:try_start_139 .. :try_end_13c} :catch_13d

    goto :goto_145

    :catch_13d
    move-exception p1

    const-string v0, "MultiDex"

    const-string v1, "Failed to close resource"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_145
    throw p0
.end method

.method private static prepareDexDir(Ljava/io/File;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Landroid/support/multidex/MultiDexExtractor$1;

    invoke-direct {v0, p1}, Landroid/support/multidex/MultiDexExtractor$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_28

    const-string p1, "MultiDex"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to list secondary dex dir content ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_28
    array-length p0, p1

    const/4 v0, 0x0

    :goto_2a
    if-ge v0, p0, :cond_89

    aget-object v1, p1, v0

    const-string v2, "MultiDex"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Trying to delete old file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " of size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_6f

    const-string v2, "MultiDex"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to delete old file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    :cond_6f
    const-string v2, "MultiDex"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Deleted old file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_86
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_89
    return-void
.end method

.method private static putStoredApkInfo(Landroid/content/Context;Ljava/lang/String;JJLjava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/List<",
            "Landroid/support/multidex/MultiDexExtractor$ExtractedDex;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroid/support/multidex/MultiDexExtractor;->getMultiDexPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "crc"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2, p4, p5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "dex.number"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x2

    :goto_4f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_92

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "dex.crc."

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iget-wide v0, p4, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->crc:J

    invoke-interface {p0, p5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "dex.time."

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4}, Landroid/support/multidex/MultiDexExtractor$ExtractedDex;->lastModified()J

    move-result-wide v0

    invoke-interface {p0, p5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 p3, p3, 0x1

    goto :goto_4f

    :cond_92
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
