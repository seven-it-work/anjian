.class public Lcom/umeng/commonsdk/statistics/idtracking/r;
.super Lcom/umeng/commonsdk/statistics/idtracking/a;


# static fields
.field public static final a:Ljava/lang/String; = "uopdta"

.field private static final b:Ljava/lang/String; = "uop"


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "uop"

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/r;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .registers 4

    const-string v0, ""

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/r;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_12

    const-string v0, "uopdta"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_12
    return-object v0
.end method
