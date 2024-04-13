.class public final Lb/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/ae$a;
    }
.end annotation


# instance fields
.field public final a:Lb/ac;

.field public final b:Lb/aa;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Lb/t;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final f:Lb/u;

.field public final g:Lb/af;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final h:Lb/ae;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final i:Lb/ae;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final j:Lb/ae;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final k:J

.field public final l:J

.field private volatile m:Lb/d;


# direct methods
.method constructor <init>(Lb/ae$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lb/ae$a;->a:Lb/ac;

    iput-object v0, p0, Lb/ae;->a:Lb/ac;

    iget-object v0, p1, Lb/ae$a;->b:Lb/aa;

    iput-object v0, p0, Lb/ae;->b:Lb/aa;

    iget v0, p1, Lb/ae$a;->c:I

    iput v0, p0, Lb/ae;->c:I

    iget-object v0, p1, Lb/ae$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lb/ae;->d:Ljava/lang/String;

    iget-object v0, p1, Lb/ae$a;->e:Lb/t;

    iput-object v0, p0, Lb/ae;->e:Lb/t;

    iget-object v0, p1, Lb/ae$a;->f:Lb/u$a;

    invoke-virtual {v0}, Lb/u$a;->a()Lb/u;

    move-result-object v0

    iput-object v0, p0, Lb/ae;->f:Lb/u;

    iget-object v0, p1, Lb/ae$a;->g:Lb/af;

    iput-object v0, p0, Lb/ae;->g:Lb/af;

    iget-object v0, p1, Lb/ae$a;->h:Lb/ae;

    iput-object v0, p0, Lb/ae;->h:Lb/ae;

    iget-object v0, p1, Lb/ae$a;->i:Lb/ae;

    iput-object v0, p0, Lb/ae;->i:Lb/ae;

    iget-object v0, p1, Lb/ae$a;->j:Lb/ae;

    iput-object v0, p0, Lb/ae;->j:Lb/ae;

    iget-wide v0, p1, Lb/ae$a;->k:J

    iput-wide v0, p0, Lb/ae;->k:J

    iget-wide v0, p1, Lb/ae$a;->l:J

    iput-wide v0, p0, Lb/ae;->l:J

    return-void
.end method

.method private a(J)Lb/af;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/ae;->g:Lb/af;

    invoke-virtual {v0}, Lb/af;->source()Lc/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lc/e;->b(J)Z

    invoke-interface {v0}, Lc/e;->a()Lc/c;

    move-result-object v0

    invoke-virtual {v0}, Lc/c;->x()Lc/c;

    move-result-object v0

    iget-wide v1, v0, Lc/c;->c:J

    cmp-long v3, v1, p1

    if-lez v3, :cond_23

    new-instance v1, Lc/c;

    invoke-direct {v1}, Lc/c;-><init>()V

    invoke-virtual {v1, v0, p1, p2}, Lc/c;->a(Lc/c;J)V

    invoke-virtual {v0}, Lc/c;->w()V

    move-object v0, v1

    :cond_23
    iget-object p1, p0, Lb/ae;->g:Lb/af;

    invoke-virtual {p1}, Lb/af;->contentType()Lb/x;

    move-result-object p1

    iget-wide v1, v0, Lc/c;->c:J

    invoke-static {p1, v1, v2, v0}, Lb/af;->create(Lb/x;JLc/e;)Lb/af;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/ae;->f:Lb/u;

    invoke-virtual {v0, p1}, Lb/u;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/ae;->f:Lb/u;

    invoke-virtual {v0, p1}, Lb/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method private g()Lb/ac;
    .registers 2

    iget-object v0, p0, Lb/ae;->a:Lb/ac;

    return-object v0
.end method

.method private h()Lb/aa;
    .registers 2

    iget-object v0, p0, Lb/ae;->b:Lb/aa;

    return-object v0
.end method

.method private i()Z
    .registers 3

    iget v0, p0, Lb/ae;->c:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_e

    iget v0, p0, Lb/ae;->c:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private j()Lb/t;
    .registers 2

    iget-object v0, p0, Lb/ae;->e:Lb/t;

    return-object v0
.end method

.method private k()Z
    .registers 2

    iget v0, p0, Lb/ae;->c:I

    packed-switch v0, :pswitch_data_a

    :pswitch_5
    const/4 v0, 0x0

    return v0

    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x12c
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private l()Lb/ae;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/ae;->h:Lb/ae;

    return-object v0
.end method

.method private m()Lb/ae;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/ae;->i:Lb/ae;

    return-object v0
.end method

.method private n()Lb/ae;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/ae;->j:Lb/ae;

    return-object v0
.end method

.method private o()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/h;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lb/ae;->c:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_9

    const-string v0, "WWW-Authenticate"

    goto :goto_11

    :cond_9
    iget v0, p0, Lb/ae;->c:I

    const/16 v1, 0x197

    if-ne v0, v1, :cond_18

    const-string v0, "Proxy-Authenticate"

    :goto_11
    iget-object v1, p0, Lb/ae;->f:Lb/u;

    invoke-static {v1, v0}, Lb/a/d/e;->a(Lb/u;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private p()J
    .registers 3

    iget-wide v0, p0, Lb/ae;->k:J

    return-wide v0
.end method

.method private q()J
    .registers 3

    iget-wide v0, p0, Lb/ae;->l:J

    return-wide v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lb/ae;->c:I

    return v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/ae;->f:Lb/u;

    invoke-virtual {v0, p1}, Lb/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/ae;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lb/u;
    .registers 2

    iget-object v0, p0, Lb/ae;->f:Lb/u;

    return-object v0
.end method

.method public final close()V
    .registers 2

    iget-object v0, p0, Lb/ae;->g:Lb/af;

    invoke-virtual {v0}, Lb/af;->close()V

    return-void
.end method

.method public final d()Lb/af;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/ae;->g:Lb/af;

    return-object v0
.end method

.method public final e()Lb/ae$a;
    .registers 2

    new-instance v0, Lb/ae$a;

    invoke-direct {v0, p0}, Lb/ae$a;-><init>(Lb/ae;)V

    return-object v0
.end method

.method public final f()Lb/d;
    .registers 2

    iget-object v0, p0, Lb/ae;->m:Lb/d;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lb/ae;->f:Lb/u;

    invoke-static {v0}, Lb/d;->a(Lb/u;)Lb/d;

    move-result-object v0

    iput-object v0, p0, Lb/ae;->m:Lb/d;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb/ae;->b:Lb/aa;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/ae;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/ae;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/ae;->a:Lb/ac;

    iget-object v1, v1, Lb/ac;->a:Lb/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
