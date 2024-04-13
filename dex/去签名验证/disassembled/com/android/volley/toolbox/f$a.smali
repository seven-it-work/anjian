.class final Lcom/android/volley/toolbox/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/b$a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/volley/toolbox/f$a;->b:Ljava/lang/String;

    iget-object p1, p2, Lcom/android/volley/b$a;->a:[B

    array-length p1, p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/volley/toolbox/f$a;->a:J

    iget-object p1, p2, Lcom/android/volley/b$a;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/volley/toolbox/f$a;->c:Ljava/lang/String;

    iget-wide v0, p2, Lcom/android/volley/b$a;->c:J

    iput-wide v0, p0, Lcom/android/volley/toolbox/f$a;->d:J

    iget-wide v0, p2, Lcom/android/volley/b$a;->d:J

    iput-wide v0, p0, Lcom/android/volley/toolbox/f$a;->e:J

    iget-wide v0, p2, Lcom/android/volley/b$a;->e:J

    iput-wide v0, p0, Lcom/android/volley/toolbox/f$a;->f:J

    iget-wide v0, p2, Lcom/android/volley/b$a;->f:J

    iput-wide v0, p0, Lcom/android/volley/toolbox/f$a;->g:J

    iget-object p1, p2, Lcom/android/volley/b$a;->g:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/volley/toolbox/f$a;->h:Ljava/util/Map;

    return-void
.end method

.method private a([B)Lcom/android/volley/b$a;
    .registers 5

    new-instance v0, Lcom/android/volley/b$a;

    invoke-direct {v0}, Lcom/android/volley/b$a;-><init>()V

    iput-object p1, v0, Lcom/android/volley/b$a;->a:[B

    iget-object p1, p0, Lcom/android/volley/toolbox/f$a;->c:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/volley/b$a;->b:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/volley/toolbox/f$a;->d:J

    iput-wide v1, v0, Lcom/android/volley/b$a;->c:J

    iget-wide v1, p0, Lcom/android/volley/toolbox/f$a;->e:J

    iput-wide v1, v0, Lcom/android/volley/b$a;->d:J

    iget-wide v1, p0, Lcom/android/volley/toolbox/f$a;->f:J

    iput-wide v1, v0, Lcom/android/volley/b$a;->e:J

    iget-wide v1, p0, Lcom/android/volley/toolbox/f$a;->g:J

    iput-wide v1, v0, Lcom/android/volley/b$a;->f:J

    iget-object p1, p0, Lcom/android/volley/toolbox/f$a;->h:Ljava/util/Map;

    iput-object p1, v0, Lcom/android/volley/b$a;->g:Ljava/util/Map;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/android/volley/toolbox/f$a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/volley/toolbox/f$a;

    invoke-direct {v0}, Lcom/android/volley/toolbox/f$a;-><init>()V

    invoke-static {p0}, Lcom/android/volley/toolbox/f;->a(Ljava/io/InputStream;)I

    move-result v1

    const v2, 0x20150513

    if-eq v1, v2, :cond_14

    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_14
    invoke-static {p0}, Lcom/android/volley/toolbox/f;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/volley/toolbox/f$a;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/volley/toolbox/f;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/volley/toolbox/f$a;->c:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/volley/toolbox/f$a;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/volley/toolbox/f$a;->c:Ljava/lang/String;

    :cond_2d
    invoke-static {p0}, Lcom/android/volley/toolbox/f;->b(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/volley/toolbox/f$a;->d:J

    invoke-static {p0}, Lcom/android/volley/toolbox/f;->b(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/volley/toolbox/f$a;->e:J

    invoke-static {p0}, Lcom/android/volley/toolbox/f;->b(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/volley/toolbox/f$a;->f:J

    invoke-static {p0}, Lcom/android/volley/toolbox/f;->b(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/volley/toolbox/f$a;->g:J

    invoke-static {p0}, Lcom/android/volley/toolbox/f;->d(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object p0

    iput-object p0, v0, Lcom/android/volley/toolbox/f$a;->h:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)Z
    .registers 7

    const v0, 0x20150513

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_5
    invoke-static {p1, v0}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;I)V

    iget-object v0, p0, Lcom/android/volley/toolbox/f$a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/volley/toolbox/f$a;->c:Ljava/lang/String;

    if-nez v0, :cond_14

    const-string v0, ""

    goto :goto_16

    :cond_14
    iget-object v0, p0, Lcom/android/volley/toolbox/f$a;->c:Ljava/lang/String;

    :goto_16
    invoke-static {p1, v0}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/volley/toolbox/f$a;->d:J

    invoke-static {p1, v3, v4}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;J)V

    iget-wide v3, p0, Lcom/android/volley/toolbox/f$a;->e:J

    invoke-static {p1, v3, v4}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;J)V

    iget-wide v3, p0, Lcom/android/volley/toolbox/f$a;->f:J

    invoke-static {p1, v3, v4}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;J)V

    iget-wide v3, p0, Lcom/android/volley/toolbox/f$a;->g:J

    invoke-static {p1, v3, v4}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;J)V

    iget-object v0, p0, Lcom/android/volley/toolbox/f$a;->h:Ljava/util/Map;

    if-eqz v0, :cond_5f

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {p1, v3}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_40

    :cond_5f
    invoke-static {p1, v2}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;I)V

    :cond_62
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_65} :catch_66

    return v1

    :catch_66
    move-exception p1

    const-string v0, "%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/volley/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
