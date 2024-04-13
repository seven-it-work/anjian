.class final Lcom/cyjh/elfin/ui/adpter/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/adpter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/adpter/a;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/adpter/a;I)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/elfin/ui/adpter/a$a;->a:Lcom/cyjh/elfin/ui/adpter/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/cyjh/elfin/ui/adpter/a$a;->b:I

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    iget-object p1, p0, Lcom/cyjh/elfin/ui/adpter/a$a;->a:Lcom/cyjh/elfin/ui/adpter/a;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/adpter/a;->a(Lcom/cyjh/elfin/ui/adpter/a;)Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lcom/cyjh/elfin/ui/adpter/a$a;->b:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/entity/ScriptLog;

    invoke-virtual {p1, p2}, Lcom/cyjh/elfin/entity/ScriptLog;->setSelect(Z)V

    return-void
.end method
