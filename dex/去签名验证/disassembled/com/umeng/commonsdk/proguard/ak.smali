.class public abstract Lcom/umeng/commonsdk/proguard/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/umeng/commonsdk/proguard/aa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/proguard/ak$c;,
        Lcom/umeng/commonsdk/proguard/ak$d;,
        Lcom/umeng/commonsdk/proguard/ak$a;,
        Lcom/umeng/commonsdk/proguard/ak$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/umeng/commonsdk/proguard/ak<",
        "**>;F::",
        "Lcom/umeng/commonsdk/proguard/ah;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/umeng/commonsdk/proguard/aa<",
        "TT;TF;>;"
    }
.end annotation


# static fields
.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/commonsdk/proguard/bh;",
            ">;",
            "Lcom/umeng/commonsdk/proguard/bi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/lang/Object;

.field protected b:Lcom/umeng/commonsdk/proguard/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/proguard/ak;->c:Ljava/util/Map;

    const-class v1, Lcom/umeng/commonsdk/proguard/bj;

    new-instance v2, Lcom/umeng/commonsdk/proguard/ak$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/umeng/commonsdk/proguard/ak$b;-><init>(Lcom/umeng/commonsdk/proguard/ak$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/umeng/commonsdk/proguard/ak;->c:Ljava/util/Map;

    const-class v1, Lcom/umeng/commonsdk/proguard/bk;

    new-instance v2, Lcom/umeng/commonsdk/proguard/ak$d;

    invoke-direct {v2, v3}, Lcom/umeng/commonsdk/proguard/ak$d;-><init>(Lcom/umeng/commonsdk/proguard/ak$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/ak;->b:Lcom/umeng/commonsdk/proguard/ah;

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/ak;->a:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/umeng/commonsdk/proguard/ah;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/ah;Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Lcom/umeng/commonsdk/proguard/ak;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/commonsdk/proguard/ak<",
            "TT;TF;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_17
    iget-object v0, p1, Lcom/umeng/commonsdk/proguard/ak;->b:Lcom/umeng/commonsdk/proguard/ah;

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/ak;->b:Lcom/umeng/commonsdk/proguard/ah;

    iget-object p1, p1, Lcom/umeng/commonsdk/proguard/ak;->a:Ljava/lang/Object;

    invoke-static {p1}, Lcom/umeng/commonsdk/proguard/ak;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/ak;->a:Ljava/lang/Object;

    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    instance-of v0, p0, Lcom/umeng/commonsdk/proguard/aa;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/umeng/commonsdk/proguard/aa;

    invoke-interface {p0}, Lcom/umeng/commonsdk/proguard/aa;->deepCopy()Lcom/umeng/commonsdk/proguard/aa;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_16

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/ab;->d(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_16
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_21

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/ak;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_21
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_2c

    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/ak;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_2c
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_36

    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/ak;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    :cond_36
    return-object p0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/proguard/ak;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1f
    return-object v0
.end method

.method private static a(Ljava/util/Map;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/proguard/ak;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/proguard/ak;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_2d
    return-object v0
.end method

.method private static a(Ljava/util/Set;)Ljava/util/Set;
    .registers 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/proguard/ak;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1b
    return-object v0
.end method


# virtual methods
.method public a()Lcom/umeng/commonsdk/proguard/ah;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ak;->b:Lcom/umeng/commonsdk/proguard/ah;

    return-object v0
.end method

.method protected abstract a(S)Lcom/umeng/commonsdk/proguard/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)TF;"
        }
    .end annotation
.end method

.method public a(I)Ljava/lang/Object;
    .registers 2

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/ak;->a(S)Lcom/umeng/commonsdk/proguard/ah;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/ah;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/umeng/commonsdk/proguard/ah;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ak;->b:Lcom/umeng/commonsdk/proguard/ah;

    if-eq p1, v0, :cond_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot get the value of field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " because union\'s set field is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/ak;->b:Lcom/umeng/commonsdk/proguard/ah;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ak;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract a(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/proguard/au;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation
.end method

.method protected abstract a(Lcom/umeng/commonsdk/proguard/az;S)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation
.end method

.method public a(ILjava/lang/Object;)V
    .registers 3

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/ak;->a(S)Lcom/umeng/commonsdk/proguard/ah;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/ah;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/ah;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/ak;->b(Lcom/umeng/commonsdk/proguard/ah;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/ak;->b:Lcom/umeng/commonsdk/proguard/ah;

    iput-object p2, p0, Lcom/umeng/commonsdk/proguard/ak;->a:Ljava/lang/Object;

    return-void
.end method

.method protected abstract a(Lcom/umeng/commonsdk/proguard/az;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation
.end method

.method public b()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ak;->a:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract b(Lcom/umeng/commonsdk/proguard/ah;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation
.end method

.method protected abstract b(Lcom/umeng/commonsdk/proguard/az;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation
.end method

.method public b(I)Z
    .registers 2

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/ak;->a(S)Lcom/umeng/commonsdk/proguard/ah;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/ak;->b(Lcom/umeng/commonsdk/proguard/ah;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/umeng/commonsdk/proguard/ah;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ak;->b:Lcom/umeng/commonsdk/proguard/ah;

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method protected abstract c(Lcom/umeng/commonsdk/proguard/ah;)Lcom/umeng/commonsdk/proguard/au;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Lcom/umeng/commonsdk/proguard/au;"
        }
    .end annotation
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ak;->b:Lcom/umeng/commonsdk/proguard/ah;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final clear()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/ak;->b:Lcom/umeng/commonsdk/proguard/ah;

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/ak;->a:Ljava/lang/Object;

    return-void
.end method

.method protected abstract d()Lcom/umeng/commonsdk/proguard/be;
.end method

.method public read(Lcom/umeng/commonsdk/proguard/az;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    sget-object v0, Lcom/umeng/commonsdk/proguard/ak;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/proguard/bi;

    invoke-interface {v0}, Lcom/umeng/commonsdk/proguard/bi;->b()Lcom/umeng/commonsdk/proguard/bh;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/commonsdk/proguard/bh;->b(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/proguard/aa;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ak;->a()Lcom/umeng/commonsdk/proguard/ah;

    move-result-object v1

    if-eqz v1, :cond_47

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ak;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ak;->a()Lcom/umeng/commonsdk/proguard/ah;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/umeng/commonsdk/proguard/ak;->c(Lcom/umeng/commonsdk/proguard/ah;)Lcom/umeng/commonsdk/proguard/au;

    move-result-object v2

    iget-object v2, v2, Lcom/umeng/commonsdk/proguard/au;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v2, v1, Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_40

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/proguard/ab;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    goto :goto_47

    :cond_40
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_47
    :goto_47
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/umeng/commonsdk/proguard/az;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    sget-object v0, Lcom/umeng/commonsdk/proguard/ak;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/proguard/bi;

    invoke-interface {v0}, Lcom/umeng/commonsdk/proguard/bi;->b()Lcom/umeng/commonsdk/proguard/bh;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/commonsdk/proguard/bh;->a(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/proguard/aa;)V

    return-void
.end method
