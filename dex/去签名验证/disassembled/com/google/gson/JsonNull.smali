.class public final Lcom/google/gson/JsonNull;
.super Lcom/google/gson/JsonElement;


# static fields
.field public static final INSTANCE:Lcom/google/gson/JsonNull;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/gson/JsonNull;

    invoke-direct {v0}, Lcom/google/gson/JsonNull;-><init>()V

    sput-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    return-void
.end method


# virtual methods
.method final bridge synthetic deepCopy()Lcom/google/gson/JsonElement;
    .registers 2

    invoke-virtual {p0}, Lcom/google/gson/JsonNull;->deepCopy()Lcom/google/gson/JsonNull;

    move-result-object v0

    return-object v0
.end method

.method final deepCopy()Lcom/google/gson/JsonNull;
    .registers 2

    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    if-eq p0, p1, :cond_9

    instance-of p1, p1, Lcom/google/gson/JsonNull;

    if-eqz p1, :cond_7

    goto :goto_9

    :cond_7
    const/4 p1, 0x0

    return p1

    :cond_9
    :goto_9
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    const-class v0, Lcom/google/gson/JsonNull;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
