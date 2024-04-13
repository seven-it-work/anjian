.class public final Lcom/didi/virtualapk/internal/utils/PackageParserCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/virtualapk/internal/utils/PackageParserCompat$PackageParserLegacy;,
        Lcom/didi/virtualapk/internal/utils/PackageParserCompat$PackageParserLollipop;,
        Lcom/didi/virtualapk/internal/utils/PackageParserCompat$PackageParserV24;,
        Lcom/didi/virtualapk/internal/utils/PackageParserCompat$PackageParserPPreview;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final parsePackage(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .registers 5

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_2c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_11

    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-eqz v0, :cond_11

    goto :goto_2c

    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1c

    invoke-static {p0, p1, p2}, Lcom/didi/virtualapk/internal/utils/PackageParserCompat$PackageParserV24;->parsePackage(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object p0

    return-object p0

    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_27

    invoke-static {p0, p1, p2}, Lcom/didi/virtualapk/internal/utils/PackageParserCompat$PackageParserLollipop;->parsePackage(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object p0

    return-object p0

    :cond_27
    invoke-static {p0, p1, p2}, Lcom/didi/virtualapk/internal/utils/PackageParserCompat$PackageParserLegacy;->parsePackage(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object p0

    return-object p0

    :cond_2c
    :goto_2c
    invoke-static {p0, p1, p2}, Lcom/didi/virtualapk/internal/utils/PackageParserCompat$PackageParserPPreview;->parsePackage(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object p0
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_30} :catch_31

    return-object p0

    :catch_31
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "error"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
