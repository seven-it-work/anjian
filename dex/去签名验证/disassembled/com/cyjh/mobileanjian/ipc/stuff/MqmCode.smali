.class public Lcom/cyjh/mobileanjian/ipc/stuff/MqmCode;
.super Ljava/lang/Object;


# static fields
.field public static final MQM_RUNNER_ERROR_APP_WEB_CHECK_CHECK_APP_ERR:I = 0x6f

.field public static final MQM_RUNNER_ERROR_APP_WEB_CHECK_CHECK_TOKEN_INVALID_ERR:I = 0x70

.field public static final MQM_RUNNER_ERROR_APP_WEB_CHECK_CHECK_TOKEN_KICKED_ERR:I = 0x6e

.field public static final MQM_RUNNER_ERROR_APP_WEB_CHECK_GENERATE_TOKEN_ERR:I = 0x6d

.field public static final MQM_RUNNER_ERROR_CHECK_APP_ABNORMAL:I = 0x6c

.field public static final MQM_RUNNER_ERROR_DECRYPT_FAILED:I = 0x68

.field public static final MQM_RUNNER_ERROR_OPEN_FILE_FAILED:I = 0x66

.field public static final MQM_RUNNER_ERROR_TRIAL_EXPIRED:I = 0x6a

.field public static final MQM_RUNNER_EXCEPTION:I = 0x3ea

.field public static final MQM_RUNNER_FINISH_SCRIPT:I = 0x0

.field public static final MQM_RUNNER_NO_ROOT_DAEMON:I = 0x3eb

.field public static final MQM_RUNNER_ROOT_REFUSED:I = 0x3e9

.field public static final MQM_RUNNER_STOP_SCRIPT:I = 0x69


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessageFromCode(I)Ljava/lang/String;
    .registers 3

    const-string v0, "UNKOWN"

    const/16 v1, 0x68

    if-eq p0, v1, :cond_22

    packed-switch p0, :pswitch_data_26

    packed-switch p0, :pswitch_data_34

    return-object v0

    :pswitch_d
    const-string v0, "\u811a\u672c\u8fdb\u7a0b\u672a\u542f\u52a8"

    return-object v0

    :pswitch_10
    const-string v0, "\u811a\u672c\u8fdb\u7a0b\u5f02\u5e38\u7ec8\u6b62"

    return-object v0

    :pswitch_13
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u65ad\u5f00"

    return-object v0

    :pswitch_16
    const-string v0, "\u670d\u52a1\u5668\u6570\u636e\u5185\u5bb9\u9519\u8bef"

    return-object v0

    :pswitch_19
    const-string v0, "\u5176\u5b83\u7aef\u767b\u9646"

    return-object v0

    :pswitch_1c
    const-string v0, "\u811a\u672c\u6ce8\u518c\u5931\u8d25"

    return-object v0

    :pswitch_1f
    const-string v0, "\u670d\u52a1\u5668\u6570\u636e\u683c\u5f0f\u5f02\u5e38"

    return-object v0

    :cond_22
    const-string v0, "\u811a\u672c\u9a8c\u8bc1\u5931\u8d25"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x6c
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
    .end packed-switch

    :pswitch_data_34
    .packed-switch 0x3ea
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method
