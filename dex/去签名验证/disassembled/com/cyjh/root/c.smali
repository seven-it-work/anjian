.class public Lcom/cyjh/root/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/elfin/engin/a/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/cyjh/root/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cyjh/root/b;

    invoke-direct {v0}, Lcom/cyjh/root/b;-><init>()V

    iput-object v0, p0, Lcom/cyjh/root/c;->b:Lcom/cyjh/root/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/root/c;->a:Landroid/content/Context;

    return-void
.end method

.method public final a(Lcom/cyjh/common/f/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cyjh/common/f/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "success"

    invoke-interface {p1, v0}, Lcom/cyjh/common/f/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/root/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final c()Lcom/elfin/engin/a/b;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/root/c;->b:Lcom/cyjh/root/b;

    return-object v0
.end method

.method public final d()V
    .registers 1

    return-void
.end method
