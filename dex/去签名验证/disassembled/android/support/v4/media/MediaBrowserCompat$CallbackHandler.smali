.class Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackHandler"
.end annotation


# instance fields
.field private final mCallbackImplRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacksMessengerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->mCallbackImplRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->mCallbacksMessengerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_97

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->mCallbacksMessengerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_97

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->mCallbackImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_15

    return-void

    :cond_15
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->mCallbackImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->mCallbacksMessengerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    :try_start_32
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_98

    const-string v0, "MediaBrowserCompat"

    goto :goto_6c

    :pswitch_3a
    const-string v3, "data_media_item_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "data_media_item_list"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "data_options"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onLoadChildren(Landroid/os/Messenger;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    return-void

    :pswitch_50
    invoke-interface {v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onConnectionFailed(Landroid/os/Messenger;)V

    return-void

    :pswitch_54
    const-string v3, "data_media_item_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "data_media_session_token"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const-string v5, "data_root_hints"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onServiceConnected(Landroid/os/Messenger;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V

    return-void

    :goto_6c
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unhandled message: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n  Client version: 1\n  Service version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Landroid/os/BadParcelableException; {:try_start_32 .. :try_end_87} :catch_88

    return-void

    :catch_88
    const-string v0, "MediaBrowserCompat"

    const-string v3, "Could not unparcel the data."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_97

    invoke-interface {v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onConnectionFailed(Landroid/os/Messenger;)V

    :cond_97
    return-void

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_54
        :pswitch_50
        :pswitch_3a
    .end packed-switch
.end method

.method setCallbacksMessenger(Landroid/os/Messenger;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->mCallbacksMessengerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method
