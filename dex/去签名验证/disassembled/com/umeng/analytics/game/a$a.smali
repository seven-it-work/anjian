.class Lcom/umeng/analytics/game/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/game/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:J = 0x1335127L


# instance fields
.field private b:Ljava/lang/String;

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/game/a$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/game/a$a;->d:J

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/umeng/analytics/game/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .registers 9

    iget-wide v0, p0, Lcom/umeng/analytics/game/a$a;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/umeng/analytics/game/a$a;->d:J

    sub-long v6, v2, v4

    add-long v2, v0, v6

    iput-wide v2, p0, Lcom/umeng/analytics/game/a$a;->c:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/umeng/analytics/game/a$a;->d:J

    return-void
.end method

.method public c()V
    .registers 1

    invoke-virtual {p0}, Lcom/umeng/analytics/game/a$a;->a()V

    return-void
.end method

.method public d()V
    .registers 1

    invoke-virtual {p0}, Lcom/umeng/analytics/game/a$a;->b()V

    return-void
.end method

.method public e()J
    .registers 3

    iget-wide v0, p0, Lcom/umeng/analytics/game/a$a;->c:J

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/umeng/analytics/game/a$a;->b:Ljava/lang/String;

    return-object v0
.end method
