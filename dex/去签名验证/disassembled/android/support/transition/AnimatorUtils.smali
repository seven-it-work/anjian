.class Landroid/support/transition/AnimatorUtils;
.super Ljava/lang/Object;


# static fields
.field private static final IMPL:Landroid/support/transition/AnimatorUtilsImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/transition/AnimatorUtilsApi19;

    invoke-direct {v0}, Landroid/support/transition/AnimatorUtilsApi19;-><init>()V

    :goto_b
    sput-object v0, Landroid/support/transition/AnimatorUtils;->IMPL:Landroid/support/transition/AnimatorUtilsImpl;

    return-void

    :cond_e
    new-instance v0, Landroid/support/transition/AnimatorUtilsApi14;

    invoke-direct {v0}, Landroid/support/transition/AnimatorUtilsApi14;-><init>()V

    goto :goto_b
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V
    .registers 3
    .param p0    # Landroid/animation/Animator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/animation/AnimatorListenerAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroid/support/transition/AnimatorUtils;->IMPL:Landroid/support/transition/AnimatorUtilsImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/transition/AnimatorUtilsImpl;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method static pause(Landroid/animation/Animator;)V
    .registers 2
    .param p0    # Landroid/animation/Animator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroid/support/transition/AnimatorUtils;->IMPL:Landroid/support/transition/AnimatorUtilsImpl;

    invoke-interface {v0, p0}, Landroid/support/transition/AnimatorUtilsImpl;->pause(Landroid/animation/Animator;)V

    return-void
.end method

.method static resume(Landroid/animation/Animator;)V
    .registers 2
    .param p0    # Landroid/animation/Animator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroid/support/transition/AnimatorUtils;->IMPL:Landroid/support/transition/AnimatorUtilsImpl;

    invoke-interface {v0, p0}, Landroid/support/transition/AnimatorUtilsImpl;->resume(Landroid/animation/Animator;)V

    return-void
.end method
