.class public final Landroid/support/v4/view/ViewParentCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewParentCompat$ViewParentCompatApi21Impl;,
        Landroid/support/v4/view/ViewParentCompat$ViewParentCompatApi19Impl;,
        Landroid/support/v4/view/ViewParentCompat$ViewParentCompatBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatBaseImpl;

.field private static final TAG:Ljava/lang/String; = "ViewParentCompat"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatApi21Impl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatApi21Impl;-><init>()V

    :goto_b
    sput-object v0, Landroid/support/v4/view/ViewParentCompat;->IMPL:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatBaseImpl;

    return-void

    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1a

    new-instance v0, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatApi19Impl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatApi19Impl;-><init>()V

    goto :goto_b

    :cond_1a
    new-instance v0, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatBaseImpl;-><init>()V

    goto :goto_b
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    sget-object v0, Landroid/support/v4/view/ViewParentCompat;->IMPL:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatBaseImpl;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatBaseImpl;->notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public static onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .registers 11

    sget-object v0, Landroid/support/v4/view/ViewParentCompat;->IMPL:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatBaseImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatBaseImpl;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result p0

    return p0
.end method

.method public static onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .registers 5

    sget-object v0, Landroid/support/v4/view/ViewParentCompat;->IMPL:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatBaseImpl;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatBaseImpl;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result p0

    return p0
.end method

.method public static onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    return-void
.end method

.method public static onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V
    .registers 14

    instance-of v0, p0, Landroid/support/v4/view/NestedScrollingParent2;

    if-eqz v0, :cond_10

    move-object v1, p0

    check-cast v1, Landroid/support/v4/view/NestedScrollingParent2;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/support/v4/view/NestedScrollingParent2;->onNestedPreScroll(Landroid/view/View;II[II)V

    return-void

    :cond_10
    if-nez p5, :cond_1c

    sget-object v2, Landroid/support/v4/view/ViewParentCompat;->IMPL:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatBaseImpl;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatBaseImpl;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    :cond_1c
    return-void
.end method

.method public static onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroid/support/v4/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII)V

    return-void
.end method

.method public static onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII)V
    .registers 16

    instance-of v0, p0, Landroid/support/v4/view/NestedScrollingParent2;

    if-eqz v0, :cond_11

    move-object v1, p0

    check-cast v1, Landroid/support/v4/view/NestedScrollingParent2;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/support/v4/view/NestedScrollingParent2;->onNestedScroll(Landroid/view/View;IIIII)V

    return-void

    :cond_11
    if-nez p6, :cond_1e

    sget-object v2, Landroid/support/v4/view/ViewParentCompat;->IMPL:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatBaseImpl;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v2 .. v8}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatBaseImpl;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    :cond_1e
    return-void
.end method

.method public static onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public static onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V
    .registers 6

    instance-of v0, p0, Landroid/support/v4/view/NestedScrollingParent2;

    if-eqz v0, :cond_a

    check-cast p0, Landroid/support/v4/view/NestedScrollingParent2;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingParent2;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void

    :cond_a
    if-nez p4, :cond_11

    sget-object p4, Landroid/support/v4/view/ViewParentCompat;->IMPL:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatBaseImpl;

    invoke-virtual {p4, p0, p1, p2, p3}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatBaseImpl;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    :cond_11
    return-void
.end method

.method public static onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public static onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z
    .registers 6

    instance-of v0, p0, Landroid/support/v4/view/NestedScrollingParent2;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/support/v4/view/NestedScrollingParent2;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingParent2;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0

    :cond_b
    if-nez p4, :cond_14

    sget-object p4, Landroid/support/v4/view/ViewParentCompat;->IMPL:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatBaseImpl;

    invoke-virtual {p4, p0, p1, p2, p3}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatBaseImpl;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result p0

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/v4/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V

    return-void
.end method

.method public static onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V
    .registers 4

    instance-of v0, p0, Landroid/support/v4/view/NestedScrollingParent2;

    if-eqz v0, :cond_a

    check-cast p0, Landroid/support/v4/view/NestedScrollingParent2;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/view/NestedScrollingParent2;->onStopNestedScroll(Landroid/view/View;I)V

    return-void

    :cond_a
    if-nez p2, :cond_11

    sget-object p2, Landroid/support/v4/view/ViewParentCompat;->IMPL:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatBaseImpl;

    invoke-virtual {p2, p0, p1}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatBaseImpl;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V

    :cond_11
    return-void
.end method

.method public static requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0, p1, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method
