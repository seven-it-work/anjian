.class final Lcom/cyjh/event/accessibility/a$c;
.super Lcom/cyjh/event/accessibility/a;

# interfaces
.implements Lcom/cyjh/event/accessibility/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/event/accessibility/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cyjh/event/accessibility/a<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/cyjh/event/accessibility/a$d;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/cyjh/event/accessibility/a;-><init>(Ljava/lang/Object;ZB)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/event/accessibility/a$c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x12
    .end annotation

    iget-object v0, p0, Lcom/cyjh/event/accessibility/a$c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_2c

    :cond_11
    const/4 v0, 0x1

    :goto_12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_24
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1

    :cond_2c
    :goto_2c
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/List;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/event/accessibility/a$c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
