.class public final Lcom/google/a/b/a/r;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/a/b/a/r;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$27154f23:[I

.field public static final ADDRESSBOOK$3fc7421e:I = 0x1

.field public static final CALENDAR$3fc7421e:I = 0x9

.field public static final EMAIL_ADDRESS$3fc7421e:I = 0x2

.field public static final GEO$3fc7421e:I = 0x6

.field public static final ISBN$3fc7421e:I = 0xb

.field public static final PRODUCT$3fc7421e:I = 0x3

.field public static final SMS$3fc7421e:I = 0x8

.field public static final TEL$3fc7421e:I = 0x7

.field public static final TEXT$3fc7421e:I = 0x5

.field public static final URI$3fc7421e:I = 0x4

.field public static final VIN$3fc7421e:I = 0xc

.field public static final WIFI$3fc7421e:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xc

    new-array v0, v0, [I

    sget v1, Lcom/google/a/b/a/r;->ADDRESSBOOK$3fc7421e:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/google/a/b/a/r;->EMAIL_ADDRESS$3fc7421e:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/google/a/b/a/r;->PRODUCT$3fc7421e:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/google/a/b/a/r;->URI$3fc7421e:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/google/a/b/a/r;->TEXT$3fc7421e:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcom/google/a/b/a/r;->GEO$3fc7421e:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lcom/google/a/b/a/r;->TEL$3fc7421e:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lcom/google/a/b/a/r;->SMS$3fc7421e:I

    const/4 v2, 0x7

    aput v1, v0, v2

    sget v1, Lcom/google/a/b/a/r;->CALENDAR$3fc7421e:I

    const/16 v2, 0x8

    aput v1, v0, v2

    sget v1, Lcom/google/a/b/a/r;->WIFI$3fc7421e:I

    const/16 v2, 0x9

    aput v1, v0, v2

    sget v1, Lcom/google/a/b/a/r;->ISBN$3fc7421e:I

    const/16 v2, 0xa

    aput v1, v0, v2

    sget v1, Lcom/google/a/b/a/r;->VIN$3fc7421e:I

    const/16 v2, 0xb

    aput v1, v0, v2

    sput-object v0, Lcom/google/a/b/a/r;->$VALUES$27154f23:[I

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

.method public static values$223531e4()[I
    .registers 1

    sget-object v0, Lcom/google/a/b/a/r;->$VALUES$27154f23:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
