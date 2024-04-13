.class public Lcom/lidroid/xutils/util/LogUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/util/LogUtils$CustomLogger;
    }
.end annotation


# static fields
.field public static allowD:Z = true

.field public static allowE:Z = true

.field public static allowI:Z = true

.field public static allowV:Z = true

.field public static allowW:Z = true

.field public static allowWtf:Z = true

.field public static customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger; = null

.field public static customTagPrefix:Ljava/lang/String; = ""


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

.method public static d(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowD:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowD:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0, p1}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_17
    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowE:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowE:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0, p1}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_17
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 6

    const-string v0, "%s.%s(L:%d)"

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/lidroid/xutils/util/LogUtils;->customTagPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    return-object p0

    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customTagPrefix:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowI:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowI:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0, p1}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_17
    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowV:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowV:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0, p1}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_17
    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowW:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowW:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0, p1}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_17
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .registers 3

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowW:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_17
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowWtf:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowWtf:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0, p1}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_17
    invoke-static {v0, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static wtf(Ljava/lang/Throwable;)V
    .registers 3

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowWtf:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_17
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
