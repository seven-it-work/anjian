.class public final enum Lcom/cyjh/common/view/ActionProcessButton$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/common/view/ActionProcessButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyjh/common/view/ActionProcessButton$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cyjh/common/view/ActionProcessButton$a;

.field public static final enum ENDLESS:Lcom/cyjh/common/view/ActionProcessButton$a;

.field public static final enum PROGRESS:Lcom/cyjh/common/view/ActionProcessButton$a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/cyjh/common/view/ActionProcessButton$a;

    const-string v1, "PROGRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cyjh/common/view/ActionProcessButton$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyjh/common/view/ActionProcessButton$a;->PROGRESS:Lcom/cyjh/common/view/ActionProcessButton$a;

    new-instance v0, Lcom/cyjh/common/view/ActionProcessButton$a;

    const-string v1, "ENDLESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/cyjh/common/view/ActionProcessButton$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyjh/common/view/ActionProcessButton$a;->ENDLESS:Lcom/cyjh/common/view/ActionProcessButton$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/cyjh/common/view/ActionProcessButton$a;

    sget-object v1, Lcom/cyjh/common/view/ActionProcessButton$a;->PROGRESS:Lcom/cyjh/common/view/ActionProcessButton$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cyjh/common/view/ActionProcessButton$a;->ENDLESS:Lcom/cyjh/common/view/ActionProcessButton$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/cyjh/common/view/ActionProcessButton$a;->$VALUES:[Lcom/cyjh/common/view/ActionProcessButton$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/cyjh/common/view/ActionProcessButton$a;
    .registers 2

    const-class v0, Lcom/cyjh/common/view/ActionProcessButton$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cyjh/common/view/ActionProcessButton$a;

    return-object p0
.end method

.method public static values()[Lcom/cyjh/common/view/ActionProcessButton$a;
    .registers 1

    sget-object v0, Lcom/cyjh/common/view/ActionProcessButton$a;->$VALUES:[Lcom/cyjh/common/view/ActionProcessButton$a;

    invoke-virtual {v0}, [Lcom/cyjh/common/view/ActionProcessButton$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyjh/common/view/ActionProcessButton$a;

    return-object v0
.end method
