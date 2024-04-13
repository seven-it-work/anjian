.class Lcom/umeng/analytics/pro/d;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/d$a;
    }
.end annotation


# static fields
.field private static b:Landroid/content/Context;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p2, "ua.db"

    :cond_8
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/pro/d;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/d;->a()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 7

    new-instance v0, Lcom/umeng/analytics/pro/a;

    invoke-direct {v0, p1, p2}, Lcom/umeng/analytics/pro/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4, p5}, Lcom/umeng/analytics/pro/d;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/umeng/analytics/pro/d$1;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/umeng/analytics/pro/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/d;
    .registers 2

    sget-object v0, Lcom/umeng/analytics/pro/d;->b:Landroid/content/Context;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/d;->b:Landroid/content/Context;

    :cond_a
    invoke-static {}, Lcom/umeng/analytics/pro/d$a;->a()Lcom/umeng/analytics/pro/d;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    :try_start_0
    const-string v0, "create table if not exists __dp(id INTEGER primary key autoincrement, __id INTEGER, __ii TEXT, __ty INTEGER, __ve TEXT, __io TEXT)"

    iput-object v0, p0, Lcom/umeng/analytics/pro/d;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/umeng/analytics/pro/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method

.method static synthetic b()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/umeng/analytics/pro/d;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    :try_start_0
    const-string v0, "create table if not exists __er(id INTEGER primary key autoincrement, __i TEXT, __a TEXT, __t INTEGER)"

    iput-object v0, p0, Lcom/umeng/analytics/pro/d;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/umeng/analytics/pro/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    :try_start_0
    const-string v0, "create table if not exists __et(id INTEGER primary key autoincrement, __i TEXT, __e TEXT, __s TEXT, __t INTEGER)"

    iput-object v0, p0, Lcom/umeng/analytics/pro/d;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/umeng/analytics/pro/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    :try_start_0
    const-string v0, "create table if not exists __sd(id INTEGER primary key autoincrement, __ii TEXT unique, __a TEXT, __b TEXT, __c TEXT, __d TEXT, __e TEXT, __f TEXT, __g TEXT)"

    iput-object v0, p0, Lcom/umeng/analytics/pro/d;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/umeng/analytics/pro/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "__sd"

    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/f;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/d;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_f
    const-string v1, "__et"

    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/f;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/d;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1a
    const-string v1, "__er"

    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/f;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/d;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_25
    const-string v1, "__dp"

    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/f;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_30

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/d;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_30

    :catch_30
    :cond_30
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/d;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/d;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/d;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/d;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_12} :catch_22
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_1b
    .catchall {:try_start_0 .. :try_end_12} :catchall_19

    if-eqz p1, :cond_18

    :try_start_14
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_18

    return-void

    :catch_18
    :cond_18
    return-void

    :catchall_19
    move-exception v0

    goto :goto_2e

    :catch_1b
    if-eqz p1, :cond_21

    :try_start_1d
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_21

    return-void

    :catch_21
    :cond_21
    return-void

    :catch_22
    :try_start_22
    sget-object v0, Lcom/umeng/analytics/pro/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_19

    if-eqz p1, :cond_2d

    :try_start_29
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_2d

    return-void

    :catch_2d
    :cond_2d
    return-void

    :goto_2e
    if-eqz p1, :cond_33

    :try_start_30
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_33} :catch_33

    :catch_33
    :cond_33
    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method
