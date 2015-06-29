.class Lcom/miui/internal/analytics/UploadManager$UploadAnalyticsTask;
.super Landroid/os/AsyncTask;
.source "UploadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/analytics/UploadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UploadAnalyticsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/internal/analytics/UploadManager$UploadAnalyticsTask;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/miui/internal/analytics/UploadManager$UploadAnalyticsTask;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private static dayCompare(JJ)Z
    .locals 4
    .param p0, "curTime"    # J
    .param p2, "oldTime"    # J

    .prologue
    .line 54
    sub-long v0, p0, p2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/miui/internal/analytics/UploadManager$UploadAnalyticsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v10, 0x0

    .line 60
    sget-object v6, Lcom/miui/internal/analytics/UploadManager$UploadAnalyticsTask;->sLock:Ljava/lang/Object;

    monitor-enter v6

    .line 61
    :try_start_0
    iget-object v5, p0, Lcom/miui/internal/analytics/UploadManager$UploadAnalyticsTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 63
    .local v4, "pref":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 64
    .local v0, "current":J
    const-string v5, "last_collect_analytics_data"

    const-wide/16 v8, 0x0

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Lcom/miui/internal/analytics/UploadManager$UploadAnalyticsTask;->dayCompare(JJ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 65
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v7, "last_collect_analytics_data"

    invoke-interface {v5, v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 68
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.COLLECT_ANALYTICS_DATA"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    iget-object v5, p0, Lcom/miui/internal/analytics/UploadManager$UploadAnalyticsTask;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 73
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v5, p0, Lcom/miui/internal/analytics/UploadManager$UploadAnalyticsTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/miui/internal/analytics/EventUtils;->enableWrite(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/net/ConnectivityHelper;->isUnmeteredNetworkConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "last_upload_usage_app"

    const-wide/16 v8, 0x0

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Lcom/miui/internal/analytics/UploadManager$UploadAnalyticsTask;->dayCompare(JJ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 76
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v7, "last_upload_usage_app"

    invoke-interface {v5, v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    new-instance v2, Lcom/miui/internal/analytics/DispatcherHelper;

    iget-object v5, p0, Lcom/miui/internal/analytics/UploadManager$UploadAnalyticsTask;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/miui/internal/analytics/DispatcherHelper;-><init>(Landroid/content/Context;)V

    .line 78
    .local v2, "dispatcherHelper":Lcom/miui/internal/analytics/DispatcherHelper;
    invoke-virtual {v2}, Lcom/miui/internal/analytics/DispatcherHelper;->dispatch()V

    .line 80
    .end local v2    # "dispatcherHelper":Lcom/miui/internal/analytics/DispatcherHelper;
    :cond_1
    monitor-exit v6

    .line 82
    return-object v10

    .line 80
    .end local v0    # "current":J
    .end local v4    # "pref":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method
