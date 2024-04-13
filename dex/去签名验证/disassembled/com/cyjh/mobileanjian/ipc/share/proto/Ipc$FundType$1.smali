.class final Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final findValueByNumber(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;
    .registers 2

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->valueOf(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType$1;->findValueByNumber(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    move-result-object p1

    return-object p1
.end method
