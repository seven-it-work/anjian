.class public interface abstract Lcom/alibaba/sdk/android/oss/internal/ResponseParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/sdk/android/oss/model/OSSResult;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract parse(Lb/ae;)Lcom/alibaba/sdk/android/oss/model/OSSResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/ae;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
