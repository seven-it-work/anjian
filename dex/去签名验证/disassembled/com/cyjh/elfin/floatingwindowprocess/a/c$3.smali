.class final Lcom/cyjh/elfin/floatingwindowprocess/a/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/floatingwindowprocess/a/c;->a(FFIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Lcom/cyjh/elfin/floatingwindowprocess/a/c;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/a/c;FFIZ)V
    .registers 6

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c$3;->e:Lcom/cyjh/elfin/floatingwindowprocess/a/c;

    iput p2, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c$3;->a:F

    iput p3, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c$3;->b:F

    iput p4, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c$3;->c:I

    iput-boolean p5, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c$3;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c$3;->e:Lcom/cyjh/elfin/floatingwindowprocess/a/c;

    iget v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c$3;->a:F

    iget v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c$3;->b:F

    invoke-static {v0, v1, v2}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->a(Lcom/cyjh/elfin/floatingwindowprocess/a/c;FF)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c$3;->e:Lcom/cyjh/elfin/floatingwindowprocess/a/c;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->a(Lcom/cyjh/elfin/floatingwindowprocess/a/c;)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c$3;->e:Lcom/cyjh/elfin/floatingwindowprocess/a/c;

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c;->show()V

    return-void
.end method
