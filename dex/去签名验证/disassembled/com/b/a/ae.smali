.class final Lcom/b/a/ae;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/b/a/ae;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I = 0x1

.field public static final enum b:I = 0x2

.field public static final enum c:I = 0x3

.field public static final enum d:I = 0x4

.field public static final enum e:I = 0x5

.field private static final synthetic f:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    sget v1, Lcom/b/a/ae;->a:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/b/a/ae;->b:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/b/a/ae;->c:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/b/a/ae;->d:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/b/a/ae;->e:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sput-object v0, Lcom/b/a/ae;->f:[I

    return-void
.end method
