.class final Lb/a/k/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/k/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:I

.field final b:Lc/f;

.field final c:J


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e9

    iput v0, p0, Lb/a/k/a$b;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/k/a$b;->b:Lc/f;

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lb/a/k/a$b;->c:J

    return-void
.end method
