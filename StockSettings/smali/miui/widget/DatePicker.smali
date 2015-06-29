.class public Lmiui/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/DatePicker$SavedState;,
        Lmiui/widget/DatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = false

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final sChineseDays:[Ljava/lang/String;

.field private static final sChineseLeapMonthMark:Ljava/lang/String;

.field private static final sChineseLeapYearMonths:[Ljava/lang/String;

.field private static final sChineseMonths:[Ljava/lang/String;


# instance fields
.field private mCurrentDate:Lmiui/date/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private mDateFormatOrder:[C

.field private final mDaySpinner:Lmiui/widget/NumberPicker;

.field private mIsEnabled:Z

.field private mIsLunarMode:Z

.field private mMaxDate:Lmiui/date/Calendar;

.field private mMinDate:Lmiui/date/Calendar;

.field private final mMonthSpinner:Lmiui/widget/NumberPicker;

.field private mNumberOfMonths:I

.field private mOnDateChangedListener:Lmiui/widget/DatePicker$OnDateChangedListener;

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Lmiui/date/Calendar;

.field private final mYearSpinner:Lmiui/widget/NumberPicker;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 45
    const-class v2, Lmiui/widget/DatePicker;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lmiui/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    .line 75
    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/date/CalendarFormatSymbols;->getChineseDays()[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lmiui/widget/DatePicker;->sChineseDays:[Ljava/lang/String;

    .line 76
    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/date/CalendarFormatSymbols;->getChineseMonths()[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lmiui/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 79
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lmiui/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lmiui/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/miui/internal/R$string;->chinese_month:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    sget-object v2, Lmiui/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    sput-object v2, Lmiui/widget/DatePicker;->sChineseLeapYearMonths:[Ljava/lang/String;

    .line 84
    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/date/CalendarFormatSymbols;->getChineseLeapMonths()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sput-object v2, Lmiui/widget/DatePicker;->sChineseLeapMonthMark:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 123
    sget v0, Lcom/miui/internal/R$attr;->datePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 127
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "MM/dd/yyyy"

    invoke-direct {v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/widget/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    .line 98
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmiui/widget/DatePicker;->mIsEnabled:Z

    .line 100
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    .line 129
    new-instance v4, Lmiui/date/Calendar;

    invoke-direct {v4}, Lmiui/date/Calendar;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    .line 130
    new-instance v4, Lmiui/date/Calendar;

    invoke-direct {v4}, Lmiui/date/Calendar;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    .line 131
    new-instance v4, Lmiui/date/Calendar;

    invoke-direct {v4}, Lmiui/date/Calendar;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    .line 132
    new-instance v4, Lmiui/date/Calendar;

    invoke-direct {v4}, Lmiui/date/Calendar;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    .line 134
    sget-object v4, Lcom/miui/internal/R$styleable;->DatePicker:[I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v4, v2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 136
    .local v14, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v4, 0x6

    const/4 v6, 0x1

    invoke-virtual {v14, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v24

    .line 138
    .local v24, "spinnersShown":Z
    const/4 v4, 0x4

    const/16 v6, 0x76c

    invoke-virtual {v14, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 140
    .local v5, "startYear":I
    const/4 v4, 0x5

    const/16 v6, 0x834

    invoke-virtual {v14, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 141
    .local v15, "endYear":I
    const/16 v4, 0x8

    invoke-virtual {v14, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 142
    .local v19, "minDate":Ljava/lang/String;
    const/16 v4, 0x9

    invoke-virtual {v14, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 143
    .local v18, "maxDate":Ljava/lang/String;
    sget v17, Lcom/miui/internal/R$layout;->date_picker:I

    .line 144
    .local v17, "layoutResourceId":I
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v14, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    .line 145
    const/4 v4, 0x1

    const/4 v6, 0x1

    invoke-virtual {v14, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v23

    .line 146
    .local v23, "showYear":Z
    const/4 v4, 0x2

    const/4 v6, 0x1

    invoke-virtual {v14, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    .line 147
    .local v22, "showMonth":Z
    const/4 v4, 0x3

    const/4 v6, 0x1

    invoke-virtual {v14, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    .line 148
    .local v21, "showDay":Z
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmiui/widget/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 153
    const-string v4, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 155
    .local v16, "inflater":Landroid/view/LayoutInflater;
    const/4 v4, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 157
    new-instance v20, Lmiui/widget/DatePicker$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmiui/widget/DatePicker$1;-><init>(Lmiui/widget/DatePicker;)V

    .line 180
    .local v20, "onChangeListener":Lmiui/widget/NumberPicker$OnValueChangeListener;
    sget v4, Lcom/miui/internal/R$id;->pickers:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 183
    sget v4, Lcom/miui/internal/R$id;->day:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmiui/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    .line 184
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    sget-object v6, Lmiui/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiui/widget/NumberPicker$Formatter;

    invoke-virtual {v4, v6}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Lmiui/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 186
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    .line 187
    if-nez v21, :cond_0

    .line 188
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    .line 192
    :cond_0
    sget v4, Lcom/miui/internal/R$id;->month:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmiui/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    .line 193
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 194
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/widget/DatePicker;->mNumberOfMonths:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 195
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v4, v6}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Lmiui/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 197
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    .line 198
    if-nez v22, :cond_1

    .line 199
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    .line 203
    :cond_1
    sget v4, Lcom/miui/internal/R$id;->year:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmiui/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    .line 204
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Lmiui/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 205
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    .line 206
    if-nez v23, :cond_2

    .line 207
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    .line 212
    :cond_2
    if-nez v24, :cond_6

    .line 213
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/widget/DatePicker;->setSpinnersShown(Z)V

    .line 219
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 220
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 221
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lmiui/widget/DatePicker;->parseDate(Ljava/lang/String;Lmiui/date/Calendar;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 222
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    .line 227
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    invoke-virtual {v4}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lmiui/widget/DatePicker;->setMinDate(J)V

    .line 230
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 231
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 232
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4}, Lmiui/widget/DatePicker;->parseDate(Ljava/lang/String;Lmiui/date/Calendar;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 233
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    const/16 v8, 0xb

    const/16 v9, 0x1f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v7, v15

    invoke-virtual/range {v6 .. v13}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    .line 238
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    invoke-virtual {v4}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lmiui/widget/DatePicker;->setMaxDate(J)V

    .line 241
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 242
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7, v8}, Lmiui/widget/DatePicker;->init(IIILmiui/widget/DatePicker$OnDateChangedListener;)V

    .line 246
    invoke-direct/range {p0 .. p0}, Lmiui/widget/DatePicker;->reorderSpinners()V

    .line 249
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/DatePicker;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_5

    .line 250
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/widget/DatePicker;->setImportantForAccessibility(I)V

    .line 252
    :cond_5
    return-void

    .line 215
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lmiui/widget/DatePicker;->setSpinnersShown(Z)V

    goto/16 :goto_0

    .line 225
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    goto/16 :goto_1

    .line 236
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    const/16 v8, 0xb

    const/16 v9, 0x1f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v7, v15

    invoke-virtual/range {v6 .. v13}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    goto :goto_2
.end method

.method static synthetic access$000(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DatePicker;

    .prologue
    .line 43
    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DatePicker;

    .prologue
    .line 43
    iget-object v0, p0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DatePicker;

    .prologue
    .line 43
    iget-object v0, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/widget/DatePicker;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DatePicker;

    .prologue
    .line 43
    iget-boolean v0, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    return v0
.end method

.method static synthetic access$400(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DatePicker;

    .prologue
    .line 43
    iget-object v0, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DatePicker;

    .prologue
    .line 43
    iget-object v0, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$600(Lmiui/widget/DatePicker;III)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/DatePicker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/DatePicker;->setDate(III)V

    return-void
.end method

.method static synthetic access$700(Lmiui/widget/DatePicker;)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/DatePicker;

    .prologue
    .line 43
    invoke-direct {p0}, Lmiui/widget/DatePicker;->resetMonthsDisplayedValues()V

    return-void
.end method

.method static synthetic access$800(Lmiui/widget/DatePicker;)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/DatePicker;

    .prologue
    .line 43
    invoke-direct {p0}, Lmiui/widget/DatePicker;->updateSpinners()V

    return-void
.end method

.method static synthetic access$900(Lmiui/widget/DatePicker;)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/DatePicker;

    .prologue
    .line 43
    invoke-direct {p0}, Lmiui/widget/DatePicker;->notifyDateChanged()V

    return-void
.end method

.method private isNewDate(III)Z
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v0, 0x1

    .line 574
    iget-object v1, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-ne v1, p3, :cond_0

    iget-object v1, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDateChanged()V
    .locals 6

    .prologue
    .line 692
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/widget/DatePicker;->sendAccessibilityEvent(I)V

    .line 693
    iget-object v0, p0, Lmiui/widget/DatePicker;->mOnDateChangedListener:Lmiui/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lmiui/widget/DatePicker;->mOnDateChangedListener:Lmiui/widget/DatePicker$OnDateChangedListener;

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    iget-boolean v5, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lmiui/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lmiui/widget/DatePicker;IIIZ)V

    .line 696
    :cond_0
    return-void
.end method

.method private parseDate(Ljava/lang/String;Lmiui/date/Calendar;)Z
    .locals 4
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Lmiui/date/Calendar;

    .prologue
    .line 565
    :try_start_0
    iget-object v1, p0, Lmiui/widget/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    const/4 v1, 0x1

    .line 569
    :goto_0
    return v1

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Ljava/text/ParseException;
    sget-object v1, Lmiui/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MM/dd/yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reorderSpinners()V
    .locals 5

    .prologue
    .line 472
    iget-object v3, p0, Lmiui/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 474
    iget-object v3, p0, Lmiui/widget/DatePicker;->mDateFormatOrder:[C

    if-nez v3, :cond_0

    .line 475
    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    .line 479
    .local v1, "order":[C
    :goto_0
    array-length v2, v1

    .line 480
    .local v2, "spinnerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 481
    aget-char v3, v1, v0

    sparse-switch v3, :sswitch_data_0

    .line 495
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 477
    .end local v0    # "i":I
    .end local v1    # "order":[C
    .end local v2    # "spinnerCount":I
    :cond_0
    iget-object v1, p0, Lmiui/widget/DatePicker;->mDateFormatOrder:[C

    .restart local v1    # "order":[C
    goto :goto_0

    .line 483
    .restart local v0    # "i":I
    .restart local v2    # "spinnerCount":I
    :sswitch_0
    iget-object v3, p0, Lmiui/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 484
    iget-object v3, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lmiui/widget/DatePicker;->setImeOptions(Lmiui/widget/NumberPicker;II)V

    .line 480
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 487
    :sswitch_1
    iget-object v3, p0, Lmiui/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 488
    iget-object v3, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lmiui/widget/DatePicker;->setImeOptions(Lmiui/widget/NumberPicker;II)V

    goto :goto_2

    .line 491
    :sswitch_2
    iget-object v3, p0, Lmiui/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 492
    iget-object v3, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lmiui/widget/DatePicker;->setImeOptions(Lmiui/widget/NumberPicker;II)V

    goto :goto_2

    .line 498
    :cond_1
    return-void

    .line 481
    nop

    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch
.end method

.method private resetMonthsDisplayedValues()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 443
    iget-boolean v2, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v2, :cond_2

    .line 444
    iget-object v2, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v2}, Lmiui/date/Calendar;->getChineseLeapMonth()I

    move-result v1

    .line 445
    .local v1, "leapMonth":I
    if-gez v1, :cond_1

    .line 446
    sget-object v2, Lmiui/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    iput-object v2, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 464
    .end local v1    # "leapMonth":I
    :cond_0
    :goto_0
    return-void

    .line 448
    .restart local v1    # "leapMonth":I
    :cond_1
    sget-object v2, Lmiui/widget/DatePicker;->sChineseLeapYearMonths:[Ljava/lang/String;

    iput-object v2, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 449
    sget-object v2, Lmiui/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    iget-object v3, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    sget-object v2, Lmiui/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    iget-object v3, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    sget-object v5, Lmiui/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    array-length v5, v5

    sub-int/2addr v5, v1

    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 452
    iget-object v2, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lmiui/widget/DatePicker;->sChineseLeapMonthMark:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v6, v1, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_0

    .line 455
    .end local v1    # "leapMonth":I
    :cond_2
    const-string v2, "en"

    iget-object v3, p0, Lmiui/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 456
    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/date/CalendarFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    goto :goto_0

    .line 458
    :cond_3
    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 459
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 460
    iget-object v2, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    const-string v3, "%02d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 432
    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    :goto_0
    return-void

    .line 436
    :cond_0
    iput-object p1, p0, Lmiui/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 438
    iget-object v0, p0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/widget/DatePicker;->mNumberOfMonths:I

    .line 439
    invoke-direct {p0}, Lmiui/widget/DatePicker;->resetMonthsDisplayedValues()V

    goto :goto_0
.end method

.method private setDate(III)V
    .locals 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v4, 0x0

    .line 580
    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    .line 581
    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->before(Lmiui/date/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->after(Lmiui/date/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    goto :goto_0
.end method

.method private setImeOptions(Lmiui/widget/NumberPicker;II)V
    .locals 3
    .param p1, "spinner"    # Lmiui/widget/NumberPicker;
    .param p2, "spinnerCount"    # I
    .param p3, "spinnerIndex"    # I

    .prologue
    .line 707
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_0

    .line 708
    const/4 v0, 0x5

    .line 712
    .local v0, "imeOptions":I
    :goto_0
    sget v2, Lcom/miui/internal/R$id;->numberpicker_input:I

    invoke-virtual {p1, v2}, Lmiui/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 713
    .local v1, "input":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 714
    return-void

    .line 710
    .end local v0    # "imeOptions":I
    .end local v1    # "input":Landroid/widget/TextView;
    :cond_0
    const/4 v0, 0x6

    .restart local v0    # "imeOptions":I
    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 12

    .prologue
    const/4 v8, 0x5

    const/4 v11, 0x0

    const/4 v7, 0x6

    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 589
    iget-boolean v5, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v5, :cond_5

    .line 590
    iget-object v5, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v11}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 591
    iget-object v5, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v11}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 592
    iget-object v5, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v11}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 598
    :goto_0
    iget-object v5, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v11}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 599
    iget-object v5, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v6}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 600
    iget-object v9, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    iget-boolean v5, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/16 v10, 0xa

    invoke-virtual {v5, v10}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result v5

    :goto_1
    invoke-virtual {v9, v5}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 602
    iget-object v5, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v6}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 603
    iget-object v5, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v11}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 604
    iget-object v5, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v0}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 605
    iget-object v9, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    iget-boolean v5, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v5}, Lmiui/date/Calendar;->getChineseLeapMonth()I

    move-result v5

    if-ltz v5, :cond_7

    const/16 v5, 0xc

    :goto_2
    invoke-virtual {v9, v5}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 606
    iget-object v5, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v6}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 609
    iget-boolean v5, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v5, :cond_9

    const/4 v3, 0x2

    .line 610
    .local v3, "indexYear":I
    :goto_3
    iget-object v5, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v5, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    iget-object v9, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v9, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    if-ne v5, v9, :cond_0

    .line 611
    iget-object v9, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    iget-boolean v5, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v5, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    :goto_4
    invoke-virtual {v9, v5}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 612
    iget-object v5, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v0}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 614
    iget-boolean v5, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v5, :cond_b

    move v2, v7

    .line 615
    .local v2, "indexMonth":I
    :goto_5
    iget-object v5, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v5, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    iget-object v9, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v9, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    if-ne v5, v9, :cond_0

    .line 616
    iget-object v9, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    iget-boolean v5, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    const/16 v10, 0xa

    invoke-virtual {v5, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    :goto_6
    invoke-virtual {v9, v5}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 618
    iget-object v5, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v0}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 622
    .end local v2    # "indexMonth":I
    :cond_0
    iget-object v5, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v5, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    iget-object v9, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v9, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    if-ne v5, v9, :cond_1

    .line 623
    iget-object v9, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    iget-boolean v5, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v5, :cond_d

    iget-object v5, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v5, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    :goto_7
    invoke-virtual {v9, v5}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 624
    iget-object v5, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v0}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 625
    iget-object v5, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v11}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 627
    iget-boolean v5, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v5, :cond_e

    move v2, v7

    .line 628
    .restart local v2    # "indexMonth":I
    :goto_8
    iget-object v5, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v5, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    iget-object v9, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v9, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    if-ne v5, v9, :cond_1

    .line 629
    iget-object v9, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    iget-boolean v5, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v5, :cond_f

    iget-object v5, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    const/16 v10, 0xa

    invoke-virtual {v5, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    :goto_9
    invoke-virtual {v9, v5}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 631
    iget-object v5, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v0}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 637
    .end local v2    # "indexMonth":I
    :cond_1
    iget-object v5, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    iget-object v9, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v9}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v9

    iget-object v10, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    array-length v10, v10

    invoke-static {v5, v9, v10}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 639
    .local v1, "displayedValues":[Ljava/lang/String;
    iget-object v5, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v1}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 640
    iget-boolean v5, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v5, :cond_2

    .line 641
    sget-object v5, Lmiui/widget/DatePicker;->sChineseDays:[Ljava/lang/String;

    iget-object v9, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v9}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    sget-object v10, Lmiui/widget/DatePicker;->sChineseDays:[Ljava/lang/String;

    array-length v10, v10

    invoke-static {v5, v9, v10}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "displayedValues":[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .line 642
    .restart local v1    # "displayedValues":[Ljava/lang/String;
    iget-object v5, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v1}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 646
    :cond_2
    iget-object v5, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    iget-object v9, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v9, v6}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v5, v9}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    .line 647
    iget-object v5, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    iget-object v9, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v9, v6}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v5, v9}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    .line 648
    iget-object v5, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v0}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 651
    iget-object v5, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v5}, Lmiui/date/Calendar;->getChineseLeapMonth()I

    move-result v4

    .line 652
    .local v4, "leapMonth":I
    if-ltz v4, :cond_4

    iget-object v5, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v5}, Lmiui/date/Calendar;->isChineseLeapMonth()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v5, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    if-le v5, v4, :cond_4

    :cond_3
    move v0, v6

    .line 653
    .local v0, "afterLeap":Z
    :cond_4
    iget-object v9, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    iget-boolean v5, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v5, :cond_10

    iget-object v5, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    :goto_a
    invoke-virtual {v9, v5}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 654
    iget-object v6, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    iget-boolean v5, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v5, :cond_12

    if-eqz v0, :cond_11

    iget-object v5, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v5, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    :goto_b
    invoke-virtual {v6, v5}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 656
    iget-object v6, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    iget-boolean v5, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v5, :cond_13

    iget-object v5, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    :goto_c
    invoke-virtual {v6, v5}, Lmiui/widget/NumberPicker;->setValue(I)V

    .line 658
    return-void

    .line 594
    .end local v0    # "afterLeap":Z
    .end local v1    # "displayedValues":[Ljava/lang/String;
    .end local v3    # "indexYear":I
    .end local v4    # "leapMonth":I
    :cond_5
    iget-object v5, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/miui/internal/R$string;->date_picker_label_day:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 595
    iget-object v5, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/miui/internal/R$string;->date_picker_label_month:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 596
    iget-object v5, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/miui/internal/R$string;->date_picker_label_year:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 600
    :cond_6
    iget-object v5, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/16 v10, 0x9

    invoke-virtual {v5, v10}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result v5

    goto/16 :goto_1

    .line 605
    :cond_7
    const/16 v5, 0xb

    goto/16 :goto_2

    :cond_8
    const/16 v5, 0xb

    goto/16 :goto_2

    :cond_9
    move v3, v6

    .line 609
    goto/16 :goto_3

    .line 611
    .restart local v3    # "indexYear":I
    :cond_a
    iget-object v5, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v5, v8}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    goto/16 :goto_4

    :cond_b
    move v2, v8

    .line 614
    goto/16 :goto_5

    .line 616
    .restart local v2    # "indexMonth":I
    :cond_c
    iget-object v5, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    const/16 v10, 0x9

    invoke-virtual {v5, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    goto/16 :goto_6

    .line 623
    .end local v2    # "indexMonth":I
    :cond_d
    iget-object v5, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v5, v8}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    goto/16 :goto_7

    :cond_e
    move v2, v8

    .line 627
    goto/16 :goto_8

    .line 629
    .restart local v2    # "indexMonth":I
    :cond_f
    iget-object v5, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    const/16 v10, 0x9

    invoke-virtual {v5, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    goto/16 :goto_9

    .line 653
    .end local v2    # "indexMonth":I
    .restart local v0    # "afterLeap":Z
    .restart local v1    # "displayedValues":[Ljava/lang/String;
    .restart local v4    # "leapMonth":I
    :cond_10
    iget-object v5, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v5, v6}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    goto/16 :goto_a

    .line 654
    :cond_11
    iget-object v5, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v5, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    goto/16 :goto_b

    :cond_12
    iget-object v5, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v5, v8}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    goto/16 :goto_b

    .line 656
    :cond_13
    iget-object v5, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/16 v7, 0x9

    invoke-virtual {v5, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    goto/16 :goto_c
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 341
    invoke-virtual {p0, p1}, Lmiui/widget/DatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 342
    const/4 v0, 0x1

    return v0
.end method

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
    .line 519
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lmiui/widget/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 520
    return-void
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 678
    iget-object v1, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 671
    iget-object v1, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lmiui/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 664
    iget-object v1, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public init(IIILmiui/widget/DatePicker$OnDateChangedListener;)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lmiui/widget/DatePicker$OnDateChangedListener;

    .prologue
    .line 552
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/DatePicker;->setDate(III)V

    .line 553
    invoke-direct {p0}, Lmiui/widget/DatePicker;->updateSpinners()V

    .line 554
    iput-object p4, p0, Lmiui/widget/DatePicker;->mOnDateChangedListener:Lmiui/widget/DatePicker$OnDateChangedListener;

    .line 555
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lmiui/widget/DatePicker;->mIsEnabled:Z

    return v0
.end method

.method public isLunarMode()Z
    .locals 1

    .prologue
    .line 685
    iget-boolean v0, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 368
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 369
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lmiui/widget/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 370
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 356
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 357
    const-class v0, Lmiui/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 358
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 362
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 363
    const-class v0, Lmiui/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 364
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 347
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 349
    const/16 v0, 0x380

    .line 350
    .local v0, "flags":I
    iget-object v2, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/16 v4, 0x380

    invoke-static {v2, v3, v4}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 533
    move-object v0, p1

    check-cast v0, Lmiui/widget/DatePicker$SavedState;

    .line 534
    .local v0, "ss":Lmiui/widget/DatePicker$SavedState;
    invoke-virtual {v0}, Lmiui/widget/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 535
    # getter for: Lmiui/widget/DatePicker$SavedState;->mYear:I
    invoke-static {v0}, Lmiui/widget/DatePicker$SavedState;->access$1100(Lmiui/widget/DatePicker$SavedState;)I

    move-result v1

    # getter for: Lmiui/widget/DatePicker$SavedState;->mMonth:I
    invoke-static {v0}, Lmiui/widget/DatePicker$SavedState;->access$1200(Lmiui/widget/DatePicker$SavedState;)I

    move-result v2

    # getter for: Lmiui/widget/DatePicker$SavedState;->mDay:I
    invoke-static {v0}, Lmiui/widget/DatePicker$SavedState;->access$1300(Lmiui/widget/DatePicker$SavedState;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lmiui/widget/DatePicker;->setDate(III)V

    .line 536
    # getter for: Lmiui/widget/DatePicker$SavedState;->mIsLunar:Z
    invoke-static {v0}, Lmiui/widget/DatePicker$SavedState;->access$1400(Lmiui/widget/DatePicker$SavedState;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    .line 537
    invoke-direct {p0}, Lmiui/widget/DatePicker;->updateSpinners()V

    .line 538
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 524
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 525
    .local v1, "superState":Landroid/os/Parcelable;
    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    .line 526
    .local v2, "year":I
    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    .line 527
    .local v3, "month":I
    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    .line 528
    .local v4, "dayOfMonth":I
    new-instance v0, Lmiui/widget/DatePicker$SavedState;

    iget-boolean v5, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lmiui/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIZLmiui/widget/DatePicker$1;)V

    return-object v0
.end method

.method public setDateFormatOrder([C)V
    .locals 0
    .param p1, "order"    # [C

    .prologue
    .line 723
    iput-object p1, p0, Lmiui/widget/DatePicker;->mDateFormatOrder:[C

    .line 724
    invoke-direct {p0}, Lmiui/widget/DatePicker;->reorderSpinners()V

    .line 725
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 324
    iget-boolean v0, p0, Lmiui/widget/DatePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 332
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 328
    iget-object v0, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setEnabled(Z)V

    .line 329
    iget-object v0, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setEnabled(Z)V

    .line 330
    iget-object v0, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setEnabled(Z)V

    .line 331
    iput-boolean p1, p0, Lmiui/widget/DatePicker;->mIsEnabled:Z

    goto :goto_0
.end method

.method public setLunarMode(Z)V
    .locals 1
    .param p1, "lunarMode"    # Z

    .prologue
    .line 395
    iget-boolean v0, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eq p1, v0, :cond_0

    .line 396
    iput-boolean p1, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    .line 397
    invoke-direct {p0}, Lmiui/widget/DatePicker;->resetMonthsDisplayedValues()V

    .line 398
    invoke-direct {p0}, Lmiui/widget/DatePicker;->updateSpinners()V

    .line 400
    :cond_0
    return-void
.end method

.method public setMaxDate(J)V
    .locals 5
    .param p1, "maxDate"    # J

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x1

    .line 310
    iget-object v0, p0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 311
    iget-object v0, p0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    invoke-virtual {v0, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v1, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 320
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 316
    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->after(Lmiui/date/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 319
    :cond_1
    invoke-direct {p0}, Lmiui/widget/DatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 5
    .param p1, "minDate"    # J

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x1

    .line 276
    iget-object v0, p0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 277
    iget-object v0, p0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    invoke-virtual {v0, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v1, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 286
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 282
    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->before(Lmiui/date/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 285
    :cond_1
    invoke-direct {p0}, Lmiui/widget/DatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setSpinnersShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 387
    iget-object v1, p0, Lmiui/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 388
    return-void

    .line 387
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showDayPicker(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 423
    iget-object v1, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    .line 424
    return-void

    .line 423
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showMonthPicker(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 415
    iget-object v1, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    .line 416
    return-void

    .line 415
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showYearPicker(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 407
    iget-object v1, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    .line 408
    return-void

    .line 407
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 508
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/DatePicker;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    :goto_0
    return-void

    .line 511
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/DatePicker;->setDate(III)V

    .line 512
    invoke-direct {p0}, Lmiui/widget/DatePicker;->updateSpinners()V

    .line 513
    invoke-direct {p0}, Lmiui/widget/DatePicker;->notifyDateChanged()V

    goto :goto_0
.end method
