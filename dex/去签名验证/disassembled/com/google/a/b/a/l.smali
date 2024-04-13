.class public final Lcom/google/a/b/a/l;
.super Lcom/google/a/b/a/u;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/a/b/a/u;-><init>()V

    return-void
.end method

.method private static a(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_a

    return-object v1

    :cond_a
    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_16
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_39

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_29

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_29
    const/16 v3, 0x30

    if-lt v2, v3, :cond_38

    const/16 v3, 0x39

    if-le v2, v3, :cond_32

    return-object v1

    :cond_32
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_38
    return-object v1

    :cond_39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_28

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_22

    invoke-static {p1, p0}, Lcom/google/a/b/a/l;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    :cond_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_25
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/google/a/r;)Lcom/google/a/b/a/k;
    .registers 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/a/r;->e:Lcom/google/a/a;

    sget-object v2, Lcom/google/a/a;->RSS_EXPANDED:Lcom/google/a/a;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_a

    return-object v3

    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/google/a/b/a/l;->b(Lcom/google/a/r;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    const/4 v2, 0x0

    :goto_24
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_25a

    invoke-static {v2, v5}, Lcom/google/a/b/a/l;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_31

    return-object v3

    :cond_31
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x2

    add-int/lit8 v19, v19, 0x2

    add-int v2, v2, v19

    invoke-static {v2, v5}, Lcom/google/a/b/a/l;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v19

    add-int v2, v2, v19

    const/16 v19, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v3

    move/from16 v21, v2

    const/16 v2, 0x622

    move-object/from16 v22, v15

    const/4 v15, 0x3

    if-eq v3, v2, :cond_1f8

    const/16 v2, 0x624

    if-eq v3, v2, :cond_1ee

    const/16 v2, 0x626

    if-eq v3, v2, :cond_1e4

    packed-switch v3, :pswitch_data_266

    packed-switch v3, :pswitch_data_26e

    packed-switch v3, :pswitch_data_276

    packed-switch v3, :pswitch_data_28e

    packed-switch v3, :pswitch_data_2a6

    packed-switch v3, :pswitch_data_2b2

    goto/16 :goto_202

    :pswitch_70
    const-string v2, "3933"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x22

    goto/16 :goto_203

    :pswitch_7c
    const-string v2, "3932"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x21

    goto/16 :goto_203

    :pswitch_88
    const-string v2, "3931"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x20

    goto/16 :goto_203

    :pswitch_94
    const-string v2, "3930"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x1f

    goto/16 :goto_203

    :pswitch_a0
    const-string v2, "3923"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x1e

    goto/16 :goto_203

    :pswitch_ac
    const-string v2, "3922"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x1d

    goto/16 :goto_203

    :pswitch_b8
    const-string v2, "3921"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x1c

    goto/16 :goto_203

    :pswitch_c4
    const-string v2, "3920"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x1b

    goto/16 :goto_203

    :pswitch_d0
    const-string v2, "3209"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x1a

    goto/16 :goto_203

    :pswitch_dc
    const-string v2, "3208"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x19

    goto/16 :goto_203

    :pswitch_e8
    const-string v2, "3207"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x18

    goto/16 :goto_203

    :pswitch_f4
    const-string v2, "3206"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x17

    goto/16 :goto_203

    :pswitch_100
    const-string v2, "3205"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x16

    goto/16 :goto_203

    :pswitch_10c
    const-string v2, "3204"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x15

    goto/16 :goto_203

    :pswitch_118
    const-string v2, "3203"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x14

    goto/16 :goto_203

    :pswitch_124
    const-string v2, "3202"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x13

    goto/16 :goto_203

    :pswitch_130
    const-string v2, "3201"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x12

    goto/16 :goto_203

    :pswitch_13c
    const-string v2, "3200"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x11

    goto/16 :goto_203

    :pswitch_148
    const-string v2, "3109"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x10

    goto/16 :goto_203

    :pswitch_154
    const-string v2, "3108"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0xf

    goto/16 :goto_203

    :pswitch_160
    const-string v2, "3107"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0xe

    goto/16 :goto_203

    :pswitch_16c
    const-string v2, "3106"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0xd

    goto/16 :goto_203

    :pswitch_178
    const-string v2, "3105"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0xc

    goto/16 :goto_203

    :pswitch_184
    const-string v2, "3104"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0xb

    goto/16 :goto_203

    :pswitch_190
    const-string v2, "3103"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0xa

    goto/16 :goto_203

    :pswitch_19c
    const-string v2, "3102"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x9

    goto :goto_203

    :pswitch_1a7
    const-string v2, "3101"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x8

    goto :goto_203

    :pswitch_1b2
    const-string v2, "3100"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/4 v2, 0x7

    goto :goto_203

    :pswitch_1bc
    const-string v2, "11"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/4 v2, 0x3

    goto :goto_203

    :pswitch_1c6
    const-string v2, "10"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/4 v2, 0x2

    goto :goto_203

    :pswitch_1d0
    const-string v2, "01"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/4 v2, 0x1

    goto :goto_203

    :pswitch_1da
    const-string v2, "00"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/4 v2, 0x0

    goto :goto_203

    :cond_1e4
    const-string v2, "17"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/4 v2, 0x6

    goto :goto_203

    :cond_1ee
    const-string v2, "15"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/4 v2, 0x5

    goto :goto_203

    :cond_1f8
    const-string v2, "13"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/4 v2, 0x4

    goto :goto_203

    :cond_202
    :goto_202
    const/4 v2, -0x1

    :goto_203
    packed-switch v2, :pswitch_data_2be

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_20b
    move-object v3, v2

    move/from16 v2, v21

    move-object/from16 v15, v22

    goto/16 :goto_24

    :pswitch_212
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_21b

    const/4 v2, 0x0

    return-object v2

    :cond_21b
    const/4 v2, 0x0

    invoke-virtual {v1, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_20b

    :pswitch_22a
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v16, v1

    goto :goto_20b

    :pswitch_233
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v14, "LB"

    goto :goto_23c

    :pswitch_238
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v14, "KG"

    :goto_23c
    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    move-object v13, v1

    move-object v3, v2

    move/from16 v2, v21

    goto/16 :goto_24

    :pswitch_246
    move-object v12, v1

    goto :goto_253

    :pswitch_248
    move-object v11, v1

    goto :goto_253

    :pswitch_24a
    move-object v10, v1

    goto :goto_253

    :pswitch_24c
    move-object v9, v1

    goto :goto_253

    :pswitch_24e
    move-object v8, v1

    goto :goto_253

    :pswitch_250
    move-object v6, v1

    goto :goto_253

    :pswitch_252
    move-object v7, v1

    :goto_253
    move/from16 v2, v21

    move-object/from16 v15, v22

    const/4 v3, 0x0

    goto/16 :goto_24

    :cond_25a
    move-object/from16 v22, v15

    new-instance v1, Lcom/google/a/b/a/k;

    move-object v4, v1

    move-object/from16 v19, v0

    invoke-direct/range {v4 .. v19}, Lcom/google/a/b/a/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v1

    nop

    :pswitch_data_266
    .packed-switch 0x600
        :pswitch_1da
        :pswitch_1d0
    .end packed-switch

    :pswitch_data_26e
    .packed-switch 0x61f
        :pswitch_1c6
        :pswitch_1bc
    .end packed-switch

    :pswitch_data_276
    .packed-switch 0x17ecde
        :pswitch_1b2
        :pswitch_1a7
        :pswitch_19c
        :pswitch_190
        :pswitch_184
        :pswitch_178
        :pswitch_16c
        :pswitch_160
        :pswitch_154
        :pswitch_148
    .end packed-switch

    :pswitch_data_28e
    .packed-switch 0x17f09f
        :pswitch_13c
        :pswitch_130
        :pswitch_124
        :pswitch_118
        :pswitch_10c
        :pswitch_100
        :pswitch_f4
        :pswitch_e8
        :pswitch_dc
        :pswitch_d0
    .end packed-switch

    :pswitch_data_2a6
    .packed-switch 0x180b24
        :pswitch_c4
        :pswitch_b8
        :pswitch_ac
        :pswitch_a0
    .end packed-switch

    :pswitch_data_2b2
    .packed-switch 0x180b43
        :pswitch_94
        :pswitch_88
        :pswitch_7c
        :pswitch_70
    .end packed-switch

    :pswitch_data_2be
    .packed-switch 0x0
        :pswitch_252
        :pswitch_250
        :pswitch_24e
        :pswitch_24c
        :pswitch_24a
        :pswitch_248
        :pswitch_246
        :pswitch_238
        :pswitch_238
        :pswitch_238
        :pswitch_238
        :pswitch_238
        :pswitch_238
        :pswitch_238
        :pswitch_238
        :pswitch_238
        :pswitch_238
        :pswitch_233
        :pswitch_233
        :pswitch_233
        :pswitch_233
        :pswitch_233
        :pswitch_233
        :pswitch_233
        :pswitch_233
        :pswitch_233
        :pswitch_233
        :pswitch_22a
        :pswitch_22a
        :pswitch_22a
        :pswitch_22a
        :pswitch_212
        :pswitch_212
        :pswitch_212
        :pswitch_212
    .end packed-switch
.end method


# virtual methods
.method public final synthetic a(Lcom/google/a/r;)Lcom/google/a/b/a/q;
    .registers 26

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/a/r;->e:Lcom/google/a/a;

    sget-object v2, Lcom/google/a/a;->RSS_EXPANDED:Lcom/google/a/a;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_a

    return-object v3

    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/google/a/b/a/l;->b(Lcom/google/a/r;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    const/4 v2, 0x0

    :goto_24
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_25a

    invoke-static {v2, v5}, Lcom/google/a/b/a/l;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_31

    return-object v3

    :cond_31
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x2

    add-int/lit8 v19, v19, 0x2

    add-int v2, v2, v19

    invoke-static {v2, v5}, Lcom/google/a/b/a/l;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v19

    add-int v2, v2, v19

    const/16 v19, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v3

    move/from16 v21, v2

    const/16 v2, 0x622

    move-object/from16 v22, v15

    const/4 v15, 0x3

    if-eq v3, v2, :cond_1f8

    const/16 v2, 0x624

    if-eq v3, v2, :cond_1ee

    const/16 v2, 0x626

    if-eq v3, v2, :cond_1e4

    packed-switch v3, :pswitch_data_266

    packed-switch v3, :pswitch_data_26e

    packed-switch v3, :pswitch_data_276

    packed-switch v3, :pswitch_data_28e

    packed-switch v3, :pswitch_data_2a6

    packed-switch v3, :pswitch_data_2b2

    goto/16 :goto_202

    :pswitch_70
    const-string v2, "3933"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x22

    goto/16 :goto_203

    :pswitch_7c
    const-string v2, "3932"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x21

    goto/16 :goto_203

    :pswitch_88
    const-string v2, "3931"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x20

    goto/16 :goto_203

    :pswitch_94
    const-string v2, "3930"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x1f

    goto/16 :goto_203

    :pswitch_a0
    const-string v2, "3923"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x1e

    goto/16 :goto_203

    :pswitch_ac
    const-string v2, "3922"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x1d

    goto/16 :goto_203

    :pswitch_b8
    const-string v2, "3921"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x1c

    goto/16 :goto_203

    :pswitch_c4
    const-string v2, "3920"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x1b

    goto/16 :goto_203

    :pswitch_d0
    const-string v2, "3209"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x1a

    goto/16 :goto_203

    :pswitch_dc
    const-string v2, "3208"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x19

    goto/16 :goto_203

    :pswitch_e8
    const-string v2, "3207"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x18

    goto/16 :goto_203

    :pswitch_f4
    const-string v2, "3206"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x17

    goto/16 :goto_203

    :pswitch_100
    const-string v2, "3205"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x16

    goto/16 :goto_203

    :pswitch_10c
    const-string v2, "3204"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x15

    goto/16 :goto_203

    :pswitch_118
    const-string v2, "3203"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x14

    goto/16 :goto_203

    :pswitch_124
    const-string v2, "3202"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x13

    goto/16 :goto_203

    :pswitch_130
    const-string v2, "3201"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x12

    goto/16 :goto_203

    :pswitch_13c
    const-string v2, "3200"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x11

    goto/16 :goto_203

    :pswitch_148
    const-string v2, "3109"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x10

    goto/16 :goto_203

    :pswitch_154
    const-string v2, "3108"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0xf

    goto/16 :goto_203

    :pswitch_160
    const-string v2, "3107"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0xe

    goto/16 :goto_203

    :pswitch_16c
    const-string v2, "3106"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0xd

    goto/16 :goto_203

    :pswitch_178
    const-string v2, "3105"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0xc

    goto/16 :goto_203

    :pswitch_184
    const-string v2, "3104"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0xb

    goto/16 :goto_203

    :pswitch_190
    const-string v2, "3103"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0xa

    goto/16 :goto_203

    :pswitch_19c
    const-string v2, "3102"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x9

    goto :goto_203

    :pswitch_1a7
    const-string v2, "3101"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/16 v2, 0x8

    goto :goto_203

    :pswitch_1b2
    const-string v2, "3100"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/4 v2, 0x7

    goto :goto_203

    :pswitch_1bc
    const-string v2, "11"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/4 v2, 0x3

    goto :goto_203

    :pswitch_1c6
    const-string v2, "10"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/4 v2, 0x2

    goto :goto_203

    :pswitch_1d0
    const-string v2, "01"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/4 v2, 0x1

    goto :goto_203

    :pswitch_1da
    const-string v2, "00"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/4 v2, 0x0

    goto :goto_203

    :cond_1e4
    const-string v2, "17"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/4 v2, 0x6

    goto :goto_203

    :cond_1ee
    const-string v2, "15"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/4 v2, 0x5

    goto :goto_203

    :cond_1f8
    const-string v2, "13"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    const/4 v2, 0x4

    goto :goto_203

    :cond_202
    :goto_202
    const/4 v2, -0x1

    :goto_203
    packed-switch v2, :pswitch_data_2be

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_20b
    move-object v3, v2

    move/from16 v2, v21

    move-object/from16 v15, v22

    goto/16 :goto_24

    :pswitch_212
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_21b

    const/4 v2, 0x0

    return-object v2

    :cond_21b
    const/4 v2, 0x0

    invoke-virtual {v1, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_20b

    :pswitch_22a
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v16, v1

    goto :goto_20b

    :pswitch_233
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v14, "LB"

    goto :goto_23c

    :pswitch_238
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v14, "KG"

    :goto_23c
    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    move-object v13, v1

    move-object v3, v2

    move/from16 v2, v21

    goto/16 :goto_24

    :pswitch_246
    move-object v12, v1

    goto :goto_253

    :pswitch_248
    move-object v11, v1

    goto :goto_253

    :pswitch_24a
    move-object v10, v1

    goto :goto_253

    :pswitch_24c
    move-object v9, v1

    goto :goto_253

    :pswitch_24e
    move-object v8, v1

    goto :goto_253

    :pswitch_250
    move-object v6, v1

    goto :goto_253

    :pswitch_252
    move-object v7, v1

    :goto_253
    move/from16 v2, v21

    move-object/from16 v15, v22

    const/4 v3, 0x0

    goto/16 :goto_24

    :cond_25a
    move-object/from16 v22, v15

    new-instance v1, Lcom/google/a/b/a/k;

    move-object v4, v1

    move-object/from16 v19, v0

    invoke-direct/range {v4 .. v19}, Lcom/google/a/b/a/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v1

    nop

    :pswitch_data_266
    .packed-switch 0x600
        :pswitch_1da
        :pswitch_1d0
    .end packed-switch

    :pswitch_data_26e
    .packed-switch 0x61f
        :pswitch_1c6
        :pswitch_1bc
    .end packed-switch

    :pswitch_data_276
    .packed-switch 0x17ecde
        :pswitch_1b2
        :pswitch_1a7
        :pswitch_19c
        :pswitch_190
        :pswitch_184
        :pswitch_178
        :pswitch_16c
        :pswitch_160
        :pswitch_154
        :pswitch_148
    .end packed-switch

    :pswitch_data_28e
    .packed-switch 0x17f09f
        :pswitch_13c
        :pswitch_130
        :pswitch_124
        :pswitch_118
        :pswitch_10c
        :pswitch_100
        :pswitch_f4
        :pswitch_e8
        :pswitch_dc
        :pswitch_d0
    .end packed-switch

    :pswitch_data_2a6
    .packed-switch 0x180b24
        :pswitch_c4
        :pswitch_b8
        :pswitch_ac
        :pswitch_a0
    .end packed-switch

    :pswitch_data_2b2
    .packed-switch 0x180b43
        :pswitch_94
        :pswitch_88
        :pswitch_7c
        :pswitch_70
    .end packed-switch

    :pswitch_data_2be
    .packed-switch 0x0
        :pswitch_252
        :pswitch_250
        :pswitch_24e
        :pswitch_24c
        :pswitch_24a
        :pswitch_248
        :pswitch_246
        :pswitch_238
        :pswitch_238
        :pswitch_238
        :pswitch_238
        :pswitch_238
        :pswitch_238
        :pswitch_238
        :pswitch_238
        :pswitch_238
        :pswitch_238
        :pswitch_233
        :pswitch_233
        :pswitch_233
        :pswitch_233
        :pswitch_233
        :pswitch_233
        :pswitch_233
        :pswitch_233
        :pswitch_233
        :pswitch_233
        :pswitch_22a
        :pswitch_22a
        :pswitch_22a
        :pswitch_22a
        :pswitch_212
        :pswitch_212
        :pswitch_212
        :pswitch_212
    .end packed-switch
.end method
