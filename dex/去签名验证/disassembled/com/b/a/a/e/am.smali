.class public final Lcom/b/a/a/e/am;
.super Ljava/io/IOException;


# instance fields
.field public final a:Lcom/b/a/a/e/b;


# direct methods
.method public constructor <init>(Lcom/b/a/a/e/b;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stream was reset: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/b/a/a/e/am;->a:Lcom/b/a/a/e/b;

    return-void
.end method
