.class public final enum Lcom/lidroid/xutils/db/sqlite/ColumnDbType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lidroid/xutils/db/sqlite/ColumnDbType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLOB:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

.field private static final synthetic ENUM$VALUES:[Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

.field public static final enum INTEGER:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

.field public static final enum REAL:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

.field public static final enum TEXT:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    const-string v1, "INTEGER"

    const-string v2, "INTEGER"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->INTEGER:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    new-instance v0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    const-string v1, "REAL"

    const-string v2, "REAL"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->REAL:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    new-instance v0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    const-string v1, "TEXT"

    const-string v2, "TEXT"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->TEXT:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    new-instance v0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    const-string v1, "BLOB"

    const-string v2, "BLOB"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->BLOB:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    sget-object v1, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->INTEGER:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->REAL:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->TEXT:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->BLOB:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->ENUM$VALUES:[Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/ColumnDbType;
    .registers 2

    const-class v0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    return-object p0
.end method

.method public static values()[Lcom/lidroid/xutils/db/sqlite/ColumnDbType;
    .registers 4

    sget-object v0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->ENUM$VALUES:[Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    array-length v1, v0

    new-array v2, v1, [Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->value:Ljava/lang/String;

    return-object v0
.end method
