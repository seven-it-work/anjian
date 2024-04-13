.class public final Lcom/cyjh/elfin/e/c/m;
.super Ljava/lang/Object;


# static fields
.field private static a:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    sget-boolean v0, Lcom/cyjh/elfin/e/c/m;->a:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    sget-boolean v0, Lcom/cyjh/elfin/e/c/m;->a:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method private static a(Z)V
    .registers 1

    sput-boolean p0, Lcom/cyjh/elfin/e/c/m;->a:Z

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    sget-boolean v0, Lcom/cyjh/elfin/e/c/m;->a:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    sget-boolean v0, Lcom/cyjh/elfin/e/c/m;->a:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    sget-boolean v0, Lcom/cyjh/elfin/e/c/m;->a:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    sget-boolean v0, Lcom/cyjh/elfin/e/c/m;->a:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    sget-boolean v0, Lcom/cyjh/elfin/e/c/m;->a:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    sget-boolean v0, Lcom/cyjh/elfin/e/c/m;->a:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    sget-boolean v0, Lcom/cyjh/elfin/e/c/m;->a:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    sget-boolean v0, Lcom/cyjh/elfin/e/c/m;->a:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method
