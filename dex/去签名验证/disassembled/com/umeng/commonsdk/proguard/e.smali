.class public Lcom/umeng/commonsdk/proguard/e;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .registers 4

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/commonsdk/proguard/e$1;

    invoke-direct {v1, p0, p1}, Lcom/umeng/commonsdk/proguard/e$1;-><init>(Landroid/content/Context;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
