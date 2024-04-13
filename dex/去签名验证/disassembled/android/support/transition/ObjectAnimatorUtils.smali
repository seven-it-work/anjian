.class Landroid/support/transition/ObjectAnimatorUtils;
.super Ljava/lang/Object;


# static fields
.field private static final IMPL:Landroid/support/transition/ObjectAnimatorUtilsImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/transition/ObjectAnimatorUtilsApi21;

    invoke-direct {v0}, Landroid/support/transition/ObjectAnimatorUtilsApi21;-><init>()V

    :goto_b
    sput-object v0, Landroid/support/transition/ObjectAnimatorUtils;->IMPL:Landroid/support/transition/ObjectAnimatorUtilsImpl;

    return-void

    :cond_e
    new-instance v0, Landroid/support/transition/ObjectAnimatorUtilsApi14;

    invoke-direct {v0}, Landroid/support/transition/ObjectAnimatorUtilsApi14;-><init>()V

    goto :goto_b
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    sget-object v0, Landroid/support/transition/ObjectAnimatorUtils;->IMPL:Landroid/support/transition/ObjectAnimatorUtilsImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/transition/ObjectAnimatorUtilsImpl;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method
