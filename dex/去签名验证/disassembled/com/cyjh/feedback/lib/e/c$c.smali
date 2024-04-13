.class public final Lcom/cyjh/feedback/lib/e/c$c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/feedback/lib/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyjh/feedback/lib/e/c$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$3b0acc75:[I

.field public static final FIFO$789f335a:I = 0x1

.field public static final FILO$789f335a:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Lcom/cyjh/feedback/lib/e/c$c;->FIFO$789f335a:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/cyjh/feedback/lib/e/c$c;->FILO$789f335a:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lcom/cyjh/feedback/lib/e/c$c;->$VALUES$3b0acc75:[I

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

.method public static values$69fec954()[I
    .registers 1

    sget-object v0, Lcom/cyjh/feedback/lib/e/c$c;->$VALUES$3b0acc75:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
