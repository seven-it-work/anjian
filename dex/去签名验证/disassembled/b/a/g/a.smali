.class public interface abstract Lb/a/g/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lb/a/g/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/a/g/a$1;

    invoke-direct {v0}, Lb/a/g/a$1;-><init>()V

    sput-object v0, Lb/a/g/a;->a:Lb/a/g/a;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/io/File;)Lc/y;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/io/File;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(Ljava/io/File;)Lc/x;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract c(Ljava/io/File;)Lc/x;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract d(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract e(Ljava/io/File;)Z
.end method

.method public abstract f(Ljava/io/File;)J
.end method

.method public abstract g(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
