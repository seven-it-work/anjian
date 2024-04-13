.class final Lb/c$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/lang/String;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lb/u;

.field final c:Ljava/lang/String;

.field final d:Lb/aa;

.field final e:I

.field final f:Ljava/lang/String;

.field final g:Lb/u;

.field final h:Lb/t;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final i:J

.field final j:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lb/a/h/e;->b()Lb/a/h/e;

    invoke-static {}, Lb/a/h/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/c$c;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lb/a/h/e;->b()Lb/a/h/e;

    invoke-static {}, Lb/a/h/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/c$c;->l:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lb/ae;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lb/ae;->a:Lb/ac;

    iget-object v0, v0, Lb/ac;->a:Lb/v;

    invoke-virtual {v0}, Lb/v;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/c$c;->a:Ljava/lang/String;

    invoke-static {p1}, Lb/a/d/e;->c(Lb/ae;)Lb/u;

    move-result-object v0

    iput-object v0, p0, Lb/c$c;->b:Lb/u;

    iget-object v0, p1, Lb/ae;->a:Lb/ac;

    iget-object v0, v0, Lb/ac;->b:Ljava/lang/String;

    iput-object v0, p0, Lb/c$c;->c:Ljava/lang/String;

    iget-object v0, p1, Lb/ae;->b:Lb/aa;

    iput-object v0, p0, Lb/c$c;->d:Lb/aa;

    iget v0, p1, Lb/ae;->c:I

    iput v0, p0, Lb/c$c;->e:I

    iget-object v0, p1, Lb/ae;->d:Ljava/lang/String;

    iput-object v0, p0, Lb/c$c;->f:Ljava/lang/String;

    iget-object v0, p1, Lb/ae;->f:Lb/u;

    iput-object v0, p0, Lb/c$c;->g:Lb/u;

    iget-object v0, p1, Lb/ae;->e:Lb/t;

    iput-object v0, p0, Lb/c$c;->h:Lb/t;

    iget-wide v0, p1, Lb/ae;->k:J

    iput-wide v0, p0, Lb/c$c;->i:J

    iget-wide v0, p1, Lb/ae;->l:J

    iput-wide v0, p0, Lb/c$c;->j:J

    return-void
.end method

.method constructor <init>(Lc/y;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    invoke-static {p1}, Lc/p;->a(Lc/y;)Lc/e;

    move-result-object v0

    invoke-interface {v0}, Lc/e;->s()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/c$c;->a:Ljava/lang/String;

    invoke-interface {v0}, Lc/e;->s()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/c$c;->c:Ljava/lang/String;

    new-instance v1, Lb/u$a;

    invoke-direct {v1}, Lb/u$a;-><init>()V

    invoke-static {v0}, Lb/c;->a(Lc/e;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v2, :cond_2a

    invoke-interface {v0}, Lc/e;->s()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lb/u$a;->a(Ljava/lang/String;)Lb/u$a;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_2a
    invoke-virtual {v1}, Lb/u$a;->a()Lb/u;

    move-result-object v1

    iput-object v1, p0, Lb/c$c;->b:Lb/u;

    invoke-interface {v0}, Lc/e;->s()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lb/a/d/k;->a(Ljava/lang/String;)Lb/a/d/k;

    move-result-object v1

    iget-object v2, v1, Lb/a/d/k;->d:Lb/aa;

    iput-object v2, p0, Lb/c$c;->d:Lb/aa;

    iget v2, v1, Lb/a/d/k;->e:I

    iput v2, p0, Lb/c$c;->e:I

    iget-object v1, v1, Lb/a/d/k;->f:Ljava/lang/String;

    iput-object v1, p0, Lb/c$c;->f:Ljava/lang/String;

    new-instance v1, Lb/u$a;

    invoke-direct {v1}, Lb/u$a;-><init>()V

    invoke-static {v0}, Lb/c;->a(Lc/e;)I

    move-result v2

    :goto_4d
    if-ge v3, v2, :cond_59

    invoke-interface {v0}, Lc/e;->s()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lb/u$a;->a(Ljava/lang/String;)Lb/u$a;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    :cond_59
    sget-object v2, Lb/c$c;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lb/u$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lb/c$c;->l:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lb/u$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lb/c$c;->k:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lb/u$a;->b(Ljava/lang/String;)Lb/u$a;

    sget-object v4, Lb/c$c;->l:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lb/u$a;->b(Ljava/lang/String;)Lb/u$a;

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_78

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_79

    :cond_78
    move-wide v6, v4

    :goto_79
    iput-wide v6, p0, Lb/c$c;->i:J

    if-eqz v3, :cond_81

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_81
    iput-wide v4, p0, Lb/c$c;->j:J

    invoke-virtual {v1}, Lb/u$a;->a()Lb/u;

    move-result-object v1

    iput-object v1, p0, Lb/c$c;->g:Lb/u;

    invoke-direct {p0}, Lb/c$c;->a()Z

    move-result v1

    if-eqz v1, :cond_f7

    invoke-interface {v0}, Lc/e;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b2

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expected \"\" but was \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b2
    invoke-interface {v0}, Lc/e;->s()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lb/i;->a(Ljava/lang/String;)Lb/i;

    move-result-object v1

    invoke-static {v0}, Lb/c$c;->a(Lc/e;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0}, Lb/c$c;->a(Lc/e;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0}, Lc/e;->d()Z

    move-result v4

    if-nez v4, :cond_d1

    invoke-interface {v0}, Lc/e;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/ah;->forJavaName(Ljava/lang/String;)Lb/ah;

    move-result-object v0

    goto :goto_d3

    :cond_d1
    sget-object v0, Lb/ah;->SSL_3_0:Lb/ah;

    :goto_d3
    if-nez v0, :cond_dd

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tlsVersion == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_dd
    if-nez v1, :cond_e7

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cipherSuite == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e7
    new-instance v4, Lb/t;

    invoke-static {v2}, Lb/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v3}, Lb/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v0, v1, v2, v3}, Lb/t;-><init>(Lb/ah;Lb/i;Ljava/util/List;Ljava/util/List;)V

    iput-object v4, p0, Lb/c$c;->h:Lb/t;

    goto :goto_fa

    :cond_f7
    const/4 v0, 0x0

    iput-object v0, p0, Lb/c$c;->h:Lb/t;
    :try_end_fa
    .catchall {:try_start_3 .. :try_end_fa} :catchall_fe

    :goto_fa
    invoke-interface {p1}, Lc/y;->close()V

    return-void

    :catchall_fe
    move-exception v0

    invoke-interface {p1}, Lc/y;->close()V

    throw v0
.end method

.method private a(Lb/a/a/d$c;)Lb/ae;
    .registers 7

    iget-object v0, p0, Lb/c$c;->g:Lb/u;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lb/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb/c$c;->g:Lb/u;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lb/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lb/ac$a;

    invoke-direct {v2}, Lb/ac$a;-><init>()V

    iget-object v3, p0, Lb/c$c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lb/ac$a;->a(Ljava/lang/String;)Lb/ac$a;

    move-result-object v2

    iget-object v3, p0, Lb/c$c;->c:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lb/ac$a;->a(Ljava/lang/String;Lb/ad;)Lb/ac$a;

    move-result-object v2

    iget-object v3, p0, Lb/c$c;->b:Lb/u;

    invoke-virtual {v2, v3}, Lb/ac$a;->a(Lb/u;)Lb/ac$a;

    move-result-object v2

    invoke-virtual {v2}, Lb/ac$a;->d()Lb/ac;

    move-result-object v2

    new-instance v3, Lb/ae$a;

    invoke-direct {v3}, Lb/ae$a;-><init>()V

    iput-object v2, v3, Lb/ae$a;->a:Lb/ac;

    iget-object v2, p0, Lb/c$c;->d:Lb/aa;

    iput-object v2, v3, Lb/ae$a;->b:Lb/aa;

    iget v2, p0, Lb/c$c;->e:I

    iput v2, v3, Lb/ae$a;->c:I

    iget-object v2, p0, Lb/c$c;->f:Ljava/lang/String;

    iput-object v2, v3, Lb/ae$a;->d:Ljava/lang/String;

    iget-object v2, p0, Lb/c$c;->g:Lb/u;

    invoke-virtual {v3, v2}, Lb/ae$a;->a(Lb/u;)Lb/ae$a;

    move-result-object v2

    new-instance v3, Lb/c$b;

    invoke-direct {v3, p1, v0, v1}, Lb/c$b;-><init>(Lb/a/a/d$c;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Lb/ae$a;->g:Lb/af;

    iget-object p1, p0, Lb/c$c;->h:Lb/t;

    iput-object p1, v2, Lb/ae$a;->e:Lb/t;

    iget-wide v0, p0, Lb/c$c;->i:J

    iput-wide v0, v2, Lb/ae$a;->k:J

    iget-wide v0, p0, Lb/c$c;->j:J

    iput-wide v0, v2, Lb/ae$a;->l:J

    invoke-virtual {v2}, Lb/ae$a;->a()Lb/ae;

    move-result-object p1

    return-object p1
.end method

.method private static a(Lc/e;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lb/c;->a(Lc/e;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_c
    :try_start_c
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v0, :cond_38

    invoke-interface {p0}, Lc/e;->s()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lc/c;

    invoke-direct {v5}, Lc/c;-><init>()V

    invoke-static {v4}, Lc/f;->decodeBase64(Ljava/lang/String;)Lc/f;

    move-result-object v4

    invoke-virtual {v5, v4}, Lc/c;->a(Lc/f;)Lc/c;

    invoke-virtual {v5}, Lc/c;->e()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_35} :catch_39

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_38
    return-object v2

    :catch_39
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lc/d;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lc/d;->n(J)Lc/d;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lc/d;->l(I)Lc/d;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_13
    if-ge v0, v2, :cond_31

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lc/f;->of([B)Lc/f;

    move-result-object v3

    invoke-virtual {v3}, Lc/f;->base64()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v3

    invoke-interface {v3, v1}, Lc/d;->l(I)Lc/d;
    :try_end_2e
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_2e} :catch_32

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_31
    return-void

    :catch_32
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()Z
    .registers 3

    iget-object v0, p0, Lb/c$c;->a:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Lb/ac;Lb/ae;)Z
    .registers 5

    iget-object v0, p0, Lb/c$c;->a:Ljava/lang/String;

    iget-object v1, p1, Lb/ac;->a:Lb/v;

    invoke-virtual {v1}, Lb/v;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lb/c$c;->c:Ljava/lang/String;

    iget-object v1, p1, Lb/ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lb/c$c;->b:Lb/u;

    invoke-static {p2, v0, p1}, Lb/a/d/e;->a(Lb/ae;Lb/u;Lb/ac;)Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    return p1

    :cond_22
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a(Lb/a/a/d$a;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lb/a/a/d$a;->a(I)Lc/x;

    move-result-object p1

    invoke-static {p1}, Lc/p;->a(Lc/x;)Lc/d;

    move-result-object p1

    iget-object v1, p0, Lb/c$c;->a:Ljava/lang/String;

    invoke-interface {p1, v1}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lc/d;->l(I)Lc/d;

    iget-object v1, p0, Lb/c$c;->c:Ljava/lang/String;

    invoke-interface {p1, v1}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v1

    invoke-interface {v1, v2}, Lc/d;->l(I)Lc/d;

    iget-object v1, p0, Lb/c$c;->b:Lb/u;

    iget-object v1, v1, Lb/u;->a:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-long v3, v1

    invoke-interface {p1, v3, v4}, Lc/d;->n(J)Lc/d;

    move-result-object v1

    invoke-interface {v1, v2}, Lc/d;->l(I)Lc/d;

    iget-object v1, p0, Lb/c$c;->b:Lb/u;

    iget-object v1, v1, Lb/u;->a:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    :goto_34
    if-ge v3, v1, :cond_56

    iget-object v4, p0, Lb/c$c;->b:Lb/u;

    invoke-virtual {v4, v3}, Lb/u;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v4

    const-string v5, ": "

    invoke-interface {v4, v5}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v4

    iget-object v5, p0, Lb/c$c;->b:Lb/u;

    invoke-virtual {v5, v3}, Lb/u;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v4

    invoke-interface {v4, v2}, Lc/d;->l(I)Lc/d;

    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_56
    new-instance v1, Lb/a/d/k;

    iget-object v3, p0, Lb/c$c;->d:Lb/aa;

    iget v4, p0, Lb/c$c;->e:I

    iget-object v5, p0, Lb/c$c;->f:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5}, Lb/a/d/k;-><init>(Lb/aa;ILjava/lang/String;)V

    invoke-virtual {v1}, Lb/a/d/k;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v1

    invoke-interface {v1, v2}, Lc/d;->l(I)Lc/d;

    iget-object v1, p0, Lb/c$c;->g:Lb/u;

    iget-object v1, v1, Lb/u;->a:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    int-to-long v3, v1

    invoke-interface {p1, v3, v4}, Lc/d;->n(J)Lc/d;

    move-result-object v1

    invoke-interface {v1, v2}, Lc/d;->l(I)Lc/d;

    iget-object v1, p0, Lb/c$c;->g:Lb/u;

    iget-object v1, v1, Lb/u;->a:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    :goto_84
    if-ge v0, v1, :cond_a6

    iget-object v3, p0, Lb/c$c;->g:Lb/u;

    invoke-virtual {v3, v0}, Lb/u;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v3

    const-string v4, ": "

    invoke-interface {v3, v4}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v3

    iget-object v4, p0, Lb/c$c;->g:Lb/u;

    invoke-virtual {v4, v0}, Lb/u;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v3

    invoke-interface {v3, v2}, Lc/d;->l(I)Lc/d;

    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    :cond_a6
    sget-object v0, Lb/c$c;->k:Ljava/lang/String;

    invoke-interface {p1, v0}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v0

    const-string v1, ": "

    invoke-interface {v0, v1}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v0

    iget-wide v3, p0, Lb/c$c;->i:J

    invoke-interface {v0, v3, v4}, Lc/d;->n(J)Lc/d;

    move-result-object v0

    invoke-interface {v0, v2}, Lc/d;->l(I)Lc/d;

    sget-object v0, Lb/c$c;->l:Ljava/lang/String;

    invoke-interface {p1, v0}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v0

    const-string v1, ": "

    invoke-interface {v0, v1}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v0

    iget-wide v3, p0, Lb/c$c;->j:J

    invoke-interface {v0, v3, v4}, Lc/d;->n(J)Lc/d;

    move-result-object v0

    invoke-interface {v0, v2}, Lc/d;->l(I)Lc/d;

    invoke-direct {p0}, Lb/c$c;->a()Z

    move-result v0

    if-eqz v0, :cond_103

    invoke-interface {p1, v2}, Lc/d;->l(I)Lc/d;

    iget-object v0, p0, Lb/c$c;->h:Lb/t;

    iget-object v0, v0, Lb/t;->b:Lb/i;

    iget-object v0, v0, Lb/i;->bj:Ljava/lang/String;

    invoke-interface {p1, v0}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v0

    invoke-interface {v0, v2}, Lc/d;->l(I)Lc/d;

    iget-object v0, p0, Lb/c$c;->h:Lb/t;

    iget-object v0, v0, Lb/t;->c:Ljava/util/List;

    invoke-static {p1, v0}, Lb/c$c;->a(Lc/d;Ljava/util/List;)V

    iget-object v0, p0, Lb/c$c;->h:Lb/t;

    iget-object v0, v0, Lb/t;->d:Ljava/util/List;

    invoke-static {p1, v0}, Lb/c$c;->a(Lc/d;Ljava/util/List;)V

    iget-object v0, p0, Lb/c$c;->h:Lb/t;

    iget-object v0, v0, Lb/t;->a:Lb/ah;

    invoke-virtual {v0}, Lb/ah;->javaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v0

    invoke-interface {v0, v2}, Lc/d;->l(I)Lc/d;

    :cond_103
    invoke-interface {p1}, Lc/d;->close()V

    return-void
.end method
