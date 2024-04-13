.class final Lcom/google/a/g/d$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/a/g/d$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$5c84c8f4:[I

.field public static final FNC_1$127b542f:I = 0x4

.field public static final ONE_DIGIT$127b542f:I = 0x2

.field public static final TWO_DIGITS$127b542f:I = 0x3

.field public static final UNCODABLE$127b542f:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Lcom/google/a/g/d$a;->UNCODABLE$127b542f:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/google/a/g/d$a;->ONE_DIGIT$127b542f:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/google/a/g/d$a;->TWO_DIGITS$127b542f:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/google/a/g/d$a;->FNC_1$127b542f:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sput-object v0, Lcom/google/a/g/d$a;->$VALUES$5c84c8f4:[I

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

.method public static values$1af21075()[I
    .registers 1

    sget-object v0, Lcom/google/a/g/d$a;->$VALUES$5c84c8f4:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
