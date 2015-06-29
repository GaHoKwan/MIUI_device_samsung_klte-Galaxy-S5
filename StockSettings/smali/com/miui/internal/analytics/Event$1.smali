.class final Lcom/miui/internal/analytics/Event$1;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/analytics/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/miui/internal/analytics/Event;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/internal/analytics/Event;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/analytics/Event;

    .line 108
    .local v2, "event":Lcom/miui/internal/analytics/Event;
    invoke-virtual {v2, p1}, Lcom/miui/internal/analytics/Event;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 118
    .end local v2    # "event":Lcom/miui/internal/analytics/Event;
    :goto_0
    return-object v2

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/InstantiationException;
    const-string v3, "AnalyticsEvent"

    const-string v4, "InstantiationException catched when create event from parcel"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 112
    :catch_1
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "AnalyticsEvent"

    const-string v4, "IllegalAccessException catched when create event from parcel"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 114
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "AnalyticsEvent"

    const-string v4, "ClassNotFoundException catched when create event from parcel"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/miui/internal/analytics/Event$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/internal/analytics/Event;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/internal/analytics/Event;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 122
    new-array v0, p1, [Lcom/miui/internal/analytics/Event;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/miui/internal/analytics/Event$1;->newArray(I)[Lcom/miui/internal/analytics/Event;

    move-result-object v0

    return-object v0
.end method
