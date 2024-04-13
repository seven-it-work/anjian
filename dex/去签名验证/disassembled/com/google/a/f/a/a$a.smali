.class final Lcom/google/a/f/a/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/f/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator<",
        "Lcom/google/a/r;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/f/a/a$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/a/f/a/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/google/a/r;Lcom/google/a/r;)I
    .registers 4

    iget-object p1, p1, Lcom/google/a/r;->f:Ljava/util/Map;

    sget-object v0, Lcom/google/a/s;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/a/s;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p2, Lcom/google/a/r;->f:Ljava/util/Map;

    sget-object v0, Lcom/google/a/s;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/a/s;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/a/r;

    check-cast p2, Lcom/google/a/r;

    invoke-virtual {p0, p1, p2}, Lcom/google/a/f/a/a$a;->compare(Lcom/google/a/r;Lcom/google/a/r;)I

    move-result p1

    return p1
.end method
