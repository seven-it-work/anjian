.class public final Lcom/elfin/engin/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/elfin/engin/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/elfin/engin/a/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/elfin/engin/a/a;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    const-string v0, "com.cyjh.root.c"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elfin/engin/a/a;

    iput-object v0, p0, Lcom/elfin/engin/a/c;->a:Lcom/elfin/engin/a/a;
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_11} :catch_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_11} :catch_17
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    return-void

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-void

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/elfin/engin/a/c;-><init>()V

    return-void
.end method

.method private static e()Lcom/elfin/engin/a/c;
    .registers 1

    invoke-static {}, Lcom/elfin/engin/a/c$a;->a()Lcom/elfin/engin/a/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/elfin/engin/a/c;->a:Lcom/elfin/engin/a/a;

    invoke-interface {v0, p1}, Lcom/elfin/engin/a/a;->a(Landroid/content/Context;)V

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

    iget-object v0, p0, Lcom/elfin/engin/a/c;->a:Lcom/elfin/engin/a/a;

    invoke-interface {v0, p1}, Lcom/elfin/engin/a/a;->a(Lcom/cyjh/common/f/a;)V

    return-void
.end method

.method public final b()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/elfin/engin/a/c;->a:Lcom/elfin/engin/a/a;

    invoke-interface {v0}, Lcom/elfin/engin/a/a;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/elfin/engin/a/b;
    .registers 2

    iget-object v0, p0, Lcom/elfin/engin/a/c;->a:Lcom/elfin/engin/a/a;

    invoke-interface {v0}, Lcom/elfin/engin/a/a;->c()Lcom/elfin/engin/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .registers 1

    return-void
.end method
