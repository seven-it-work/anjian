.class public final Lcom/google/a/g/a/a/a/g;
.super Lcom/google/a/g/a/a/a/h;


# static fields
.field private static final d:I = 0x4


# direct methods
.method public constructor <init>(Lcom/google/a/c/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/a/g/a/a/a/h;-><init>(Lcom/google/a/c/a;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/h;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(01)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iget-object v2, p0, Lcom/google/a/g/a/a/a/j;->c:Lcom/google/a/g/a/a/a/s;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v3}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/a/g/a/a/a/g;->a(Ljava/lang/StringBuilder;II)V

    iget-object v1, p0, Lcom/google/a/g/a/a/a/j;->c:Lcom/google/a/g/a/a/a/s;

    const/16 v2, 0x30

    invoke-virtual {v1, v0, v2}, Lcom/google/a/g/a/a/a/s;->a(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
