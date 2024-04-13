.class final Lcom/bumptech/glide/request/i$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/request/i$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$48811ebe:[I

.field public static final CLEARED$613311b9:I = 0x6

.field public static final COMPLETE$613311b9:I = 0x4

.field public static final FAILED$613311b9:I = 0x5

.field public static final PENDING$613311b9:I = 0x1

.field public static final RUNNING$613311b9:I = 0x2

.field public static final WAITING_FOR_SIZE$613311b9:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [I

    sget v1, Lcom/bumptech/glide/request/i$a;->PENDING$613311b9:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/bumptech/glide/request/i$a;->RUNNING$613311b9:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/bumptech/glide/request/i$a;->WAITING_FOR_SIZE$613311b9:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/bumptech/glide/request/i$a;->COMPLETE$613311b9:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/bumptech/glide/request/i$a;->FAILED$613311b9:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcom/bumptech/glide/request/i$a;->CLEARED$613311b9:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sput-object v0, Lcom/bumptech/glide/request/i$a;->$VALUES$48811ebe:[I

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

.method public static values$43a1017f()[I
    .registers 1

    sget-object v0, Lcom/bumptech/glide/request/i$a;->$VALUES$48811ebe:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
