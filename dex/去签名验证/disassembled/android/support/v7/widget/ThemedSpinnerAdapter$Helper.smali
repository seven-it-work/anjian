.class public final Landroid/support/v7/widget/ThemedSpinnerAdapter$Helper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ThemedSpinnerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Helper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDropDownInflater:Landroid/view/LayoutInflater;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/ThemedSpinnerAdapter$Helper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/ThemedSpinnerAdapter$Helper;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final getDropDownViewInflater()Landroid/view/LayoutInflater;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/ThemedSpinnerAdapter$Helper;->mDropDownInflater:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/ThemedSpinnerAdapter$Helper;->mDropDownInflater:Landroid/view/LayoutInflater;

    return-object v0

    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/ThemedSpinnerAdapter$Helper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public final getDropDownViewTheme()Landroid/content/res/Resources$Theme;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/ThemedSpinnerAdapter$Helper;->mDropDownInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/ThemedSpinnerAdapter$Helper;->mDropDownInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public final setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V
    .registers 4
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_6

    const/4 p1, 0x0

    :goto_3
    iput-object p1, p0, Landroid/support/v7/widget/ThemedSpinnerAdapter$Helper;->mDropDownInflater:Landroid/view/LayoutInflater;

    return-void

    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/ThemedSpinnerAdapter$Helper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-ne p1, v0, :cond_11

    iget-object p1, p0, Landroid/support/v7/widget/ThemedSpinnerAdapter$Helper;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_3

    :cond_11
    new-instance v0, Landroid/support/v7/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/support/v7/widget/ThemedSpinnerAdapter$Helper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    goto :goto_3
.end method
