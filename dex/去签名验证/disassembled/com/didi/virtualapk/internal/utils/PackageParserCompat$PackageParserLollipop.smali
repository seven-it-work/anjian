.class final Lcom/didi/virtualapk/internal/utils/PackageParserCompat$PackageParserLollipop;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/virtualapk/internal/utils/PackageParserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageParserLollipop"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final parsePackage(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance p0, Landroid/content/pm/PackageParser;

    invoke-direct {p0}, Landroid/content/pm/PackageParser;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)V

    return-object p1
.end method
