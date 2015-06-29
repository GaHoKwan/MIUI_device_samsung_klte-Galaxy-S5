.class public Lcom/miui/internal/analytics/TrackPageViewEvent;
.super Lcom/miui/internal/analytics/Event;
.source "TrackPageViewEvent.java"


# static fields
.field private static final PAGEVIEW_EVENT:Ljava/lang/String; = "_pageview_event_"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/miui/internal/analytics/Event;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/internal/analytics/TrackPageViewEvent;->mPackageName:Ljava/lang/String;

    .line 14
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/TrackPageViewEvent;->mType:Ljava/lang/Integer;

    .line 15
    const-string v0, "_pageview_event_"

    iput-object v0, p0, Lcom/miui/internal/analytics/TrackPageViewEvent;->mEventId:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/miui/internal/analytics/Event;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/miui/internal/analytics/TrackPageViewEvent;->mPackageName:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 3

    .prologue
    .line 31
    sget-object v2, Lcom/miui/internal/analytics/TrackPageViewEvent;->sDispatcher:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 32
    sget-object v2, Lcom/miui/internal/analytics/TrackPageViewEvent;->sDispatcher:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/analytics/Dispatchable;

    .line 33
    .local v0, "disp":Lcom/miui/internal/analytics/Dispatchable;
    invoke-interface {v0, p0}, Lcom/miui/internal/analytics/Dispatchable;->dispatchPageView(Lcom/miui/internal/analytics/TrackPageViewEvent;)V

    goto :goto_0

    .line 36
    .end local v0    # "disp":Lcom/miui/internal/analytics/Dispatchable;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/miui/internal/analytics/Event;->readFromParcel(Landroid/os/Parcel;)V

    .line 52
    return-void
.end method

.method public writeEvent(Lcom/miui/internal/analytics/Storable;)V
    .locals 8
    .param p1, "store"    # Lcom/miui/internal/analytics/Storable;

    .prologue
    .line 24
    if-eqz p1, :cond_0

    .line 25
    iget-object v1, p0, Lcom/miui/internal/analytics/TrackPageViewEvent;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/internal/analytics/TrackPageViewEvent;->mType:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/miui/internal/analytics/TrackPageViewEvent;->mEventId:Ljava/lang/String;

    const-string v4, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/miui/internal/analytics/TrackPageViewEvent;->mTrackTime:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/miui/internal/analytics/Storable;->writeData(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/miui/internal/analytics/Event;->writeToParcel(Landroid/os/Parcel;I)V

    .line 44
    return-void
.end method
