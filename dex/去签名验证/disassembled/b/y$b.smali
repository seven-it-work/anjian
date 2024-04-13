.class public final Lb/y$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field final a:Lb/u;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final b:Lb/ad;


# direct methods
.method private constructor <init>(Lb/u;Lb/ad;)V
    .registers 3
    .param p1    # Lb/u;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/y$b;->a:Lb/u;

    iput-object p2, p0, Lb/y$b;->b:Lb/ad;

    return-void
.end method

.method private a()Lb/u;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/y$b;->a:Lb/u;

    return-object v0
.end method

.method private static a(Lb/ad;)Lb/y$b;
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lb/y$b;->a(Lb/u;Lb/ad;)Lb/y$b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lb/u;Lb/ad;)Lb/y$b;
    .registers 3
    .param p0    # Lb/u;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_a

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "body == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    if-eqz p0, :cond_1c

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lb/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    if-eqz p0, :cond_2e

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lb/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2e
    new-instance v0, Lb/y$b;

    invoke-direct {v0, p0, p1}, Lb/y$b;-><init>(Lb/u;Lb/ad;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lb/y$b;
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lb/ad;->create(Lb/x;Ljava/lang/String;)Lb/ad;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lb/y$b;->a(Ljava/lang/String;Ljava/lang/String;Lb/ad;)Lb/y$b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lb/ad;)Lb/y$b;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "name == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "form-data; name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lb/y;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1e

    const-string p0, "; filename="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Lb/y;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v1, "Content-Disposition"

    aput-object v1, p0, p1

    const/4 p1, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, p1

    invoke-static {p0}, Lb/u;->a([Ljava/lang/String;)Lb/u;

    move-result-object p0

    invoke-static {p0, p2}, Lb/y$b;->a(Lb/u;Lb/ad;)Lb/y$b;

    move-result-object p0

    return-object p0
.end method

.method private b()Lb/ad;
    .registers 2

    iget-object v0, p0, Lb/y$b;->b:Lb/ad;

    return-object v0
.end method
