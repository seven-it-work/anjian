.class public final Landroid/support/v4/view/ViewGroupCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatApi21Impl;,
        Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatApi18Impl;,
        Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;

.field public static final LAYOUT_MODE_CLIP_BOUNDS:I = 0x0

.field public static final LAYOUT_MODE_OPTICAL_BOUNDS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatApi21Impl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatApi21Impl;-><init>()V

    :goto_b
    sput-object v0, Landroid/support/v4/view/ViewGroupCompat;->IMPL:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;

    return-void

    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1a

    new-instance v0, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatApi18Impl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatApi18Impl;-><init>()V

    goto :goto_b

    :cond_1a
    new-instance v0, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;-><init>()V

    goto :goto_b
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutMode(Landroid/view/ViewGroup;)I
    .registers 2

    sget-object v0, Landroid/support/v4/view/ViewGroupCompat;->IMPL:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;->getLayoutMode(Landroid/view/ViewGroup;)I

    move-result p0

    return p0
.end method

.method public static getNestedScrollAxes(Landroid/view/ViewGroup;)I
    .registers 2
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroid/support/v4/view/ViewGroupCompat;->IMPL:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;->getNestedScrollAxes(Landroid/view/ViewGroup;)I

    move-result p0

    return p0
.end method

.method public static isTransitionGroup(Landroid/view/ViewGroup;)Z
    .registers 2

    sget-object v0, Landroid/support/v4/view/ViewGroupCompat;->IMPL:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;->isTransitionGroup(Landroid/view/ViewGroup;)Z

    move-result p0

    return p0
.end method

.method public static onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public static setLayoutMode(Landroid/view/ViewGroup;I)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/ViewGroupCompat;->IMPL:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;->setLayoutMode(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method public static setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    return-void
.end method

.method public static setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/ViewGroupCompat;->IMPL:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;->setTransitionGroup(Landroid/view/ViewGroup;Z)V

    return-void
.end method
