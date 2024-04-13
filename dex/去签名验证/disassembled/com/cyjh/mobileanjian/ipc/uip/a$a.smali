.class final Lcom/cyjh/mobileanjian/ipc/uip/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/uip/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/uip/a;


# direct methods
.method private constructor <init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$a;->a:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/mobileanjian/ipc/uip/a;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/a$a;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method
