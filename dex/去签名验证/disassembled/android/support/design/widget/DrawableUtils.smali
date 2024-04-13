.class Landroid/support/design/widget/DrawableUtils;
.super Ljava/lang/Object;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DrawableUtils"

.field private static sSetConstantStateMethod:Ljava/lang/reflect/Method;

.field private static sSetConstantStateMethodFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setContainerConstantState(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/support/design/widget/DrawableUtils;->setContainerConstantStateV9(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result p0

    return p0
.end method

.method private static setContainerConstantStateV9(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z
    .registers 8

    sget-boolean v0, Landroid/support/design/widget/DrawableUtils;->sSetConstantStateMethodFetched:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_23

    :try_start_6
    const-class v0, Landroid/graphics/drawable/DrawableContainer;

    const-string v3, "setConstantState"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/design/widget/DrawableUtils;->sSetConstantStateMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_19} :catch_1a

    goto :goto_21

    :catch_1a
    const-string v0, "DrawableUtils"

    const-string v3, "Could not fetch setConstantState(). Oh well."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    sput-boolean v2, Landroid/support/design/widget/DrawableUtils;->sSetConstantStateMethodFetched:Z

    :cond_23
    sget-object v0, Landroid/support/design/widget/DrawableUtils;->sSetConstantStateMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_38

    :try_start_27
    sget-object v0, Landroid/support/design/widget/DrawableUtils;->sSetConstantStateMethod:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_30} :catch_31

    return v2

    :catch_31
    const-string p0, "DrawableUtils"

    const-string p1, "Could not invoke setConstantState(). Oh well."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return v1
.end method
