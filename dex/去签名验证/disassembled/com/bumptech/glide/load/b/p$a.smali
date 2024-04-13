.class final Lcom/bumptech/glide/load/b/p$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = ""

.field private static final b:Ljava/lang/String; = "  "


# instance fields
.field private final c:Ljava/lang/Appendable;

.field private d:Z


# direct methods
.method constructor <init>(Ljava/lang/Appendable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/p$a;->d:Z

    iput-object p1, p0, Lcom/bumptech/glide/load/b/p$a;->c:Ljava/lang/Appendable;

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 1
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method


# virtual methods
.method public final append(C)Ljava/lang/Appendable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/p$a;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iput-boolean v1, p0, Lcom/bumptech/glide/load/b/p$a;->d:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/b/p$a;->c:Ljava/lang/Appendable;

    const-string v2, "  "

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_e
    const/16 v0, 0xa

    if-ne p1, v0, :cond_13

    const/4 v1, 0x1

    :cond_13
    iput-boolean v1, p0, Lcom/bumptech/glide/load/b/p$a;->d:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/b/p$a;->c:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/bumptech/glide/load/b/p$a;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/bumptech/glide/load/b/p$a;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    move-result-object p1

    return-object p1
.end method

.method public final append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 7
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/bumptech/glide/load/b/p$a;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/p$a;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iput-boolean v1, p0, Lcom/bumptech/glide/load/b/p$a;->d:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/b/p$a;->c:Ljava/lang/Appendable;

    const-string v2, "  "

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_12
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_23

    add-int/lit8 v0, p3, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_23

    const/4 v1, 0x1

    :cond_23
    iput-boolean v1, p0, Lcom/bumptech/glide/load/b/p$a;->d:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/b/p$a;->c:Ljava/lang/Appendable;

    invoke-interface {v0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-object p0
.end method
