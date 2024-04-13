.class public final enum Lb/aa;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/aa;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lb/aa;

.field public static final enum HTTP_1_0:Lb/aa;

.field public static final enum HTTP_1_1:Lb/aa;

.field public static final enum HTTP_2:Lb/aa;

.field public static final enum SPDY_3:Lb/aa;


# instance fields
.field private final protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lb/aa;

    const-string v1, "HTTP_1_0"

    const-string v2, "http/1.0"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lb/aa;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lb/aa;->HTTP_1_0:Lb/aa;

    new-instance v0, Lb/aa;

    const-string v1, "HTTP_1_1"

    const-string v2, "http/1.1"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lb/aa;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lb/aa;->HTTP_1_1:Lb/aa;

    new-instance v0, Lb/aa;

    const-string v1, "SPDY_3"

    const-string v2, "spdy/3.1"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lb/aa;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lb/aa;->SPDY_3:Lb/aa;

    new-instance v0, Lb/aa;

    const-string v1, "HTTP_2"

    const-string v2, "h2"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lb/aa;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lb/aa;->HTTP_2:Lb/aa;

    const/4 v0, 0x4

    new-array v0, v0, [Lb/aa;

    sget-object v1, Lb/aa;->HTTP_1_0:Lb/aa;

    aput-object v1, v0, v3

    sget-object v1, Lb/aa;->HTTP_1_1:Lb/aa;

    aput-object v1, v0, v4

    sget-object v1, Lb/aa;->SPDY_3:Lb/aa;

    aput-object v1, v0, v5

    sget-object v1, Lb/aa;->HTTP_2:Lb/aa;

    aput-object v1, v0, v6

    sput-object v0, Lb/aa;->$VALUES:[Lb/aa;

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

    iput-object p3, p0, Lb/aa;->protocol:Ljava/lang/String;

    return-void
.end method

.method public static get(Ljava/lang/String;)Lb/aa;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lb/aa;->HTTP_1_0:Lb/aa;

    iget-object v0, v0, Lb/aa;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object p0, Lb/aa;->HTTP_1_0:Lb/aa;

    return-object p0

    :cond_d
    sget-object v0, Lb/aa;->HTTP_1_1:Lb/aa;

    iget-object v0, v0, Lb/aa;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object p0, Lb/aa;->HTTP_1_1:Lb/aa;

    return-object p0

    :cond_1a
    sget-object v0, Lb/aa;->HTTP_2:Lb/aa;

    iget-object v0, v0, Lb/aa;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object p0, Lb/aa;->HTTP_2:Lb/aa;

    return-object p0

    :cond_27
    sget-object v0, Lb/aa;->SPDY_3:Lb/aa;

    iget-object v0, v0, Lb/aa;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object p0, Lb/aa;->SPDY_3:Lb/aa;

    return-object p0

    :cond_34
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected protocol: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lb/aa;
    .registers 2

    const-class v0, Lb/aa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/aa;

    return-object p0
.end method

.method public static values()[Lb/aa;
    .registers 1

    sget-object v0, Lb/aa;->$VALUES:[Lb/aa;

    invoke-virtual {v0}, [Lb/aa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/aa;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/aa;->protocol:Ljava/lang/String;

    return-object v0
.end method
