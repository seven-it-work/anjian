.class final Lcom/cyjh/common/util/toast/p$e;
.super Lcom/cyjh/common/util/toast/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/common/util/toast/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/common/util/toast/p$e$a;
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/cyjh/common/util/toast/p;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/cyjh/common/util/toast/p$a;-><init>(Lcom/cyjh/common/util/toast/p;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x19

    if-ne p1, v0, :cond_36

    :try_start_9
    const-class p1, Landroid/widget/Toast;

    const-string v0, "mTN"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/cyjh/common/util/toast/p$e;->a:Landroid/widget/Toast;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    const-string v2, "mHandler"

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v2, Lcom/cyjh/common/util/toast/p$e$a;

    invoke-direct {v2, v0}, Lcom/cyjh/common/util/toast/p$e$a;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_36} :catch_36

    :catch_36
    :cond_36
    return-void
.end method


# virtual methods
.method public final b(I)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$e;->a:Landroid/widget/Toast;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$e;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V

    iget-object p1, p0, Lcom/cyjh/common/util/toast/p$e;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
