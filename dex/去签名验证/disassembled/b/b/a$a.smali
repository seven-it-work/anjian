.class public final Lb/b/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/b/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$fd1e174:[I

.field public static final BASIC$2dc28571:I = 0x2

.field public static final BODY$2dc28571:I = 0x4

.field public static final HEADERS$2dc28571:I = 0x3

.field public static final NONE$2dc28571:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Lb/b/a$a;->NONE$2dc28571:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lb/b/a$a;->BASIC$2dc28571:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lb/b/a$a;->HEADERS$2dc28571:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lb/b/a$a;->BODY$2dc28571:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sput-object v0, Lb/b/a$a;->$VALUES$fd1e174:[I

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

.method public static values$1f221b6b()[I
    .registers 1

    sget-object v0, Lb/b/a$a;->$VALUES$fd1e174:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
