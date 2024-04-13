.class abstract Lcom/google/a/b/a/a;
.super Lcom/google/a/b/a/u;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/a/b/a/u;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x3b

    invoke-static {p0, p1, v0, p2}, Lcom/google/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/16 v0, 0x3b

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/google/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
