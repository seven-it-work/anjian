.class Landroid/support/v4/graphics/TypefaceCompatApi21Impl;
.super Landroid/support/v4/graphics/TypefaceCompatBaseImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TypefaceCompatApi21Impl"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method

.method private getFile(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/proc/self/fd/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    iget v1, v1, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v1

    if-eqz v1, :cond_29

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_28} :catch_29

    return-object v1

    :catch_29
    :cond_29
    return-object v0
.end method


# virtual methods
.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .registers 8
    .param p3    # [Landroid/support/v4/provider/FontsContractCompat$FontInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p3

    const/4 v1, 0x0

    if-gtz v0, :cond_5

    return-object v1

    :cond_5
    invoke-virtual {p0, p3, p4}, Landroid/support/v4/graphics/TypefaceCompatApi21Impl;->findBestInfo([Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    :try_start_d
    invoke-virtual {p3}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object p3

    const-string v0, "r"

    invoke-virtual {p4, p3, v0, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p2
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_76

    :try_start_17
    invoke-direct {p0, p2}, Landroid/support/v4/graphics/TypefaceCompatApi21Impl;->getFile(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_2e

    invoke-virtual {p3}, Ljava/io/File;->canRead()Z

    move-result p4

    if-nez p4, :cond_24

    goto :goto_2e

    :cond_24
    invoke-static {p3}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_28} :catch_5f
    .catchall {:try_start_17 .. :try_end_28} :catchall_5c

    if-eqz p2, :cond_2d

    :try_start_2a
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_76

    :cond_2d
    return-object p1

    :cond_2e
    :goto_2e
    :try_start_2e
    new-instance p3, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_37} :catch_5f
    .catchall {:try_start_2e .. :try_end_37} :catchall_5c

    :try_start_37
    invoke-super {p0, p1, p3}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3b} :catch_47
    .catchall {:try_start_37 .. :try_end_3b} :catchall_44

    :try_start_3b
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3e} :catch_5f
    .catchall {:try_start_3b .. :try_end_3e} :catchall_5c

    if-eqz p2, :cond_43

    :try_start_40
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_76

    :cond_43
    return-object p1

    :catchall_44
    move-exception p1

    move-object p4, v1

    goto :goto_4d

    :catch_47
    move-exception p1

    :try_start_48
    throw p1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception p4

    move-object v2, p4

    move-object p4, p1

    move-object p1, v2

    :goto_4d
    if-eqz p4, :cond_58

    :try_start_4f
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_52} :catch_53
    .catchall {:try_start_4f .. :try_end_52} :catchall_5c

    goto :goto_5b

    :catch_53
    move-exception p3

    :try_start_54
    invoke-virtual {p4, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5b

    :cond_58
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V

    :goto_5b
    throw p1
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_5c} :catch_5f
    .catchall {:try_start_54 .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception p1

    move-object p3, v1

    goto :goto_65

    :catch_5f
    move-exception p1

    :try_start_60
    throw p1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_61

    :catchall_61
    move-exception p3

    move-object v2, p3

    move-object p3, p1

    move-object p1, v2

    :goto_65
    if-eqz p2, :cond_75

    if-eqz p3, :cond_72

    :try_start_69
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_6c} :catch_6d
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_76

    goto :goto_75

    :catch_6d
    move-exception p2

    :try_start_6e
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_75

    :cond_72
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_75
    :goto_75
    throw p1
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_76} :catch_76

    :catch_76
    return-object v1
.end method
