.class Landroid/support/transition/ViewGroupUtilsApi14;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/transition/ViewGroupUtilsImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# static fields
.field private static final LAYOUT_TRANSITION_CHANGING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ViewGroupUtilsApi14"

.field private static sCancelMethod:Ljava/lang/reflect/Method;

.field private static sCancelMethodFetched:Z

.field private static sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

.field private static sLayoutSuppressedField:Ljava/lang/reflect/Field;

.field private static sLayoutSuppressedFieldFetched:Z


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cancelLayoutTransition(Landroid/animation/LayoutTransition;)V
    .registers 6

    sget-boolean v0, Landroid/support/transition/ViewGroupUtilsApi14;->sCancelMethodFetched:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :try_start_6
    const-class v2, Landroid/animation/LayoutTransition;

    const-string v3, "cancel"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/support/transition/ViewGroupUtilsApi14;->sCancelMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_15} :catch_16

    goto :goto_1d

    :catch_16
    const-string v2, "ViewGroupUtilsApi14"

    const-string v3, "Failed to access cancel method by reflection"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    sput-boolean v0, Landroid/support/transition/ViewGroupUtilsApi14;->sCancelMethodFetched:Z

    :cond_1f
    sget-object v0, Landroid/support/transition/ViewGroupUtilsApi14;->sCancelMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3a

    :try_start_23
    sget-object v0, Landroid/support/transition/ViewGroupUtilsApi14;->sCancelMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_2a} :catch_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_23 .. :try_end_2a} :catch_2b

    return-void

    :catch_2b
    const-string p0, "ViewGroupUtilsApi14"

    const-string v0, "Failed to invoke cancel method by reflection"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_33
    const-string p0, "ViewGroupUtilsApi14"

    const-string v0, "Failed to access cancel method by reflection"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    return-void
.end method


# virtual methods
.method public getOverlay(Landroid/view/ViewGroup;)Landroid/support/transition/ViewGroupOverlayImpl;
    .registers 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/support/transition/ViewGroupOverlayApi14;->createFrom(Landroid/view/ViewGroup;)Landroid/support/transition/ViewGroupOverlayApi14;

    move-result-object p1

    return-object p1
.end method

.method public suppressLayout(Landroid/view/ViewGroup;Z)V
    .registers 8
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroid/support/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_28

    new-instance v0, Landroid/support/transition/ViewGroupUtilsApi14$1;

    invoke-direct {v0, p0}, Landroid/support/transition/ViewGroupUtilsApi14$1;-><init>(Landroid/support/transition/ViewGroupUtilsApi14;)V

    sput-object v0, Landroid/support/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    sget-object v0, Landroid/support/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    sget-object v0, Landroid/support/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    sget-object v0, Landroid/support/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    sget-object v0, Landroid/support/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    :cond_28
    if-eqz p2, :cond_48

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p2

    if-eqz p2, :cond_42

    invoke-virtual {p2}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {p2}, Landroid/support/transition/ViewGroupUtilsApi14;->cancelLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_39
    sget-object v0, Landroid/support/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    if-eq p2, v0, :cond_42

    sget v0, Landroid/support/transition/R$id;->transition_layout_save:I

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_42
    sget-object p2, Landroid/support/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void

    :cond_48
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    sget-boolean p2, Landroid/support/transition/ViewGroupUtilsApi14;->sLayoutSuppressedFieldFetched:Z

    if-nez p2, :cond_66

    :try_start_4f
    const-class p2, Landroid/view/ViewGroup;

    const-string v0, "mLayoutSuppressed"

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    sput-object p2, Landroid/support/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4f .. :try_end_5c} :catch_5d

    goto :goto_64

    :catch_5d
    const-string p2, "ViewGroupUtilsApi14"

    const-string v0, "Failed to access mLayoutSuppressed field by reflection"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_64
    sput-boolean v1, Landroid/support/transition/ViewGroupUtilsApi14;->sLayoutSuppressedFieldFetched:Z

    :cond_66
    sget-object p2, Landroid/support/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    if-eqz p2, :cond_83

    :try_start_6a
    sget-object p2, Landroid/support/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p2
    :try_end_70
    .catch Ljava/lang/IllegalAccessException; {:try_start_6a .. :try_end_70} :catch_7c

    if-eqz p2, :cond_7a

    :try_start_72
    sget-object v0, Landroid/support/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_77
    .catch Ljava/lang/IllegalAccessException; {:try_start_72 .. :try_end_77} :catch_78

    goto :goto_7a

    :catch_78
    move v2, p2

    goto :goto_7c

    :cond_7a
    :goto_7a
    move v2, p2

    goto :goto_83

    :catch_7c
    :goto_7c
    const-string p2, "ViewGroupUtilsApi14"

    const-string v0, "Failed to get mLayoutSuppressed field by reflection"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    :goto_83
    if-eqz v2, :cond_88

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_88
    sget p2, Landroid/support/transition/R$id;->transition_layout_save:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/LayoutTransition;

    if-eqz p2, :cond_9a

    sget v0, Landroid/support/transition/R$id;->transition_layout_save:I

    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_9a
    return-void
.end method
