.class public final enum Lcom/android/volley/l$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/volley/l$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/volley/l$b;

.field public static final enum HIGH:Lcom/android/volley/l$b;

.field public static final enum IMMEDIATE:Lcom/android/volley/l$b;

.field public static final enum LOW:Lcom/android/volley/l$b;

.field public static final enum NORMAL:Lcom/android/volley/l$b;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/android/volley/l$b;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/volley/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/volley/l$b;->LOW:Lcom/android/volley/l$b;

    new-instance v0, Lcom/android/volley/l$b;

    const-string v1, "NORMAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/volley/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/volley/l$b;->NORMAL:Lcom/android/volley/l$b;

    new-instance v0, Lcom/android/volley/l$b;

    const-string v1, "HIGH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/volley/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/volley/l$b;->HIGH:Lcom/android/volley/l$b;

    new-instance v0, Lcom/android/volley/l$b;

    const-string v1, "IMMEDIATE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/volley/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/volley/l$b;->IMMEDIATE:Lcom/android/volley/l$b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/volley/l$b;

    sget-object v1, Lcom/android/volley/l$b;->LOW:Lcom/android/volley/l$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/volley/l$b;->NORMAL:Lcom/android/volley/l$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/volley/l$b;->HIGH:Lcom/android/volley/l$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/volley/l$b;->IMMEDIATE:Lcom/android/volley/l$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/volley/l$b;->$VALUES:[Lcom/android/volley/l$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/volley/l$b;
    .registers 2

    const-class v0, Lcom/android/volley/l$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/volley/l$b;

    return-object p0
.end method

.method public static values()[Lcom/android/volley/l$b;
    .registers 1

    sget-object v0, Lcom/android/volley/l$b;->$VALUES:[Lcom/android/volley/l$b;

    invoke-virtual {v0}, [Lcom/android/volley/l$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/volley/l$b;

    return-object v0
.end method
