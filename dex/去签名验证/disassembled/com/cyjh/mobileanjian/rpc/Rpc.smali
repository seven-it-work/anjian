.class public Lcom/cyjh/mobileanjian/rpc/Rpc;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AsynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 14

    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4a

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-static {p2}, Lcom/cyjh/mobileanjian/ipc/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    :cond_14
    invoke-static {p3, p4}, Lcom/cyjh/mobileanjian/rpc/Rpc;->checkArgs([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1c

    return v1

    :cond_1c
    invoke-static {p3}, Lcom/cyjh/mobileanjian/rpc/Rpc;->arrayToList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-static {p4}, Lcom/cyjh/mobileanjian/rpc/Rpc;->arrayToList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lcom/cyjh/mobileanjian/ipc/rpc/Invocator;->invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "retObj = "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\u5df2\u7ecf\u8c03\u7528\u4e86AsynCall "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    return p0

    :cond_4a
    return v1
.end method

.method public static SimpleCallReturnInt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    const-string v5, "int"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/cyjh/mobileanjian/rpc/Rpc;->SynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static SimpleCallReturnString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v5, "String"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/cyjh/mobileanjian/rpc/Rpc;->SynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static SimpleCallStringParam(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_13

    const-string p0, "String"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/String;

    aput-object p4, v1, v0

    invoke-static {p1, p2, p3, p0, v1}, Lcom/cyjh/mobileanjian/rpc/Rpc;->SynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_13
    const-string p0, "String"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/String;

    aput-object p4, v1, v0

    invoke-static {p1, p2, p3, p0, v1}, Lcom/cyjh/mobileanjian/rpc/Rpc;->AsynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static SimpleCallStringStringParam(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p0, :cond_18

    const-string p0, "String"

    const-string v3, "String"

    filled-new-array {p0, v3}, [Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/String;

    aput-object p4, v2, v1

    aput-object p5, v2, v0

    invoke-static {p1, p2, p3, p0, v2}, Lcom/cyjh/mobileanjian/rpc/Rpc;->SynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_18
    const-string p0, "String"

    const-string v3, "String"

    filled-new-array {p0, v3}, [Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/String;

    aput-object p4, v2, v1

    aput-object p5, v2, v0

    invoke-static {p1, p2, p3, p0, v2}, Lcom/cyjh/mobileanjian/rpc/Rpc;->AsynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static SimpleCallStringStringParamReturnString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    if-nez p3, :cond_5

    const-string p0, "Use SimpleCallReturnString instead."

    return-object p0

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_1a

    new-array p4, v1, [Ljava/lang/String;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p4, v0

    new-array v1, v1, [Ljava/lang/String;

    aput-object p3, v1, v0

    move-object v7, p4

    move-object v8, v1

    goto :goto_35

    :cond_1a
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-class v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-class v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p3, v2, v0

    aput-object p4, v2, v1

    move-object v8, v2

    move-object v7, v3

    :goto_35
    const-string v9, "String"

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v4 .. v9}, Lcom/cyjh/mobileanjian/rpc/Rpc;->SynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static SynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 14

    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7f

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7f

    invoke-static {p2}, Lcom/cyjh/mobileanjian/ipc/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto/16 :goto_7f

    :cond_15
    invoke-static {p3, p4}, Lcom/cyjh/mobileanjian/rpc/Rpc;->checkArgs([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_21

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_21
    invoke-static {p5}, Lcom/cyjh/mobileanjian/ipc/utils/l;->a(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    move-result-object v2

    if-nez v2, :cond_2c

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2c
    const/4 v1, 0x0

    if-nez v0, :cond_3a

    invoke-static {p3}, Lcom/cyjh/mobileanjian/rpc/Rpc;->arrayToList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {p4}, Lcom/cyjh/mobileanjian/rpc/Rpc;->arrayToList([Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    move-object v6, p3

    move-object v5, v1

    goto :goto_3c

    :cond_3a
    move-object v5, v1

    move-object v6, v5

    :goto_3c
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lcom/cyjh/mobileanjian/ipc/rpc/Invocator;->invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "retObj = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/cyjh/mobileanjian/ipc/utils/l;->a(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    move-result-object p1

    :try_start_52
    sget-object p2, Lcom/cyjh/mobileanjian/rpc/Rpc$1;->a:[I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_84

    goto :goto_79

    :pswitch_5e
    if-nez p0, :cond_63

    const-string p0, ""

    return-object p0

    :cond_63
    check-cast p0, Ljava/lang/String;

    return-object p0

    :pswitch_66
    check-cast p0, Ljava/lang/Double;

    return-object p0

    :pswitch_69
    check-cast p0, Ljava/lang/Float;

    return-object p0

    :pswitch_6c
    check-cast p0, Ljava/lang/Long;

    return-object p0

    :pswitch_6f
    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :pswitch_72
    check-cast p0, Ljava/lang/Boolean;
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_74} :catch_75

    return-object p0

    :catch_75
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_79
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_7f
    :goto_7f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_5e
    .end packed-switch
.end method

.method public static SynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 11

    const-string v5, "void"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/cyjh/mobileanjian/rpc/Rpc;->SynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method private static arrayToList([Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_11

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_11
    return-object v0
.end method

.method private static checkArgs([Ljava/lang/String;[Ljava/lang/String;)I
    .registers 3

    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/utils/a;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/a;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/utils/a;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/a;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/utils/a;->b([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/a;->b([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    array-length p0, p0

    array-length p1, p1

    if-ne p0, p1, :cond_2c

    const/4 p0, 0x0

    return p0

    :cond_2c
    const/4 p0, -0x1

    return p0
.end method
