.class final Lcom/cyjh/common/c/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/common/c/b;->onTick(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/common/c/b;


# direct methods
.method constructor <init>(Lcom/cyjh/common/c/b;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/common/c/b$1;->a:Lcom/cyjh/common/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/common/c/b$1;->a:Lcom/cyjh/common/c/b;

    iget-object v1, p0, Lcom/cyjh/common/c/b$1;->a:Lcom/cyjh/common/c/b;

    invoke-static {v1}, Lcom/cyjh/common/c/b;->a(Lcom/cyjh/common/c/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cyjh/common/c/b;->a(I)V

    return-void
.end method
