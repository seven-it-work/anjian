.class public final Lb/a/d/g;
.super Ljava/lang/Object;

# interfaces
.implements Lb/w$a;


# instance fields
.field public final a:Lb/a/c/g;

.field final b:Lb/a/d/c;

.field final c:Lb/a/c/c;

.field public final d:Lb/ac;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/w;",
            ">;"
        }
    .end annotation
.end field

.field private final f:I

.field private g:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lb/a/c/g;Lb/a/d/c;Lb/a/c/c;ILb/ac;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/w;",
            ">;",
            "Lb/a/c/g;",
            "Lb/a/d/c;",
            "Lb/a/c/c;",
            "I",
            "Lb/ac;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/d/g;->e:Ljava/util/List;

    iput-object p4, p0, Lb/a/d/g;->c:Lb/a/c/c;

    iput-object p2, p0, Lb/a/d/g;->a:Lb/a/c/g;

    iput-object p3, p0, Lb/a/d/g;->b:Lb/a/d/c;

    iput p5, p0, Lb/a/d/g;->f:I

    iput-object p6, p0, Lb/a/d/g;->d:Lb/ac;

    return-void
.end method

.method private c()Lb/a/c/g;
    .registers 2

    iget-object v0, p0, Lb/a/d/g;->a:Lb/a/c/g;

    return-object v0
.end method

.method private d()Lb/a/d/c;
    .registers 2

    iget-object v0, p0, Lb/a/d/g;->b:Lb/a/d/c;

    return-object v0
.end method


# virtual methods
.method public final a()Lb/ac;
    .registers 2

    iget-object v0, p0, Lb/a/d/g;->d:Lb/ac;

    return-object v0
.end method

.method public final a(Lb/ac;)Lb/ae;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/d/g;->a:Lb/a/c/g;

    iget-object v1, p0, Lb/a/d/g;->b:Lb/a/d/c;

    iget-object v2, p0, Lb/a/d/g;->c:Lb/a/c/c;

    invoke-virtual {p0, p1, v0, v1, v2}, Lb/a/d/g;->a(Lb/ac;Lb/a/c/g;Lb/a/d/c;Lb/a/c/c;)Lb/ae;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/ac;Lb/a/c/g;Lb/a/d/c;Lb/a/c/c;)Lb/ae;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lb/a/d/g;->f:I

    iget-object v1, p0, Lb/a/d/g;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_10

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    iget v0, p0, Lb/a/d/g;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lb/a/d/g;->g:I

    iget-object v0, p0, Lb/a/d/g;->b:Lb/a/d/c;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lb/a/d/g;->c:Lb/a/c/c;

    iget-object v2, p1, Lb/ac;->a:Lb/v;

    invoke-virtual {v0, v2}, Lb/a/c/c;->a(Lb/v;)Z

    move-result v0

    if-nez v0, :cond_46

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "network interceptor "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lb/a/d/g;->e:Ljava/util/List;

    iget p4, p0, Lb/a/d/g;->f:I

    sub-int/2addr p4, v1

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " must retain the same host and port"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_46
    iget-object v0, p0, Lb/a/d/g;->b:Lb/a/d/c;

    if-eqz v0, :cond_70

    iget v0, p0, Lb/a/d/g;->g:I

    if-le v0, v1, :cond_70

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "network interceptor "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lb/a/d/g;->e:Ljava/util/List;

    iget p4, p0, Lb/a/d/g;->f:I

    sub-int/2addr p4, v1

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " must call proceed() exactly once"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_70
    new-instance v0, Lb/a/d/g;

    iget-object v3, p0, Lb/a/d/g;->e:Ljava/util/List;

    iget v2, p0, Lb/a/d/g;->f:I

    add-int/lit8 v7, v2, 0x1

    move-object v2, v0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lb/a/d/g;-><init>(Ljava/util/List;Lb/a/c/g;Lb/a/d/c;Lb/a/c/c;ILb/ac;)V

    iget-object p1, p0, Lb/a/d/g;->e:Ljava/util/List;

    iget p2, p0, Lb/a/d/g;->f:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/w;

    invoke-interface {p1, v0}, Lb/w;->intercept(Lb/w$a;)Lb/ae;

    move-result-object p2

    if-eqz p3, :cond_b8

    iget p3, p0, Lb/a/d/g;->f:I

    add-int/2addr p3, v1

    iget-object p4, p0, Lb/a/d/g;->e:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_b8

    iget p3, v0, Lb/a/d/g;->g:I

    if-eq p3, v1, :cond_b8

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "network interceptor "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must call proceed() exactly once"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b8
    if-nez p2, :cond_d3

    new-instance p2, Ljava/lang/NullPointerException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "interceptor "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " returned null"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_d3
    return-object p2
.end method

.method public final b()Lb/j;
    .registers 2

    iget-object v0, p0, Lb/a/d/g;->c:Lb/a/c/c;

    return-object v0
.end method
