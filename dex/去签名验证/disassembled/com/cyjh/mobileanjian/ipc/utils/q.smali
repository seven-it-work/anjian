.class public final Lcom/cyjh/mobileanjian/ipc/utils/q;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/utils/q$1;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/utils/q$1;-><init>()V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/utils/q;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/utils/n;->j:Lcom/cyjh/mobileanjian/ipc/utils/h;

    iget-object v1, v1, Lcom/cyjh/mobileanjian/ipc/utils/h;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    packed-switch p0, :pswitch_data_5e

    :pswitch_12
    goto :goto_5c

    :pswitch_13
    if-nez p1, :cond_17

    const-string p1, ""

    :cond_17
    move-object v0, p1

    goto :goto_5c

    :pswitch_19
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    goto :goto_5c

    :pswitch_1d
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_26
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_2f
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_38
    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    goto :goto_5c

    :pswitch_3c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_48

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    goto :goto_4a

    :cond_48
    const/16 p0, 0x20

    :goto_4a
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    :pswitch_4f
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_57
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_57} :catch_58

    return-object p0

    :catch_58
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_5c
    move-object p0, v0

    return-object p0

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_3c
        :pswitch_38
        :pswitch_2f
        :pswitch_26
        :pswitch_1d
        :pswitch_19
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/utils/n;->j:Lcom/cyjh/mobileanjian/ipc/utils/h;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/utils/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_52

    :pswitch_12
    goto :goto_50

    :pswitch_13
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    goto :goto_50

    :pswitch_17
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_20
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_29
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_32
    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    goto :goto_50

    :pswitch_36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_50

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    move-object p1, p0

    return-object p1

    :pswitch_47
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_50
    :goto_50
    move-object p1, v0

    :pswitch_51
    return-object p1

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_47
        :pswitch_36
        :pswitch_32
        :pswitch_29
        :pswitch_20
        :pswitch_17
        :pswitch_13
        :pswitch_12
        :pswitch_51
    .end packed-switch
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)[Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2c

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    return-object v0

    :cond_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v1, :cond_2b

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/cyjh/mobileanjian/ipc/utils/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    if-nez v4, :cond_28

    return-object v0

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_2b
    return-object v2

    :cond_2c
    return-object v0
.end method

.method private static a([Ljava/lang/Class;[Ljava/lang/String;)[Ljava/lang/Object;
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    array-length v1, p0

    if-nez v1, :cond_7

    return-object v0

    :cond_7
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_b
    array-length v3, p0

    if-ge v2, v3, :cond_1e

    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-static {v3, v4}, Lcom/cyjh/mobileanjian/ipc/utils/q;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    if-nez v3, :cond_1b

    return-object v0

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1e
    return-object v1

    :cond_1f
    return-object v0
.end method

.method private static a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    array-length v1, p0

    if-nez v1, :cond_7

    return-object v0

    :cond_7
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_b
    array-length v3, p0

    if-ge v2, v3, :cond_1e

    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-static {v3, v4}, Lcom/cyjh/mobileanjian/ipc/utils/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    if-nez v3, :cond_1b

    return-object v0

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1e
    return-object v1

    :cond_1f
    return-object v0
.end method
