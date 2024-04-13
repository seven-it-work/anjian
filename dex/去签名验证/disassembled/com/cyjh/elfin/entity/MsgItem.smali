.class public Lcom/cyjh/elfin/entity/MsgItem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/entity/MsgItem$UpdateMessageToDialog;,
        Lcom/cyjh/elfin/entity/MsgItem$WebPageDownButtonEvent;,
        Lcom/cyjh/elfin/entity/MsgItem$PermissionsEvent;,
        Lcom/cyjh/elfin/entity/MsgItem$ExposureAndClickEvent;,
        Lcom/cyjh/elfin/entity/MsgItem$ExternalIpEvent;,
        Lcom/cyjh/elfin/entity/MsgItem$CheckedSwitchAdEvent;,
        Lcom/cyjh/elfin/entity/MsgItem$BindRegCodeBus;,
        Lcom/cyjh/elfin/entity/MsgItem$GetServerTime;,
        Lcom/cyjh/elfin/entity/MsgItem$RootDataEvent;
    }
.end annotation


# static fields
.field public static final BACK_AD_REQ_FAIL:I = 0x3ee

.field public static final CLEAR_PUSH_ALL_MSG_ITEM:I = 0x3eb

.field public static final CLEAR_PUSH_INTERFACE_ITEM:I = 0x3ea

.field public static final FENG_LING_RECOMMNED_APK_DOWNLOAD_SUCCESS:I = 0x3f6

.field public static final FENG_LING_RECOMMNED_APK_INSTALL_SUCCESS:I = 0x3f7

.field public static final GAMES_APK_DOWNLOAD_SUC:I = 0x3f2

.field public static final GUIAD_APK_DOWNLOAD_SUC:I = 0x7db

.field public static final IFLYAD_FULLSCREEN_REQ_FAIL:I = 0x3f1

.field public static final IFLYAD_FULLSCREEN_TWO_REQ_FAIL:I = 0x3f5

.field public static final IFLYAD_PARTSCREEN_REQ_FAIL:I = 0x3f3

.field public static final MAINAD_APK_DOWNLOAD_SUC:I = 0x7dc

.field public static final MESSAGE_PERMISSIONS_REQUEST:I = 0x3f6

.field public static final NOTIFY_DIALOG_DISMISS_MESSAGE:I = 0x3ed

.field public static final RED_DOT_GONE_ITEM:I = 0x3e9

.field public static final REFRESH_ITEM:I = 0x3ec

.field public static final REPLACE_XUNFEI_REQ_FAIL:I = 0x3f4

.field public static final REQUEST_NETWORK_FAIL:I = 0x3ed

.field public static final REQ_SERVER_TIME_FAIL:I = 0x3ef

.field public static final SCRIPT_NEED_START:I = 0x7d1

.field public static final SCRIPT_NEED_UPGRADE:I = 0x7d0

.field public static final SCRIPT_UI_DIALOG_DISMISS:I = 0x3f0

.field public static final SCRIPT_UI_SAVE_CFG:I = 0x2761


# instance fields
.field private msgType:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cyjh/elfin/entity/MsgItem;->msgType:I

    return-void
.end method


# virtual methods
.method public getMsgType()I
    .registers 2

    iget v0, p0, Lcom/cyjh/elfin/entity/MsgItem;->msgType:I

    return v0
.end method

.method public setMsgType(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/elfin/entity/MsgItem;->msgType:I

    return-void
.end method
