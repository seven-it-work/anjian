.class public final Lcom/cyjh/common/util/toast/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/common/util/toast/q$c;,
        Lcom/cyjh/common/util/toast/q$e;,
        Lcom/cyjh/common/util/toast/q$b;,
        Lcom/cyjh/common/util/toast/q$a;,
        Lcom/cyjh/common/util/toast/q$d;,
        Lcom/cyjh/common/util/toast/q$f;
    }
.end annotation


# static fields
.field private static a:Landroid/app/Application;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()Landroid/app/Application;
    .registers 3

    sget-object v0, Lcom/cyjh/common/util/toast/q;->a:Landroid/app/Application;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/cyjh/common/util/toast/q;->a:Landroid/app/Application;

    return-object v0

    :cond_7
    sget-object v0, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    invoke-static {}, Lcom/cyjh/common/util/toast/r;->b()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/toast/q;->a(Landroid/app/Application;)V

    sget-object v0, Lcom/cyjh/common/util/toast/q;->a:Landroid/app/Application;

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "reflect failed."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    const-string v0, "Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cyjh/common/util/toast/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reflect app success."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/cyjh/common/util/toast/q;->a:Landroid/app/Application;

    return-object v0
.end method

.method public static a(Landroid/app/Application;)V
    .registers 5

    if-nez p0, :cond_a

    const-string p0, "Utils"

    const-string v0, "app is null."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    sget-object v0, Lcom/cyjh/common/util/toast/q;->a:Landroid/app/Application;

    if-nez v0, :cond_2e

    sput-object p0, Lcom/cyjh/common/util/toast/q;->a:Landroid/app/Application;

    invoke-static {p0}, Lcom/cyjh/common/util/toast/s;->a(Landroid/app/Application;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Runnable;

    new-instance v0, Lcom/cyjh/common/util/toast/b$1;

    invoke-direct {v0}, Lcom/cyjh/common/util/toast/b$1;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v0, 0x0

    :goto_1f
    if-gtz v0, :cond_2d

    aget-object v2, p0, v1

    invoke-static {}, Lcom/cyjh/common/util/toast/o;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_2d
    return-void

    :cond_2e
    sget-object v0, Lcom/cyjh/common/util/toast/q;->a:Landroid/app/Application;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    return-void

    :cond_37
    sget-object v0, Lcom/cyjh/common/util/toast/q;->a:Landroid/app/Application;

    sget-object v1, Lcom/cyjh/common/util/toast/r;->a:Lcom/cyjh/common/util/toast/r;

    iget-object v2, v1, Lcom/cyjh/common/util/toast/r;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sput-object p0, Lcom/cyjh/common/util/toast/q;->a:Landroid/app/Application;

    invoke-static {p0}, Lcom/cyjh/common/util/toast/s;->a(Landroid/app/Application;)V

    return-void
.end method
