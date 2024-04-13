.class final synthetic Lcom/cyjh/mobileanjian/ipc/ui/h$4;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/ui/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/ui/m;->values()[Lcom/cyjh/mobileanjian/ipc/ui/m;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v4}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    :catch_2a
    const/4 v3, 0x4

    :try_start_2b
    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    sget-object v5, Lcom/cyjh/mobileanjian/ipc/ui/m;->d:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v5}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_35} :catch_35

    :catch_35
    const/4 v4, 0x5

    :try_start_36
    sget-object v5, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    sget-object v6, Lcom/cyjh/mobileanjian/ipc/ui/m;->e:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v6}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_40} :catch_40

    :catch_40
    const/4 v5, 0x6

    :try_start_41
    sget-object v6, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    sget-object v7, Lcom/cyjh/mobileanjian/ipc/ui/m;->f:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v7}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_4b} :catch_4b

    :catch_4b
    const/4 v6, 0x7

    :try_start_4c
    sget-object v7, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->b:[I

    sget-object v8, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v8}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_56} :catch_56

    :catch_56
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->values()[Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    :try_start_5f
    sget-object v7, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v8, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SAVE_PROFILE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_69} :catch_69

    :catch_69
    :try_start_69
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v7, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->LOAD_PROFILE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v7

    aput v1, v0, v7
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_73} :catch_73

    :catch_73
    :try_start_73
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->NEW_LAYOUT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7d} :catch_7d

    :catch_7d
    :try_start_7d
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SHOW_LAYOUT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_87} :catch_87

    :catch_87
    :try_start_87
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->CLOSE_LAYOUT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_91} :catch_91

    :catch_91
    :try_start_91
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->CLOSE_CONTINUE_ACK:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_9b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_91 .. :try_end_9b} :catch_9b

    :catch_9b
    :try_start_9b
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->CLOSE_EXIT_ACK:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9b .. :try_end_a5} :catch_a5

    :catch_a5
    :try_start_a5
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->NEW_ROW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a5 .. :try_end_b1} :catch_b1

    :catch_b1
    :try_start_b1
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_TITLE_TEXT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_bd} :catch_bd

    :catch_bd
    :try_start_bd
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->GET_TITLE_TEXT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bd .. :try_end_c9} :catch_c9

    :catch_c9
    :try_start_c9
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_TITLE_BACKCOLOR:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c9 .. :try_end_d5} :catch_d5

    :catch_d5
    :try_start_d5
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ADD_LINE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d5 .. :try_end_e1} :catch_e1

    :catch_e1
    :try_start_e1
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ADD_TEXT_VIEW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e1 .. :try_end_ed} :catch_ed

    :catch_ed
    :try_start_ed
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ADD_EDIT_TEXT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_f9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed .. :try_end_f9} :catch_f9

    :catch_f9
    :try_start_f9
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ADD_BUTTON:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_105
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f9 .. :try_end_105} :catch_105

    :catch_105
    :try_start_105
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ADD_RADIO_GROUP:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_111
    .catch Ljava/lang/NoSuchFieldError; {:try_start_105 .. :try_end_111} :catch_111

    :catch_111
    :try_start_111
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ADD_CHECK_BOX:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_11d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_111 .. :try_end_11d} :catch_11d

    :catch_11d
    :try_start_11d
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ADD_IMAGE_VIEW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_129
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11d .. :try_end_129} :catch_129

    :catch_129
    :try_start_129
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ADD_WEB_VIEW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_135
    .catch Ljava/lang/NoSuchFieldError; {:try_start_129 .. :try_end_135} :catch_135

    :catch_135
    :try_start_135
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ADD_SPINNER:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_141
    .catch Ljava/lang/NoSuchFieldError; {:try_start_135 .. :try_end_141} :catch_141

    :catch_141
    :try_start_141
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ADD_TAB_HOST:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_141 .. :try_end_14d} :catch_14d

    :catch_14d
    :try_start_14d
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ADD_TAB:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_159
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14d .. :try_end_159} :catch_159

    :catch_159
    :try_start_159
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_TEXT_VIEW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_165
    .catch Ljava/lang/NoSuchFieldError; {:try_start_159 .. :try_end_165} :catch_165

    :catch_165
    :try_start_165
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_EDIT_TEXT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_171
    .catch Ljava/lang/NoSuchFieldError; {:try_start_165 .. :try_end_171} :catch_171

    :catch_171
    :try_start_171
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_BOTTON:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_17d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_171 .. :try_end_17d} :catch_17d

    :catch_17d
    :try_start_17d
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_CHECK_BOX:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_189
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17d .. :try_end_189} :catch_189

    :catch_189
    :try_start_189
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_IMAGE_VIEW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_195
    .catch Ljava/lang/NoSuchFieldError; {:try_start_189 .. :try_end_195} :catch_195

    :catch_195
    :try_start_195
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_WEB_VIEW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_195 .. :try_end_1a1} :catch_1a1

    :catch_1a1
    :try_start_1a1
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_RADIO_GROUP:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a1 .. :try_end_1ad} :catch_1ad

    :catch_1ad
    :try_start_1ad
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_SPINNER:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ad .. :try_end_1b9} :catch_1b9

    :catch_1b9
    :try_start_1b9
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_ENABLED:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b9 .. :try_end_1c5} :catch_1c5

    :catch_1c5
    :try_start_1c5
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_LINE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c5 .. :try_end_1d1} :catch_1d1

    :catch_1d1
    :try_start_1d1
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_VISIBLE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_1dd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d1 .. :try_end_1dd} :catch_1dd

    :catch_1dd
    :try_start_1dd
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_FULLSCREEN:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_1e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1dd .. :try_end_1e9} :catch_1e9

    :catch_1e9
    :try_start_1e9
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_TEXT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_1f5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e9 .. :try_end_1f5} :catch_1f5

    :catch_1f5
    :try_start_1f5
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_FONT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_201
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f5 .. :try_end_201} :catch_201

    :catch_201
    :try_start_201
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_EDIT_INPUT_TYPE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_20d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_201 .. :try_end_20d} :catch_20d

    :catch_20d
    :try_start_20d
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->GET_TEXT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_219
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20d .. :try_end_219} :catch_219

    :catch_219
    :try_start_219
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_TEXTCOLOR:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_225
    .catch Ljava/lang/NoSuchFieldError; {:try_start_219 .. :try_end_225} :catch_225

    :catch_225
    :try_start_225
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_BACKCOLOR:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_231
    .catch Ljava/lang/NoSuchFieldError; {:try_start_225 .. :try_end_231} :catch_231

    :catch_231
    :try_start_231
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->GET_VALUE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_23d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_231 .. :try_end_23d} :catch_23d

    :catch_23d
    :try_start_23d
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->GET_ENABLED:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_249
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23d .. :try_end_249} :catch_249

    :catch_249
    :try_start_249
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->GET_VISIBLE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_255
    .catch Ljava/lang/NoSuchFieldError; {:try_start_249 .. :try_end_255} :catch_255

    :catch_255
    :try_start_255
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->GET_TEXTCOLOR:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_261
    .catch Ljava/lang/NoSuchFieldError; {:try_start_255 .. :try_end_261} :catch_261

    :catch_261
    :try_start_261
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->GET_BACKCOLOR:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_26d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_261 .. :try_end_26d} :catch_26d

    :catch_26d
    :try_start_26d
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_CONTROL_GRAVITY:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_279
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26d .. :try_end_279} :catch_279

    :catch_279
    :try_start_279
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_WINDOW_GRAVITY:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_285
    .catch Ljava/lang/NoSuchFieldError; {:try_start_279 .. :try_end_285} :catch_285

    :catch_285
    :try_start_285
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_PADDING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_291
    .catch Ljava/lang/NoSuchFieldError; {:try_start_285 .. :try_end_291} :catch_291

    :catch_291
    :try_start_291
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->NEW_FLOAT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_29d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_291 .. :try_end_29d} :catch_29d

    :catch_29d
    :try_start_29d
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SHOW_FLOAT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_2a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29d .. :try_end_2a9} :catch_2a9

    :catch_2a9
    :try_start_2a9
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->IS_FW_TOUCHMOVE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_2b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a9 .. :try_end_2b5} :catch_2b5

    :catch_2b5
    :try_start_2b5
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->HIDE_FLOAT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_2c1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b5 .. :try_end_2c1} :catch_2c1

    :catch_2c1
    :try_start_2c1
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->CLOSE_FLOAT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_2cd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c1 .. :try_end_2cd} :catch_2cd

    :catch_2cd
    :try_start_2cd
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->FW_OPACITY:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_2d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2cd .. :try_end_2d9} :catch_2d9

    :catch_2d9
    :try_start_2d9
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_FW_SMOOTH:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_2e5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d9 .. :try_end_2e5} :catch_2e5

    :catch_2e5
    :try_start_2e5
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_FW_BG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_2f1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e5 .. :try_end_2f1} :catch_2f1

    :catch_2f1
    :try_start_2f1
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_FW_PIC:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_2fd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f1 .. :try_end_2fd} :catch_2fd

    :catch_2fd
    :try_start_2fd
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ADD_FW_BUTTON:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_309
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2fd .. :try_end_309} :catch_309

    :catch_309
    :try_start_309
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ADD_FW_TEXT_VIEW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_315
    .catch Ljava/lang/NoSuchFieldError; {:try_start_309 .. :try_end_315} :catch_315

    :catch_315
    :try_start_315
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ADD_FW_IMAGE_VIEW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_321
    .catch Ljava/lang/NoSuchFieldError; {:try_start_315 .. :try_end_321} :catch_321

    :catch_321
    :try_start_321
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->FW_ZORDER:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_32d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_321 .. :try_end_32d} :catch_32d

    :catch_32d
    :try_start_32d
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_FW_TEXT_COLOR:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_339
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32d .. :try_end_339} :catch_339

    :catch_339
    :try_start_339
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->FW_GET_VALUE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x3f

    aput v2, v0, v1
    :try_end_345
    .catch Ljava/lang/NoSuchFieldError; {:try_start_339 .. :try_end_345} :catch_345

    :catch_345
    :try_start_345
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_FW_BUTTON:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x40

    aput v2, v0, v1
    :try_end_351
    .catch Ljava/lang/NoSuchFieldError; {:try_start_345 .. :try_end_351} :catch_351

    :catch_351
    :try_start_351
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_FW_TEXT_VIEW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x41

    aput v2, v0, v1
    :try_end_35d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_351 .. :try_end_35d} :catch_35d

    :catch_35d
    :try_start_35d
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_FW_IMAGE_VIEW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x42

    aput v2, v0, v1
    :try_end_369
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35d .. :try_end_369} :catch_369

    :catch_369
    :try_start_369
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_FW_TEXT_SIZE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x43

    aput v2, v0, v1
    :try_end_375
    .catch Ljava/lang/NoSuchFieldError; {:try_start_369 .. :try_end_375} :catch_375

    :catch_375
    :try_start_375
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_FW_ENABLE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x44

    aput v2, v0, v1
    :try_end_381
    .catch Ljava/lang/NoSuchFieldError; {:try_start_375 .. :try_end_381} :catch_381

    :catch_381
    :try_start_381
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->SET_FW_VISIBLE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x45

    aput v2, v0, v1
    :try_end_38d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_381 .. :try_end_38d} :catch_38d

    :catch_38d
    :try_start_38d
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->GET_FW_ENABLE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x46

    aput v2, v0, v1
    :try_end_399
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38d .. :try_end_399} :catch_399

    :catch_399
    :try_start_399
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->GET_FW_TEXT_COLOR:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x47

    aput v2, v0, v1
    :try_end_3a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_399 .. :try_end_3a5} :catch_3a5

    :catch_3a5
    :try_start_3a5
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->GET_FW_VISIBLE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x48

    aput v2, v0, v1
    :try_end_3b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a5 .. :try_end_3b1} :catch_3b1

    :catch_3b1
    :try_start_3b1
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->FW_SET_LEFT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x49

    aput v2, v0, v1
    :try_end_3bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b1 .. :try_end_3bd} :catch_3bd

    :catch_3bd
    :try_start_3bd
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->FW_SET_TOP:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x4a

    aput v2, v0, v1
    :try_end_3c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3bd .. :try_end_3c9} :catch_3c9

    :catch_3c9
    :try_start_3c9
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->FW_SET_WIDTH:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x4b

    aput v2, v0, v1
    :try_end_3d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c9 .. :try_end_3d5} :catch_3d5

    :catch_3d5
    :try_start_3d5
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->FW_SET_HEIGHT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x4c

    aput v2, v0, v1
    :try_end_3e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d5 .. :try_end_3e1} :catch_3e1

    :catch_3e1
    :try_start_3e1
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/ui/h$4;->a:[I

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->FW_SET_TEXT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    const/16 v2, 0x4d

    aput v2, v0, v1
    :try_end_3ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e1 .. :try_end_3ed} :catch_3ed

    :catch_3ed
    return-void
.end method
