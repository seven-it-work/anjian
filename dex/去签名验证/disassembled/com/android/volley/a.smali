.class public final Lcom/android/volley/a;
.super Lcom/android/volley/s;


# instance fields
.field private mResolutionIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/volley/s;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/volley/s;-><init>()V

    iput-object p1, p0, Lcom/android/volley/a;->mResolutionIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/volley/s;-><init>(Lcom/android/volley/i;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/volley/s;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/volley/s;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/volley/a;->mResolutionIntent:Landroid/content/Intent;

    if-eqz v0, :cond_7

    const-string v0, "User needs to (re)enter credentials."

    return-object v0

    :cond_7
    invoke-super {p0}, Lcom/android/volley/s;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getResolutionIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/android/volley/a;->mResolutionIntent:Landroid/content/Intent;

    return-object v0
.end method
