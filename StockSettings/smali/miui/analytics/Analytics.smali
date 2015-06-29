.class public Lmiui/analytics/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# static fields
.field private static final DEFAULT_EVENT_VALUE:J = 0x0L

.field private static final EVENT_DEFAULT_PARAM:Ljava/lang/String; = "_event_default_param_"

.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton",
            "<",
            "Lmiui/analytics/Analytics;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_IMEI:Ljava/lang/String; = "imei"

.field private static final TAG:Ljava/lang/String; = "Analytics"

.field private static final TIMED_EVENT:Ljava/lang/String; = "_timed_event_"

.field private static final TIMED_EVENT_ID:Ljava/lang/String; = "_timed_event_id_"


# instance fields
.field private mAllEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/internal/analytics/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mPackageName:Ljava/lang/String;

.field private mTimedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/internal/analytics/TrackEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lmiui/analytics/Analytics$1;

    invoke-direct {v0}, Lmiui/analytics/Analytics$1;-><init>()V

    sput-object v0, Lmiui/analytics/Analytics;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lmiui/analytics/Analytics;->mPackageName:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lmiui/analytics/Analytics;->mContext:Landroid/content/Context;

    .line 59
    iput-object v1, p0, Lmiui/analytics/Analytics;->mTimedEvents:Ljava/util/List;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lmiui/analytics/Analytics;->mCount:I

    .line 62
    iput-object v1, p0, Lmiui/analytics/Analytics;->mAllEvents:Ljava/util/List;

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Lmiui/analytics/Analytics$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/analytics/Analytics$1;

    .prologue
    .line 46
    invoke-direct {p0}, Lmiui/analytics/Analytics;-><init>()V

    return-void
.end method

.method public static getInstance()Lmiui/analytics/Analytics;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lmiui/analytics/Analytics;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/analytics/Analytics;

    return-object v0
.end method

.method private isTrackedReady()Z
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lmiui/analytics/Analytics;->mAllEvents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 316
    const-string v0, "Analytics"

    const-string v1, "method: startSession should be called before tracking events"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v0, 0x0

    .line 319
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized endSession()V
    .locals 8

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lmiui/analytics/Analytics;->mCount:I

    if-lez v3, :cond_0

    iget v3, p0, Lmiui/analytics/Analytics;->mCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmiui/analytics/Analytics;->mCount:I

    if-nez v3, :cond_0

    .line 105
    invoke-direct {p0}, Lmiui/analytics/Analytics;->isTrackedReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 139
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 108
    :cond_1
    :try_start_1
    const-string v3, "Analytics"

    const-string v4, "end session(%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lmiui/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v3, p0, Lmiui/analytics/Analytics;->mTimedEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 110
    const/4 v3, 0x0

    iput-object v3, p0, Lmiui/analytics/Analytics;->mTimedEvents:Ljava/util/List;

    .line 112
    iget-object v3, p0, Lmiui/analytics/Analytics;->mAllEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Lcom/miui/internal/analytics/Event;

    .line 113
    .local v0, "allEvents":[Lcom/miui/internal/analytics/Event;
    iget-object v3, p0, Lmiui/analytics/Analytics;->mAllEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 114
    iget-object v1, p0, Lmiui/analytics/Analytics;->mContext:Landroid/content/Context;

    .line 115
    .local v1, "context":Landroid/content/Context;
    const/4 v3, 0x0

    iput-object v3, p0, Lmiui/analytics/Analytics;->mAllEvents:Ljava/util/List;

    .line 116
    const/4 v3, 0x0

    iput-object v3, p0, Lmiui/analytics/Analytics;->mContext:Landroid/content/Context;

    .line 118
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 119
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.miui.sdk"

    const-class v4, Lcom/miui/internal/analytics/AnalyticsService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    new-instance v3, Lmiui/analytics/Analytics$2;

    invoke-direct {v3, p0, v0, v1}, Lmiui/analytics/Analytics$2;-><init>(Lmiui/analytics/Analytics;[Lcom/miui/internal/analytics/Event;Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    .end local v0    # "allEvents":[Lcom/miui/internal/analytics/Event;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public endTimedEvent(Ljava/lang/String;)V
    .locals 10
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 282
    iget-object v6, p0, Lmiui/analytics/Analytics;->mTimedEvents:Ljava/util/List;

    if-nez v6, :cond_1

    .line 283
    const-string v6, "Analytics"

    const-string v7, "there is no timed event"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    const/4 v3, 0x0

    .line 287
    .local v3, "flag":Z
    iget-object v6, p0, Lmiui/analytics/Analytics;->mTimedEvents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/internal/analytics/TrackEvent;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 288
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/analytics/TrackEvent;

    .line 289
    .local v2, "event":Lcom/miui/internal/analytics/TrackEvent;
    invoke-virtual {v2}, Lcom/miui/internal/analytics/TrackEvent;->getEventId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 290
    const/4 v3, 0x1

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 292
    .local v0, "currentTime":J
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 293
    .local v5, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "_timed_event_id_"

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v6, "_timed_event_"

    invoke-virtual {v2}, Lcom/miui/internal/analytics/TrackEvent;->getTrackTime()J

    move-result-wide v8

    sub-long v8, v0, v8

    invoke-virtual {p0, v6, v5, v8, v9}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 295
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 299
    .end local v0    # "currentTime":J
    .end local v2    # "event":Lcom/miui/internal/analytics/TrackEvent;
    .end local v5    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    if-nez v3, :cond_0

    .line 300
    const-string v6, "Analytics"

    const-string v7, "the ended event (%s) is not timed"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTrackPageView()V
    .locals 3

    .prologue
    .line 308
    invoke-direct {p0}, Lmiui/analytics/Analytics;->isTrackedReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lmiui/analytics/Analytics;->mAllEvents:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/analytics/TrackPageViewEvent;

    iget-object v2, p0, Lmiui/analytics/Analytics;->mPackageName:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/miui/internal/analytics/TrackPageViewEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public declared-synchronized startSession(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget v0, p0, Lmiui/analytics/Analytics;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmiui/analytics/Analytics;->mCount:I

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/analytics/Analytics;->mContext:Landroid/content/Context;

    .line 90
    iget-object v0, p0, Lmiui/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/analytics/Analytics;->mPackageName:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmiui/analytics/Analytics;->mTimedEvents:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmiui/analytics/Analytics;->mAllEvents:Ljava/util/List;

    .line 96
    const-string v0, "Analytics"

    const-string v1, "start session(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmiui/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public trackError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorId"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "errorClass"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    :cond_0
    const-string v0, "Analytics"

    const-string v1, "the id or error class of logged event is null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_1
    :goto_0
    return-void

    .line 152
    :cond_2
    invoke-direct {p0}, Lmiui/analytics/Analytics;->isTrackedReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    if-nez p2, :cond_3

    .line 156
    const-string p2, ""

    .line 159
    :cond_3
    iget-object v0, p0, Lmiui/analytics/Analytics;->mAllEvents:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/analytics/LogEvent;

    iget-object v2, p0, Lmiui/analytics/Analytics;->mPackageName:Ljava/lang/String;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/miui/internal/analytics/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public trackEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 168
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/Analytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    .line 169
    return-void
.end method

.method public trackEvent(Ljava/lang/String;J)V
    .locals 6
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 178
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/Analytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    .line 179
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/Object;

    .prologue
    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 243
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "_event_default_param_"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-virtual {p0, p1, v0}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 245
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/Analytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    .line 189
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 7
    .param p1, "eventId"    # Ljava/lang/String;
    .param p3, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/Analytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    .line 200
    return-void
.end method

.method public trackTimedEvent(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 6
    .param p1, "eventId"    # Ljava/lang/String;
    .param p3, "timed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/Analytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    .line 233
    return-void
.end method

.method public trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V
    .locals 6
    .param p1, "eventId"    # Ljava/lang/String;
    .param p3, "timed"    # Z
    .param p4, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZJ)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    const-string v1, "Analytics"

    const-string v2, "the id of tracked event is null or empty"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-direct {p0}, Lmiui/analytics/Analytics;->isTrackedReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    if-nez p2, :cond_2

    .line 266
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 269
    .restart local p2    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    new-instance v0, Lcom/miui/internal/analytics/TrackEvent;

    iget-object v1, p0, Lmiui/analytics/Analytics;->mPackageName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/analytics/TrackEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    .line 270
    .local v0, "event":Lcom/miui/internal/analytics/TrackEvent;
    iget-object v1, p0, Lmiui/analytics/Analytics;->mAllEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    if-eqz p3, :cond_0

    .line 273
    iget-object v1, p0, Lmiui/analytics/Analytics;->mTimedEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public trackTimedEvent(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "timed"    # Z

    .prologue
    .line 210
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/Analytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    .line 211
    return-void
.end method

.method public trackTimedEvent(Ljava/lang/String;ZJ)V
    .locals 7
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "timed"    # Z
    .param p3, "value"    # J

    .prologue
    .line 221
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/Analytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    .line 222
    return-void
.end method
