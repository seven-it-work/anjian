.class Landroid/support/transition/TransitionSet$TransitionSetListener;
.super Landroid/support/transition/TransitionListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/TransitionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionSetListener"
.end annotation


# instance fields
.field mTransitionSet:Landroid/support/transition/TransitionSet;


# direct methods
.method constructor <init>(Landroid/support/transition/TransitionSet;)V
    .registers 2

    invoke-direct {p0}, Landroid/support/transition/TransitionListenerAdapter;-><init>()V

    iput-object p1, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/support/transition/Transition;)V
    .registers 4
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    # --operator for: Landroid/support/transition/TransitionSet;->mCurrentListeners:I
    invoke-static {v0}, Landroid/support/transition/TransitionSet;->access$106(Landroid/support/transition/TransitionSet;)I

    iget-object v0, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    # getter for: Landroid/support/transition/TransitionSet;->mCurrentListeners:I
    invoke-static {v0}, Landroid/support/transition/TransitionSet;->access$100(Landroid/support/transition/TransitionSet;)I

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    const/4 v1, 0x0

    # setter for: Landroid/support/transition/TransitionSet;->mStarted:Z
    invoke-static {v0, v1}, Landroid/support/transition/TransitionSet;->access$002(Landroid/support/transition/TransitionSet;Z)Z

    iget-object v0, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    invoke-virtual {v0}, Landroid/support/transition/TransitionSet;->end()V

    :cond_18
    invoke-virtual {p1, p0}, Landroid/support/transition/Transition;->removeListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    return-void
.end method

.method public onTransitionStart(Landroid/support/transition/Transition;)V
    .registers 3
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    # getter for: Landroid/support/transition/TransitionSet;->mStarted:Z
    invoke-static {p1}, Landroid/support/transition/TransitionSet;->access$000(Landroid/support/transition/TransitionSet;)Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    invoke-virtual {p1}, Landroid/support/transition/TransitionSet;->start()V

    iget-object p1, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    const/4 v0, 0x1

    # setter for: Landroid/support/transition/TransitionSet;->mStarted:Z
    invoke-static {p1, v0}, Landroid/support/transition/TransitionSet;->access$002(Landroid/support/transition/TransitionSet;Z)Z

    :cond_13
    return-void
.end method
