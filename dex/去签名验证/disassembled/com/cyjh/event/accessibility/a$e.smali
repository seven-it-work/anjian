.class final Lcom/cyjh/event/accessibility/a$e;
.super Lcom/cyjh/event/accessibility/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/event/accessibility/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cyjh/event/accessibility/a<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;)V
    .registers 4
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/cyjh/event/accessibility/a;-><init>(Ljava/lang/Object;ZB)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 3
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0xe
    .end annotation

    sget-object v0, Lcom/cyjh/event/accessibility/a$e;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/cyjh/event/accessibility/a$e;->b:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Rect;

    sget-object v0, Lcom/cyjh/event/accessibility/a$e;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method
