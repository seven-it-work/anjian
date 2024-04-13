.class final Lcom/google/a/a/a/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/a/a/a/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$171a8b50:[I

.field public static final BINARY$2679db95:I = 0x6

.field public static final DIGIT$2679db95:I = 0x4

.field public static final LOWER$2679db95:I = 0x2

.field public static final MIXED$2679db95:I = 0x3

.field public static final PUNCT$2679db95:I = 0x5

.field public static final UPPER$2679db95:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [I

    sget v1, Lcom/google/a/a/a/a$a;->UPPER$2679db95:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/google/a/a/a/a$a;->LOWER$2679db95:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/google/a/a/a/a$a;->MIXED$2679db95:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/google/a/a/a/a$a;->DIGIT$2679db95:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/google/a/a/a/a$a;->PUNCT$2679db95:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcom/google/a/a/a/a$a;->BINARY$2679db95:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sput-object v0, Lcom/google/a/a/a/a$a;->$VALUES$171a8b50:[I

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

.method public static values$17d9718f()[I
    .registers 1

    sget-object v0, Lcom/google/a/a/a/a$a;->$VALUES$171a8b50:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
