.class public Lmiui/widget/DateTimePicker;
.super Landroid/widget/LinearLayout;
.source "DateTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/DateTimePicker$1;,
        Lmiui/widget/DateTimePicker$PickerValueChangeListener;,
        Lmiui/widget/DateTimePicker$LunarFormatter;,
        Lmiui/widget/DateTimePicker$DayFormatter;,
        Lmiui/widget/DateTimePicker$SavedState;,
        Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;
    }
.end annotation


# static fields
.field private static final DAYPICKER_ALL_ITEM_MAX_VALUE:I = 0x6

.field private static final DAYPICKER_WHEEL_ITEM_COUNT:I = 0x7

.field private static final DEFAULT_DAY_FORMATTER:Lmiui/widget/DateTimePicker$DayFormatter;

.field private static final DEFAULT_MINUTE_INTERVAL:I = 0x1

.field private static final HALF_WHEEL_ITEM_COUNT:I = 0x2

.field private static final sCalCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lmiui/date/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private static sCalendarCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lmiui/date/Calendar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCalendar:Lmiui/date/Calendar;

.field mDayDisplayValues:[Ljava/lang/String;

.field private mDayFormatter:Lmiui/widget/DateTimePicker$DayFormatter;

.field private mDayLastValue:I

.field private mDayPicker:Lmiui/widget/NumberPicker;

.field private mHourPicker:Lmiui/widget/NumberPicker;

.field private mIsLunarMode:Z

.field private mListener:Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;

.field private mLunarFormatter:Lmiui/widget/DateTimePicker$DayFormatter;

.field private mMaxDate:Lmiui/date/Calendar;

.field private mMinDate:Lmiui/date/Calendar;

.field private mMinuteDisplayValues:[Ljava/lang/String;

.field private mMinuteInterval:I

.field private mMinutePicker:Lmiui/widget/NumberPicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lmiui/widget/DateTimePicker$DayFormatter;

    invoke-direct {v0}, Lmiui/widget/DateTimePicker$DayFormatter;-><init>()V

    sput-object v0, Lmiui/widget/DateTimePicker;->DEFAULT_DAY_FORMATTER:Lmiui/widget/DateTimePicker$DayFormatter;

    .line 47
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiui/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    .line 59
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiui/widget/DateTimePicker;->sCalendarCache:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/DateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    sget v0, Lcom/miui/internal/R$attr;->dateTimePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/DateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput v7, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    .line 54
    iput-object v5, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    .line 55
    iput-object v5, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    .line 57
    iput-object v5, p0, Lmiui/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    .line 61
    iput-boolean v6, p0, Lmiui/widget/DateTimePicker;->mIsLunarMode:Z

    .line 74
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 76
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v4, Lcom/miui/internal/R$layout;->datetime_picker:I

    invoke-virtual {v2, v4, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 78
    new-instance v3, Lmiui/widget/DateTimePicker$PickerValueChangeListener;

    invoke-direct {v3, p0, v5}, Lmiui/widget/DateTimePicker$PickerValueChangeListener;-><init>(Lmiui/widget/DateTimePicker;Lmiui/widget/DateTimePicker$1;)V

    .line 80
    .local v3, "listener":Lmiui/widget/DateTimePicker$PickerValueChangeListener;
    new-instance v4, Lmiui/date/Calendar;

    invoke-direct {v4}, Lmiui/date/Calendar;-><init>()V

    iput-object v4, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    .line 81
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-direct {p0, v4, v7}, Lmiui/widget/DateTimePicker;->adjustCalendar(Lmiui/date/Calendar;Z)V

    .line 83
    sget-object v4, Lmiui/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/date/Calendar;

    .line 84
    .local v1, "cal":Lmiui/date/Calendar;
    if-nez v1, :cond_0

    .line 85
    new-instance v1, Lmiui/date/Calendar;

    .end local v1    # "cal":Lmiui/date/Calendar;
    invoke-direct {v1}, Lmiui/date/Calendar;-><init>()V

    .line 86
    .restart local v1    # "cal":Lmiui/date/Calendar;
    sget-object v4, Lmiui/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 88
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 90
    sget v4, Lcom/miui/internal/R$id;->day:I

    invoke-virtual {p0, v4}, Lmiui/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmiui/widget/NumberPicker;

    iput-object v4, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    .line 91
    sget v4, Lcom/miui/internal/R$id;->hour:I

    invoke-virtual {p0, v4}, Lmiui/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmiui/widget/NumberPicker;

    iput-object v4, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    .line 92
    sget v4, Lcom/miui/internal/R$id;->minute:I

    invoke-virtual {p0, v4}, Lmiui/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmiui/widget/NumberPicker;

    iput-object v4, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    .line 93
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v4, v3}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    .line 94
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    const/high16 v5, 0x40400000    # 3.0f

    invoke-virtual {v4, v5}, Lmiui/widget/NumberPicker;->setMaxFlingSpeedFactor(F)V

    .line 95
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v4, v3}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    .line 96
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v4, v3}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    .line 97
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v4, v6}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 98
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 99
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    sget-object v5, Lmiui/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiui/widget/NumberPicker$Formatter;

    invoke-virtual {v4, v5}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    .line 100
    sget-object v4, Lcom/miui/internal/R$styleable;->DateTimePicker:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    .local v0, "attributesArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lmiui/widget/DateTimePicker;->mIsLunarMode:Z

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->checkCurrentTime()V

    .line 106
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDayPicker()V

    .line 107
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateHourPicker()V

    .line 108
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateMinutePicker()V

    .line 109
    return-void
.end method

.method static synthetic access$100()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lmiui/widget/DateTimePicker;->sCalendarCache:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$1000(Lmiui/widget/DateTimePicker;)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/DateTimePicker;

    .prologue
    .line 24
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateHourPicker()V

    return-void
.end method

.method static synthetic access$1100(Lmiui/widget/DateTimePicker;)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/DateTimePicker;

    .prologue
    .line 24
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateMinutePicker()V

    return-void
.end method

.method static synthetic access$1200(Lmiui/widget/DateTimePicker;)Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DateTimePicker;

    .prologue
    .line 24
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mListener:Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/widget/DateTimePicker;)Lmiui/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DateTimePicker;

    .prologue
    .line 24
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/widget/DateTimePicker;)I
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DateTimePicker;

    .prologue
    .line 24
    iget v0, p0, Lmiui/widget/DateTimePicker;->mDayLastValue:I

    return v0
.end method

.method static synthetic access$302(Lmiui/widget/DateTimePicker;I)I
    .locals 0
    .param p0, "x0"    # Lmiui/widget/DateTimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lmiui/widget/DateTimePicker;->mDayLastValue:I

    return p1
.end method

.method static synthetic access$400(Lmiui/widget/DateTimePicker;)Lmiui/date/Calendar;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DateTimePicker;

    .prologue
    .line 24
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/widget/DateTimePicker;)Lmiui/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DateTimePicker;

    .prologue
    .line 24
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$600(Lmiui/widget/DateTimePicker;)Lmiui/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DateTimePicker;

    .prologue
    .line 24
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$700(Lmiui/widget/DateTimePicker;)I
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DateTimePicker;

    .prologue
    .line 24
    iget v0, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    return v0
.end method

.method static synthetic access$800(Lmiui/widget/DateTimePicker;)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/DateTimePicker;

    .prologue
    .line 24
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->checkCurrentTime()V

    return-void
.end method

.method static synthetic access$900(Lmiui/widget/DateTimePicker;)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/DateTimePicker;

    .prologue
    .line 24
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDayPicker()V

    return-void
.end method

.method private adjustCalendar(Lmiui/date/Calendar;Z)V
    .locals 4
    .param p1, "c"    # Lmiui/date/Calendar;
    .param p2, "adjustForward"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x14

    .line 112
    const/16 v1, 0x16

    invoke-virtual {p1, v1, v2}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 113
    const/16 v1, 0x15

    invoke-virtual {p1, v1, v2}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 114
    invoke-virtual {p1, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    iget v2, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    rem-int v0, v1, v2

    .line 115
    .local v0, "reminMinute":I
    if-eqz v0, :cond_0

    .line 116
    if-eqz p2, :cond_1

    .line 117
    iget v1, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    sub-int/2addr v1, v0

    invoke-virtual {p1, v3, v1}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    neg-int v1, v0

    invoke-virtual {p1, v3, v1}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_0
.end method

.method private checkCurrentTime()V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 126
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 128
    :cond_0
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 129
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 131
    :cond_1
    return-void
.end method

.method private checkDisplayeValid(Lmiui/widget/NumberPicker;II)V
    .locals 3
    .param p1, "picker"    # Lmiui/widget/NumberPicker;
    .param p2, "toMin"    # I
    .param p3, "toMax"    # I

    .prologue
    .line 280
    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "display":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    sub-int v2, p3, p2

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_0

    .line 282
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 284
    :cond_0
    return-void
.end method

.method private computeDayCount(Lmiui/date/Calendar;Lmiui/date/Calendar;)I
    .locals 8
    .param p1, "c1"    # Lmiui/date/Calendar;
    .param p2, "c2"    # Lmiui/date/Calendar;

    .prologue
    const/16 v4, 0x15

    const/16 v3, 0x14

    const/16 v2, 0x12

    const-wide/16 v6, 0x3c

    const/4 v1, 0x0

    .line 201
    invoke-virtual {p1}, Lmiui/date/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "c1":Lmiui/date/Calendar;
    check-cast p1, Lmiui/date/Calendar;

    .line 202
    .restart local p1    # "c1":Lmiui/date/Calendar;
    invoke-virtual {p2}, Lmiui/date/Calendar;->clone()Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "c2":Lmiui/date/Calendar;
    check-cast p2, Lmiui/date/Calendar;

    .line 203
    .restart local p2    # "c2":Lmiui/date/Calendar;
    invoke-virtual {p1, v2, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 204
    invoke-virtual {p1, v3, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 205
    invoke-virtual {p1, v4, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 206
    const/16 v0, 0x16

    invoke-virtual {p1, v0, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 207
    invoke-virtual {p2, v2, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 208
    invoke-virtual {p2, v3, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 209
    invoke-virtual {p2, v4, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 210
    const/16 v0, 0x16

    invoke-virtual {p2, v0, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 211
    invoke-virtual {p1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    div-long/2addr v0, v6

    div-long/2addr v0, v6

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    invoke-virtual {p2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    div-long/2addr v2, v6

    div-long/2addr v2, v6

    const-wide/16 v4, 0x18

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private formatDay(III)Ljava/lang/String;
    .locals 3
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 503
    sget-object v0, Lmiui/widget/DateTimePicker;->DEFAULT_DAY_FORMATTER:Lmiui/widget/DateTimePicker$DayFormatter;

    .line 504
    .local v0, "defulatFormatter":Lmiui/widget/DateTimePicker$DayFormatter;
    iget-boolean v2, p0, Lmiui/widget/DateTimePicker;->mIsLunarMode:Z

    if-eqz v2, :cond_1

    .line 505
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mLunarFormatter:Lmiui/widget/DateTimePicker$DayFormatter;

    if-nez v2, :cond_0

    .line 506
    new-instance v2, Lmiui/widget/DateTimePicker$LunarFormatter;

    invoke-direct {v2}, Lmiui/widget/DateTimePicker$LunarFormatter;-><init>()V

    iput-object v2, p0, Lmiui/widget/DateTimePicker;->mLunarFormatter:Lmiui/widget/DateTimePicker$DayFormatter;

    .line 508
    :cond_0
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mLunarFormatter:Lmiui/widget/DateTimePicker$DayFormatter;

    .line 510
    :cond_1
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mDayFormatter:Lmiui/widget/DateTimePicker$DayFormatter;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mDayFormatter:Lmiui/widget/DateTimePicker$DayFormatter;

    .line 511
    .local v1, "formatter":Lmiui/widget/DateTimePicker$DayFormatter;
    :goto_0
    invoke-virtual {v1, p1, p2, p3}, Lmiui/widget/DateTimePicker$DayFormatter;->formatDay(III)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .end local v1    # "formatter":Lmiui/widget/DateTimePicker$DayFormatter;
    :cond_2
    move-object v1, v0

    .line 510
    goto :goto_0
.end method

.method private updateDayPicker()V
    .locals 15

    .prologue
    const/16 v14, 0x9

    const/4 v13, 0x5

    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 215
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    if-nez v8, :cond_6

    const v3, 0x7fffffff

    .line 216
    .local v3, "daysAfterMin":I
    :goto_0
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    if-nez v8, :cond_7

    const v5, 0x7fffffff

    .line 217
    .local v5, "daysBeforeMax":I
    :goto_1
    if-gt v3, v11, :cond_8

    if-gt v5, v11, :cond_8

    .line 218
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    iget-object v9, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-direct {p0, v8, v9}, Lmiui/widget/DateTimePicker;->computeDayCount(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v4

    .line 219
    .local v4, "daysAll":I
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-direct {p0, v8, v10, v4}, Lmiui/widget/DateTimePicker;->checkDisplayeValid(Lmiui/widget/NumberPicker;II)V

    .line 220
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v8, v10}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 221
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v8, v4}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 222
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v8, v3}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 223
    iput v3, p0, Lmiui/widget/DateTimePicker;->mDayLastValue:I

    .line 224
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v8, v10}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 243
    .end local v4    # "daysAll":I
    :cond_0
    :goto_2
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v8}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result v8

    iget-object v9, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v9}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v1, v8, 0x1

    .line 244
    .local v1, "count":I
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    array-length v8, v8

    if-eq v8, v1, :cond_2

    .line 245
    :cond_1
    new-array v8, v1, [Ljava/lang/String;

    iput-object v8, p0, Lmiui/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    .line 248
    :cond_2
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v8}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v2

    .line 249
    .local v2, "cv":I
    sget-object v8, Lmiui/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/date/Calendar;

    .line 250
    .local v0, "cal":Lmiui/date/Calendar;
    if-nez v0, :cond_3

    .line 251
    new-instance v0, Lmiui/date/Calendar;

    .end local v0    # "cal":Lmiui/date/Calendar;
    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    .line 252
    .restart local v0    # "cal":Lmiui/date/Calendar;
    sget-object v8, Lmiui/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v8, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 254
    :cond_3
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v8}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 255
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    invoke-virtual {v0, v12}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v0, v13}, Lmiui/date/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v0, v14}, Lmiui/date/Calendar;->get(I)I

    move-result v11

    invoke-direct {p0, v9, v10, v11}, Lmiui/widget/DateTimePicker;->formatDay(III)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    .line 257
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_3
    const/4 v8, 0x3

    if-gt v6, v8, :cond_4

    .line 258
    const/16 v8, 0xc

    invoke-virtual {v0, v8, v12}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    .line 259
    add-int v8, v2, v6

    rem-int/lit8 v7, v8, 0x7

    .line 260
    .local v7, "index":I
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    array-length v8, v8

    if-lt v7, v8, :cond_b

    .line 266
    .end local v7    # "index":I
    :cond_4
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v8}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 267
    const/4 v6, 0x1

    :goto_4
    const/4 v8, 0x3

    if-gt v6, v8, :cond_5

    .line 268
    const/16 v8, 0xc

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    .line 269
    sub-int v8, v2, v6

    add-int/lit8 v8, v8, 0x7

    rem-int/lit8 v7, v8, 0x7

    .line 270
    .restart local v7    # "index":I
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    array-length v8, v8

    if-lt v7, v8, :cond_c

    .line 276
    .end local v7    # "index":I
    :cond_5
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    iget-object v9, p0, Lmiui/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    invoke-virtual {v8, v9}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 277
    return-void

    .line 215
    .end local v0    # "cal":Lmiui/date/Calendar;
    .end local v1    # "count":I
    .end local v2    # "cv":I
    .end local v3    # "daysAfterMin":I
    .end local v5    # "daysBeforeMax":I
    .end local v6    # "i":I
    :cond_6
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    iget-object v9, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-direct {p0, v8, v9}, Lmiui/widget/DateTimePicker;->computeDayCount(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v3

    goto/16 :goto_0

    .line 216
    .restart local v3    # "daysAfterMin":I
    :cond_7
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    iget-object v9, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-direct {p0, v8, v9}, Lmiui/widget/DateTimePicker;->computeDayCount(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v5

    goto/16 :goto_1

    .line 226
    .restart local v5    # "daysBeforeMax":I
    :cond_8
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    const/4 v9, 0x6

    invoke-direct {p0, v8, v10, v9}, Lmiui/widget/DateTimePicker;->checkDisplayeValid(Lmiui/widget/NumberPicker;II)V

    .line 227
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v8, v10}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 228
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 229
    if-gt v3, v11, :cond_9

    .line 230
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v8, v3}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 231
    iput v3, p0, Lmiui/widget/DateTimePicker;->mDayLastValue:I

    .line 232
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v8, v10}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 234
    :cond_9
    if-gt v5, v11, :cond_a

    .line 235
    rsub-int/lit8 v8, v5, 0x6

    iput v8, p0, Lmiui/widget/DateTimePicker;->mDayLastValue:I

    .line 236
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    iget v9, p0, Lmiui/widget/DateTimePicker;->mDayLastValue:I

    invoke-virtual {v8, v9}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 237
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v8, v10}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 239
    :cond_a
    if-le v3, v11, :cond_0

    if-le v5, v11, :cond_0

    .line 240
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v8, v12}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_2

    .line 263
    .restart local v0    # "cal":Lmiui/date/Calendar;
    .restart local v1    # "count":I
    .restart local v2    # "cv":I
    .restart local v6    # "i":I
    .restart local v7    # "index":I
    :cond_b
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    invoke-virtual {v0, v12}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v0, v13}, Lmiui/date/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v0, v14}, Lmiui/date/Calendar;->get(I)I

    move-result v11

    invoke-direct {p0, v9, v10, v11}, Lmiui/widget/DateTimePicker;->formatDay(III)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 257
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 273
    :cond_c
    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    invoke-virtual {v0, v12}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v0, v13}, Lmiui/date/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v0, v14}, Lmiui/date/Calendar;->get(I)I

    move-result v11

    invoke-direct {p0, v9, v10, v11}, Lmiui/widget/DateTimePicker;->formatDay(III)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 267
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4
.end method

.method private updateHourPicker()V
    .locals 8

    .prologue
    const/16 v7, 0x12

    const/4 v6, 0x0

    .line 174
    const/4 v3, 0x0

    .line 175
    .local v3, "setMinOrMax":Z
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    if-eqz v4, :cond_0

    .line 176
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-direct {p0, v4, v5}, Lmiui/widget/DateTimePicker;->computeDayCount(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v4

    if-nez v4, :cond_0

    .line 177
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v4, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    .line 178
    .local v1, "maxHour":I
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v4, v1}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 179
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v4, v6}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 180
    const/4 v3, 0x1

    .line 183
    .end local v1    # "maxHour":I
    :cond_0
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    if-eqz v4, :cond_1

    .line 184
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-direct {p0, v4, v5}, Lmiui/widget/DateTimePicker;->computeDayCount(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v4

    if-nez v4, :cond_1

    .line 185
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v4, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    .line 186
    .local v2, "minHour":I
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v4, v2}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 187
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v4, v6}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 188
    const/4 v3, 0x1

    .line 191
    .end local v2    # "minHour":I
    :cond_1
    if-nez v3, :cond_2

    .line 192
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v4, v6}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 193
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    const/16 v5, 0x17

    invoke-virtual {v4, v5}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 194
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 196
    :cond_2
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v4, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    .line 197
    .local v0, "hv":I
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v4, v0}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 198
    return-void
.end method

.method private updateMinutePicker()V
    .locals 12

    .prologue
    const/16 v11, 0x3c

    const/16 v10, 0x14

    const/16 v9, 0x12

    const/4 v8, 0x0

    .line 134
    const/4 v5, 0x0

    .line 135
    .local v5, "setMinOrMax":Z
    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    if-eqz v6, :cond_0

    .line 136
    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    iget-object v7, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-direct {p0, v6, v7}, Lmiui/widget/DateTimePicker;->computeDayCount(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v6, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v6

    iget-object v7, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v7, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 138
    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v6, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    .line 139
    .local v2, "maxMinute":I
    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v6, v8}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 140
    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    iget v7, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    div-int v7, v2, v7

    invoke-virtual {v6, v7}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 141
    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v6, v8}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 142
    const/4 v5, 0x1

    .line 145
    .end local v2    # "maxMinute":I
    :cond_0
    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    if-eqz v6, :cond_1

    .line 146
    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    iget-object v7, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-direct {p0, v6, v7}, Lmiui/widget/DateTimePicker;->computeDayCount(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v6, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v6

    iget-object v7, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v7, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 148
    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v6, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    .line 149
    .local v3, "minMinute":I
    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    iget v7, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    div-int v7, v3, v7

    invoke-virtual {v6, v7}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 150
    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v6, v8}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 151
    const/4 v5, 0x1

    .line 154
    .end local v3    # "minMinute":I
    :cond_1
    if-nez v5, :cond_2

    .line 155
    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    iget v7, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    div-int v7, v11, v7

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, v6, v8, v7}, Lmiui/widget/DateTimePicker;->checkDisplayeValid(Lmiui/widget/NumberPicker;II)V

    .line 156
    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v6, v8}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 157
    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    iget v7, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    div-int v7, v11, v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 158
    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 160
    :cond_2
    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v6}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result v6

    iget-object v7, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v7}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v0, v6, 0x1

    .line 161
    .local v0, "count":I
    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    array-length v6, v6

    if-eq v6, v0, :cond_5

    .line 162
    :cond_3
    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lmiui/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    .line 163
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 164
    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    sget-object v7, Lmiui/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiui/widget/NumberPicker$Formatter;

    iget-object v8, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v8}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v8

    add-int/2addr v8, v1

    iget v9, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    mul-int/2addr v8, v9

    invoke-interface {v7, v8}, Lmiui/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_4
    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    iget-object v7, p0, Lmiui/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    invoke-virtual {v6, v7}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 169
    .end local v1    # "i":I
    :cond_5
    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v6, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v6

    iget v7, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    div-int v4, v6, v7

    .line 170
    .local v4, "mv":I
    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v6, v4}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 171
    return-void
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lmiui/widget/DateTimePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 385
    return-void
.end method

.method public getTimeInMillis()J
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 394
    move-object v0, p1

    check-cast v0, Lmiui/widget/DateTimePicker$SavedState;

    .line 395
    .local v0, "ss":Lmiui/widget/DateTimePicker$SavedState;
    invoke-virtual {v0}, Lmiui/widget/DateTimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 396
    invoke-virtual {v0}, Lmiui/widget/DateTimePicker$SavedState;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lmiui/widget/DateTimePicker;->update(J)V

    .line 397
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 389
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 390
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lmiui/widget/DateTimePicker$SavedState;

    invoke-virtual {p0}, Lmiui/widget/DateTimePicker;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lmiui/widget/DateTimePicker$SavedState;-><init>(Landroid/os/Parcelable;J)V

    return-object v1
.end method

.method public setDayFormatter(Lmiui/widget/DateTimePicker$DayFormatter;)V
    .locals 0
    .param p1, "formatter"    # Lmiui/widget/DateTimePicker$DayFormatter;

    .prologue
    .line 489
    iput-object p1, p0, Lmiui/widget/DateTimePicker;->mDayFormatter:Lmiui/widget/DateTimePicker$DayFormatter;

    .line 490
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDayPicker()V

    .line 491
    return-void
.end method

.method public setLunarMode(Z)V
    .locals 0
    .param p1, "lunarMode"    # Z

    .prologue
    .line 498
    iput-boolean p1, p0, Lmiui/widget/DateTimePicker;->mIsLunarMode:Z

    .line 499
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDayPicker()V

    .line 500
    return-void
.end method

.method public setMaxDateTime(J)V
    .locals 5
    .param p1, "millis"    # J

    .prologue
    .line 363
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    .line 373
    :cond_0
    :goto_0
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->checkCurrentTime()V

    .line 374
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDayPicker()V

    .line 375
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateHourPicker()V

    .line 376
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateMinutePicker()V

    .line 377
    return-void

    .line 366
    :cond_1
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    .line 367
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 368
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lmiui/widget/DateTimePicker;->adjustCalendar(Lmiui/date/Calendar;Z)V

    .line 369
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 370
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    goto :goto_0
.end method

.method public setMinDateTime(J)V
    .locals 5
    .param p1, "millis"    # J

    .prologue
    const/4 v2, 0x1

    .line 339
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    .line 352
    :cond_0
    :goto_0
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->checkCurrentTime()V

    .line 353
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDayPicker()V

    .line 354
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateHourPicker()V

    .line 355
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateMinutePicker()V

    .line 356
    return-void

    .line 342
    :cond_1
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    .line 343
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 344
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 345
    :cond_2
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    .line 347
    :cond_3
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-direct {p0, v0, v2}, Lmiui/widget/DateTimePicker;->adjustCalendar(Lmiui/date/Calendar;Z)V

    .line 348
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 349
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    goto :goto_0
.end method

.method public setMinuteInterval(I)V
    .locals 2
    .param p1, "minuteInterval"    # I

    .prologue
    .line 301
    iget v0, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    if-ne v0, p1, :cond_0

    .line 310
    :goto_0
    return-void

    .line 305
    :cond_0
    iput p1, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    .line 306
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmiui/widget/DateTimePicker;->adjustCalendar(Lmiui/date/Calendar;Z)V

    .line 308
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->checkCurrentTime()V

    .line 309
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateMinutePicker()V

    goto :goto_0
.end method

.method public setOnTimeChangedListener(Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;)V
    .locals 0
    .param p1, "l"    # Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;

    .prologue
    .line 292
    iput-object p1, p0, Lmiui/widget/DateTimePicker;->mListener:Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;

    .line 293
    return-void
.end method

.method public update(J)V
    .locals 3
    .param p1, "timeInMillis"    # J

    .prologue
    .line 318
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 319
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmiui/widget/DateTimePicker;->adjustCalendar(Lmiui/date/Calendar;Z)V

    .line 320
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->checkCurrentTime()V

    .line 321
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDayPicker()V

    .line 322
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateHourPicker()V

    .line 323
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateMinutePicker()V

    .line 324
    return-void
.end method
