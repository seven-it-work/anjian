.class final Lcom/cyjh/elfin/floatingwindowprocess/d/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/common/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/floatingwindowprocess/d/b;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/cyjh/common/f/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/floatingwindowprocess/d/b;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/d/b;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Boolean;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a(Lcom/cyjh/elfin/floatingwindowprocess/d/b;Z)Z

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->e:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a(Lcom/cyjh/elfin/floatingwindowprocess/d/b;Z)Z

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a(Lcom/cyjh/elfin/floatingwindowprocess/d/b;Z)Z

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$3;->a:Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->e:Z

    return-void
.end method
