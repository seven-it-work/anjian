.class public final Lcom/cyjh/common/util/toast/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/common/util/toast/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/cyjh/common/util/toast/c$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cyjh/common/util/toast/c$a;->c:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/cyjh/common/util/toast/c$a;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/cyjh/common/util/toast/c$a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/cyjh/common/util/toast/c$a;->e:Ljava/lang/String;

    iput p6, p0, Lcom/cyjh/common/util/toast/c$a;->f:I

    iput-boolean p7, p0, Lcom/cyjh/common/util/toast/c$a;->g:Z

    return-void
.end method

.method private a()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/common/util/toast/c$a;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private a(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/common/util/toast/c$a;->f:I

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/common/util/toast/c$a;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/common/util/toast/c$a;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/cyjh/common/util/toast/c$a;->g:Z

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/common/util/toast/c$a;->b:Ljava/lang/String;

    return-void
.end method

.method private b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/common/util/toast/c$a;->g:Z

    return v0
.end method

.method private c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/common/util/toast/c$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/common/util/toast/c$a;->d:Ljava/lang/String;

    return-void
.end method

.method private d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/common/util/toast/c$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/common/util/toast/c$a;->e:Ljava/lang/String;

    return-void
.end method

.method private e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/common/util/toast/c$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method private f()I
    .registers 2

    iget v0, p0, Lcom/cyjh/common/util/toast/c$a;->f:I

    return v0
.end method

.method private g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/common/util/toast/c$a;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\n    pkg name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cyjh/common/util/toast/c$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    app icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/common/util/toast/c$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n    app name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/common/util/toast/c$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    app path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/common/util/toast/c$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    app v name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/common/util/toast/c$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    app v code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cyjh/common/util/toast/c$a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    is system: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cyjh/common/util/toast/c$a;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
