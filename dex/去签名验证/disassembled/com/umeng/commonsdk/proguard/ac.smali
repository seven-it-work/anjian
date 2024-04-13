.class public Lcom/umeng/commonsdk/proguard/ac;
.super Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()[B
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ac;->buf:[B

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/umeng/commonsdk/proguard/ac;->count:I

    return v0
.end method
