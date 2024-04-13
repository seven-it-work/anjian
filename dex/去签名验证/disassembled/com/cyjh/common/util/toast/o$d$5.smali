.class final Lcom/cyjh/common/util/toast/o$d$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/common/util/toast/o$d;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/common/util/toast/o$d;


# direct methods
.method constructor <init>(Lcom/cyjh/common/util/toast/o$d;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/common/util/toast/o$d$5;->a:Lcom/cyjh/common/util/toast/o$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d$5;->a:Lcom/cyjh/common/util/toast/o$d;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/o$d;->a()V

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$d$5;->a:Lcom/cyjh/common/util/toast/o$d;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/o$d;->e()V

    return-void
.end method
