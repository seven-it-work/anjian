.class public final Lcom/cyjh/common/util/ad;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_9

    sget-boolean v0, Lcom/cyjh/common/util/ad;->a:Z

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_9

    sget-boolean v0, Lcom/cyjh/common/util/ad;->a:Z

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_9

    sget-boolean v0, Lcom/cyjh/common/util/ad;->a:Z

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/cyjh/common/util/ad;->a:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_9

    sget-boolean v0, Lcom/cyjh/common/util/ad;->a:Z

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method
