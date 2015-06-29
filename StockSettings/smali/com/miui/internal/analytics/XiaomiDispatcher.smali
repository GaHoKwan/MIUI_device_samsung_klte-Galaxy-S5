.class public Lcom/miui/internal/analytics/XiaomiDispatcher;
.super Ljava/lang/Object;
.source "XiaomiDispatcher.java"

# interfaces
.implements Lcom/miui/internal/analytics/Dispatchable;


# static fields
.field private static final APP_PACKAGE:Ljava/lang/String; = "_app_"

.field private static final DEVICE_ID:Ljava/lang/String; = "_di_"

.field private static final EVENT_ID:Ljava/lang/String; = "_ei_"

.field private static final EVENT_TRACK_TIME:Ljava/lang/String; = "_ett_"

.field private static final EVENT_TYPE:Ljava/lang/String; = "_et_"

.field private static final EVENT_VALUE:Ljava/lang/String; = "_ev_"

.field private static final IMEI:Ljava/lang/String; = "imei"

.field private static final LOGS:Ljava/lang/String; = "_logs_"

.field private static final LOG_EVENT_CLASS:Ljava/lang/String; = "_log_event_class_"

.field private static final LOG_EVENT_MESSAGE:Ljava/lang/String; = "_log_event_message_"

.field public static final MAX_EVENT_NUM:I = 0x2710

.field private static final MIUI_VERSION:Ljava/lang/String; = "_miuiver_"

.field private static final MODEL:Ljava/lang/String; = "_mod_"

.field public static final TAG:Ljava/lang/String; = "xiaomi"


# instance fields
.field private mBase:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/miui/internal/analytics/XiaomiServer;->getInstance()Lcom/miui/internal/analytics/XiaomiServer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mValues:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mBase:Ljava/util/Map;

    .line 50
    return-void
.end method

.method private getValue(Lcom/miui/internal/analytics/Event;)Ljava/util/Map;
    .locals 4
    .param p1, "event"    # Lcom/miui/internal/analytics/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/internal/analytics/Event;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v0, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "_ei_"

    invoke-virtual {p1}, Lcom/miui/internal/analytics/Event;->getEventId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "_ett_"

    invoke-virtual {p1}, Lcom/miui/internal/analytics/Event;->getTrackTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-object v0
.end method

.method private sendEvent()V
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mValues:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mBase:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mBase:Ljava/util/Map;

    const-string v1, "_logs_"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mValues:Ljava/util/List;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    iget-object v1, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mBase:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/miui/internal/analytics/XiaomiServer;->send(Ljava/util/Map;)Z

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 138
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchEvent(Lcom/miui/internal/analytics/TrackEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/miui/internal/analytics/TrackEvent;

    .prologue
    .line 98
    iget-object v4, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mValues:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 99
    invoke-direct {p0, p1}, Lcom/miui/internal/analytics/XiaomiDispatcher;->getValue(Lcom/miui/internal/analytics/Event;)Ljava/util/Map;

    move-result-object v3

    .line 101
    .local v3, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/miui/internal/analytics/TrackEvent;->getParam()Ljava/util/Map;

    move-result-object v2

    .line 102
    .local v2, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 103
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 107
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    const-string v4, "_ev_"

    invoke-virtual {p1}, Lcom/miui/internal/analytics/TrackEvent;->getValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v4, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mValues:Ljava/util/List;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v4, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x2710

    if-lt v4, v5, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/miui/internal/analytics/XiaomiDispatcher;->sendEvent()V

    .line 113
    .end local v2    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method public dispatchLog(Lcom/miui/internal/analytics/LogEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/miui/internal/analytics/LogEvent;

    .prologue
    .line 85
    iget-object v1, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    if-eqz v1, :cond_0

    .line 86
    invoke-direct {p0, p1}, Lcom/miui/internal/analytics/XiaomiDispatcher;->getValue(Lcom/miui/internal/analytics/Event;)Ljava/util/Map;

    move-result-object v0

    .line 87
    .local v0, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "_log_event_class_"

    invoke-virtual {p1}, Lcom/miui/internal/analytics/LogEvent;->getErrorClass()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "_log_event_message_"

    invoke-virtual {p1}, Lcom/miui/internal/analytics/LogEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v1, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    invoke-virtual {v1, v0}, Lcom/miui/internal/analytics/XiaomiServer;->send(Ljava/util/Map;)Z

    .line 91
    .end local v0    # "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public dispatchPageView(Lcom/miui/internal/analytics/TrackPageViewEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/miui/internal/analytics/TrackPageViewEvent;

    .prologue
    .line 117
    iget-object v1, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    if-eqz v1, :cond_0

    .line 118
    invoke-direct {p0, p1}, Lcom/miui/internal/analytics/XiaomiDispatcher;->getValue(Lcom/miui/internal/analytics/Event;)Ljava/util/Map;

    move-result-object v0

    .line 119
    .local v0, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    invoke-virtual {v1, v0}, Lcom/miui/internal/analytics/XiaomiServer;->send(Ljava/util/Map;)Z

    .line 121
    .end local v0    # "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v2, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    invoke-virtual {v2}, Lcom/miui/internal/analytics/XiaomiServer;->init()V

    .line 56
    :try_start_0
    invoke-static {}, Lmiui/telephony/TelephonyHelper;->getInstance()Lmiui/telephony/TelephonyHelper;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "imei":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const-string v1, "null"

    .line 60
    const-string v0, "null"

    .line 67
    .local v0, "deviceId":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mBase:Ljava/util/Map;

    const-string v3, "_di_"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v2, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mBase:Ljava/util/Map;

    const-string v3, "imei"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v2, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mBase:Ljava/util/Map;

    const-string v3, "_app_"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v2, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mBase:Ljava/util/Map;

    const-string v3, "_et_"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v2, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mBase:Ljava/util/Map;

    const-string v3, "_miuiver_"

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v2, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mBase:Ljava/util/Map;

    const-string v3, "_mod_"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .end local v0    # "deviceId":Ljava/lang/String;
    .end local v1    # "imei":Ljava/lang/String;
    :goto_1
    return-void

    .line 62
    .restart local v1    # "imei":Ljava/lang/String;
    :cond_0
    const-string v2, "SHA-1"

    invoke-static {v1, v2}, Lmiui/security/DigestUtils;->get(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 64
    .restart local v0    # "deviceId":Ljava/lang/String;
    const-string v2, "MD5"

    invoke-static {v1, v2}, Lmiui/security/DigestUtils;->get(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lmiui/text/ExtraTextUtils;->toHexReadable([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 73
    .end local v0    # "deviceId":Ljava/lang/String;
    .end local v1    # "imei":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/miui/internal/analytics/XiaomiDispatcher;->sendEvent()V

    .line 80
    iget-object v0, p0, Lcom/miui/internal/analytics/XiaomiDispatcher;->mXiaomiServer:Lcom/miui/internal/analytics/XiaomiServer;

    invoke-virtual {v0}, Lcom/miui/internal/analytics/XiaomiServer;->close()V

    .line 81
    return-void
.end method
