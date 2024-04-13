.class final Lb/a/k/a$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/k/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field final a:I

.field final b:Lc/f;


# direct methods
.method constructor <init>(ILc/f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb/a/k/a$c;->a:I

    iput-object p2, p0, Lb/a/k/a$c;->b:Lc/f;

    return-void
.end method
