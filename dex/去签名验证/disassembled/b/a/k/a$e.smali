.class public abstract Lb/a/k/a$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/k/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation


# instance fields
.field public final c:Z

.field public final d:Lc/e;

.field public final e:Lc/d;


# direct methods
.method public constructor <init>(Lc/e;Lc/d;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/k/a$e;->c:Z

    iput-object p1, p0, Lb/a/k/a$e;->d:Lc/e;

    iput-object p2, p0, Lb/a/k/a$e;->e:Lc/d;

    return-void
.end method
