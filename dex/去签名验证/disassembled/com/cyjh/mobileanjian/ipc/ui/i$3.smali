.class public final synthetic Lcom/cyjh/mobileanjian/ipc/ui/i$3;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/ui/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/ui/m;->values()[Lcom/cyjh/mobileanjian/ipc/ui/m;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v4}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    :catch_2a
    const/4 v3, 0x4

    :try_start_2b
    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    sget-object v5, Lcom/cyjh/mobileanjian/ipc/ui/m;->d:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v5}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_35} :catch_35

    :catch_35
    const/4 v4, 0x5

    :try_start_36
    sget-object v5, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    sget-object v6, Lcom/cyjh/mobileanjian/ipc/ui/m;->e:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v6}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_40} :catch_40

    :catch_40
    const/4 v5, 0x6

    :try_start_41
    sget-object v6, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    sget-object v7, Lcom/cyjh/mobileanjian/ipc/ui/m;->f:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v7}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_4b} :catch_4b

    :catch_4b
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->values()[Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    :try_start_54
    sget-object v6, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v7, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SAVE_PROFILE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5e} :catch_5e

    :catch_5e
    :try_start_5e
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v6, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->LOAD_PROFILE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v6

    aput v1, v0, v6
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_68} :catch_68

    :catch_68
    :try_start_68
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->NEW_LAYOUT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_72
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_72} :catch_72

    :catch_72
    :try_start_72
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SHOW_LAYOUT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_7c} :catch_7c

    :catch_7c
    :try_start_7c
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->CLOSE_LAYOUT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_86} :catch_86

    :catch_86
    :try_start_86
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->CLOSE_CONTINUE_ACK:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_90} :catch_90

    :catch_90
    :try_start_90
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->CLOSE_EXIT_ACK:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9b} :catch_9b

    :catch_9b
    :try_start_9b
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->NEW_ROW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9b .. :try_end_a7} :catch_a7

    :catch_a7
    :try_start_a7
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_TITLE_TEXT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_b3} :catch_b3

    :catch_b3
    :try_start_b3
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->GET_TITLE_TEXT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_bf} :catch_bf

    :catch_bf
    :try_start_bf
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_TITLE_BACKCOLOR:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bf .. :try_end_cb} :catch_cb

    :catch_cb
    :try_start_cb
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ADD_LINE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_d7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cb .. :try_end_d7} :catch_d7

    :catch_d7
    :try_start_d7
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ADD_TEXT_VIEW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d7 .. :try_end_e3} :catch_e3

    :catch_e3
    :try_start_e3
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ADD_EDIT_TEXT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_ef
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e3 .. :try_end_ef} :catch_ef

    :catch_ef
    :try_start_ef
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ADD_BUTTON:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_fb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ef .. :try_end_fb} :catch_fb

    :catch_fb
    :try_start_fb
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ADD_RADIO_GROUP:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_107
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fb .. :try_end_107} :catch_107

    :catch_107
    :try_start_107
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ADD_CHECK_BOX:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_113
    .catch Ljava/lang/NoSuchFieldError; {:try_start_107 .. :try_end_113} :catch_113

    :catch_113
    :try_start_113
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ADD_IMAGE_VIEW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_113 .. :try_end_11f} :catch_11f

    :catch_11f
    :try_start_11f
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ADD_WEB_VIEW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11f .. :try_end_12b} :catch_12b

    :catch_12b
    :try_start_12b
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ADD_SPINNER:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_137
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12b .. :try_end_137} :catch_137

    :catch_137
    :try_start_137
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ADD_TAB_HOST:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_143
    .catch Ljava/lang/NoSuchFieldError; {:try_start_137 .. :try_end_143} :catch_143

    :catch_143
    :try_start_143
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ADD_TAB:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_14f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_143 .. :try_end_14f} :catch_14f

    :catch_14f
    :try_start_14f
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_TEXT_VIEW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_15b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14f .. :try_end_15b} :catch_15b

    :catch_15b
    :try_start_15b
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_EDIT_TEXT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_167
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15b .. :try_end_167} :catch_167

    :catch_167
    :try_start_167
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_BOTTON:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_173
    .catch Ljava/lang/NoSuchFieldError; {:try_start_167 .. :try_end_173} :catch_173

    :catch_173
    :try_start_173
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_CHECK_BOX:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_17f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_173 .. :try_end_17f} :catch_17f

    :catch_17f
    :try_start_17f
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_IMAGE_VIEW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_18b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17f .. :try_end_18b} :catch_18b

    :catch_18b
    :try_start_18b
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_WEB_VIEW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_197
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18b .. :try_end_197} :catch_197

    :catch_197
    :try_start_197
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_RADIO_GROUP:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_197 .. :try_end_1a3} :catch_1a3

    :catch_1a3
    :try_start_1a3
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_SPINNER:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a3 .. :try_end_1af} :catch_1af

    :catch_1af
    :try_start_1af
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_ENABLED:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1af .. :try_end_1bb} :catch_1bb

    :catch_1bb
    :try_start_1bb
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_LINE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1bb .. :try_end_1c7} :catch_1c7

    :catch_1c7
    :try_start_1c7
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_VISIBLE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_1d3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c7 .. :try_end_1d3} :catch_1d3

    :catch_1d3
    :try_start_1d3
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_FULLSCREEN:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_1df
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d3 .. :try_end_1df} :catch_1df

    :catch_1df
    :try_start_1df
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_TEXT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_1eb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1df .. :try_end_1eb} :catch_1eb

    :catch_1eb
    :try_start_1eb
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_FONT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_1f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1eb .. :try_end_1f7} :catch_1f7

    :catch_1f7
    :try_start_1f7
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_EDIT_INPUT_TYPE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_203
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f7 .. :try_end_203} :catch_203

    :catch_203
    :try_start_203
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->GET_TEXT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_20f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_203 .. :try_end_20f} :catch_20f

    :catch_20f
    :try_start_20f
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_TEXTCOLOR:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_21b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20f .. :try_end_21b} :catch_21b

    :catch_21b
    :try_start_21b
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_BACKCOLOR:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_227
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21b .. :try_end_227} :catch_227

    :catch_227
    :try_start_227
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->GET_VALUE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_233
    .catch Ljava/lang/NoSuchFieldError; {:try_start_227 .. :try_end_233} :catch_233

    :catch_233
    :try_start_233
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->GET_ENABLED:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_23f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_233 .. :try_end_23f} :catch_23f

    :catch_23f
    :try_start_23f
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->GET_VISIBLE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_24b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23f .. :try_end_24b} :catch_24b

    :catch_24b
    :try_start_24b
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->GET_TEXTCOLOR:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_257
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24b .. :try_end_257} :catch_257

    :catch_257
    :try_start_257
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->GET_BACKCOLOR:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_263
    .catch Ljava/lang/NoSuchFieldError; {:try_start_257 .. :try_end_263} :catch_263

    :catch_263
    :try_start_263
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_CONTROL_GRAVITY:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_26f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_263 .. :try_end_26f} :catch_26f

    :catch_26f
    :try_start_26f
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_WINDOW_GRAVITY:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_27b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26f .. :try_end_27b} :catch_27b

    :catch_27b
    :try_start_27b
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_PADDING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_287
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27b .. :try_end_287} :catch_287

    :catch_287
    :try_start_287
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->NEW_FLOAT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_293
    .catch Ljava/lang/NoSuchFieldError; {:try_start_287 .. :try_end_293} :catch_293

    :catch_293
    return-void
.end method
