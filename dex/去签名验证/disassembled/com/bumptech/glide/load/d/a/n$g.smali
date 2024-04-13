.class public final Lcom/bumptech/glide/load/d/a/n$g;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/d/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/load/d/a/n$g;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$1ef85db1:[I

.field public static final MEMORY$3973276c:I = 0x1

.field public static final QUALITY$3973276c:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Lcom/bumptech/glide/load/d/a/n$g;->MEMORY$3973276c:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/bumptech/glide/load/d/a/n$g;->QUALITY$3973276c:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lcom/bumptech/glide/load/d/a/n$g;->$VALUES$1ef85db1:[I

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

.method public static values$5e1fb8b2()[I
    .registers 1

    sget-object v0, Lcom/bumptech/glide/load/d/a/n$g;->$VALUES$1ef85db1:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
