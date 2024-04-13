.class final synthetic Lcom/cyjh/elfin/e/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/e/c/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p2, p0, Lcom/cyjh/elfin/e/c/b;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/cyjh/elfin/e/c/a;->a(Landroid/content/Context;Landroid/content/DialogInterface;)V

    return-void
.end method
