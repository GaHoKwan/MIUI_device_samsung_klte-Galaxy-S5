.class public Lmiui/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/TimePicker$SavedState;,
        Lmiui/widget/TimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final NO_OP_CHANGE_LISTENER:Lmiui/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmSpinner:Lmiui/widget/NumberPicker;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mHourSpinner:Lmiui/widget/NumberPicker;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Lmiui/widget/NumberPicker;

.field private mOnTimeChangedListener:Lmiui/widget/TimePicker$OnTimeChangedListener;

.field private mTempCalendar:Lmiui/date/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lmiui/widget/TimePicker$1;

    invoke-direct {v0}, Lmiui/widget/TimePicker$1;-><init>()V

    sput-object v0, Lmiui/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Lmiui/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    const/4 v7, 0x1

    iput-boolean v7, p0, Lmiui/widget/TimePicker;->mIsEnabled:Z

    .line 98
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {p0, v7}, Lmiui/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 100
    sget v5, Lcom/miui/internal/R$layout;->time_picker:I

    .line 102
    .local v5, "layoutResourceId":I
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 104
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const/4 v7, 0x1

    invoke-virtual {v4, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 107
    sget v7, Lcom/miui/internal/R$id;->hour:I

    invoke-virtual {p0, v7}, Lmiui/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lmiui/widget/NumberPicker;

    iput-object v7, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    .line 108
    iget-object v7, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    new-instance v8, Lmiui/widget/TimePicker$2;

    invoke-direct {v8, p0}, Lmiui/widget/TimePicker$2;-><init>(Lmiui/widget/TimePicker;)V

    invoke-virtual {v7, v8}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    .line 120
    iget-object v7, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    sget v8, Lcom/miui/internal/R$id;->numberpicker_input:I

    invoke-virtual {v7, v8}, Lmiui/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 121
    .local v3, "hourSpinnerInput":Landroid/widget/EditText;
    const/4 v7, 0x5

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 124
    sget v7, Lcom/miui/internal/R$id;->minute:I

    invoke-virtual {p0, v7}, Lmiui/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lmiui/widget/NumberPicker;

    iput-object v7, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    .line 125
    iget-object v7, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 126
    iget-object v7, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 127
    iget-object v7, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    const-wide/16 v8, 0x64

    invoke-virtual {v7, v8, v9}, Lmiui/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 128
    iget-object v7, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    sget-object v8, Lmiui/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiui/widget/NumberPicker$Formatter;

    invoke-virtual {v7, v8}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    .line 129
    iget-object v7, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    new-instance v8, Lmiui/widget/TimePicker$3;

    invoke-direct {v8, p0}, Lmiui/widget/TimePicker$3;-><init>(Lmiui/widget/TimePicker;)V

    invoke-virtual {v7, v8}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    .line 134
    iget-object v7, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    sget v8, Lcom/miui/internal/R$id;->numberpicker_input:I

    invoke-virtual {v7, v8}, Lmiui/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 135
    .local v6, "minuteSpinnerInput":Landroid/widget/EditText;
    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 138
    sget v7, Lcom/miui/internal/R$id;->amPm:I

    invoke-virtual {p0, v7}, Lmiui/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 139
    .local v2, "amPmView":Landroid/view/View;
    instance-of v7, v2, Landroid/widget/Button;

    if-eqz v7, :cond_3

    .line 140
    const/4 v7, 0x0

    iput-object v7, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    move-object v7, v2

    .line 141
    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lmiui/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 142
    iget-object v7, p0, Lmiui/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    new-instance v8, Lmiui/widget/TimePicker$4;

    invoke-direct {v8, p0}, Lmiui/widget/TimePicker$4;-><init>(Lmiui/widget/TimePicker;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    :goto_0
    invoke-direct {p0}, Lmiui/widget/TimePicker;->isAmPmAtStart()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 170
    sget v7, Lcom/miui/internal/R$id;->timePickerLayout:I

    invoke-virtual {p0, v7}, Lmiui/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 171
    .local v0, "amPmParent":Landroid/view/ViewGroup;
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 172
    const/4 v7, 0x0

    invoke-virtual {v0, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 176
    .end local v0    # "amPmParent":Landroid/view/ViewGroup;
    :cond_0
    invoke-direct {p0}, Lmiui/widget/TimePicker;->updateHourControl()V

    .line 177
    invoke-direct {p0}, Lmiui/widget/TimePicker;->updateAmPmControl()V

    .line 179
    sget-object v7, Lmiui/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Lmiui/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0, v7}, Lmiui/widget/TimePicker;->setOnTimeChangedListener(Lmiui/widget/TimePicker$OnTimeChangedListener;)V

    .line 182
    iget-object v7, p0, Lmiui/widget/TimePicker;->mTempCalendar:Lmiui/date/Calendar;

    const/16 v8, 0x12

    invoke-virtual {v7, v8}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v7}, Lmiui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 183
    iget-object v7, p0, Lmiui/widget/TimePicker;->mTempCalendar:Lmiui/date/Calendar;

    const/16 v8, 0x14

    invoke-virtual {v7, v8}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v7}, Lmiui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 185
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 186
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lmiui/widget/TimePicker;->setEnabled(Z)V

    .line 190
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getImportantForAccessibility()I

    move-result v7

    if-nez v7, :cond_2

    .line 191
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lmiui/widget/TimePicker;->setImportantForAccessibility(I)V

    .line 193
    :cond_2
    return-void

    .line 151
    :cond_3
    const/4 v7, 0x0

    iput-object v7, p0, Lmiui/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    move-object v7, v2

    .line 152
    check-cast v7, Lmiui/widget/NumberPicker;

    iput-object v7, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    .line 153
    iget-object v7, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 154
    iget-object v7, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 155
    iget-object v7, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v8

    invoke-virtual {v8}, Lmiui/date/CalendarFormatSymbols;->getAmPms()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 156
    iget-object v7, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    new-instance v8, Lmiui/widget/TimePicker$5;

    invoke-direct {v8, p0}, Lmiui/widget/TimePicker$5;-><init>(Lmiui/widget/TimePicker;)V

    invoke-virtual {v7, v8}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    .line 164
    iget-object v7, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    sget v8, Lcom/miui/internal/R$id;->numberpicker_input:I

    invoke-virtual {v7, v8}, Lmiui/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 165
    .local v1, "amPmSpinnerInput":Landroid/widget/EditText;
    const/4 v7, 0x6

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lmiui/widget/TimePicker;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/widget/TimePicker;

    .prologue
    .line 31
    iget-boolean v0, p0, Lmiui/widget/TimePicker;->mIsAm:Z

    return v0
.end method

.method static synthetic access$002(Lmiui/widget/TimePicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/widget/TimePicker;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lmiui/widget/TimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$100(Lmiui/widget/TimePicker;)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/TimePicker;

    .prologue
    .line 31
    invoke-direct {p0}, Lmiui/widget/TimePicker;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$200(Lmiui/widget/TimePicker;)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/TimePicker;

    .prologue
    .line 31
    invoke-direct {p0}, Lmiui/widget/TimePicker;->onTimeChanged()V

    return-void
.end method

.method private isAmPmAtStart()Z
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$string;->fmt_time_12hour_pm:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private onTimeChanged()V
    .locals 3

    .prologue
    .line 468
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 469
    iget-object v0, p0, Lmiui/widget/TimePicker;->mOnTimeChangedListener:Lmiui/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lmiui/widget/TimePicker;->mOnTimeChangedListener:Lmiui/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lmiui/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lmiui/widget/TimePicker;II)V

    .line 472
    :cond_0
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 232
    iget-object v0, p0, Lmiui/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iput-object p1, p0, Lmiui/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 236
    iget-object v0, p0, Lmiui/widget/TimePicker;->mTempCalendar:Lmiui/date/Calendar;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/widget/TimePicker;->mTempCalendar:Lmiui/date/Calendar;

    goto :goto_0
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .prologue
    .line 475
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 476
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 479
    :cond_0
    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 448
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 449
    iget-object v1, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v3}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    .line 464
    :goto_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lmiui/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 465
    return-void

    .line 452
    :cond_0
    iget-object v1, p0, Lmiui/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 455
    :cond_1
    iget-boolean v2, p0, Lmiui/widget/TimePicker;->mIsAm:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 456
    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    if-eqz v2, :cond_3

    .line 457
    iget-object v2, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v2, v0}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 458
    iget-object v2, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v2, v1}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    goto :goto_0

    .line 455
    .end local v0    # "index":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 460
    .restart local v0    # "index":I
    :cond_3
    iget-object v2, p0, Lmiui/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/date/CalendarFormatSymbols;->getAmPms()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v2, p0, Lmiui/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateHourControl()V
    .locals 2

    .prologue
    .line 436
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 438
    iget-object v0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 439
    iget-object v0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    sget-object v1, Lmiui/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiui/widget/NumberPicker$Formatter;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    .line 445
    :goto_0
    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 442
    iget-object v0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 443
    iget-object v0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 403
    invoke-virtual {p0, p1}, Lmiui/widget/TimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 404
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 316
    iget-object v1, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v0

    .line 317
    .local v0, "currentHour":I
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 322
    :goto_0
    return-object v1

    .line 319
    :cond_0
    iget-boolean v1, p0, Lmiui/widget/TimePicker;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 320
    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 322
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lmiui/widget/TimePicker;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lmiui/widget/TimePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 223
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lmiui/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 224
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 425
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 426
    const-class v0, Lmiui/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 427
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 431
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 432
    const-class v0, Lmiui/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 433
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 409
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 411
    const/16 v0, 0xc

    .line 412
    .local v0, "flags":I
    iget-boolean v2, p0, Lmiui/widget/TimePicker;->mIs24HourView:Z

    if-eqz v2, :cond_0

    .line 413
    or-int/lit8 v0, v0, 0x20

    .line 417
    :goto_0
    iget-object v2, p0, Lmiui/widget/TimePicker;->mTempCalendar:Lmiui/date/Calendar;

    const/16 v3, 0x12

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 418
    iget-object v2, p0, Lmiui/widget/TimePicker;->mTempCalendar:Lmiui/date/Calendar;

    const/16 v3, 0x14

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 419
    iget-object v2, p0, Lmiui/widget/TimePicker;->mTempCalendar:Lmiui/date/Calendar;

    invoke-virtual {v2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    return-void

    .line 415
    .end local v1    # "selectedDateUtterance":Ljava/lang/String;
    :cond_0
    or-int/lit8 v0, v0, 0x10

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 297
    move-object v0, p1

    check-cast v0, Lmiui/widget/TimePicker$SavedState;

    .line 298
    .local v0, "ss":Lmiui/widget/TimePicker$SavedState;
    invoke-virtual {v0}, Lmiui/widget/TimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 299
    invoke-virtual {v0}, Lmiui/widget/TimePicker$SavedState;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 300
    invoke-virtual {v0}, Lmiui/widget/TimePicker$SavedState;->getMinute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 301
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 291
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 292
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lmiui/widget/TimePicker$SavedState;

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lmiui/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILmiui/widget/TimePicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    const/16 v1, 0xc

    .line 331
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 336
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/TimePicker;->mIsAm:Z

    .line 338
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 339
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 347
    :cond_2
    :goto_1
    invoke-direct {p0}, Lmiui/widget/TimePicker;->updateAmPmControl()V

    .line 349
    :cond_3
    iget-object v0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 350
    invoke-direct {p0}, Lmiui/widget/TimePicker;->onTimeChanged()V

    goto :goto_0

    .line 342
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/TimePicker;->mIsAm:Z

    .line 343
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 344
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    .line 389
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 393
    invoke-direct {p0}, Lmiui/widget/TimePicker;->onTimeChanged()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 201
    iget-boolean v0, p0, Lmiui/widget/TimePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 205
    iget-object v0, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setEnabled(Z)V

    .line 206
    iget-object v0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setEnabled(Z)V

    .line 207
    iget-object v0, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setEnabled(Z)V

    .line 212
    :goto_1
    iput-boolean p1, p0, Lmiui/widget/TimePicker;->mIsEnabled:Z

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lmiui/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    .line 359
    iget-boolean v1, p0, Lmiui/widget/TimePicker;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 369
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lmiui/widget/TimePicker;->mIs24HourView:Z

    .line 364
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 365
    .local v0, "currentHour":I
    invoke-direct {p0}, Lmiui/widget/TimePicker;->updateHourControl()V

    .line 367
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 368
    invoke-direct {p0}, Lmiui/widget/TimePicker;->updateAmPmControl()V

    goto :goto_0
.end method

.method public setOnTimeChangedListener(Lmiui/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Lmiui/widget/TimePicker$OnTimeChangedListener;

    .prologue
    .line 309
    iput-object p1, p0, Lmiui/widget/TimePicker;->mOnTimeChangedListener:Lmiui/widget/TimePicker$OnTimeChangedListener;

    .line 310
    return-void
.end method
