.class public final enum Lb/ah;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/ah;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lb/ah;

.field public static final enum SSL_3_0:Lb/ah;

.field public static final enum TLS_1_0:Lb/ah;

.field public static final enum TLS_1_1:Lb/ah;

.field public static final enum TLS_1_2:Lb/ah;

.field public static final enum TLS_1_3:Lb/ah;


# instance fields
.field final javaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lb/ah;

    const-string v1, "TLS_1_3"

    const-string v2, "TLSv1.3"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lb/ah;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lb/ah;->TLS_1_3:Lb/ah;

    new-instance v0, Lb/ah;

    const-string v1, "TLS_1_2"

    const-string v2, "TLSv1.2"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lb/ah;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lb/ah;->TLS_1_2:Lb/ah;

    new-instance v0, Lb/ah;

    const-string v1, "TLS_1_1"

    const-string v2, "TLSv1.1"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lb/ah;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lb/ah;->TLS_1_1:Lb/ah;

    new-instance v0, Lb/ah;

    const-string v1, "TLS_1_0"

    const-string v2, "TLSv1"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lb/ah;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lb/ah;->TLS_1_0:Lb/ah;

    new-instance v0, Lb/ah;

    const-string v1, "SSL_3_0"

    const-string v2, "SSLv3"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lb/ah;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lb/ah;->SSL_3_0:Lb/ah;

    const/4 v0, 0x5

    new-array v0, v0, [Lb/ah;

    sget-object v1, Lb/ah;->TLS_1_3:Lb/ah;

    aput-object v1, v0, v3

    sget-object v1, Lb/ah;->TLS_1_2:Lb/ah;

    aput-object v1, v0, v4

    sget-object v1, Lb/ah;->TLS_1_1:Lb/ah;

    aput-object v1, v0, v5

    sget-object v1, Lb/ah;->TLS_1_0:Lb/ah;

    aput-object v1, v0, v6

    sget-object v1, Lb/ah;->SSL_3_0:Lb/ah;

    aput-object v1, v0, v7

    sput-object v0, Lb/ah;->$VALUES:[Lb/ah;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lb/ah;->javaName:Ljava/lang/String;

    return-void
.end method

.method public static forJavaName(Ljava/lang/String;)Lb/ah;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x4b88569

    if-eq v0, v1, :cond_3a

    const v1, 0x4c38896

    if-eq v0, v1, :cond_30

    packed-switch v0, :pswitch_data_6c

    goto :goto_44

    :pswitch_12
    const-string v0, "TLSv1.3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v0, 0x0

    goto :goto_45

    :pswitch_1c
    const-string v0, "TLSv1.2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v0, 0x1

    goto :goto_45

    :pswitch_26
    const-string v0, "TLSv1.1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v0, 0x2

    goto :goto_45

    :cond_30
    const-string v0, "TLSv1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v0, 0x3

    goto :goto_45

    :cond_3a
    const-string v0, "SSLv3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v0, 0x4

    goto :goto_45

    :cond_44
    :goto_44
    const/4 v0, -0x1

    :goto_45
    packed-switch v0, :pswitch_data_76

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected TLS version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5c
    sget-object p0, Lb/ah;->SSL_3_0:Lb/ah;

    return-object p0

    :pswitch_5f
    sget-object p0, Lb/ah;->TLS_1_0:Lb/ah;

    return-object p0

    :pswitch_62
    sget-object p0, Lb/ah;->TLS_1_1:Lb/ah;

    return-object p0

    :pswitch_65
    sget-object p0, Lb/ah;->TLS_1_2:Lb/ah;

    return-object p0

    :pswitch_68
    sget-object p0, Lb/ah;->TLS_1_3:Lb/ah;

    return-object p0

    nop

    :pswitch_data_6c
    .packed-switch -0x1dfc3f27
        :pswitch_26
        :pswitch_1c
        :pswitch_12
    .end packed-switch

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
    .end packed-switch
.end method

.method static varargs forJavaNames([Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lb/ah;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget-object v3, p0, v2

    invoke-static {v3}, Lb/ah;->forJavaName(Ljava/lang/String;)Lb/ah;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_16
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lb/ah;
    .registers 2

    const-class v0, Lb/ah;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/ah;

    return-object p0
.end method

.method public static values()[Lb/ah;
    .registers 1

    sget-object v0, Lb/ah;->$VALUES:[Lb/ah;

    invoke-virtual {v0}, [Lb/ah;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/ah;

    return-object v0
.end method


# virtual methods
.method public final javaName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/ah;->javaName:Ljava/lang/String;

    return-object v0
.end method
