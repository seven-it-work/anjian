.class public final Lb/a/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/w;


# instance fields
.field public final a:Lb/z;


# direct methods
.method public constructor <init>(Lb/z;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/c/a;->a:Lb/z;

    return-void
.end method


# virtual methods
.method public final intercept(Lb/w$a;)Lb/ae;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lb/a/d/g;

    iget-object v0, p1, Lb/a/d/g;->d:Lb/ac;

    iget-object v1, p1, Lb/a/d/g;->a:Lb/a/c/g;

    iget-object v2, v0, Lb/ac;->b:Ljava/lang/String;

    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lb/a/c/a;->a:Lb/z;

    invoke-virtual {v1, v3, v2}, Lb/a/c/g;->a(Lb/z;Z)Lb/a/d/c;

    move-result-object v2

    invoke-virtual {v1}, Lb/a/c/g;->b()Lb/a/c/c;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lb/a/d/g;->a(Lb/ac;Lb/a/c/g;Lb/a/d/c;Lb/a/c/c;)Lb/ae;

    move-result-object p1

    return-object p1
.end method
