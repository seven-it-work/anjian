.class public final Lcom/cyjh/feedback/lib/c/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/feedback/lib/c/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/feedback/lib/c/b;->d:I

    return-void
.end method

.method private a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/cyjh/feedback/lib/c/b;->e:Z

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/feedback/lib/c/b;->c:Ljava/lang/String;

    return-void
.end method

.method private b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/feedback/lib/c/b;->e:Z

    return v0
.end method

.method private c()I
    .registers 2

    iget v0, p0, Lcom/cyjh/feedback/lib/c/b;->d:I

    return v0
.end method

.method private c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/feedback/lib/c/b;->b:Ljava/lang/String;

    return-void
.end method

.method private d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/feedback/lib/c/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/feedback/lib/c/b;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/feedback/lib/c/b;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/cyjh/feedback/lib/c/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/feedback/lib/c/b;->b:Ljava/lang/String;

    :cond_18
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FolderBean{dirPath=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cyjh/feedback/lib/c/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", dirName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cyjh/feedback/lib/c/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", firstImgPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cyjh/feedback/lib/c/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", dirCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cyjh/feedback/lib/c/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSelect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cyjh/feedback/lib/c/b;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
