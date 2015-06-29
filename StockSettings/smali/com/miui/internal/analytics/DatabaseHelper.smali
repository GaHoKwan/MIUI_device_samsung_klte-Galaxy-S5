.class Lcom/miui/internal/analytics/DatabaseHelper;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"


# static fields
.field private static final CREATE_TABLE:Ljava/lang/String; = "create table analytics (_id integer primary key autoincrement,_time datetime,_status integer,package text,type integer,event_id text,param text,time text,value text)"

.field private static final DATABASE_NAME:Ljava/lang/String; = "analytics.db"

.field private static final DELETE_EXPIRED_ITEMS:Ljava/lang/String; = "delete from analytics where _time < datetime(\'now\', \'-7 days\')"

.field private static final DELETE_ITEMS:Ljava/lang/String; = "delete from analytics where _status = 1"

.field private static final INSERT_ITEM:Ljava/lang/String; = "insert into analytics values (null, datetime(\'now\'), 0, ?, ?, ?, ?, ?, ?)"

.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton",
            "<",
            "Lcom/miui/internal/analytics/DatabaseHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static final QUERY_ITEMS:Ljava/lang/String; = "select * from analytics where _status = 1"

.field private static final TABLE_NAME:Ljava/lang/String; = "analytics"

.field private static final TAG:Ljava/lang/String; = "AnalyticsDatabaseHelper"

.field private static final UPDATE_ALL_ITEMS_SATUS:Ljava/lang/String; = "update analytics set _status = 0"

.field private static final UPDATE_ITEMS_SATUS:Ljava/lang/String; = "update analytics set _status = 1 where (_time < datetime(date(datetime(\'now\'))))"

.field private static final VERSION:I = 0x2


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/miui/internal/analytics/DatabaseHelper$2;

    invoke-direct {v0}, Lcom/miui/internal/analytics/DatabaseHelper$2;-><init>()V

    sput-object v0, Lcom/miui/internal/analytics/DatabaseHelper;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/miui/internal/analytics/DatabaseHelper$1;

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "analytics.db"

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/analytics/DatabaseHelper$1;-><init>(Lcom/miui/internal/analytics/DatabaseHelper;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/miui/internal/analytics/DatabaseHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/analytics/DatabaseHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/internal/analytics/DatabaseHelper$1;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/miui/internal/analytics/DatabaseHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/internal/analytics/DatabaseHelper;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/miui/internal/analytics/DatabaseHelper;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/analytics/DatabaseHelper;

    return-object v0
.end method


# virtual methods
.method public deleteLastDispatchedEvents()V
    .locals 7

    .prologue
    .line 122
    :try_start_0
    iget-object v2, p0, Lcom/miui/internal/analytics/DatabaseHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 123
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 124
    const-string v2, "delete from analytics where _status = 1"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v2, "AnalyticsDatabaseHelper"

    const-string v3, "can\'t delete from database:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/internal/analytics/DatabaseHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Integer;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "param"    # Ljava/lang/String;
    .param p5, "trackTime"    # Ljava/lang/String;
    .param p6, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 78
    :try_start_0
    iget-object v2, p0, Lcom/miui/internal/analytics/DatabaseHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 79
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 80
    const-string v2, "insert into analytics values (null, datetime(\'now\'), 0, ?, ?, ?, ?, ?, ?)"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    const/4 v4, 0x5

    aput-object p6, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v2, "AnalyticsDatabaseHelper"

    const-string v3, "database:%s is not writable!"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/internal/analytics/DatabaseHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public query(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 91
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 93
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v4, p0, Lcom/miui/internal/analytics/DatabaseHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 96
    const-string v4, "delete from analytics where _time < datetime(\'now\', \'-7 days\')"

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    const-string v4, "update analytics set _status = 0"

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    const-string v3, "update analytics set _status = 1 where (_time < datetime(date(datetime(\'now\'))))"

    .line 100
    .local v3, "query":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update analytics set _status = 1 where (_time < datetime(date(datetime(\'now\')))) and ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    :cond_0
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    const-string v4, "select * from analytics where _status = 1"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 107
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 117
    .end local v3    # "query":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 108
    :catch_0
    move-exception v2

    .line 110
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v4, "AnalyticsDatabaseHelper"

    const-string v5, "can\'t read database:%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/miui/internal/analytics/DatabaseHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 112
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_2
    throw v4
.end method
