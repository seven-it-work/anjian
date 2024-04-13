.class final synthetic Lcom/cyjh/elfin/ui/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/cyjh/elfin/ui/a/h;

.field private final b:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/a/h;Ljava/io/File;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/a/j;->a:Lcom/cyjh/elfin/ui/a/h;

    iput-object p2, p0, Lcom/cyjh/elfin/ui/a/j;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/j;->a:Lcom/cyjh/elfin/ui/a/h;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/j;->b:Ljava/io/File;

    invoke-virtual {p1, v0}, Lcom/cyjh/elfin/ui/a/h;->a(Ljava/io/File;)V

    return-void
.end method
