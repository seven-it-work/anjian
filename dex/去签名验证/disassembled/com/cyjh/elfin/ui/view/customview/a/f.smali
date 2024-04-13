.class public final Lcom/cyjh/elfin/ui/view/customview/a/f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyjh/elfin/ui/view/customview/a/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$70c20617:[I

.field public static final COMPLETE$476dec0e:I = 0x5

.field public static final EMPTY$476dec0e:I = 0x4

.field public static final FAILED$476dec0e:I = 0x3

.field public static final LOADING$476dec0e:I = 0x2

.field public static final NON$476dec0e:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    sget v1, Lcom/cyjh/elfin/ui/view/customview/a/f;->NON$476dec0e:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/cyjh/elfin/ui/view/customview/a/f;->LOADING$476dec0e:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/cyjh/elfin/ui/view/customview/a/f;->FAILED$476dec0e:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/cyjh/elfin/ui/view/customview/a/f;->EMPTY$476dec0e:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/cyjh/elfin/ui/view/customview/a/f;->COMPLETE$476dec0e:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sput-object v0, Lcom/cyjh/elfin/ui/view/customview/a/f;->$VALUES$70c20617:[I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values$5baa8488()[I
    .registers 1

    sget-object v0, Lcom/cyjh/elfin/ui/view/customview/a/f;->$VALUES$70c20617:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
