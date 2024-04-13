.class final synthetic Lcom/cyjh/elfin/ui/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Lcom/cyjh/elfin/ui/a/h;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/a/h;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/a/i;->a:Lcom/cyjh/elfin/ui/a/h;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 6

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/i;->a:Lcom/cyjh/elfin/ui/a/h;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_58

    goto :goto_56

    :pswitch_8
    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/cyjh/elfin/ui/a/h;->i:Z

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/a/h;->a()V

    goto :goto_56

    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, v0, Lcom/cyjh/elfin/ui/a/h;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/cyjh/elfin/ui/a/h;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_56

    :pswitch_33
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    iget-boolean v1, v0, Lcom/cyjh/elfin/ui/a/h;->f:Z

    if-nez v1, :cond_56

    sget-object v1, Lcom/cyjh/elfin/ui/a/h;->a:Ljava/lang/String;

    const-string v2, "afterDownloadSuccess --> 1 "

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/ui/a/h;->a(Ljava/io/File;)V

    iget-object v1, v0, Lcom/cyjh/elfin/ui/a/h;->c:Landroid/widget/Button;

    const-string v2, "\u5b89\u88c5"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/cyjh/elfin/ui/a/h;->c:Landroid/widget/Button;

    new-instance v2, Lcom/cyjh/elfin/ui/a/j;

    invoke-direct {v2, v0, p1}, Lcom/cyjh/elfin/ui/a/j;-><init>(Lcom/cyjh/elfin/ui/a/h;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_56
    :goto_56
    const/4 p1, 0x0

    return p1

    :pswitch_data_58
    .packed-switch 0x3e8
        :pswitch_33
        :pswitch_f
        :pswitch_8
    .end packed-switch
.end method
