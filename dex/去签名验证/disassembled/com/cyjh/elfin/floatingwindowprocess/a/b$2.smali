.class final Lcom/cyjh/elfin/floatingwindowprocess/a/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/floatingwindowprocess/a/b;->b(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Lcom/cyjh/elfin/floatingwindowprocess/a/b;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/a/b;FF)V
    .registers 4

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/b$2;->c:Lcom/cyjh/elfin/floatingwindowprocess/a/b;

    iput p2, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/b$2;->a:F

    iput p3, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/b$2;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/b$2;->c:Lcom/cyjh/elfin/floatingwindowprocess/a/b;

    iget v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/b$2;->a:F

    iget v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/b$2;->b:F

    invoke-static {v0, v1, v2}, Lcom/cyjh/elfin/floatingwindowprocess/a/b;->a(Lcom/cyjh/elfin/floatingwindowprocess/a/b;FF)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/b$2;->c:Lcom/cyjh/elfin/floatingwindowprocess/a/b;

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/b;->show()V

    return-void
.end method
