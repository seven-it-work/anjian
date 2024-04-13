.class public final Lb/a/f/o;
.super Ljava/io/IOException;


# instance fields
.field public final errorCode:Lb/a/f/b;


# direct methods
.method public constructor <init>(Lb/a/f/b;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stream was reset: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lb/a/f/o;->errorCode:Lb/a/f/b;

    return-void
.end method
