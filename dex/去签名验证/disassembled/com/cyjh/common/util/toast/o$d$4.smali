.class final Lcom/cyjh/common/util/toast/o$d$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/common/util/toast/o$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Lcom/cyjh/common/util/toast/o$d;


# direct methods
.method constructor <init>(Lcom/cyjh/common/util/toast/o$d;Ljava/lang/Throwable;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/common/util/toast/o$d$4;->b:Lcom/cyjh/common/util/toast/o$d;

    iput-object p2, p0, Lcom/cyjh/common/util/toast/o$d$4;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d$4;->b:Lcom/cyjh/common/util/toast/o$d;

    iget-object v1, p0, Lcom/cyjh/common/util/toast/o$d$4;->a:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/cyjh/common/util/toast/o$d;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d$4;->b:Lcom/cyjh/common/util/toast/o$d;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/o$d;->e()V

    return-void
.end method
