.class final Lcom/umeng/commonsdk/proguard/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/proguard/h;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/h$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/umeng/commonsdk/proguard/g;

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/h$1;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/g;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/umeng/commonsdk/proguard/h$1$1;

    invoke-direct {v1, p0, v0}, Lcom/umeng/commonsdk/proguard/h$1$1;-><init>(Lcom/umeng/commonsdk/proguard/h$1;Lcom/umeng/commonsdk/proguard/g;)V

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/proguard/g;->a(Lcom/umeng/commonsdk/proguard/i;)V

    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/h$1;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method
