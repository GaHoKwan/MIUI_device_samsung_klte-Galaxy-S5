.class public Lcom/miui/internal/server/ErrorReportService;
.super Landroid/app/IntentService;
.source "ErrorReportService.java"


# static fields
.field public static final ACTION_UPLOAD_REPORT:Ljava/lang/String; = "miui.action.upload_error_report"

.field private static final LOG_MAX_SIZE:I = 0x7d000

.field private static final PREF_KEY_LAST_UPLOAD_TIME:Ljava/lang/String; = "error_report_last_update_time"

.field private static final TAG:Ljava/lang/String; = "ErrorReportService"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "ErrorReportService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private getLastUploadTime()J
    .locals 8

    .prologue
    .line 92
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 93
    .local v4, "sp":Landroid/content/SharedPreferences;
    const-string v5, "error_report_last_update_time"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 94
    .local v0, "lastUploadTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 95
    .local v2, "now":J
    const-wide/32 v6, 0x5265c00

    rem-long v6, v2, v6

    sub-long/2addr v2, v6

    .line 96
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    return-wide v6
.end method

.method public static onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-static {p1, v1}, Lcom/miui/internal/server/Receiver;->isActionEquals(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.miui.internal.action.DAILY_ALARM"

    invoke-static {p1, v1}, Lcom/miui/internal/server/Receiver;->isActionEquals(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    :cond_0
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/net/ConnectivityHelper;->isUnmeteredNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.action.upload_error_report"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-class v1, Lcom/miui/internal/server/ErrorReportService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 42
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private saveLastUploadTime(J)V
    .locals 3
    .param p1, "lastUploadTime"    # J

    .prologue
    .line 100
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "error_report_last_update_time"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 102
    return-void
.end method

.method private uploadReport()V
    .locals 11

    .prologue
    .line 59
    invoke-static {}, Lcom/miui/internal/server/DropBoxManagerService;->getInstance()Lcom/miui/internal/server/DropBoxManagerService;

    move-result-object v0

    .line 61
    .local v0, "dropBoxService":Lcom/miui/internal/server/DropBoxManagerService;
    invoke-direct {p0}, Lcom/miui/internal/server/ErrorReportService;->getLastUploadTime()J

    move-result-wide v6

    .line 62
    .local v6, "lastUploadTime":J
    const-string v9, "fc_anr"

    invoke-virtual {v0, v9, v6, v7}, Lcom/miui/internal/server/DropBoxManagerService;->getNextEntry(Ljava/lang/String;J)Lmiui/os/DropBoxManager$Entry;

    move-result-object v2

    .line 65
    .local v2, "entry":Lmiui/os/DropBoxManager$Entry;
    :goto_0
    if-eqz v2, :cond_0

    invoke-static {p0}, Lmiui/util/ErrorReport;->isUserAllowed(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 66
    const v9, 0x7d000

    invoke-virtual {v2, v9}, Lmiui/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 67
    .local v8, "text":Ljava/lang/String;
    const/4 v3, 0x0

    .line 69
    .local v3, "js":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "js":Lorg/json/JSONObject;
    .local v4, "js":Lorg/json/JSONObject;
    move-object v3, v4

    .line 73
    .end local v4    # "js":Lorg/json/JSONObject;
    .restart local v3    # "js":Lorg/json/JSONObject;
    :goto_1
    if-eqz v3, :cond_1

    .line 74
    const/4 v9, 0x3

    invoke-static {p0, v3, v9}, Lmiui/util/ErrorReport;->sendReportRequest(Landroid/content/Context;Lorg/json/JSONObject;I)Z

    move-result v5

    .line 77
    .local v5, "sent":Z
    if-nez v5, :cond_1

    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v9

    invoke-virtual {v9}, Lmiui/net/ConnectivityHelper;->isUnmeteredNetworkConnected()Z

    move-result v9

    if-nez v9, :cond_1

    .line 78
    const-string v9, "ErrorReportService"

    const-string v10, "Stop uploading error report for free network disconnect"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v3    # "js":Lorg/json/JSONObject;
    .end local v5    # "sent":Z
    .end local v8    # "text":Ljava/lang/String;
    :cond_0
    return-void

    .line 70
    .restart local v3    # "js":Lorg/json/JSONObject;
    .restart local v8    # "text":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Lorg/json/JSONException;
    const-string v9, "ErrorReportService"

    const-string v10, "Fail to parse json"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 84
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    invoke-virtual {v2}, Lmiui/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v6

    .line 85
    invoke-direct {p0, v6, v7}, Lcom/miui/internal/server/ErrorReportService;->saveLastUploadTime(J)V

    .line 86
    invoke-virtual {v2}, Lmiui/os/DropBoxManager$Entry;->close()V

    .line 87
    const-string v9, "fc_anr"

    invoke-virtual {v0, v9, v6, v7}, Lcom/miui/internal/server/DropBoxManagerService;->getNextEntry(Ljava/lang/String;J)Lmiui/os/DropBoxManager$Entry;

    move-result-object v2

    .line 88
    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    if-nez p1, :cond_1

    const-string v0, ""

    .line 51
    .local v0, "action":Ljava/lang/String;
    :goto_0
    const-string v1, "miui.action.upload_error_report"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-static {p0}, Lmiui/util/ErrorReport;->isUserAllowed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/miui/internal/server/ErrorReportService;->uploadReport()V

    .line 56
    :cond_0
    return-void

    .line 50
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
