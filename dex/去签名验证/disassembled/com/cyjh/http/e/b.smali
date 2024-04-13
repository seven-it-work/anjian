.class public Lcom/cyjh/http/e/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/http/e/b$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "b"

.field private static d:Lcom/cyjh/http/e/b;


# instance fields
.field public final b:Lb/z;

.field public c:Lb/e;

.field private e:Ljava/io/RandomAccessFile;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/z$a;

    invoke-direct {v0}, Lb/z$a;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3, v1}, Lb/z$a;->a(JLjava/util/concurrent/TimeUnit;)Lb/z$a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lb/z$a;->b(JLjava/util/concurrent/TimeUnit;)Lb/z$a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lb/z$a;->c(JLjava/util/concurrent/TimeUnit;)Lb/z$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/z$a;->e()Lb/z;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/http/e/b;->b:Lb/z;

    return-void
.end method

.method static synthetic a(Lcom/cyjh/http/e/b;)I
    .registers 1

    iget p0, p0, Lcom/cyjh/http/e/b;->f:I

    return p0
.end method

.method static synthetic a(Lcom/cyjh/http/e/b;I)I
    .registers 2

    iput p1, p0, Lcom/cyjh/http/e/b;->f:I

    return p1
.end method

.method public static a()Lcom/cyjh/http/e/b;
    .registers 1

    sget-object v0, Lcom/cyjh/http/e/b;->d:Lcom/cyjh/http/e/b;

    if-nez v0, :cond_b

    new-instance v0, Lcom/cyjh/http/e/b;

    invoke-direct {v0}, Lcom/cyjh/http/e/b;-><init>()V

    sput-object v0, Lcom/cyjh/http/e/b;->d:Lcom/cyjh/http/e/b;

    :cond_b
    sget-object v0, Lcom/cyjh/http/e/b;->d:Lcom/cyjh/http/e/b;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/http/e/b$a;)V
    .registers 8

    sget-object v0, Lcom/cyjh/http/e/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download 1 --> destFileDir="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",destFileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lb/ac$a;

    invoke-direct {v0}, Lb/ac$a;-><init>()V

    invoke-virtual {v0, p1}, Lb/ac$a;->a(Ljava/lang/String;)Lb/ac$a;

    move-result-object p1

    invoke-virtual {p1}, Lb/ac$a;->d()Lb/ac;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/http/e/b;->b:Lb/z;

    invoke-virtual {v0, p1}, Lb/z;->a(Lb/ac;)Lb/e;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/http/e/b;->c:Lb/e;

    iget-object p1, p0, Lcom/cyjh/http/e/b;->c:Lb/e;

    new-instance v0, Lcom/cyjh/http/e/b$1;

    invoke-direct {v0, p0, p4, p2, p3}, Lcom/cyjh/http/e/b$1;-><init>(Lcom/cyjh/http/e/b;Lcom/cyjh/http/e/b$a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lb/e;->a(Lb/f;)V

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/cyjh/http/e/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/http/e/b;->c:Lb/e;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/cyjh/http/e/b;->c:Lb/e;

    invoke-interface {v0}, Lb/e;->c()V

    :cond_9
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/cyjh/http/e/b$a;)V
    .registers 9

    sget-object v0, Lcom/cyjh/http/e/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download 1 --> downLoadLength="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/cyjh/http/e/b;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",contentLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p4, Lb/ac$a;

    invoke-direct {p4}, Lb/ac$a;-><init>()V

    invoke-virtual {p4, p1}, Lb/ac$a;->a(Ljava/lang/String;)Lb/ac$a;

    move-result-object p1

    invoke-virtual {p1}, Lb/ac$a;->d()Lb/ac;

    move-result-object p1

    iget-object p4, p0, Lcom/cyjh/http/e/b;->b:Lb/z;

    invoke-virtual {p4, p1}, Lb/z;->a(Lb/ac;)Lb/e;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/http/e/b;->c:Lb/e;

    iget-object p1, p0, Lcom/cyjh/http/e/b;->c:Lb/e;

    new-instance p4, Lcom/cyjh/http/e/b$2;

    invoke-direct {p4, p0, p5, p2, p3}, Lcom/cyjh/http/e/b$2;-><init>(Lcom/cyjh/http/e/b;Lcom/cyjh/http/e/b$a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p4}, Lb/e;->a(Lb/f;)V

    return-void
.end method
