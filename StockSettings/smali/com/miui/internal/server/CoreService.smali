.class public final Lcom/miui/internal/server/CoreService;
.super Landroid/app/Service;
.source "CoreService.java"


# static fields
.field public static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.miui.internal.action.BIND_SERVICE"

.field public static final ACTION_DAILY_ALARM:Ljava/lang/String; = "com.miui.internal.action.DAILY_ALARM"

.field public static final EXTRA_SERVICE_NAME:Ljava/lang/String; = "extra_service_name"

.field private static sMacAddressSaved:Z


# instance fields
.field mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 74
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/server/CoreService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public static onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-static {p1, v1}, Lcom/miui/internal/server/Receiver;->isActionEquals(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    invoke-static {p0}, Lcom/miui/internal/server/CoreService;->setupDailyAlarm(Landroid/content/Context;)V

    .line 37
    invoke-static {p0}, Lcom/miui/internal/server/CoreService;->saveMacAddress(Landroid/content/Context;)V

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-static {p1, v1}, Lcom/miui/internal/server/Receiver;->isActionEquals(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const-string v1, "connected"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 40
    .local v0, "connected":Z
    if-eqz v0, :cond_0

    .line 41
    invoke-static {p0}, Lcom/miui/internal/server/CoreService;->saveMacAddress(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static saveMacAddress(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 60
    sget-boolean v2, Lcom/miui/internal/server/CoreService;->sMacAddressSaved:Z

    if-eqz v2, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/net/ConnectivityHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "macAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 66
    const-string v2, "public"

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 68
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "mac_address"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    sput-boolean v4, Lcom/miui/internal/server/CoreService;->sMacAddressSaved:Z

    goto :goto_0
.end method

.method private static setupDailyAlarm(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 48
    .local v2, "now":J
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v8, 0x401c000000000000L    # 7.0

    mul-double/2addr v4, v8

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    add-double/2addr v4, v8

    mul-double/2addr v4, v10

    mul-double/2addr v4, v10

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v8

    double-to-long v4, v4

    add-long/2addr v2, v4

    .line 50
    new-instance v7, Landroid/content/Intent;

    const-string v4, "com.miui.internal.action.DAILY_ALARM"

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const/high16 v4, 0x8000000

    invoke-static {p0, v1, v7, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 54
    .local v6, "sender":Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 56
    .local v0, "alarm":Landroid/app/AlarmManager;
    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 57
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 85
    const-string v1, "com.miui.internal.action.BIND_SERVICE"

    invoke-static {p1, v1}, Lcom/miui/internal/server/Receiver;->isActionEquals(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-string v1, "extra_service_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "serviceName":Ljava/lang/String;
    const-string v1, "DropBoxManagerService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-static {}, Lcom/miui/internal/server/DropBoxManagerService;->getInstance()Lcom/miui/internal/server/DropBoxManagerService;

    move-result-object v1

    .line 91
    .end local v0    # "serviceName":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/miui/internal/server/CoreService;->mBinder:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 80
    const/4 v0, 0x1

    return v0
.end method
