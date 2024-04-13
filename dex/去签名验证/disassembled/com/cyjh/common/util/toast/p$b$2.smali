.class final Lcom/cyjh/common/util/toast/p$b$2;
.super Lcom/cyjh/common/util/toast/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/common/util/toast/p$b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/cyjh/common/util/toast/p$b;


# direct methods
.method constructor <init>(Lcom/cyjh/common/util/toast/p$b;I)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/common/util/toast/p$b$2;->b:Lcom/cyjh/common/util/toast/p$b;

    iput p2, p0, Lcom/cyjh/common/util/toast/p$b$2;->a:I

    invoke-direct {p0}, Lcom/cyjh/common/util/toast/q$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .registers 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$b$2;->b:Lcom/cyjh/common/util/toast/p$b;

    invoke-static {v0}, Lcom/cyjh/common/util/toast/p$b;->a(Lcom/cyjh/common/util/toast/p$b;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$b$2;->b:Lcom/cyjh/common/util/toast/p$b;

    iget v1, p0, Lcom/cyjh/common/util/toast/p$b$2;->a:I

    invoke-static {v0, p1, v1}, Lcom/cyjh/common/util/toast/p$b;->a(Lcom/cyjh/common/util/toast/p$b;Landroid/app/Activity;I)V

    :cond_f
    return-void
.end method
