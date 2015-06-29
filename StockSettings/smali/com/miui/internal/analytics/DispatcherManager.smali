.class public Lcom/miui/internal/analytics/DispatcherManager;
.super Ljava/lang/Object;
.source "DispatcherManager.java"


# static fields
.field private static final DEVICE_IMEI:Ljava/lang/String; = "_device_imei_"

.field private static final DEVICE_INFO_EVENT:Ljava/lang/String; = "_device_info_event_"

.field private static final DEVICE_MODEL:Ljava/lang/String; = "_device_model_"

.field private static final TAG:Ljava/lang/String; = "DispatcherManager"


# instance fields
.field private mBuilder:Lcom/miui/internal/analytics/ObjectBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/internal/analytics/ObjectBuilder",
            "<",
            "Lcom/miui/internal/analytics/Dispatchable;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDispatcher:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/miui/internal/analytics/Dispatchable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEventReader:Lcom/miui/internal/analytics/EventReader;

.field private mPolicyHelper:Lcom/miui/internal/analytics/PolicyHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mDispatcher:Ljava/util/Map;

    .line 24
    new-instance v0, Lcom/miui/internal/analytics/ObjectBuilder;

    invoke-direct {v0}, Lcom/miui/internal/analytics/ObjectBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

    .line 25
    new-instance v0, Lcom/miui/internal/analytics/EventReader;

    invoke-direct {v0}, Lcom/miui/internal/analytics/EventReader;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mEventReader:Lcom/miui/internal/analytics/EventReader;

    .line 26
    new-instance v0, Lcom/miui/internal/analytics/PolicyHelper;

    invoke-direct {v0}, Lcom/miui/internal/analytics/PolicyHelper;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mPolicyHelper:Lcom/miui/internal/analytics/PolicyHelper;

    .line 36
    iput-object p1, p0, Lcom/miui/internal/analytics/DispatcherManager;->mContext:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lcom/miui/internal/analytics/DispatcherManager;->mBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

    const-class v1, Lcom/miui/internal/analytics/XiaomiDispatcher;

    const-string v2, "xiaomi"

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/analytics/ObjectBuilder;->registerClass(Ljava/lang/Class;Ljava/lang/String;)Z

    .line 38
    return-void
.end method

.method private dispatchCommonEvent(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v1, p0, Lcom/miui/internal/analytics/DispatcherManager;->mPolicyHelper:Lcom/miui/internal/analytics/PolicyHelper;

    const-string v2, "normal"

    invoke-virtual {v1, v2}, Lcom/miui/internal/analytics/PolicyHelper;->getPolicy(Ljava/lang/String;)Lcom/miui/internal/analytics/Policy;

    move-result-object v7

    .line 65
    .local v7, "policy":Lcom/miui/internal/analytics/Policy;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lmiui/telephony/TelephonyHelper;->getInstance()Lmiui/telephony/TelephonyHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, "imei":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    const-string v6, "null"

    .line 72
    :goto_0
    const-string v1, "_device_imei_"

    invoke-interface {v3, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "_device_model_"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v0, Lcom/miui/internal/analytics/TrackEvent;

    const-string v2, "_device_info_event_"

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/analytics/TrackEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    .line 76
    .local v0, "event":Lcom/miui/internal/analytics/Event;
    if-eqz v7, :cond_0

    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/net/ConnectivityHelper;->isUnmeteredNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/analytics/DispatcherManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/internal/analytics/EventUtils;->enableWrite(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v7, v0}, Lcom/miui/internal/analytics/Policy;->execute(Lcom/miui/internal/analytics/Event;)V

    .line 81
    :cond_0
    return-void

    .line 70
    .end local v0    # "event":Lcom/miui/internal/analytics/Event;
    :cond_1
    const-string v1, "MD5"

    invoke-static {v6, v1}, Lmiui/security/DigestUtils;->get(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lmiui/text/ExtraTextUtils;->toHexReadable([B)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private dispatchData(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "appPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/internal/analytics/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p2, "itemsReg":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/analytics/Item;>;"
    iget-object v5, p0, Lcom/miui/internal/analytics/DispatcherManager;->mEventReader:Lcom/miui/internal/analytics/EventReader;

    iget-object v6, p0, Lcom/miui/internal/analytics/DispatcherManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/miui/internal/analytics/EventReader;->open(Landroid/content/Context;)V

    .line 101
    iget-object v5, p0, Lcom/miui/internal/analytics/DispatcherManager;->mEventReader:Lcom/miui/internal/analytics/EventReader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "package = \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lcom/miui/internal/analytics/EventReader;->readEvents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 102
    .local v2, "events":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/analytics/Event;>;"
    const/4 v0, 0x1

    .line 104
    .local v0, "dispatched":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/analytics/Event;

    .line 105
    .local v1, "event":Lcom/miui/internal/analytics/Event;
    iget-object v5, p0, Lcom/miui/internal/analytics/DispatcherManager;->mPolicyHelper:Lcom/miui/internal/analytics/PolicyHelper;

    invoke-virtual {v1}, Lcom/miui/internal/analytics/Event;->getPolicy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/internal/analytics/PolicyHelper;->getPolicy(Ljava/lang/String;)Lcom/miui/internal/analytics/Policy;

    move-result-object v4

    .line 106
    .local v4, "policy":Lcom/miui/internal/analytics/Policy;
    if-eqz v4, :cond_0

    .line 108
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/net/ConnectivityHelper;->isUnmeteredNetworkConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/miui/internal/analytics/DispatcherManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/miui/internal/analytics/EventUtils;->enableWrite(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 110
    :cond_1
    const/4 v0, 0x0

    .line 117
    .end local v1    # "event":Lcom/miui/internal/analytics/Event;
    .end local v4    # "policy":Lcom/miui/internal/analytics/Policy;
    :cond_2
    iget-object v5, p0, Lcom/miui/internal/analytics/DispatcherManager;->mEventReader:Lcom/miui/internal/analytics/EventReader;

    invoke-virtual {v5}, Lcom/miui/internal/analytics/EventReader;->close()V

    .line 118
    if-eqz v0, :cond_3

    .line 119
    invoke-static {}, Lcom/miui/internal/analytics/DatabaseHelper;->getInstance()Lcom/miui/internal/analytics/DatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/internal/analytics/DatabaseHelper;->deleteLastDispatchedEvents()V

    .line 121
    :cond_3
    return-void

    .line 113
    .restart local v1    # "event":Lcom/miui/internal/analytics/Event;
    .restart local v4    # "policy":Lcom/miui/internal/analytics/Policy;
    :cond_4
    invoke-virtual {v4, v1}, Lcom/miui/internal/analytics/Policy;->execute(Lcom/miui/internal/analytics/Event;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatch(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "appPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/internal/analytics/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, "itemsReg":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/analytics/Item;>;"
    iget-object v2, p0, Lcom/miui/internal/analytics/DispatcherManager;->mDispatcher:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/analytics/Dispatchable;

    .line 85
    .local v0, "disp":Lcom/miui/internal/analytics/Dispatchable;
    iget-object v3, p0, Lcom/miui/internal/analytics/DispatcherManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/internal/analytics/DispatcherManager;->mDispatcher:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Lcom/miui/internal/analytics/Dispatchable;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    .end local v0    # "disp":Lcom/miui/internal/analytics/Dispatchable;
    :cond_0
    iget-object v2, p0, Lcom/miui/internal/analytics/DispatcherManager;->mPolicyHelper:Lcom/miui/internal/analytics/PolicyHelper;

    invoke-virtual {v2}, Lcom/miui/internal/analytics/PolicyHelper;->clear()V

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/analytics/DispatcherManager;->dispatchData(Ljava/lang/String;Ljava/util/List;)V

    .line 92
    iget-object v2, p0, Lcom/miui/internal/analytics/DispatcherManager;->mPolicyHelper:Lcom/miui/internal/analytics/PolicyHelper;

    invoke-virtual {v2}, Lcom/miui/internal/analytics/PolicyHelper;->end()V

    .line 94
    iget-object v2, p0, Lcom/miui/internal/analytics/DispatcherManager;->mDispatcher:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/analytics/Dispatchable;

    .line 95
    .restart local v0    # "disp":Lcom/miui/internal/analytics/Dispatchable;
    invoke-interface {v0}, Lcom/miui/internal/analytics/Dispatchable;->stop()V

    goto :goto_1

    .line 97
    .end local v0    # "disp":Lcom/miui/internal/analytics/Dispatchable;
    :cond_1
    return-void
.end method

.method public switchDispatcher(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "servers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/miui/internal/analytics/DispatcherManager;->mDispatcher:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 43
    if-eqz p1, :cond_2

    .line 44
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 45
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/internal/analytics/DispatcherManager;->mBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

    invoke-virtual {v3, v2}, Lcom/miui/internal/analytics/ObjectBuilder;->buildObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/analytics/Dispatchable;

    .line 46
    .local v0, "disp":Lcom/miui/internal/analytics/Dispatchable;
    if-nez v0, :cond_0

    .line 47
    const-string v3, "DispatcherManager"

    const-string v4, "server:%s does not exist"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 49
    :cond_0
    iget-object v3, p0, Lcom/miui/internal/analytics/DispatcherManager;->mDispatcher:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 53
    .end local v0    # "disp":Lcom/miui/internal/analytics/Dispatchable;
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 54
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/miui/internal/analytics/DispatcherManager;->mDispatcher:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Lcom/miui/internal/analytics/Event;->setDispatcher(Ljava/util/List;)V

    .line 57
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method
