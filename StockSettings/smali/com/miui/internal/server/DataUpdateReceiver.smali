.class public Lcom/miui/internal/server/DataUpdateReceiver;
.super Ljava/lang/Object;
.source "DataUpdateReceiver.java"


# static fields
.field public static final ACTION_DATA_UPDATE:Ljava/lang/String; = "com.miui.internal.action.DATA_UPDATE"

.field public static final CHECK_UPDATE_ONLY_WIFI_AVAILABLE:Ljava/lang/String; = "check_update_only_wifi_available"

.field public static final CHECK_UPDATE_ONLY_WIFI_AVAILABLE_DEFAULT:I = 0x1

.field public static final LAST_UPDATE_TIME:Ljava/lang/String; = "last_update_time"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isCheckUpdateOnlyWifiAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "check_update_only_wifi_available"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 54
    .local v0, "check":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isUpdateTimeOverDay(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 91
    .local v4, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 92
    .local v0, "currentTime":J
    const-string v5, "last_update_time"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 93
    .local v2, "lastTime":J
    sub-long v6, v0, v2

    const-wide/32 v8, 0x5265c00

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    sget-boolean v1, Lmiui/os/Build;->IS_CTA_BUILD:Z

    if-eqz v1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 34
    invoke-static {p0}, Lcom/miui/internal/server/DataUpdateReceiver;->isUpdateTimeOverDay(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    invoke-static {p0}, Lcom/miui/internal/server/DataUpdateReceiver;->tryUpdate(Landroid/content/Context;)V

    goto :goto_0

    .line 38
    :cond_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "last_update_time"

    const-wide/16 v6, 0x0

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 39
    .local v2, "lastTime":J
    const-wide/32 v4, 0x5265c00

    add-long/2addr v4, v2

    invoke-static {p0, v4, v5}, Lcom/miui/internal/server/DataUpdateReceiver;->setAlarm(Landroid/content/Context;J)V

    goto :goto_0

    .line 41
    .end local v2    # "lastTime":J
    :cond_3
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 42
    invoke-static {p0}, Lcom/miui/internal/server/DataUpdateReceiver;->isUpdateTimeOverDay(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-static {p0}, Lcom/miui/internal/server/DataUpdateReceiver;->tryUpdate(Landroid/content/Context;)V

    goto :goto_0

    .line 45
    :cond_4
    const-string v1, "com.miui.internal.action.DATA_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-static {p0}, Lcom/miui/internal/server/DataUpdateReceiver;->tryUpdate(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static setAlarm(Landroid/content/Context;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "triggerAtMillis"    # J

    .prologue
    const/4 v4, 0x0

    .line 81
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/miui/internal/server/Receiver;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.miui.internal.action.DATA_UPDATE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 84
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 85
    .local v0, "alarm":Landroid/app/AlarmManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 86
    return-void
.end method

.method private static tryUpdate(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 60
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 61
    .local v2, "isUpdate":Z
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 62
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    invoke-static {p0}, Lcom/miui/internal/server/DataUpdateReceiver;->isCheckUpdateOnlyWifiAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v3

    if-nez v3, :cond_0

    .line 66
    const/4 v2, 0x1

    .line 73
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    invoke-static {p0, v4, v5}, Lcom/miui/internal/server/DataUpdateReceiver;->setAlarm(Landroid/content/Context;J)V

    .line 76
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/miui/internal/server/DataUpdateService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 78
    :cond_1
    return-void

    .line 69
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method
