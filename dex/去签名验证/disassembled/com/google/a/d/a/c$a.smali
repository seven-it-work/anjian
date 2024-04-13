.class final Lcom/google/a/d/a/c$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/d/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/a/d/a/c$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$3a3249a9:[I

.field public static final ANSIX12_ENCODE$6e85352:I = 0x5

.field public static final ASCII_ENCODE$6e85352:I = 0x2

.field public static final BASE256_ENCODE$6e85352:I = 0x7

.field public static final C40_ENCODE$6e85352:I = 0x3

.field public static final EDIFACT_ENCODE$6e85352:I = 0x6

.field public static final PAD_ENCODE$6e85352:I = 0x1

.field public static final TEXT_ENCODE$6e85352:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [I

    sget v1, Lcom/google/a/d/a/c$a;->PAD_ENCODE$6e85352:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/google/a/d/a/c$a;->ASCII_ENCODE$6e85352:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/google/a/d/a/c$a;->C40_ENCODE$6e85352:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/google/a/d/a/c$a;->TEXT_ENCODE$6e85352:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/google/a/d/a/c$a;->ANSIX12_ENCODE$6e85352:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcom/google/a/d/a/c$a;->EDIFACT_ENCODE$6e85352:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lcom/google/a/d/a/c$a;->BASE256_ENCODE$6e85352:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sput-object v0, Lcom/google/a/d/a/c$a;->$VALUES$3a3249a9:[I

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

.method public static values$68f9f718()[I
    .registers 1

    sget-object v0, Lcom/google/a/d/a/c$a;->$VALUES$3a3249a9:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
