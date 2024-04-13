.class public Lcom/cyjh/elfin/floatingwindowprocess/c/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/floatingwindowprocess/c/b$a;
    }
.end annotation


# static fields
.field private static c:Lcom/cyjh/elfin/floatingwindowprocess/c/b;


# instance fields
.field public a:Z

.field public b:Lcom/cyjh/elfin/floatingwindowprocess/c/b$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->a:Z

    return-void
.end method

.method public static a()Lcom/cyjh/elfin/floatingwindowprocess/c/b;
    .registers 2

    sget-object v0, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->c:Lcom/cyjh/elfin/floatingwindowprocess/c/b;

    if-nez v0, :cond_17

    const-class v0, Lcom/cyjh/elfin/floatingwindowprocess/c/b;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->c:Lcom/cyjh/elfin/floatingwindowprocess/c/b;

    if-nez v1, :cond_12

    new-instance v1, Lcom/cyjh/elfin/floatingwindowprocess/c/b;

    invoke-direct {v1}, Lcom/cyjh/elfin/floatingwindowprocess/c/b;-><init>()V

    sput-object v1, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->c:Lcom/cyjh/elfin/floatingwindowprocess/c/b;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->c:Lcom/cyjh/elfin/floatingwindowprocess/c/b;

    return-object v0
.end method

.method private a(I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_10

    iput-boolean v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->a:Z

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->b:Lcom/cyjh/elfin/floatingwindowprocess/c/b$a;

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->b:Lcom/cyjh/elfin/floatingwindowprocess/c/b$a;

    invoke-interface {p1}, Lcom/cyjh/elfin/floatingwindowprocess/c/b$a;->a()V

    return-void

    :cond_10
    if-ne p1, v0, :cond_1e

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->a:Z

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->b:Lcom/cyjh/elfin/floatingwindowprocess/c/b$a;

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->b:Lcom/cyjh/elfin/floatingwindowprocess/c/b$a;

    invoke-interface {p1}, Lcom/cyjh/elfin/floatingwindowprocess/c/b$a;->b()V

    :cond_1e
    return-void
.end method

.method private a(Lcom/cyjh/elfin/floatingwindowprocess/c/b$a;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->b:Lcom/cyjh/elfin/floatingwindowprocess/c/b$a;

    return-void
.end method

.method private b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->a:Z

    return v0
.end method

.method private c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->b:Lcom/cyjh/elfin/floatingwindowprocess/c/b$a;

    return-void
.end method
