.class final Lcom/cyjh/event/accessibility/a$g;
.super Lcom/cyjh/event/accessibility/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/event/accessibility/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cyjh/event/accessibility/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cyjh/event/accessibility/a;-><init>(Ljava/lang/Object;ZB)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZB)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/cyjh/event/accessibility/a$g;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 5
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0xe
    .end annotation

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-boolean v0, p0, Lcom/cyjh/event/accessibility/a$g;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_19

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/event/accessibility/a$g;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    return v2

    :cond_19
    return v1

    :cond_1a
    if-eqz p1, :cond_2b

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/event/accessibility/a$g;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2b

    return v2

    :cond_2b
    return v1
.end method
