.class public final Lb/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/g$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/g$a;->a:Ljava/util/List;

    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/String;)Lb/g$a;
    .registers 8

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "pattern == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    array-length v0, p2

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_1d

    aget-object v2, p2, v1

    iget-object v3, p0, Lb/g$a;->a:Ljava/util/List;

    new-instance v4, Lb/g$b;

    invoke-direct {v4, p1, v2}, Lb/g$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1d
    return-object p0
.end method

.method private a()Lb/g;
    .registers 4

    new-instance v0, Lb/g;

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lb/g$a;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/g;-><init>(Ljava/util/Set;Lb/a/j/b;)V

    return-object v0
.end method
