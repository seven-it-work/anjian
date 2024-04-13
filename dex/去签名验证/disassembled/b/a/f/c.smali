.class public final Lb/a/f/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lc/f;

.field public static final b:Lc/f;

.field public static final c:Lc/f;

.field public static final d:Lc/f;

.field public static final e:Lc/f;

.field public static final f:Lc/f;


# instance fields
.field public final g:Lc/f;

.field public final h:Lc/f;

.field final i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ":"

    invoke-static {v0}, Lc/f;->encodeUtf8(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/f/c;->a:Lc/f;

    const-string v0, ":status"

    invoke-static {v0}, Lc/f;->encodeUtf8(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/f/c;->b:Lc/f;

    const-string v0, ":method"

    invoke-static {v0}, Lc/f;->encodeUtf8(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/f/c;->c:Lc/f;

    const-string v0, ":path"

    invoke-static {v0}, Lc/f;->encodeUtf8(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/f/c;->d:Lc/f;

    const-string v0, ":scheme"

    invoke-static {v0}, Lc/f;->encodeUtf8(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/f/c;->e:Lc/f;

    const-string v0, ":authority"

    invoke-static {v0}, Lc/f;->encodeUtf8(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/f/c;->f:Lc/f;

    return-void
.end method

.method public constructor <init>(Lc/f;Lc/f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/f/c;->g:Lc/f;

    iput-object p2, p0, Lb/a/f/c;->h:Lc/f;

    invoke-virtual {p1}, Lc/f;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lc/f;->size()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lb/a/f/c;->i:I

    return-void
.end method

.method public constructor <init>(Lc/f;Ljava/lang/String;)V
    .registers 3

    invoke-static {p2}, Lc/f;->encodeUtf8(Ljava/lang/String;)Lc/f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lb/a/f/c;-><init>(Lc/f;Lc/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lc/f;->encodeUtf8(Ljava/lang/String;)Lc/f;

    move-result-object p1

    invoke-static {p2}, Lc/f;->encodeUtf8(Ljava/lang/String;)Lc/f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lb/a/f/c;-><init>(Lc/f;Lc/f;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lb/a/f/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    check-cast p1, Lb/a/f/c;

    iget-object v0, p0, Lb/a/f/c;->g:Lc/f;

    iget-object v2, p1, Lb/a/f/c;->g:Lc/f;

    invoke-virtual {v0, v2}, Lc/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lb/a/f/c;->h:Lc/f;

    iget-object p1, p1, Lb/a/f/c;->h:Lc/f;

    invoke-virtual {v0, p1}, Lc/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    return p1

    :cond_1d
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lb/a/f/c;->g:Lc/f;

    invoke-virtual {v0}, Lc/f;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb/a/f/c;->h:Lc/f;

    invoke-virtual {v1}, Lc/f;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lb/a/f/c;->g:Lc/f;

    invoke-virtual {v2}, Lc/f;->utf8()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lb/a/f/c;->h:Lc/f;

    invoke-virtual {v2}, Lc/f;->utf8()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lb/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
