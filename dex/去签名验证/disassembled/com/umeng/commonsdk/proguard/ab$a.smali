.class Lcom/umeng/commonsdk/proguard/ab$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/proguard/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/proguard/ab$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/ab$a;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    if-nez p1, :cond_a

    const/4 p1, -0x1

    return p1

    :cond_a
    if-nez p2, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1b

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/proguard/ab;->a(Ljava/util/List;Ljava/util/List;)I

    move-result p1

    return p1

    :cond_1b
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_28

    check-cast p1, Ljava/util/Set;

    check-cast p2, Ljava/util/Set;

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/proguard/ab;->a(Ljava/util/Set;Ljava/util/Set;)I

    move-result p1

    return p1

    :cond_28
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_35

    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/proguard/ab;->a(Ljava/util/Map;Ljava/util/Map;)I

    move-result p1

    return p1

    :cond_35
    instance-of v0, p1, [B

    if-eqz v0, :cond_42

    check-cast p1, [B

    check-cast p2, [B

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/proguard/ab;->a([B[B)I

    move-result p1

    return p1

    :cond_42
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/proguard/ab;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
