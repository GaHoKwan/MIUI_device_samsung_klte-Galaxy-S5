.class public Lmiui/widget/PictureClock;
.super Landroid/widget/LinearLayout;
.source "PictureClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/PictureClock$AmPm;
    }
.end annotation


# instance fields
.field private mAmPm:Lmiui/widget/PictureClock$AmPm;

.field private mAttached:Z

.field private mCalendar:Lmiui/date/Calendar;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLive:Z

.field private mTimeDisplay:Lmiui/widget/ImageTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/PictureClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/widget/PictureClock;->mHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Lmiui/widget/PictureClock$1;

    invoke-direct {v0, p0}, Lmiui/widget/PictureClock$1;-><init>(Lmiui/widget/PictureClock;)V

    iput-object v0, p0, Lmiui/widget/PictureClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/PictureClock;->mLive:Z

    .line 68
    return-void
.end method

.method static synthetic access$000(Lmiui/widget/PictureClock;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/widget/PictureClock;

    .prologue
    .line 30
    iget-boolean v0, p0, Lmiui/widget/PictureClock;->mLive:Z

    return v0
.end method

.method static synthetic access$102(Lmiui/widget/PictureClock;Lmiui/date/Calendar;)Lmiui/date/Calendar;
    .locals 0
    .param p0, "x0"    # Lmiui/widget/PictureClock;
    .param p1, "x1"    # Lmiui/date/Calendar;

    .prologue
    .line 30
    iput-object p1, p0, Lmiui/widget/PictureClock;->mCalendar:Lmiui/date/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lmiui/widget/PictureClock;)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/PictureClock;

    .prologue
    .line 30
    invoke-direct {p0}, Lmiui/widget/PictureClock;->updateTime()V

    return-void
.end method

.method static synthetic access$300(Lmiui/widget/PictureClock;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/PictureClock;

    .prologue
    .line 30
    iget-object v0, p0, Lmiui/widget/PictureClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private updateTime()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    iget-boolean v0, p0, Lmiui/widget/PictureClock;->mLive:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lmiui/widget/PictureClock;->mCalendar:Lmiui/date/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 121
    :cond_0
    iget-object v0, p0, Lmiui/widget/PictureClock;->mTimeDisplay:Lmiui/widget/ImageTextView;

    iget-object v3, p0, Lmiui/widget/PictureClock;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v3}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/16 v3, 0x4c

    invoke-static {v4, v5, v3}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmiui/widget/ImageTextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v3, p0, Lmiui/widget/PictureClock;->mAmPm:Lmiui/widget/PictureClock$AmPm;

    invoke-static {}, Lmiui/date/DateUtils;->is24HourFormat()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lmiui/widget/PictureClock$AmPm;->setShowAmPm(Z)V

    .line 125
    iget-object v0, p0, Lmiui/widget/PictureClock;->mAmPm:Lmiui/widget/PictureClock$AmPm;

    iget-object v3, p0, Lmiui/widget/PictureClock;->mCalendar:Lmiui/date/Calendar;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lmiui/widget/PictureClock$AmPm;->setIsMorning(Z)V

    .line 126
    return-void

    :cond_1
    move v0, v2

    .line 124
    goto :goto_0

    :cond_2
    move v1, v2

    .line 125
    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 82
    iget-boolean v1, p0, Lmiui/widget/PictureClock;->mAttached:Z

    if-eqz v1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/widget/PictureClock;->mAttached:Z

    .line 87
    iget-boolean v1, p0, Lmiui/widget/PictureClock;->mLive:Z

    if-eqz v1, :cond_1

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lmiui/widget/PictureClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/PictureClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    new-instance v1, Lmiui/date/Calendar;

    invoke-direct {v1}, Lmiui/date/Calendar;-><init>()V

    iput-object v1, p0, Lmiui/widget/PictureClock;->mCalendar:Lmiui/date/Calendar;

    .line 99
    invoke-direct {p0}, Lmiui/widget/PictureClock;->updateTime()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 106
    iget-boolean v0, p0, Lmiui/widget/PictureClock;->mAttached:Z

    if-nez v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/PictureClock;->mAttached:Z

    .line 111
    iget-boolean v0, p0, Lmiui/widget/PictureClock;->mLive:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lmiui/widget/PictureClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/PictureClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 74
    sget v0, Lcom/miui/internal/R$id;->time_display:I

    invoke-virtual {p0, v0}, Lmiui/widget/PictureClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ImageTextView;

    iput-object v0, p0, Lmiui/widget/PictureClock;->mTimeDisplay:Lmiui/widget/ImageTextView;

    .line 75
    new-instance v0, Lmiui/widget/PictureClock$AmPm;

    invoke-direct {v0, p0}, Lmiui/widget/PictureClock$AmPm;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lmiui/widget/PictureClock;->mAmPm:Lmiui/widget/PictureClock$AmPm;

    .line 76
    return-void
.end method

.method setLive(Z)V
    .locals 0
    .param p1, "live"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lmiui/widget/PictureClock;->mLive:Z

    .line 130
    return-void
.end method
