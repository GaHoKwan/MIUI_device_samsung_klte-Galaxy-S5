.class public Lcom/miui/internal/analytics/LogEvent;
.super Lcom/miui/internal/analytics/Event;
.source "LogEvent.java"


# instance fields
.field private mErrorClass:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/miui/internal/analytics/Event;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/internal/analytics/LogEvent;->mPackageName:Ljava/lang/String;

    .line 17
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/LogEvent;->mType:Ljava/lang/Integer;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/internal/analytics/LogEvent;->mMessage:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/internal/analytics/LogEvent;->mErrorClass:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "errorClass"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/miui/internal/analytics/Event;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/miui/internal/analytics/LogEvent;->mPackageName:Ljava/lang/String;

    .line 24
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/LogEvent;->mType:Ljava/lang/Integer;

    .line 25
    iput-object p2, p0, Lcom/miui/internal/analytics/LogEvent;->mEventId:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/miui/internal/analytics/LogEvent;->mMessage:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/miui/internal/analytics/LogEvent;->mErrorClass:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private buildParam()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/internal/analytics/LogEvent;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#ITEMSPLITTER#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/analytics/LogEvent;->mErrorClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseParam(Ljava/lang/String;)V
    .locals 3
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    const-string v1, "#ITEMSPLITTER#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "params":[Ljava/lang/String;
    array-length v1, v0

    if-le v1, v2, :cond_0

    .line 62
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/miui/internal/analytics/LogEvent;->mMessage:Ljava/lang/String;

    .line 63
    aget-object v1, v0, v2

    iput-object v1, p0, Lcom/miui/internal/analytics/LogEvent;->mErrorClass:Ljava/lang/String;

    .line 66
    .end local v0    # "params":[Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 3

    .prologue
    .line 70
    sget-object v2, Lcom/miui/internal/analytics/LogEvent;->sDispatcher:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 71
    sget-object v2, Lcom/miui/internal/analytics/LogEvent;->sDispatcher:Ljava/util/List;

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

    .line 72
    .local v0, "disp":Lcom/miui/internal/analytics/Dispatchable;
    invoke-interface {v0, p0}, Lcom/miui/internal/analytics/Dispatchable;->dispatchLog(Lcom/miui/internal/analytics/LogEvent;)V

    goto :goto_0

    .line 75
    .end local v0    # "disp":Lcom/miui/internal/analytics/Dispatchable;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public getErrorClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/internal/analytics/LogEvent;->mErrorClass:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/internal/analytics/LogEvent;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/miui/internal/analytics/Event;->readFromParcel(Landroid/os/Parcel;)V

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/LogEvent;->mMessage:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/LogEvent;->mErrorClass:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/miui/internal/analytics/Event;->restore(Landroid/database/Cursor;)V

    .line 49
    if-eqz p1, :cond_0

    .line 50
    const-string v0, "param"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/analytics/LogEvent;->parseParam(Ljava/lang/String;)V

    .line 52
    :cond_0
    return-void
.end method

.method public writeEvent(Lcom/miui/internal/analytics/Storable;)V
    .locals 8
    .param p1, "store"    # Lcom/miui/internal/analytics/Storable;

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/miui/internal/analytics/LogEvent;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/internal/analytics/LogEvent;->mType:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/miui/internal/analytics/LogEvent;->mEventId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/internal/analytics/LogEvent;->buildParam()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/miui/internal/analytics/LogEvent;->mTrackTime:J

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

    .line 43
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Lcom/miui/internal/analytics/Event;->writeToParcel(Landroid/os/Parcel;I)V

    .line 84
    iget-object v0, p0, Lcom/miui/internal/analytics/LogEvent;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/miui/internal/analytics/LogEvent;->mErrorClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return-void
.end method
