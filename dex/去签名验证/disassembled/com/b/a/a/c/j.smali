.class public final Lcom/b/a/a/c/j;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/b/a/ac;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/b/a/ac;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/b/a/ac;->j()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    return-object v0
.end method
