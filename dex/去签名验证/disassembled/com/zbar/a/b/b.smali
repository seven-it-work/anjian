.class final Lcom/zbar/a/b/b;
.super Landroid/os/Handler;


# instance fields
.field a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iput-object p1, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    return-void
.end method

.method private a([BII)V
    .registers 16

    array-length v0, p1

    new-array v0, v0, [B

    const/4 v10, 0x0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, p3, :cond_1d

    const/4 v2, 0x0

    :goto_8
    if-ge v2, p2, :cond_1a

    mul-int v3, v2, p3

    add-int/2addr v3, p3

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    mul-int v4, v1, p2

    add-int/2addr v4, v2

    aget-byte v4, p1, v4

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1d
    new-instance v1, Lcom/zbar/lib/ZbarManager;

    invoke-direct {v1}, Lcom/zbar/lib/ZbarManager;-><init>()V

    const/4 v5, 0x1

    iget-object p1, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget v6, p1, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->j:I

    iget-object p1, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget v7, p1, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->k:I

    iget-object p1, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget v8, p1, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->l:I

    iget-object p1, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget v9, p1, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->m:I

    move-object v2, v0

    move v3, p3

    move v4, p2

    invoke-virtual/range {v1 .. v9}, Lcom/zbar/lib/ZbarManager;->decode([BIIZIIII)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_123

    iget-object v1, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget-boolean v1, v1, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->f:Z

    if-eqz v1, :cond_109

    new-instance v9, Lcom/zbar/a/c/c;

    iget-object v1, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget v5, v1, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->j:I

    iget-object v1, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget v6, v1, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->k:I

    iget-object v1, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget v7, v1, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->l:I

    iget-object v1, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget v8, v1, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->m:I

    move-object v1, v9

    move-object v2, v0

    move v3, p3

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/zbar/a/c/c;-><init>([BIIIIII)V

    iget p2, v9, Lcom/zbar/a/c/b;->a:I

    div-int/lit8 p2, p2, 0x2

    iget p3, v9, Lcom/zbar/a/c/b;->b:I

    div-int/lit8 p3, p3, 0x2

    mul-int v0, p2, p3

    new-array v1, v0, [I

    iget-object v0, v9, Lcom/zbar/a/c/c;->c:[B

    iget v2, v9, Lcom/zbar/a/c/c;->f:I

    iget v3, v9, Lcom/zbar/a/c/c;->d:I

    mul-int v2, v2, v3

    iget v3, v9, Lcom/zbar/a/c/c;->e:I

    add-int/2addr v2, v3

    move v3, v2

    const/4 v2, 0x0

    :goto_74
    if-ge v2, p3, :cond_99

    mul-int v4, v2, p2

    const/4 v5, 0x0

    :goto_79
    if-ge v5, p2, :cond_91

    mul-int/lit8 v6, v5, 0x2

    add-int/2addr v6, v3

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    add-int v7, v4, v5

    const/high16 v8, -0x1000000

    const v11, 0x10101

    mul-int v6, v6, v11

    or-int/2addr v6, v8

    aput v6, v1, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_79

    :cond_91
    iget v4, v9, Lcom/zbar/a/c/c;->d:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    :cond_99
    iget p2, v9, Lcom/zbar/a/c/b;->a:I

    div-int/lit8 v4, p2, 0x2

    iget p2, v9, Lcom/zbar/a/c/b;->b:I

    div-int/lit8 v5, p2, 0x2

    const/4 v2, 0x0

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move v3, v4

    invoke-static/range {v1 .. v6}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    :try_start_a9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/Qrcode/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_d0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Qrcode.jpg"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_ef

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_ef
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p2, v0, v1, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_104} :catch_105

    goto :goto_109

    :catch_105
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_109
    :goto_109
    iget-object p2, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget-object p2, p2, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->d:Lcom/zbar/a/b/a;

    if-eqz p2, :cond_133

    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const p1, 0x7f100007

    iput p1, p2, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget-object p1, p1, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->d:Lcom/zbar/a/b/a;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_123
    iget-object p1, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget-object p1, p1, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->d:Lcom/zbar/a/b/a;

    if-eqz p1, :cond_133

    iget-object p1, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget-object p1, p1, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->d:Lcom/zbar/a/b/a;

    const p2, 0x7f100006

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_133
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 16

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f100005

    if-eq v0, v1, :cond_15

    const p1, 0x7f100014

    if-eq v0, p1, :cond_d

    return-void

    :cond_d
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    return-void

    :cond_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v10, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    array-length v1, v0

    new-array v11, v1, [B

    const/4 v12, 0x0

    const/4 v1, 0x0

    :goto_22
    if-ge v1, p1, :cond_3a

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v10, :cond_37

    mul-int v3, v2, p1

    add-int/2addr v3, p1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    mul-int v4, v1, v10

    add-int/2addr v4, v2

    aget-byte v4, v0, v4

    aput-byte v4, v11, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_3a
    new-instance v1, Lcom/zbar/lib/ZbarManager;

    invoke-direct {v1}, Lcom/zbar/lib/ZbarManager;-><init>()V

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget v6, v0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->j:I

    iget-object v0, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget v7, v0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->k:I

    iget-object v0, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget v8, v0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->l:I

    iget-object v0, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget v9, v0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->m:I

    move-object v2, v11

    move v3, p1

    move v4, v10

    invoke-virtual/range {v1 .. v9}, Lcom/zbar/lib/ZbarManager;->decode([BIIZIIII)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_140

    iget-object v1, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget-boolean v1, v1, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->f:Z

    if-eqz v1, :cond_126

    new-instance v9, Lcom/zbar/a/c/c;

    iget-object v1, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget v5, v1, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->j:I

    iget-object v1, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget v6, v1, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->k:I

    iget-object v1, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget v7, v1, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->l:I

    iget-object v1, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget v8, v1, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->m:I

    move-object v1, v9

    move-object v2, v11

    move v3, p1

    move v4, v10

    invoke-direct/range {v1 .. v8}, Lcom/zbar/a/c/c;-><init>([BIIIIII)V

    iget p1, v9, Lcom/zbar/a/c/b;->a:I

    div-int/lit8 p1, p1, 0x2

    iget v1, v9, Lcom/zbar/a/c/b;->b:I

    div-int/lit8 v1, v1, 0x2

    mul-int v2, p1, v1

    new-array v3, v2, [I

    iget-object v2, v9, Lcom/zbar/a/c/c;->c:[B

    iget v4, v9, Lcom/zbar/a/c/c;->f:I

    iget v5, v9, Lcom/zbar/a/c/c;->d:I

    mul-int v4, v4, v5

    iget v5, v9, Lcom/zbar/a/c/c;->e:I

    add-int/2addr v4, v5

    move v5, v4

    const/4 v4, 0x0

    :goto_91
    if-ge v4, v1, :cond_b6

    mul-int v6, v4, p1

    const/4 v7, 0x0

    :goto_96
    if-ge v7, p1, :cond_ae

    mul-int/lit8 v8, v7, 0x2

    add-int/2addr v8, v5

    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    add-int v10, v6, v7

    const/high16 v11, -0x1000000

    const v13, 0x10101

    mul-int v8, v8, v13

    or-int/2addr v8, v11

    aput v8, v3, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_96

    :cond_ae
    iget v6, v9, Lcom/zbar/a/c/c;->d:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_91

    :cond_b6
    iget p1, v9, Lcom/zbar/a/c/b;->a:I

    div-int/lit8 v6, p1, 0x2

    iget p1, v9, Lcom/zbar/a/c/b;->b:I

    div-int/lit8 v7, p1, 0x2

    const/4 v4, 0x0

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move v5, v6

    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    :try_start_c6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Qrcode/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_ed

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_ed
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Qrcode.jpg"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10c

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_10c
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_121} :catch_122

    goto :goto_126

    :catch_122
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_126
    :goto_126
    iget-object p1, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget-object p1, p1, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->d:Lcom/zbar/a/b/a;

    if-eqz p1, :cond_150

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const v0, 0x7f100007

    iput v0, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget-object v0, v0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->d:Lcom/zbar/a/b/a;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_140
    iget-object p1, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget-object p1, p1, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->d:Lcom/zbar/a/b/a;

    if-eqz p1, :cond_150

    iget-object p1, p0, Lcom/zbar/a/b/b;->a:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget-object p1, p1, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->d:Lcom/zbar/a/b/a;

    const v0, 0x7f100006

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_150
    return-void
.end method
