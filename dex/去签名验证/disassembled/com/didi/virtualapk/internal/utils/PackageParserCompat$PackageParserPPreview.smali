.class final Lcom/didi/virtualapk/internal/utils/PackageParserCompat$PackageParserPPreview;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/virtualapk/internal/utils/PackageParserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageParserPPreview"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final parsePackage(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance p0, Landroid/content/pm/PackageParser;

    invoke-direct {p0}, Landroid/content/pm/PackageParser;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object p1

    invoke-static {p0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p0

    const-string p2, "collectCertificates"

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/pm/PackageParser$Package;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p0, p2, v1}, Lcom/didi/virtualapk/utils/Reflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p0

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-virtual {p0, p2}, Lcom/didi/virtualapk/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
