.class public final enum Lcom/cyjh/elfin/entity/ActionBarOperaEnum;
.super Ljava/lang/Enum;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyjh/elfin/entity/ActionBarOperaEnum;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum ALL_CHECK:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum CANCLE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum CLOUD:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum CREATE_NEW_FILE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum DELETE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum EDIT_SCRIPT:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum HEAD_ICON:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum MOVE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum NO_ALL_CHECK:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum RENAME:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum RUN_SCRIPT:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum SAVE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum SEARCH:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum START_DOWNLOAD:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v1, "CANCLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->CANCLE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    new-instance v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v1, "SAVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->SAVE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    new-instance v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v1, "RENAME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->RENAME:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    new-instance v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v1, "DELETE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->DELETE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    new-instance v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v1, "MOVE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->MOVE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    new-instance v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v1, "EDIT_SCRIPT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->EDIT_SCRIPT:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    new-instance v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v1, "ALL_CHECK"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->ALL_CHECK:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    new-instance v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v1, "NO_ALL_CHECK"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->NO_ALL_CHECK:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    new-instance v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v1, "CLOUD"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->CLOUD:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    new-instance v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v1, "CREATE_NEW_FILE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->CREATE_NEW_FILE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    new-instance v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v1, "RUN_SCRIPT"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->RUN_SCRIPT:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    new-instance v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v1, "HEAD_ICON"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->HEAD_ICON:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    new-instance v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v1, "SEARCH"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->SEARCH:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    new-instance v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v1, "START_DOWNLOAD"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->START_DOWNLOAD:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    sget-object v1, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->CANCLE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->SAVE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->RENAME:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->DELETE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->MOVE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->EDIT_SCRIPT:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->ALL_CHECK:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    aput-object v1, v0, v8

    sget-object v1, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->NO_ALL_CHECK:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    aput-object v1, v0, v9

    sget-object v1, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->CLOUD:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    aput-object v1, v0, v10

    sget-object v1, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->CREATE_NEW_FILE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    aput-object v1, v0, v11

    sget-object v1, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->RUN_SCRIPT:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    aput-object v1, v0, v12

    sget-object v1, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->HEAD_ICON:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    aput-object v1, v0, v13

    sget-object v1, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->SEARCH:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    aput-object v1, v0, v14

    sget-object v1, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->START_DOWNLOAD:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    aput-object v1, v0, v15

    sput-object v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->$VALUES:[Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

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

.method public static valueOf(Ljava/lang/String;)Lcom/cyjh/elfin/entity/ActionBarOperaEnum;
    .registers 2

    const-class v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    return-object p0
.end method

.method public static values()[Lcom/cyjh/elfin/entity/ActionBarOperaEnum;
    .registers 1

    sget-object v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->$VALUES:[Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    invoke-virtual {v0}, [Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    return-object v0
.end method
