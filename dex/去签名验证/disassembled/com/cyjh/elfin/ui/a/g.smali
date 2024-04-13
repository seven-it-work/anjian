.class public final Lcom/cyjh/elfin/ui/a/g;
.super Landroid/app/Dialog;


# static fields
.field public static a:Z = false

.field public static c:Z = true


# instance fields
.field public b:Landroid/view/View$OnClickListener;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 5

    const v0, 0x7f0b0134

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    if-eqz p2, :cond_32

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_18

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/g;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7f6

    :goto_14
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_32

    :cond_18
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_2b

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_2b

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/g;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d5

    goto :goto_14

    :cond_2b
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/g;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d2

    goto :goto_14

    :cond_32
    :goto_32
    iput-object p3, p0, Lcom/cyjh/elfin/ui/a/g;->d:Ljava/lang/String;

    sput-boolean p2, Lcom/cyjh/elfin/ui/a/g;->c:Z

    return-void
.end method

.method private static a(Landroid/app/Dialog;)V
    .registers 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private a(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/a/g;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/g;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .registers 2

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/cyjh/elfin/ui/a/g;->a:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/cyjh/elfin/ui/a/g;->c:Z

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040058

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/a/g;->setContentView(I)V

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const p1, 0x7f100153

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/a/g;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/elfin/ui/a/g;->e:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/cyjh/elfin/ui/a/g;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/g;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f100163

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/a/g;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/g;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/a/g;->setCancelable(Z)V

    return-void
.end method

.method public final onMessageMainThread(Lcom/cyjh/elfin/entity/MsgItem$UpdateMessageToDialog;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/MsgItem$UpdateMessageToDialog;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/cyjh/elfin/ui/a/g;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/MsgItem$UpdateMessageToDialog;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    return-void
.end method

.method public final onMessageMainThread(Lcom/cyjh/elfin/entity/MsgItem;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/MsgItem;->getMsgType()I

    move-result p1

    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_b

    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/a/g;->dismiss()V

    :cond_b
    return-void
.end method

.method public final show()V
    .registers 2

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/cyjh/elfin/ui/a/g;->a:Z

    return-void
.end method
