.class public final Lcom/cyjh/common/util/w;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Landroid/widget/Toast;

.field private static c:J

.field private static d:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/cyjh/common/util/w;->b:Landroid/widget/Toast;

    if-nez v0, :cond_15

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/cyjh/common/util/w;->b:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/cyjh/common/util/w;->c:J

    goto :goto_3c

    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/cyjh/common/util/w;->d:J

    sget-object p0, Lcom/cyjh/common/util/w;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_30

    sget-wide p0, Lcom/cyjh/common/util/w;->d:J

    sget-wide v0, Lcom/cyjh/common/util/w;->c:J

    sub-long v2, p0, v0

    const-wide/16 p0, 0x0

    cmp-long v0, v2, p0

    if-lez v0, :cond_3c

    goto :goto_37

    :cond_30
    sput-object p1, Lcom/cyjh/common/util/w;->a:Ljava/lang/String;

    sget-object p0, Lcom/cyjh/common/util/w;->b:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    :goto_37
    sget-object p0, Lcom/cyjh/common/util/w;->b:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_3c
    :goto_3c
    sget-wide p0, Lcom/cyjh/common/util/w;->d:J

    sput-wide p0, Lcom/cyjh/common/util/w;->c:J

    return-void
.end method
