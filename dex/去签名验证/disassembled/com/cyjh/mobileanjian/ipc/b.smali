.class public final Lcom/cyjh/mobileanjian/ipc/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/b;->a:Z

    return-void
.end method

.method private a(Z)Lcom/cyjh/mobileanjian/ipc/b;
    .registers 2

    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/b;->a:Z

    return-object p0
.end method

.method private a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/b;->a:Z

    return v0
.end method
