.class public final Lcom/cyjh/common/util/ae;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


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

.method private static a(Landroid/content/Context;I)V
    .registers 3

    sget-boolean v0, Lcom/cyjh/common/util/ae;->a:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_c
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/cyjh/common/util/ae;->a:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_c
    return-void
.end method

.method private static b(Landroid/content/Context;I)V
    .registers 3

    sget-boolean v0, Lcom/cyjh/common/util/ae;->a:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_c
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/cyjh/common/util/ae;->a:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_c
    return-void
.end method
