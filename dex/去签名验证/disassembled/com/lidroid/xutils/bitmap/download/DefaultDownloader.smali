.class public Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;
.super Lcom/lidroid/xutils/bitmap/download/Downloader;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/lidroid/xutils/bitmap/download/Downloader;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadToStream(Ljava/lang/String;Ljava/io/OutputStream;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)J
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask<",
            "*>;)J"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    if-eqz v2, :cond_119

    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_119

    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_14

    goto/16 :goto_119

    :cond_14
    const/4 v5, 0x0

    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->trustAllHttpsURLConnection()V

    const-wide/16 v6, 0x0

    :try_start_1a
    const-string v8, "/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_48

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/FileInputStream;->available()I

    move-result v1

    int-to-long v9, v1

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_31} :catch_106
    .catchall {:try_start_1a .. :try_end_31} :catchall_103

    :try_start_31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;->getDefaultExpiry()J

    move-result-wide v13
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_39} :catch_44
    .catchall {:try_start_31 .. :try_end_39} :catchall_40

    const/4 v5, 0x0

    add-long v15, v11, v13

    move-object v5, v1

    move-wide v11, v15

    goto/16 :goto_b6

    :catchall_40
    move-exception v0

    move-object v5, v1

    goto/16 :goto_104

    :catch_44
    move-exception v0

    move-object v5, v1

    goto/16 :goto_107

    :cond_48
    :try_start_48
    const-string v8, "assets/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_76

    invoke-virtual/range {p0 .. p0}, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const/4 v9, 0x7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v8

    int-to-long v9, v8

    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide v11, 0x7fffffffffffffffL

    move-object v5, v8

    goto :goto_b6

    :cond_76
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;->getDefaultConnectTimeout()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;->getDefaultReadTimeout()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V

    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_96} :catch_106
    .catchall {:try_start_48 .. :try_end_96} :catchall_103

    :try_start_96
    invoke-virtual {v1}, Ljava/net/URLConnection;->getExpiration()J

    move-result-wide v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    cmp-long v5, v9, v11

    if-gez v5, :cond_ae

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;->getDefaultExpiry()J

    move-result-wide v11

    const/4 v5, 0x0

    add-long v13, v9, v11

    goto :goto_af

    :cond_ae
    move-wide v13, v9

    :goto_af
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v1
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_b3} :catch_ff
    .catchall {:try_start_96 .. :try_end_b3} :catchall_fb

    int-to-long v9, v1

    move-object v5, v8

    move-wide v11, v13

    :goto_b6
    :try_start_b6
    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_f5

    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_c3

    goto :goto_f5

    :cond_c3
    const/16 v1, 0x1000

    new-array v1, v1, [B

    new-instance v8, Ljava/io/BufferedOutputStream;

    move-object/from16 v13, p2

    invoke-direct {v8, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_ce
    invoke-virtual {v5, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_dc

    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_d8
    .catch Ljava/lang/Throwable; {:try_start_b6 .. :try_end_d8} :catch_106
    .catchall {:try_start_b6 .. :try_end_d8} :catchall_103

    invoke-static {v5}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-wide v11

    :cond_dc
    const/4 v14, 0x0

    :try_start_dd
    invoke-virtual {v8, v1, v14, v13}, Ljava/io/BufferedOutputStream;->write([BII)V

    int-to-long v13, v13

    add-long v3, v6, v13

    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_f5

    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_f0

    goto :goto_f5

    :cond_f0
    invoke-virtual {v2, v9, v10, v3, v4}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->updateProgress(JJ)V
    :try_end_f3
    .catch Ljava/lang/Throwable; {:try_start_dd .. :try_end_f3} :catch_106
    .catchall {:try_start_dd .. :try_end_f3} :catchall_103

    move-wide v6, v3

    goto :goto_ce

    :cond_f5
    :goto_f5
    invoke-static {v5}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const-wide/16 v1, -0x1

    return-wide v1

    :catchall_fb
    move-exception v0

    move-object v1, v0

    move-object v5, v8

    goto :goto_115

    :catch_ff
    move-exception v0

    move-object v1, v0

    move-object v5, v8

    goto :goto_108

    :catchall_103
    move-exception v0

    :goto_104
    move-object v1, v0

    goto :goto_115

    :catch_106
    move-exception v0

    :goto_107
    move-object v1, v0

    :goto_108
    :try_start_108
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10f
    .catchall {:try_start_108 .. :try_end_10f} :catchall_103

    invoke-static {v5}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const-wide/16 v11, -0x1

    return-wide v11

    :goto_115
    invoke-static {v5}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    :cond_119
    :goto_119
    const-wide/16 v1, -0x1

    return-wide v1
.end method
