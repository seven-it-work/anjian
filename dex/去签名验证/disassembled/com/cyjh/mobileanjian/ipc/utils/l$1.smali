.class final Lcom/cyjh/mobileanjian/ipc/utils/l$1;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/utils/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "void"

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->VOID:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    invoke-virtual {p0, v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "boolean"

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->BOOLEAN:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    invoke-virtual {p0, v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "int"

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->INT:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    invoke-virtual {p0, v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "long"

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->LONG:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    invoke-virtual {p0, v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "float"

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->FLOAT:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    invoke-virtual {p0, v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "double"

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->DOUBLE:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    invoke-virtual {p0, v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "String"

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    invoke-virtual {p0, v0, v1}, Lcom/cyjh/mobileanjian/ipc/utils/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
