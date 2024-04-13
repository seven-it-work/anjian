.class public Lcom/umeng/commonsdk/proguard/aj;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;

.field private final b:Lcom/umeng/commonsdk/proguard/bl;

.field private c:Lcom/umeng/commonsdk/proguard/az;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lcom/umeng/commonsdk/proguard/at$a;

    invoke-direct {v0}, Lcom/umeng/commonsdk/proguard/at$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/proguard/aj;-><init>(Lcom/umeng/commonsdk/proguard/bb;)V

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/proguard/bb;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/aj;->a:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Lcom/umeng/commonsdk/proguard/bl;

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/aj;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/bl;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/aj;->b:Lcom/umeng/commonsdk/proguard/bl;

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/aj;->b:Lcom/umeng/commonsdk/proguard/bl;

    invoke-interface {p1, v0}, Lcom/umeng/commonsdk/proguard/bb;->a(Lcom/umeng/commonsdk/proguard/bn;)Lcom/umeng/commonsdk/proguard/az;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/aj;->c:Lcom/umeng/commonsdk/proguard/az;

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/commonsdk/proguard/aa;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/aj;->a(Lcom/umeng/commonsdk/proguard/aa;)[B

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    new-instance p1, Lcom/umeng/commonsdk/proguard/ag;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JVM DOES NOT SUPPORT ENCODING: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/proguard/ag;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/umeng/commonsdk/proguard/aa;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/aj;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/aj;->c:Lcom/umeng/commonsdk/proguard/az;

    invoke-interface {p1, v0}, Lcom/umeng/commonsdk/proguard/aa;->write(Lcom/umeng/commonsdk/proguard/az;)V

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/aj;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/umeng/commonsdk/proguard/aa;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/aj;->a(Lcom/umeng/commonsdk/proguard/aa;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
