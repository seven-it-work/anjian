.class public final Lcom/cyjh/common/g/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/cyjh/common/g/a;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;)Landroid/app/Activity;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/app/Activity;"
        }
    .end annotation

    sget-object v0, Lcom/cyjh/common/g/a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_1d
    const/4 v1, 0x0

    return-object v1
.end method

.method public static a()Lcom/cyjh/common/g/a;
    .registers 1

    sget-object v0, Lcom/cyjh/common/g/a;->b:Lcom/cyjh/common/g/a;

    if-nez v0, :cond_b

    new-instance v0, Lcom/cyjh/common/g/a;

    invoke-direct {v0}, Lcom/cyjh/common/g/a;-><init>()V

    sput-object v0, Lcom/cyjh/common/g/a;->b:Lcom/cyjh/common/g/a;

    :cond_b
    sget-object v0, Lcom/cyjh/common/g/a;->b:Lcom/cyjh/common/g/a;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 2

    sget-object v0, Lcom/cyjh/common/g/a;->a:Ljava/util/Stack;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/cyjh/common/g/a;->a:Ljava/util/Stack;

    :cond_b
    sget-object v0, Lcom/cyjh/common/g/a;->a:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b()V
    .registers 3

    sget-object v0, Lcom/cyjh/common/g/a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2d

    sget-object v2, Lcom/cyjh/common/g/a;->a:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2a

    sget-object v2, Lcom/cyjh/common/g/a;->a:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2a

    sget-object v2, Lcom/cyjh/common/g/a;->a:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2d
    sget-object v0, Lcom/cyjh/common/g/a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .registers 2

    if-eqz p0, :cond_10

    sget-object v0, Lcom/cyjh/common/g/a;->a:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_10
    return-void
.end method

.method private static b(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Lcom/cyjh/common/g/a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Lcom/cyjh/common/g/a;->b(Landroid/app/Activity;)V

    goto :goto_6

    :cond_20
    return-void
.end method

.method private static c()Landroid/app/Activity;
    .registers 1

    sget-object v0, Lcom/cyjh/common/g/a;->a:Ljava/util/Stack;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/cyjh/common/g/a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_16

    :cond_d
    sget-object v0, Lcom/cyjh/common/g/a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_16
    :goto_16
    const/4 v0, 0x0

    return-object v0
.end method

.method private static c(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Lcom/cyjh/common/g/a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v1}, Lcom/cyjh/common/g/a;->b(Landroid/app/Activity;)V

    goto :goto_6

    :cond_20
    return-void
.end method

.method private static d()V
    .registers 1

    sget-object v0, Lcom/cyjh/common/g/a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/cyjh/common/g/a;->b(Landroid/app/Activity;)V

    return-void
.end method
