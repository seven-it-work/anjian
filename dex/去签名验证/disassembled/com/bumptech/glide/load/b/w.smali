.class final Lcom/bumptech/glide/load/b/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/g;


# static fields
.field private static final c:Lcom/bumptech/glide/util/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/f<",
            "Ljava/lang/Class<",
            "*>;[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Lcom/bumptech/glide/load/b/a/b;

.field private final e:Lcom/bumptech/glide/load/g;

.field private final f:Lcom/bumptech/glide/load/g;

.field private final g:I

.field private final h:I

.field private final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final j:Lcom/bumptech/glide/load/j;

.field private final k:Lcom/bumptech/glide/load/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/m<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/bumptech/glide/util/f;

    const-wide/16 v1, 0x32

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/util/f;-><init>(J)V

    sput-object v0, Lcom/bumptech/glide/load/b/w;->c:Lcom/bumptech/glide/util/f;

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/b/a/b;Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/g;IILcom/bumptech/glide/load/m;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/a/b;",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/g;",
            "II",
            "Lcom/bumptech/glide/load/m<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/b/w;->d:Lcom/bumptech/glide/load/b/a/b;

    iput-object p2, p0, Lcom/bumptech/glide/load/b/w;->e:Lcom/bumptech/glide/load/g;

    iput-object p3, p0, Lcom/bumptech/glide/load/b/w;->f:Lcom/bumptech/glide/load/g;

    iput p4, p0, Lcom/bumptech/glide/load/b/w;->g:I

    iput p5, p0, Lcom/bumptech/glide/load/b/w;->h:I

    iput-object p6, p0, Lcom/bumptech/glide/load/b/w;->k:Lcom/bumptech/glide/load/m;

    iput-object p7, p0, Lcom/bumptech/glide/load/b/w;->i:Ljava/lang/Class;

    iput-object p8, p0, Lcom/bumptech/glide/load/b/w;->j:Lcom/bumptech/glide/load/j;

    return-void
.end method

.method private a()[B
    .registers 4

    sget-object v0, Lcom/bumptech/glide/load/b/w;->c:Lcom/bumptech/glide/util/f;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/w;->i:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/util/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/bumptech/glide/load/b/w;->i:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/b/w;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/b/w;->c:Lcom/bumptech/glide/util/f;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/w;->i:Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Lcom/bumptech/glide/util/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .registers 6
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/load/b/w;->d:Lcom/bumptech/glide/load/b/a/b;

    const-class v1, [B

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/b/a/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/b/w;->g:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/b/w;->h:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    iget-object v1, p0, Lcom/bumptech/glide/load/b/w;->f:Lcom/bumptech/glide/load/g;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/g;->a(Ljava/security/MessageDigest;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/b/w;->e:Lcom/bumptech/glide/load/g;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/g;->a(Ljava/security/MessageDigest;)V

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lcom/bumptech/glide/load/b/w;->k:Lcom/bumptech/glide/load/m;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/bumptech/glide/load/b/w;->k:Lcom/bumptech/glide/load/m;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/m;->a(Ljava/security/MessageDigest;)V

    :cond_33
    iget-object v1, p0, Lcom/bumptech/glide/load/b/w;->j:Lcom/bumptech/glide/load/j;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/j;->a(Ljava/security/MessageDigest;)V

    sget-object v1, Lcom/bumptech/glide/load/b/w;->c:Lcom/bumptech/glide/util/f;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/w;->i:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/util/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_57

    iget-object v1, p0, Lcom/bumptech/glide/load/b/w;->i:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/b/w;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/b/w;->c:Lcom/bumptech/glide/util/f;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/w;->i:Ljava/lang/Class;

    invoke-virtual {v2, v3, v1}, Lcom/bumptech/glide/util/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object p1, p0, Lcom/bumptech/glide/load/b/w;->d:Lcom/bumptech/glide/load/b/a/b;

    invoke-interface {p1, v0}, Lcom/bumptech/glide/load/b/a/b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/bumptech/glide/load/b/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    check-cast p1, Lcom/bumptech/glide/load/b/w;

    iget v0, p0, Lcom/bumptech/glide/load/b/w;->h:I

    iget v2, p1, Lcom/bumptech/glide/load/b/w;->h:I

    if-ne v0, v2, :cond_47

    iget v0, p0, Lcom/bumptech/glide/load/b/w;->g:I

    iget v2, p1, Lcom/bumptech/glide/load/b/w;->g:I

    if-ne v0, v2, :cond_47

    iget-object v0, p0, Lcom/bumptech/glide/load/b/w;->k:Lcom/bumptech/glide/load/m;

    iget-object v2, p1, Lcom/bumptech/glide/load/b/w;->k:Lcom/bumptech/glide/load/m;

    invoke-static {v0, v2}, Lcom/bumptech/glide/util/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/bumptech/glide/load/b/w;->i:Ljava/lang/Class;

    iget-object v2, p1, Lcom/bumptech/glide/load/b/w;->i:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/bumptech/glide/load/b/w;->e:Lcom/bumptech/glide/load/g;

    iget-object v2, p1, Lcom/bumptech/glide/load/b/w;->e:Lcom/bumptech/glide/load/g;

    invoke-interface {v0, v2}, Lcom/bumptech/glide/load/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/bumptech/glide/load/b/w;->f:Lcom/bumptech/glide/load/g;

    iget-object v2, p1, Lcom/bumptech/glide/load/b/w;->f:Lcom/bumptech/glide/load/g;

    invoke-interface {v0, v2}, Lcom/bumptech/glide/load/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/bumptech/glide/load/b/w;->j:Lcom/bumptech/glide/load/j;

    iget-object p1, p1, Lcom/bumptech/glide/load/b/w;->j:Lcom/bumptech/glide/load/j;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/j;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    const/4 p1, 0x1

    return p1

    :cond_47
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/b/w;->e:Lcom/bumptech/glide/load/g;

    invoke-interface {v0}, Lcom/bumptech/glide/load/g;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/b/w;->f:Lcom/bumptech/glide/load/g;

    invoke-interface {v1}, Lcom/bumptech/glide/load/g;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bumptech/glide/load/b/w;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bumptech/glide/load/b/w;->h:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/bumptech/glide/load/b/w;->k:Lcom/bumptech/glide/load/m;

    if-eqz v1, :cond_26

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/b/w;->k:Lcom/bumptech/glide/load/m;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_26
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/b/w;->i:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/b/w;->j:Lcom/bumptech/glide/load/j;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/j;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResourceCacheKey{sourceKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/b/w;->e:Lcom/bumptech/glide/load/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/w;->f:Lcom/bumptech/glide/load/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/load/b/w;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/load/b/w;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", decodedResourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/w;->i:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transformation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/w;->k:Lcom/bumptech/glide/load/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/w;->j:Lcom/bumptech/glide/load/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
