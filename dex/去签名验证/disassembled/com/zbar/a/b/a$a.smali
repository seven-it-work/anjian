.class public final Lcom/zbar/a/b/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zbar/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zbar/a/b/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$4ec8d709:[I

.field public static final DONE$65384932:I = 0x3

.field public static final PREVIEW$65384932:I = 0x1

.field public static final SUCCESS$65384932:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v1, Lcom/zbar/a/b/a$a;->PREVIEW$65384932:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/zbar/a/b/a$a;->SUCCESS$65384932:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/zbar/a/b/a$a;->DONE$65384932:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lcom/zbar/a/b/a$a;->$VALUES$4ec8d709:[I

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

.method public static values$63e95f78()[I
    .registers 1

    sget-object v0, Lcom/zbar/a/b/a$a;->$VALUES$4ec8d709:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
