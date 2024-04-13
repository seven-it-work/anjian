.class public final Lcom/bumptech/glide/load/b/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/b/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/b/a/a<",
        "[B>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ByteArrayPool"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B)I
    .registers 1

    array-length p0, p0

    return p0
.end method

.method private static b(I)[B
    .registers 1

    new-array p0, p0, [B

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, [B

    array-length p1, p1

    return p1
.end method

.method public final bridge synthetic a(I)Ljava/lang/Object;
    .registers 2

    new-array p1, p1, [B

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    const-string v0, "ByteArrayPool"

    return-object v0
.end method

.method public final b()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
