.class public final enum Lcom/umeng/commonsdk/statistics/proto/e$e;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/umeng/commonsdk/proguard/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/commonsdk/statistics/proto/e$e;",
        ">;",
        "Lcom/umeng/commonsdk/proguard/ah;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/commonsdk/statistics/proto/e$e;

.field public static final enum b:Lcom/umeng/commonsdk/statistics/proto/e$e;

.field public static final enum c:Lcom/umeng/commonsdk/statistics/proto/e$e;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/statistics/proto/e$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic g:[Lcom/umeng/commonsdk/statistics/proto/e$e;


# instance fields
.field private final e:S

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/e$e;

    const-string v1, "VALUE"

    const-string v2, "value"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/umeng/commonsdk/statistics/proto/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/e$e;->a:Lcom/umeng/commonsdk/statistics/proto/e$e;

    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/e$e;

    const-string v1, "TS"

    const-string v2, "ts"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/umeng/commonsdk/statistics/proto/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/e$e;->b:Lcom/umeng/commonsdk/statistics/proto/e$e;

    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/e$e;

    const-string v1, "GUID"

    const-string v2, "guid"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/umeng/commonsdk/statistics/proto/e$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/e$e;->c:Lcom/umeng/commonsdk/statistics/proto/e$e;

    new-array v0, v6, [Lcom/umeng/commonsdk/statistics/proto/e$e;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/e$e;->a:Lcom/umeng/commonsdk/statistics/proto/e$e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/e$e;->b:Lcom/umeng/commonsdk/statistics/proto/e$e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/e$e;->c:Lcom/umeng/commonsdk/statistics/proto/e$e;

    aput-object v1, v0, v5

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/e$e;->g:[Lcom/umeng/commonsdk/statistics/proto/e$e;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/e$e;->d:Ljava/util/Map;

    const-class v0, Lcom/umeng/commonsdk/statistics/proto/e$e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/commonsdk/statistics/proto/e$e;

    sget-object v2, Lcom/umeng/commonsdk/statistics/proto/e$e;->d:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/proto/e$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    :cond_5c
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lcom/umeng/commonsdk/statistics/proto/e$e;->e:S

    iput-object p4, p0, Lcom/umeng/commonsdk/statistics/proto/e$e;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lcom/umeng/commonsdk/statistics/proto/e$e;
    .registers 1

    packed-switch p0, :pswitch_data_e

    const/4 p0, 0x0

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/e$e;->c:Lcom/umeng/commonsdk/statistics/proto/e$e;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/e$e;->b:Lcom/umeng/commonsdk/statistics/proto/e$e;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/e$e;->a:Lcom/umeng/commonsdk/statistics/proto/e$e;

    return-object p0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/e$e;
    .registers 2

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/e$e;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/umeng/commonsdk/statistics/proto/e$e;

    return-object p0
.end method

.method public static b(I)Lcom/umeng/commonsdk/statistics/proto/e$e;
    .registers 4

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/proto/e$e;->a(I)Lcom/umeng/commonsdk/statistics/proto/e$e;

    move-result-object v0

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t exist!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/e$e;
    .registers 2

    const-class v0, Lcom/umeng/commonsdk/statistics/proto/e$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/commonsdk/statistics/proto/e$e;

    return-object p0
.end method

.method public static values()[Lcom/umeng/commonsdk/statistics/proto/e$e;
    .registers 1

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/e$e;->g:[Lcom/umeng/commonsdk/statistics/proto/e$e;

    invoke-virtual {v0}, [Lcom/umeng/commonsdk/statistics/proto/e$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/commonsdk/statistics/proto/e$e;

    return-object v0
.end method


# virtual methods
.method public final a()S
    .registers 2

    iget-short v0, p0, Lcom/umeng/commonsdk/statistics/proto/e$e;->e:S

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/e$e;->f:Ljava/lang/String;

    return-object v0
.end method
