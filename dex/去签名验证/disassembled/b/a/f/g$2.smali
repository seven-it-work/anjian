.class final Lb/a/f/g$2;
.super Lb/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/f/g;->a(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:J

.field final synthetic d:Lb/a/f/g;


# direct methods
.method varargs constructor <init>(Lb/a/f/g;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .registers 7

    iput-object p1, p0, Lb/a/f/g$2;->d:Lb/a/f/g;

    iput p4, p0, Lb/a/f/g$2;->a:I

    iput-wide p5, p0, Lb/a/f/g$2;->c:J

    invoke-direct {p0, p2, p3}, Lb/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lb/a/f/g$2;->d:Lb/a/f/g;

    iget-object v0, v0, Lb/a/f/g;->q:Lb/a/f/j;

    iget v1, p0, Lb/a/f/g$2;->a:I

    iget-wide v2, p0, Lb/a/f/g$2;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lb/a/f/j;->a(IJ)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
