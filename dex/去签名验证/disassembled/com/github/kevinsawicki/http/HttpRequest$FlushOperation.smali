.class public abstract Lcom/github/kevinsawicki/http/HttpRequest$FlushOperation;
.super Lcom/github/kevinsawicki/http/HttpRequest$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/kevinsawicki/http/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "FlushOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/kevinsawicki/http/HttpRequest$Operation<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final flushable:Ljava/io/Flushable;


# direct methods
.method protected constructor <init>(Ljava/io/Flushable;)V
    .registers 2

    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest$Operation;-><init>()V

    iput-object p1, p0, Lcom/github/kevinsawicki/http/HttpRequest$FlushOperation;->flushable:Ljava/io/Flushable;

    return-void
.end method


# virtual methods
.method protected done()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest$FlushOperation;->flushable:Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V

    return-void
.end method
