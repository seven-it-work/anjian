.class public Lcom/umeng/analytics/pro/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/g$a;,
        Lcom/umeng/analytics/pro/g$b;
    }
.end annotation


# static fields
.field public static final a:I = 0x801

.field public static final b:I = 0x802

.field private static c:Landroid/content/Context; = null

.field private static d:Ljava/lang/String; = null

.field private static final e:Ljava/lang/String; = "umeng+"

.field private static final f:Ljava/lang/String; = "ek__id"

.field private static final g:Ljava/lang/String; = "ek_key"


# instance fields
.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/g;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/g;->i:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/g;->j:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/g$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/umeng/analytics/pro/g;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;
    .registers 3

    invoke-static {}, Lcom/umeng/analytics/pro/g$b;->a()Lcom/umeng/analytics/pro/g;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    if-nez v1, :cond_13

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/g;->h()V

    :cond_13
    return-object v0
.end method

.method private a(Lorg/json/JSONObject;Z)Ljava/lang/String;
    .registers 23

    move-object/from16 v1, p0

    const/4 v2, 0x0

    :try_start_3
    sget-object v3, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_d} :catch_1d1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_d} :catch_1bb
    .catchall {:try_start_3 .. :try_end_d} :catchall_1b6

    :try_start_d
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v4, "select *  from __sd"

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_d .. :try_end_16} :catch_1b3
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_16} :catch_1b0
    .catchall {:try_start_d .. :try_end_16} :catchall_1ad

    if-eqz v4, :cond_19b

    :try_start_18
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    :goto_1d
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_18 .. :try_end_21} :catch_193
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_21} :catch_186
    .catchall {:try_start_18 .. :try_end_21} :catchall_18c

    if-eqz v6, :cond_145

    :try_start_23
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "__f"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "__e"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "__ii"

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_23 .. :try_end_46} :catch_193
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_46} :catch_186
    .catchall {:try_start_23 .. :try_end_46} :catchall_139

    :try_start_46
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_119

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_119

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const/4 v2, 0x0

    sub-long v14, v10, v12

    const-wide/16 v10, 0x0

    cmp-long v2, v14, v10

    if-lez v2, :cond_110

    const-string v2, "__a"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v10, "__b"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "__c"

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "__d"

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/umeng/analytics/pro/g;->h:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v13, "id"

    invoke-virtual {v6, v13, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "start_time"

    invoke-virtual {v6, v13, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "end_time"

    invoke-virtual {v6, v13, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "duration"

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_a9
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_46 .. :try_end_a9} :catch_12f
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_a9} :catch_124
    .catchall {:try_start_46 .. :try_end_a9} :catchall_139

    const/16 v16, 0x0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    sub-long v3, v14, v7

    :try_start_b1
    invoke-virtual {v6, v13, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c8

    const-string v3, "pages"

    new-instance v4, Lorg/json/JSONArray;

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c8
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_dc

    const-string v2, "autopages"

    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {v1, v10}, Lcom/umeng/analytics/pro/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_dc
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f0

    const-string v2, "traffic"

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v1, v11}, Lcom/umeng/analytics/pro/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f0
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_104

    const-string v2, "locations"

    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {v1, v12}, Lcom/umeng/analytics/pro/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_104
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_114

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_10d
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_b1 .. :try_end_10d} :catch_133
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_10d} :catch_128
    .catchall {:try_start_b1 .. :try_end_10d} :catchall_10e

    goto :goto_114

    :catchall_10e
    move-exception v0

    goto :goto_13e

    :cond_110
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    :cond_114
    :goto_114
    if-nez p2, :cond_117

    goto :goto_11d

    :cond_117
    move-object v2, v9

    goto :goto_149

    :cond_119
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    :goto_11d
    move-object v2, v9

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    goto/16 :goto_1d

    :catch_124
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    :catch_128
    move-object v2, v9

    :catch_129
    move-object/from16 v4, v17

    move-object/from16 v3, v18

    goto/16 :goto_1bd

    :catch_12f
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    :catch_133
    move-object/from16 v4, v17

    move-object/from16 v2, v18

    goto/16 :goto_1d3

    :catchall_139
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    :goto_13e
    move-object v2, v0

    move-object/from16 v4, v17

    move-object/from16 v3, v18

    goto/16 :goto_1f0

    :cond_145
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    :goto_149
    :try_start_149
    iget-object v3, v1, Lcom/umeng/analytics/pro/g;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_14f
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_149 .. :try_end_14f} :catch_181
    .catch Ljava/lang/Throwable; {:try_start_149 .. :try_end_14f} :catch_129
    .catchall {:try_start_149 .. :try_end_14f} :catchall_17b

    if-gtz v3, :cond_169

    if-eqz v18, :cond_158

    move-object/from16 v3, v18

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_158
    if-eqz v17, :cond_15f

    move-object/from16 v4, v17

    :try_start_15c
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_15f
    .catch Ljava/lang/Throwable; {:try_start_15c .. :try_end_15f} :catch_15f

    :catch_15f
    :cond_15f
    sget-object v3, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/e;->b()V

    return-object v2

    :cond_169
    move-object/from16 v4, v17

    move-object/from16 v3, v18

    :try_start_16d
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_1a0

    const-string v6, "sessions"

    move-object/from16 v7, p1

    invoke-virtual {v7, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1a0

    :catchall_17b
    move-exception v0

    move-object/from16 v4, v17

    move-object/from16 v3, v18

    goto :goto_1b9

    :catch_181
    move-object/from16 v4, v17

    move-object/from16 v3, v18

    goto :goto_198

    :catch_186
    move-object/from16 v19, v4

    move-object v4, v3

    move-object/from16 v3, v19

    goto :goto_1bd

    :catchall_18c
    move-exception v0

    move-object/from16 v19, v4

    move-object v4, v3

    move-object/from16 v3, v19

    goto :goto_1b9

    :catch_193
    move-object/from16 v19, v4

    move-object v4, v3

    move-object/from16 v3, v19

    :catch_198
    :goto_198
    move-object v9, v2

    move-object v2, v3

    goto :goto_1d3

    :cond_19b
    move-object/from16 v19, v4

    move-object v4, v3

    move-object/from16 v3, v19

    :cond_1a0
    :goto_1a0
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1a3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_16d .. :try_end_1a3} :catch_198
    .catch Ljava/lang/Throwable; {:try_start_16d .. :try_end_1a3} :catch_1bd
    .catchall {:try_start_16d .. :try_end_1a3} :catchall_1ab

    if-eqz v3, :cond_1a8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1a8
    if-eqz v4, :cond_1c7

    goto :goto_1c4

    :catchall_1ab
    move-exception v0

    goto :goto_1b9

    :catchall_1ad
    move-exception v0

    move-object v4, v3

    goto :goto_1ee

    :catch_1b0
    move-object v4, v3

    move-object v3, v2

    goto :goto_1bd

    :catch_1b3
    move-object v4, v3

    move-object v9, v2

    goto :goto_1d3

    :catchall_1b6
    move-exception v0

    move-object v3, v2

    move-object v4, v3

    :goto_1b9
    move-object v2, v0

    goto :goto_1f0

    :catch_1bb
    move-object v3, v2

    move-object v4, v3

    :catch_1bd
    :goto_1bd
    if-eqz v3, :cond_1c2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1c2
    if-eqz v4, :cond_1c7

    :goto_1c4
    :try_start_1c4
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1c7
    .catch Ljava/lang/Throwable; {:try_start_1c4 .. :try_end_1c7} :catch_1c7

    :catch_1c7
    :cond_1c7
    sget-object v3, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/e;->b()V

    return-object v2

    :catch_1d1
    move-object v4, v2

    move-object v9, v4

    :goto_1d3
    :try_start_1d3
    sget-object v3, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_1d8
    .catchall {:try_start_1d3 .. :try_end_1d8} :catchall_1ed

    if-eqz v2, :cond_1dd

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1dd
    if-eqz v4, :cond_1e2

    :try_start_1df
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1e2
    .catch Ljava/lang/Throwable; {:try_start_1df .. :try_end_1e2} :catch_1e2

    :catch_1e2
    :cond_1e2
    sget-object v2, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/e;->b()V

    move-object v2, v9

    return-object v2

    :catchall_1ed
    move-exception v0

    :goto_1ee
    move-object v3, v2

    goto :goto_1b9

    :goto_1f0
    if-eqz v3, :cond_1f5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1f5
    if-eqz v4, :cond_1fa

    :try_start_1f7
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1fa
    .catch Ljava/lang/Throwable; {:try_start_1f7 .. :try_end_1fa} :catch_1fa

    :catch_1fa
    :cond_1fa
    sget-object v3, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/e;->b()V

    throw v2
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "__d"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_37

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "select __d from __sd where __ii=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_20} :catch_e6
    .catchall {:try_start_1 .. :try_end_20} :catchall_de

    if-eqz v2, :cond_38

    :goto_22
    :try_start_22
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_38

    const-string v0, "__d"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_37
    move-object v2, v0

    :cond_38
    if-eqz v1, :cond_7c

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4a

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    :cond_4a
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7c

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "update  __sd set __d=\""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" where __ii=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_7c

    :catchall_7a
    move-exception p1

    goto :goto_e0

    :cond_7c
    :goto_7c
    const-string v0, "__c"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_b0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "update  __sd set __c=\""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" where __ii=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_b0
    const-string v0, "__f"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "update  __sd set __f=\""

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" where __ii=\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_d8
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_d8} :catch_e7
    .catchall {:try_start_22 .. :try_end_d8} :catchall_7a

    if-eqz v2, :cond_ec

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_de
    move-exception p1

    move-object v2, v0

    :goto_e0
    if-eqz v2, :cond_e5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_e5
    throw p1

    :catch_e6
    move-object v2, v0

    :catch_e7
    if-eqz v2, :cond_ec

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_ec
    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from __sd where __ii=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_20} :catch_8e
    .catchall {:try_start_1 .. :try_end_20} :catchall_86

    if-eqz v1, :cond_37

    :goto_22
    :try_start_22
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :catchall_35
    move-exception p1

    goto :goto_88

    :cond_37
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_47

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    :cond_47
    invoke-virtual {v2, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "update __sd set "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "=\""

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" where __ii=\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_7e} :catch_84
    .catchall {:try_start_22 .. :try_end_7e} :catchall_35

    :cond_7e
    if-eqz v1, :cond_93

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :catch_84
    move-object v0, v1

    goto :goto_8e

    :catchall_86
    move-exception p1

    move-object v1, v0

    :goto_88
    if-eqz v1, :cond_8d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8d
    throw p1

    :catch_8e
    :goto_8e
    if-eqz v0, :cond_93

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_93
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_b} :catch_186
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_17d
    .catchall {:try_start_1 .. :try_end_b} :catchall_179

    :try_start_b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "select *  from __et"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "select *  from __et where __i=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_29
    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_2d
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_b .. :try_end_2d} :catch_187
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_2d} :catch_17e
    .catchall {:try_start_b .. :try_end_2d} :catchall_194

    if-eqz p2, :cond_15e

    :try_start_2f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/o;->c()Ljava/lang/String;

    move-result-object v3

    :cond_41
    :goto_41
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_d9

    const-string v4, "__t"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "__i"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "__s"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_73

    const-string v7, "-1"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7a

    :cond_73
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_41

    move-object v5, v3

    :cond_7a
    const/4 v7, 0x0

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iget-object v8, p0, Lcom/umeng/analytics/pro/g;->i:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    packed-switch v4, :pswitch_data_1aa

    goto :goto_41

    :pswitch_8c
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_41

    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p0, v6}, Lcom/umeng/analytics/pro/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a6

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    goto :goto_ab

    :cond_a6
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    :goto_ab
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_41

    :pswitch_b2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_41

    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p0, v6}, Lcom/umeng/analytics/pro/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_cc

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    goto :goto_d1

    :cond_cc
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    :goto_d1
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_41

    :cond_d9
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_11a

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_e8
    :goto_e8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10f

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_e8

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_e8

    :cond_10f
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_11a

    const-string v0, "ekv"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_11a
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_15e

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_129
    :goto_129
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_150

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_129

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_129

    :cond_150
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_15e

    const-string v2, "gkv"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_15e

    :catchall_15c
    move-exception p1

    goto :goto_196

    :cond_15e
    :goto_15e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_161
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2f .. :try_end_161} :catch_177
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_161} :catch_175
    .catchall {:try_start_2f .. :try_end_161} :catchall_15c

    if-eqz p2, :cond_166

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_166
    if-eqz v1, :cond_16b

    :goto_168
    :try_start_168
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_16b
    .catch Ljava/lang/Throwable; {:try_start_168 .. :try_end_16b} :catch_16b

    :catch_16b
    :cond_16b
    sget-object p1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/e;->b()V

    return-void

    :catch_175
    move-object v0, p2

    goto :goto_17e

    :catch_177
    move-object v0, p2

    goto :goto_187

    :catchall_179
    move-exception p1

    move-object p2, v0

    move-object v1, p2

    goto :goto_196

    :catch_17d
    move-object v1, v0

    :catch_17e
    :goto_17e
    if-eqz v0, :cond_183

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_183
    if-eqz v1, :cond_16b

    goto :goto_168

    :catch_186
    move-object v1, v0

    :catch_187
    :goto_187
    :try_start_187
    sget-object p1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_18c
    .catchall {:try_start_187 .. :try_end_18c} :catchall_194

    if-eqz v0, :cond_191

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_191
    if-eqz v1, :cond_16b

    goto :goto_168

    :catchall_194
    move-exception p1

    move-object p2, v0

    :goto_196
    if-eqz p2, :cond_19b

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_19b
    if-eqz v1, :cond_1a0

    :try_start_19d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1a0
    .catch Ljava/lang/Throwable; {:try_start_19d .. :try_end_1a0} :catch_1a0

    :catch_1a0
    :cond_1a0
    sget-object p2, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/e;->b()V

    throw p1

    :pswitch_data_1aa
    .packed-switch 0x801
        :pswitch_b2
        :pswitch_8c
    .end packed-switch
.end method

.method private b(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_b} :catch_8d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_84
    .catchall {:try_start_1 .. :try_end_b} :catchall_81

    :try_start_b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "select *  from __er"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "select *  from __er where __i=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_29
    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_2d
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_b .. :try_end_2d} :catch_8e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_2d} :catch_85
    .catchall {:try_start_b .. :try_end_2d} :catchall_9b

    if-eqz p2, :cond_66

    :try_start_2f
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :cond_34
    :goto_34
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_57

    const-string v2, "__a"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0, v2}, Lcom/umeng/analytics/pro/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_34

    :cond_57
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_66

    const-string v2, "error"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_66

    :catchall_63
    move-exception p1

    move-object v0, p2

    goto :goto_9c

    :cond_66
    :goto_66
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_69
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2f .. :try_end_69} :catch_7f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_69} :catch_7d
    .catchall {:try_start_2f .. :try_end_69} :catchall_63

    if-eqz p2, :cond_6e

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_6e
    if-eqz v1, :cond_73

    :goto_70
    :try_start_70
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_73} :catch_73

    :catch_73
    :cond_73
    sget-object p1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/e;->b()V

    return-void

    :catch_7d
    move-object v0, p2

    goto :goto_85

    :catch_7f
    move-object v0, p2

    goto :goto_8e

    :catchall_81
    move-exception p1

    move-object v1, v0

    goto :goto_9c

    :catch_84
    move-object v1, v0

    :catch_85
    :goto_85
    if-eqz v0, :cond_8a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8a
    if-eqz v1, :cond_73

    goto :goto_70

    :catch_8d
    move-object v1, v0

    :catch_8e
    :goto_8e
    :try_start_8e
    sget-object p1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_93
    .catchall {:try_start_8e .. :try_end_93} :catchall_9b

    if-eqz v0, :cond_98

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_98
    if-eqz v1, :cond_73

    goto :goto_70

    :catchall_9b
    move-exception p1

    :goto_9c
    if-eqz v0, :cond_a1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a1
    if-eqz v1, :cond_a6

    :try_start_a3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_a6} :catch_a6

    :catch_a6
    :cond_a6
    sget-object p2, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/e;->b()V

    throw p1
.end method

.method private h()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/umeng/analytics/pro/g;->i()V

    iget-object v0, p0, Lcom/umeng/analytics/pro/g;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method private i()V
    .registers 10

    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d9

    sget-object v0, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ek__id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_34

    sget-object v1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getDBencryptID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "ek__id"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_34
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_80

    const/16 v3, 0x9

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    :goto_48
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_7a

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_74

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_66

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_77

    :cond_66
    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    rsub-int/lit8 v7, v7, 0xa

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_77

    :cond_74
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_77
    add-int/lit8 v6, v6, 0x1

    goto :goto_48

    :cond_7a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/analytics/pro/g;->d:Ljava/lang/String;

    :cond_80
    sget-object v1, Lcom/umeng/analytics/pro/g;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/umeng/analytics/pro/g;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/umeng/analytics/pro/g;->d:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/analytics/pro/g;->d:Ljava/lang/String;

    const-string v1, "ek_key"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ca

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ek_key"

    const-string v2, "umeng+"

    invoke-virtual {p0, v2}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_ca
    const-string v0, "umeng+"

    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d9

    invoke-virtual {p0, v5, v4}, Lcom/umeng/analytics/pro/g;->a(ZZ)V
    :try_end_d9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d9} :catch_d9

    :catch_d9
    :cond_d9
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p1

    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->encrypt([B[B)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object p1

    :catch_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Z)Lorg/json/JSONObject;
    .registers 4

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/g;->a()V

    iget-object v0, p0, Lcom/umeng/analytics/pro/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_1a

    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/g;->a(Lorg/json/JSONObject;Z)Ljava/lang/String;

    const/4 p1, 0x0

    :goto_13
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/g;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v0

    :cond_1a
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/g;->a(Lorg/json/JSONObject;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_13

    :cond_25
    return-object v0
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/umeng/analytics/pro/g;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public a(I)V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_b} :catch_48
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_42
    .catchall {:try_start_1 .. :try_end_b} :catchall_3f

    :try_start_b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-nez p1, :cond_16

    const-string p1, "delete from __dp where __ty=0"

    :goto_12
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_27

    :cond_16
    const/4 v0, 0x4

    if-ne p1, v0, :cond_21

    const-string p1, "delete from __dp where __ty=3"

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "delete from __dp where __ty=2"

    goto :goto_12

    :cond_21
    const/4 v0, 0x1

    if-ne p1, v0, :cond_27

    const-string p1, "delete from __dp where __ty=1"

    goto :goto_12

    :cond_27
    :goto_27
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2a
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_b .. :try_end_2a} :catch_3d
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_2a} :catch_3b
    .catchall {:try_start_b .. :try_end_2a} :catchall_39

    if-eqz v1, :cond_2f

    :try_start_2c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2f} :catch_2f

    :catch_2f
    :cond_2f
    :goto_2f
    sget-object p1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/e;->b()V

    return-void

    :catchall_39
    move-exception p1

    goto :goto_50

    :catch_3b
    move-object v0, v1

    goto :goto_42

    :catch_3d
    move-object v0, v1

    goto :goto_48

    :catchall_3f
    move-exception p1

    move-object v1, v0

    goto :goto_50

    :catch_42
    :goto_42
    if-eqz v0, :cond_2f

    :goto_44
    :try_start_44
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_47} :catch_2f

    goto :goto_2f

    :catch_48
    :goto_48
    :try_start_48
    sget-object p1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_3f

    if-eqz v0, :cond_2f

    goto :goto_44

    :goto_50
    if-eqz v1, :cond_55

    :try_start_52
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_55} :catch_55

    :catch_55
    :cond_55
    sget-object v0, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    throw p1
.end method

.method public a(Lorg/json/JSONArray;)V
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_b} :catch_a1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_9b
    .catchall {:try_start_1 .. :try_end_b} :catchall_98

    :try_start_b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v2, 0x0

    :goto_f
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_b .. :try_end_13} :catch_96
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_13} :catch_94
    .catchall {:try_start_b .. :try_end_13} :catchall_92

    if-ge v2, v3, :cond_80

    :try_start_15
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "__i"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_32

    const-string v6, "-1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    :cond_32
    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/analytics/pro/o;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_42

    const-string v5, "-1"

    :cond_42
    const-string v6, "__i"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "__e"

    const-string v6, "id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "__t"

    const-string v6, "__t"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "__i"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "__t"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "__s"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "__et"

    invoke-virtual {v1, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_7d} :catch_7d
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_15 .. :try_end_7d} :catch_96
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_7d} :catch_94
    .catchall {:try_start_15 .. :try_end_7d} :catchall_92

    :catch_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_80
    :try_start_80
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_83
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_80 .. :try_end_83} :catch_96
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_83} :catch_94
    .catchall {:try_start_80 .. :try_end_83} :catchall_92

    if-eqz v1, :cond_88

    :try_start_85
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_88} :catch_88

    :catch_88
    :cond_88
    :goto_88
    sget-object p1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/e;->b()V

    return-void

    :catchall_92
    move-exception p1

    goto :goto_a9

    :catch_94
    move-object v0, v1

    goto :goto_9b

    :catch_96
    move-object v0, v1

    goto :goto_a1

    :catchall_98
    move-exception p1

    move-object v1, v0

    goto :goto_a9

    :catch_9b
    :goto_9b
    if-eqz v0, :cond_88

    :goto_9d
    :try_start_9d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_a0} :catch_88

    goto :goto_88

    :catch_a1
    :goto_a1
    :try_start_a1
    sget-object p1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_a6
    .catchall {:try_start_a1 .. :try_end_a6} :catchall_98

    if-eqz v0, :cond_88

    goto :goto_9d

    :goto_a9
    if-eqz v1, :cond_ae

    :try_start_ab
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_ab .. :try_end_ae} :catch_ae

    :catch_ae
    :cond_ae
    sget-object v0, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    throw p1
.end method

.method public a(Lorg/json/JSONObject;I)V
    .registers 14

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_b} :catch_83
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_7d
    .catchall {:try_start_1 .. :try_end_b} :catchall_7a

    :try_start_b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "__ii"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "__id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x2710

    sub-long v9, v5, v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "__ii"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_34

    const-string v3, "-1"

    :cond_34
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "__ii"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "__io"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "__ty"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "__ve"

    sget-object p2, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "__dp"

    invoke-virtual {v1, p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_65
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_b .. :try_end_65} :catch_78
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_65} :catch_76
    .catchall {:try_start_b .. :try_end_65} :catchall_74

    if-eqz v1, :cond_6a

    :try_start_67
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_6a} :catch_6a

    :catch_6a
    :cond_6a
    :goto_6a
    sget-object p1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/e;->b()V

    return-void

    :catchall_74
    move-exception p1

    goto :goto_8b

    :catch_76
    move-object v0, v1

    goto :goto_7d

    :catch_78
    move-object v0, v1

    goto :goto_83

    :catchall_7a
    move-exception p1

    move-object v1, v0

    goto :goto_8b

    :catch_7d
    :goto_7d
    if-eqz v0, :cond_6a

    :goto_7f
    :try_start_7f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_82} :catch_6a

    goto :goto_6a

    :catch_83
    :goto_83
    :try_start_83
    sget-object p1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_88
    .catchall {:try_start_83 .. :try_end_88} :catchall_7a

    if-eqz v0, :cond_6a

    goto :goto_7f

    :goto_8b
    if-eqz v1, :cond_90

    :try_start_8d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_90} :catch_90

    :catch_90
    :cond_90
    sget-object p2, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/e;->b()V

    throw p1
.end method

.method public a(ZLjava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iput-object p2, p0, Lcom/umeng/analytics/pro/g;->j:Ljava/lang/String;

    sget-object v1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_d} :catch_a1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_d} :catch_9b
    .catchall {:try_start_1 .. :try_end_d} :catchall_98

    :try_start_d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_80

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete from __er where __i=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete from __et where __i=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-eqz p1, :cond_80

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "update __sd set __b=\""

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\" where __ii=\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "update __sd set __a=\""

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\" where __ii=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_80
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_83
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_d .. :try_end_83} :catch_96
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_83} :catch_94
    .catchall {:try_start_d .. :try_end_83} :catchall_92

    if-eqz v1, :cond_88

    :try_start_85
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_88} :catch_88

    :catch_88
    :cond_88
    :goto_88
    sget-object p1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/e;->b()V

    return-void

    :catchall_92
    move-exception p1

    goto :goto_a9

    :catch_94
    move-object v0, v1

    goto :goto_9b

    :catch_96
    move-object v0, v1

    goto :goto_a1

    :catchall_98
    move-exception p1

    move-object v1, v0

    goto :goto_a9

    :catch_9b
    :goto_9b
    if-eqz v0, :cond_88

    :goto_9d
    :try_start_9d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_a0} :catch_88

    goto :goto_88

    :catch_a1
    :goto_a1
    :try_start_a1
    sget-object p1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_a6
    .catchall {:try_start_a1 .. :try_end_a6} :catchall_98

    if-eqz v0, :cond_88

    goto :goto_9d

    :goto_a9
    if-eqz v1, :cond_ae

    :try_start_ab
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_ab .. :try_end_ae} :catch_ae

    :catch_ae
    :cond_ae
    sget-object p2, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/e;->b()V

    throw p1
.end method

.method public a(ZZ)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_b} :catch_6b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_65
    .catchall {:try_start_1 .. :try_end_b} :catchall_62

    :try_start_b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-eqz p2, :cond_18

    if-eqz p1, :cond_4a

    const-string p1, "delete from __sd"

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_4a

    :cond_18
    iget-object p1, p0, Lcom/umeng/analytics/pro/g;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4a

    const/4 p1, 0x0

    :goto_21
    iget-object p2, p0, Lcom/umeng/analytics/pro/g;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_4a

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "delete from __sd where __ii=\""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/umeng/analytics/pro/g;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_21

    :cond_4a
    :goto_4a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4d
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_b .. :try_end_4d} :catch_60
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_4d} :catch_5e
    .catchall {:try_start_b .. :try_end_4d} :catchall_5c

    if-eqz v1, :cond_52

    :try_start_4f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_52} :catch_52

    :catch_52
    :cond_52
    :goto_52
    sget-object p1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/e;->b()V

    return-void

    :catchall_5c
    move-exception p1

    goto :goto_73

    :catch_5e
    move-object v0, v1

    goto :goto_65

    :catch_60
    move-object v0, v1

    goto :goto_6b

    :catchall_62
    move-exception p1

    move-object v1, v0

    goto :goto_73

    :catch_65
    :goto_65
    if-eqz v0, :cond_52

    :goto_67
    :try_start_67
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_6a} :catch_52

    goto :goto_52

    :catch_6b
    :goto_6b
    :try_start_6b
    sget-object p1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_62

    if-eqz v0, :cond_52

    goto :goto_67

    :goto_73
    if-eqz v1, :cond_78

    :try_start_75
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_78} :catch_78

    :catch_78
    :cond_78
    sget-object p2, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/e;->b()V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_b} :catch_56
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_47
    .catchall {:try_start_1 .. :try_end_b} :catchall_44

    :try_start_b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "__i"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_35

    const-string p2, "__a"

    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "__t"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "__er"

    invoke-virtual {v1, p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_35
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_38
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_b .. :try_end_38} :catch_42
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_38} :catch_40
    .catchall {:try_start_b .. :try_end_38} :catchall_3e

    if-eqz v1, :cond_4c

    :try_start_3a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_4c

    :catchall_3e
    move-exception p1

    goto :goto_60

    :catch_40
    move-object v0, v1

    goto :goto_47

    :catch_42
    move-object v0, v1

    goto :goto_56

    :catchall_44
    move-exception p1

    move-object v1, v0

    goto :goto_60

    :catch_47
    :goto_47
    if-eqz v0, :cond_4c

    :goto_49
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_4c} :catch_4c

    :catch_4c
    :cond_4c
    :goto_4c
    sget-object p1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/e;->b()V

    goto :goto_5e

    :catch_56
    :goto_56
    :try_start_56
    sget-object p1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_44

    if-eqz v0, :cond_4c

    goto :goto_49

    :goto_5e
    const/4 p1, 0x0

    return p1

    :goto_60
    if-eqz v1, :cond_65

    :try_start_62
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_65} :catch_65

    :catch_65
    :cond_65
    sget-object p2, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/e;->b()V

    throw p1
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/g$a;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    :try_start_5
    sget-object v2, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_5 .. :try_end_f} :catch_a3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_f} :catch_94
    .catchall {:try_start_5 .. :try_end_f} :catchall_91

    :try_start_f
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    sget-object v3, Lcom/umeng/analytics/pro/g$a;->c:Lcom/umeng/analytics/pro/g$a;

    if-ne p3, v3, :cond_3b

    const-string p3, "__e"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "__ii"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "__e"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "__sd"

    invoke-virtual {v2, p1, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_82

    :cond_3b
    sget-object v1, Lcom/umeng/analytics/pro/g$a;->d:Lcom/umeng/analytics/pro/g$a;

    if-ne p3, v1, :cond_6a

    const-string p3, "__f"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "update __sd set __f=\""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "\" where __ii=\""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_82

    :cond_6a
    sget-object v1, Lcom/umeng/analytics/pro/g$a;->b:Lcom/umeng/analytics/pro/g$a;

    if-ne p3, v1, :cond_74

    const-string p3, "__a"

    :goto_70
    invoke-direct {p0, p1, p2, v2, p3}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_82

    :cond_74
    sget-object v1, Lcom/umeng/analytics/pro/g$a;->a:Lcom/umeng/analytics/pro/g$a;

    if-ne p3, v1, :cond_7b

    const-string p3, "__b"

    goto :goto_70

    :cond_7b
    sget-object v1, Lcom/umeng/analytics/pro/g$a;->e:Lcom/umeng/analytics/pro/g$a;

    if-ne p3, v1, :cond_82

    invoke-direct {p0, p1, p2, v2}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_82
    :goto_82
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_85
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_f .. :try_end_85} :catch_8f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_85} :catch_8d
    .catchall {:try_start_f .. :try_end_85} :catchall_8b

    if-eqz v2, :cond_99

    :try_start_87
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_99

    :catchall_8b
    move-exception p1

    goto :goto_ac

    :catch_8d
    move-object v1, v2

    goto :goto_94

    :catch_8f
    move-object v1, v2

    goto :goto_a3

    :catchall_91
    move-exception p1

    move-object v2, v1

    goto :goto_ac

    :catch_94
    :goto_94
    if-eqz v1, :cond_99

    :goto_96
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_99} :catch_99

    :catch_99
    :cond_99
    :goto_99
    sget-object p1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/e;->b()V

    return v0

    :catch_a3
    :goto_a3
    :try_start_a3
    sget-object p1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_a8
    .catchall {:try_start_a3 .. :try_end_a8} :catchall_91

    if-eqz v1, :cond_99

    goto :goto_96

    return v0

    :goto_ac
    if-eqz v2, :cond_b1

    :try_start_ae
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b1
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_b1} :catch_b1

    :catch_b1
    :cond_b1
    sget-object p2, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/e;->b()V

    throw p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p1

    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/umeng/analytics/pro/g;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {p1, v1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->decrypt([B[B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_23

    move-object p1, v0

    return-object p1

    :catch_23
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()V
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_b} :catch_71
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_6b
    .catchall {:try_start_1 .. :try_end_b} :catchall_66

    :try_start_b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_b .. :try_end_1a} :catch_64
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_1a} :catch_62
    .catchall {:try_start_b .. :try_end_1a} :catchall_60

    if-eqz v2, :cond_2b

    if-eqz v1, :cond_21

    :goto_1e
    :try_start_1e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_21} :catch_21

    :catch_21
    :cond_21
    :goto_21
    sget-object v0, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    return-void

    :cond_2b
    :try_start_2b
    const-string v2, ""

    const-string v3, "-1"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_34
    const/4 v4, 0x2

    if-ge v3, v4, :cond_5a

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "update __et set __i=\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" where __i=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_5a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5d
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2b .. :try_end_5d} :catch_64
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_5d} :catch_62
    .catchall {:try_start_2b .. :try_end_5d} :catchall_60

    if-eqz v1, :cond_21

    goto :goto_1e

    :catchall_60
    move-exception v0

    goto :goto_79

    :catch_62
    move-object v0, v1

    goto :goto_6b

    :catch_64
    move-object v0, v1

    goto :goto_71

    :catchall_66
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_79

    :catch_6b
    :goto_6b
    if-eqz v0, :cond_21

    :goto_6d
    :try_start_6d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_70} :catch_21

    goto :goto_21

    :catch_71
    :goto_71
    :try_start_71
    sget-object v1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_76
    .catchall {:try_start_71 .. :try_end_76} :catchall_66

    if-eqz v0, :cond_21

    goto :goto_6d

    :goto_79
    if-eqz v1, :cond_7e

    :try_start_7b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7e} :catch_7e

    :catch_7e
    :cond_7e
    sget-object v1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->b()V

    throw v0
.end method

.method public b(I)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_b} :catch_5d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_57
    .catchall {:try_start_1 .. :try_end_b} :catchall_54

    :try_start_b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "delete from __dp"

    const/4 v2, -0x1

    if-ne p1, v2, :cond_17

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_3c

    :cond_17
    const/4 v0, 0x1

    if-ne p1, v0, :cond_20

    const-string p1, "delete from __dp where __ty=1"

    :goto_1c
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_3c

    :cond_20
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2b

    const-string p1, "delete from __dp where __ty=3"

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "delete from __dp where __ty=2"

    goto :goto_1c

    :cond_2b
    const/4 v0, 0x3

    if-ne p1, v0, :cond_31

    const-string p1, "delete from __dp where __ty=3"

    goto :goto_1c

    :cond_31
    if-nez p1, :cond_36

    const-string p1, "delete from __dp where __ty=0"

    goto :goto_1c

    :cond_36
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3c

    const-string p1, "delete from __dp where __ty=2"

    goto :goto_1c

    :cond_3c
    :goto_3c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3f
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_b .. :try_end_3f} :catch_52
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_3f} :catch_50
    .catchall {:try_start_b .. :try_end_3f} :catchall_4e

    if-eqz v1, :cond_44

    :try_start_41
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_44} :catch_44

    :catch_44
    :cond_44
    :goto_44
    sget-object p1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/e;->b()V

    return-void

    :catchall_4e
    move-exception p1

    goto :goto_65

    :catch_50
    move-object v0, v1

    goto :goto_57

    :catch_52
    move-object v0, v1

    goto :goto_5d

    :catchall_54
    move-exception p1

    move-object v1, v0

    goto :goto_65

    :catch_57
    :goto_57
    if-eqz v0, :cond_44

    :goto_59
    :try_start_59
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_5c} :catch_44

    goto :goto_44

    :catch_5d
    :goto_5d
    :try_start_5d
    sget-object p1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_54

    if-eqz v0, :cond_44

    goto :goto_59

    :goto_65
    if-eqz v1, :cond_6a

    :try_start_67
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_6a} :catch_6a

    :catch_6a
    :cond_6a
    sget-object v0, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    throw p1
.end method

.method public c()Lorg/json/JSONObject;
    .registers 10

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    sget-object v2, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_6 .. :try_end_10} :catch_bc
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_10} :catch_a7
    .catchall {:try_start_6 .. :try_end_10} :catchall_a3

    :try_start_10
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v3, "select *  from __dp"

    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_10 .. :try_end_19} :catch_bd
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_19} :catch_a8
    .catchall {:try_start_10 .. :try_end_19} :catchall_cb

    if-eqz v3, :cond_94

    :try_start_1b
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    :cond_2a
    :goto_2a
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_94

    const-string v6, "__io"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "__ty"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_70

    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {p0, v6}, Lcom/umeng/analytics/pro/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_70

    const/4 v6, 0x2

    if-ne v7, v6, :cond_60

    :goto_5c
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_70

    :cond_60
    const/4 v6, 0x3

    if-ne v7, v6, :cond_64

    goto :goto_5c

    :cond_64
    if-nez v7, :cond_6a

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_70

    :cond_6a
    const/4 v6, 0x1

    if-ne v7, v6, :cond_70

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_70
    :goto_70
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_7b

    const-string v6, "events"

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7b
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_86

    const-string v6, "session"

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_86
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_2a

    const-string v6, "pageview"

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2a

    :catchall_92
    move-exception v0

    goto :goto_cd

    :cond_94
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_97
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1b .. :try_end_97} :catch_a1
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_97} :catch_9f
    .catchall {:try_start_1b .. :try_end_97} :catchall_92

    if-eqz v3, :cond_9c

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_9c
    if-eqz v2, :cond_b2

    goto :goto_af

    :catch_9f
    move-object v1, v3

    goto :goto_a8

    :catch_a1
    move-object v1, v3

    goto :goto_bd

    :catchall_a3
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    goto :goto_cd

    :catch_a7
    move-object v2, v1

    :catch_a8
    :goto_a8
    if-eqz v1, :cond_ad

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_ad
    if-eqz v2, :cond_b2

    :goto_af
    :try_start_af
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_af .. :try_end_b2} :catch_b2

    :catch_b2
    :cond_b2
    sget-object v1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->b()V

    return-object v0

    :catch_bc
    move-object v2, v1

    :catch_bd
    :goto_bd
    :try_start_bd
    sget-object v3, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_c2
    .catchall {:try_start_bd .. :try_end_c2} :catchall_cb

    if-eqz v1, :cond_c7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c7
    if-eqz v2, :cond_b2

    goto :goto_af

    return-object v0

    :catchall_cb
    move-exception v0

    move-object v3, v1

    :goto_cd
    if-eqz v3, :cond_d2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_d2
    if-eqz v2, :cond_d7

    :try_start_d4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_d7
    .catch Ljava/lang/Throwable; {:try_start_d4 .. :try_end_d7} :catch_d7

    :catch_d7
    :cond_d7
    sget-object v1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->b()V

    throw v0
.end method

.method public d()V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_b} :catch_61
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_5b
    .catchall {:try_start_1 .. :try_end_b} :catchall_56

    :try_start_b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v0, p0, Lcom/umeng/analytics/pro/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_39

    const/4 v0, 0x0

    :goto_17
    iget-object v2, p0, Lcom/umeng/analytics/pro/g;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_39

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete from __et where rowid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/umeng/analytics/pro/g;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_39
    iget-object v0, p0, Lcom/umeng/analytics/pro/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_41
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_b .. :try_end_41} :catch_54
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_41} :catch_52
    .catchall {:try_start_b .. :try_end_41} :catchall_50

    if-eqz v1, :cond_46

    :try_start_43
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_46} :catch_46

    :catch_46
    :cond_46
    :goto_46
    sget-object v0, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    return-void

    :catchall_50
    move-exception v0

    goto :goto_69

    :catch_52
    move-object v0, v1

    goto :goto_5b

    :catch_54
    move-object v0, v1

    goto :goto_61

    :catchall_56
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_69

    :catch_5b
    :goto_5b
    if-eqz v0, :cond_46

    :goto_5d
    :try_start_5d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_60} :catch_46

    goto :goto_46

    :catch_61
    :goto_61
    :try_start_61
    sget-object v1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_56

    if-eqz v0, :cond_46

    goto :goto_5d

    :goto_69
    if-eqz v1, :cond_6e

    :try_start_6b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6e} :catch_6e

    :catch_6e
    :cond_6e
    sget-object v1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->b()V

    throw v0
.end method

.method public e()V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_b} :catch_36
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_30
    .catchall {:try_start_1 .. :try_end_b} :catchall_2e

    :try_start_b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "delete from __er"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_b .. :try_end_16} :catch_2c
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_16} :catch_2a
    .catchall {:try_start_b .. :try_end_16} :catchall_25

    if-eqz v1, :cond_1b

    :try_start_18
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_1b

    :catch_1b
    :cond_1b
    :goto_1b
    sget-object v0, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    return-void

    :catchall_25
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_3e

    :catch_2a
    move-object v0, v1

    goto :goto_30

    :catch_2c
    move-object v0, v1

    goto :goto_36

    :catchall_2e
    move-exception v1

    goto :goto_3e

    :catch_30
    :goto_30
    if-eqz v0, :cond_1b

    :goto_32
    :try_start_32
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_35} :catch_1b

    goto :goto_1b

    :catch_36
    :goto_36
    :try_start_36
    sget-object v1, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_2e

    if-eqz v0, :cond_1b

    goto :goto_32

    :goto_3e
    if-eqz v0, :cond_43

    :try_start_40
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_43} :catch_43

    :catch_43
    :cond_43
    sget-object v0, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    throw v1
.end method

.method public f()V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/g;->b(I)V

    return-void
.end method

.method public g()V
    .registers 6

    iget-object v0, p0, Lcom/umeng/analytics/pro/g;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7a

    :try_start_9
    sget-object v0, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_9 .. :try_end_13} :catch_61
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_13} :catch_51
    .catchall {:try_start_9 .. :try_end_13} :catchall_4c

    :try_start_13
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete from __er where __i=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/umeng/analytics/pro/g;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete from __et where __i=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/umeng/analytics/pro/g;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_49
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_13 .. :try_end_49} :catch_62
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_49} :catch_52
    .catchall {:try_start_13 .. :try_end_49} :catchall_6a

    if-eqz v0, :cond_57

    goto :goto_54

    :catchall_4c
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_6b

    :catch_51
    move-object v0, v1

    :catch_52
    if-eqz v0, :cond_57

    :goto_54
    :try_start_54
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_57} :catch_57

    :catch_57
    :cond_57
    sget-object v0, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    goto :goto_7a

    :catch_61
    move-object v0, v1

    :catch_62
    :try_start_62
    sget-object v2, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_67
    .catchall {:try_start_62 .. :try_end_67} :catchall_6a

    if-eqz v0, :cond_57

    goto :goto_54

    :catchall_6a
    move-exception v1

    :goto_6b
    if-eqz v0, :cond_70

    :try_start_6d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_70} :catch_70

    :catch_70
    :cond_70
    sget-object v0, Lcom/umeng/analytics/pro/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    throw v1

    :cond_7a
    :goto_7a
    iput-object v1, p0, Lcom/umeng/analytics/pro/g;->j:Ljava/lang/String;

    return-void
.end method
