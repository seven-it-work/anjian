.class final Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;-><init>(B)V

    sput-object v0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$a;->a:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;
    .registers 1

    sget-object v0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$a;->a:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    return-object v0
.end method
