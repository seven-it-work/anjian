.class Lcom/umeng/commonsdk/framework/d$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/framework/d$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/umeng/commonsdk/framework/d$1;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/framework/d$1;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/umeng/commonsdk/framework/d$1$2;->b:Lcom/umeng/commonsdk/framework/d$1;

    iput-object p2, p0, Lcom/umeng/commonsdk/framework/d$1$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/framework/d$1$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/proguard/u;->a(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    iget-object v1, p0, Lcom/umeng/commonsdk/framework/d$1$2;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method
