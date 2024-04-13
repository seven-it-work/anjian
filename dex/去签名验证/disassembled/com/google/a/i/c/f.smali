.class public final Lcom/google/a/i/c/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x8


# instance fields
.field b:Lcom/google/a/i/a/h;

.field c:Lcom/google/a/i/a/f;

.field d:Lcom/google/a/i/a/j;

.field e:I

.field public f:Lcom/google/a/i/c/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/i/c/f;->e:I

    return-void
.end method

.method private a()Lcom/google/a/i/a/h;
    .registers 2

    iget-object v0, p0, Lcom/google/a/i/c/f;->b:Lcom/google/a/i/a/h;

    return-object v0
.end method

.method private a(I)V
    .registers 2

    iput p1, p0, Lcom/google/a/i/c/f;->e:I

    return-void
.end method

.method private a(Lcom/google/a/i/a/f;)V
    .registers 2

    iput-object p1, p0, Lcom/google/a/i/c/f;->c:Lcom/google/a/i/a/f;

    return-void
.end method

.method private a(Lcom/google/a/i/a/h;)V
    .registers 2

    iput-object p1, p0, Lcom/google/a/i/c/f;->b:Lcom/google/a/i/a/h;

    return-void
.end method

.method private a(Lcom/google/a/i/a/j;)V
    .registers 2

    iput-object p1, p0, Lcom/google/a/i/c/f;->d:Lcom/google/a/i/a/j;

    return-void
.end method

.method private a(Lcom/google/a/i/c/b;)V
    .registers 2

    iput-object p1, p0, Lcom/google/a/i/c/f;->f:Lcom/google/a/i/c/b;

    return-void
.end method

.method private b()Lcom/google/a/i/a/f;
    .registers 2

    iget-object v0, p0, Lcom/google/a/i/c/f;->c:Lcom/google/a/i/a/f;

    return-object v0
.end method

.method private static b(I)Z
    .registers 2

    if-ltz p0, :cond_8

    const/16 v0, 0x8

    if-ge p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private c()Lcom/google/a/i/a/j;
    .registers 2

    iget-object v0, p0, Lcom/google/a/i/c/f;->d:Lcom/google/a/i/a/j;

    return-object v0
.end method

.method private d()I
    .registers 2

    iget v0, p0, Lcom/google/a/i/c/f;->e:I

    return v0
.end method

.method private e()Lcom/google/a/i/c/b;
    .registers 2

    iget-object v0, p0, Lcom/google/a/i/c/f;->f:Lcom/google/a/i/c/b;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "<<\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/a/i/c/f;->b:Lcom/google/a/i/a/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n ecLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/a/i/c/f;->c:Lcom/google/a/i/a/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/a/i/c/f;->d:Lcom/google/a/i/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n maskPattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/a/i/c/f;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/a/i/c/f;->f:Lcom/google/a/i/c/b;

    if-nez v1, :cond_3e

    const-string v1, "\n matrix: null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    :cond_3e
    const-string v1, "\n matrix:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/a/i/c/f;->f:Lcom/google/a/i/c/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_48
    const-string v1, ">>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
