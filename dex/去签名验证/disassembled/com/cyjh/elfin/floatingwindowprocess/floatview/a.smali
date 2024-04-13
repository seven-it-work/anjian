.class final synthetic Lcom/cyjh/elfin/floatingwindowprocess/floatview/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->l:Z

    return-void
.end method
