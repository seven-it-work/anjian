.class public final Lcom/cyjh/mobileanjian/ipc/ui/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I = -0x1

.field public static final d:I = -0x2

.field public static final e:I = -0x2

.field public static final f:I = -0x2

.field public static final g:I = -0x1000000

.field public static final h:I = -0x1

.field public static final i:I = -0x1

.field public static final j:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/cyjh/mobileanjian/ipc/ui/f;->a:I

    const-string v0, "#FFF0F0F0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/cyjh/mobileanjian/ipc/ui/f;->b:I

    const-string v0, "#3B83FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/cyjh/mobileanjian/ipc/ui/f;->j:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
