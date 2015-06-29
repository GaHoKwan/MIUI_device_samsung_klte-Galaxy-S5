.class public Lmiui/app/DatePickerDialog;
.super Landroid/app/AlertDialog;
.source "DatePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "miui:day"

.field private static final MONTH:Ljava/lang/String; = "miui:month"

.field private static final YEAR:Ljava/lang/String; = "miui:year"


# instance fields
.field private final mCalendar:Lmiui/date/Calendar;

.field private final mCallBack:Lmiui/app/DatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Lmiui/widget/DatePicker;

.field private mOnDateChangedListener:Lmiui/widget/DatePicker$OnDateChangedListener;

.field private mTitleNeedsUpdate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILmiui/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lmiui/app/DatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .prologue
    const/4 v4, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 32
    const/4 v3, 0x1

    iput-boolean v3, p0, Lmiui/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    .line 49
    new-instance v3, Lmiui/app/DatePickerDialog$1;

    invoke-direct {v3, p0}, Lmiui/app/DatePickerDialog$1;-><init>(Lmiui/app/DatePickerDialog;)V

    iput-object v3, p0, Lmiui/app/DatePickerDialog;->mOnDateChangedListener:Lmiui/widget/DatePicker$OnDateChangedListener;

    .line 87
    iput-object p3, p0, Lmiui/app/DatePickerDialog;->mCallBack:Lmiui/app/DatePickerDialog$OnDateSetListener;

    .line 89
    new-instance v3, Lmiui/date/Calendar;

    invoke-direct {v3}, Lmiui/date/Calendar;-><init>()V

    iput-object v3, p0, Lmiui/app/DatePickerDialog;->mCalendar:Lmiui/date/Calendar;

    .line 91
    invoke-virtual {p0}, Lmiui/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 92
    .local v1, "themeContext":Landroid/content/Context;
    const/4 v3, -0x1

    const v5, 0x104000a

    invoke-virtual {v1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Lmiui/app/DatePickerDialog$2;

    invoke-direct {v6, p0}, Lmiui/app/DatePickerDialog$2;-><init>(Lmiui/app/DatePickerDialog;)V

    invoke-virtual {p0, v3, v5, v6}, Lmiui/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 98
    const/4 v5, -0x2

    invoke-virtual {p0}, Lmiui/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v6, 0x1040000

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v3, v4

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v6, v3}, Lmiui/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 101
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lmiui/app/DatePickerDialog;->setIcon(I)V

    .line 103
    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 105
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/miui/internal/R$layout;->date_picker_dialog:I

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 106
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lmiui/app/DatePickerDialog;->setView(Landroid/view/View;)V

    .line 107
    sget v3, Lcom/miui/internal/R$id;->datePicker:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/widget/DatePicker;

    iput-object v3, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    .line 108
    iget-object v3, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    iget-object v4, p0, Lmiui/app/DatePickerDialog;->mOnDateChangedListener:Lmiui/widget/DatePicker$OnDateChangedListener;

    invoke-virtual {v3, p4, p5, p6, v4}, Lmiui/widget/DatePicker;->init(IIILmiui/widget/DatePicker$OnDateChangedListener;)V

    .line 109
    invoke-direct {p0, p4, p5, p6}, Lmiui/app/DatePickerDialog;->updateTitle(III)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lmiui/app/DatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    .line 68
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lmiui/app/DatePickerDialog;-><init>(Landroid/content/Context;ILmiui/app/DatePickerDialog$OnDateSetListener;III)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lmiui/app/DatePickerDialog;III)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/DatePickerDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/DatePickerDialog;->updateTitle(III)V

    return-void
.end method

.method static synthetic access$100(Lmiui/app/DatePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/DatePickerDialog;

    .prologue
    .line 22
    invoke-direct {p0}, Lmiui/app/DatePickerDialog;->tryNotifyDateSet()V

    return-void
.end method

.method private tryNotifyDateSet()V
    .locals 5

    .prologue
    .line 133
    iget-object v0, p0, Lmiui/app/DatePickerDialog;->mCallBack:Lmiui/app/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    invoke-virtual {v0}, Lmiui/widget/DatePicker;->clearFocus()V

    .line 135
    iget-object v0, p0, Lmiui/app/DatePickerDialog;->mCallBack:Lmiui/app/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    iget-object v2, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    invoke-virtual {v2}, Lmiui/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    invoke-virtual {v3}, Lmiui/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    invoke-virtual {v4}, Lmiui/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lmiui/app/DatePickerDialog$OnDateSetListener;->onDateSet(Lmiui/widget/DatePicker;III)V

    .line 138
    :cond_0
    return-void
.end method

.method private updateTitle(III)V
    .locals 5
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v4, 0x1

    .line 141
    iget-object v1, p0, Lmiui/app/DatePickerDialog;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v1, v4, p1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 142
    iget-object v1, p0, Lmiui/app/DatePickerDialog;->mCalendar:Lmiui/date/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p2}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 143
    iget-object v1, p0, Lmiui/app/DatePickerDialog;->mCalendar:Lmiui/date/Calendar;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 144
    iget-object v1, p0, Lmiui/app/DatePickerDialog;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/16 v1, 0x3780

    invoke-static {v2, v3, v1}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    iput-boolean v4, p0, Lmiui/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    .line 151
    return-void
.end method


# virtual methods
.method public getDatePicker()Lmiui/widget/DatePicker;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    return-object v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 165
    const-string v3, "miui:year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 166
    .local v2, "year":I
    const-string v3, "miui:month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 167
    .local v1, "month":I
    const-string v3, "miui:day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 168
    .local v0, "day":I
    iget-object v3, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    iget-object v4, p0, Lmiui/app/DatePickerDialog;->mOnDateChangedListener:Lmiui/widget/DatePicker$OnDateChangedListener;

    invoke-virtual {v3, v2, v1, v0, v4}, Lmiui/widget/DatePicker;->init(IIILmiui/widget/DatePicker$OnDateChangedListener;)V

    .line 169
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 156
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "miui:year"

    iget-object v2, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    invoke-virtual {v2}, Lmiui/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 157
    const-string v1, "miui:month"

    iget-object v2, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    invoke-virtual {v2}, Lmiui/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    const-string v1, "miui:day"

    iget-object v2, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    invoke-virtual {v2}, Lmiui/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    return-object v0
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/widget/DatePicker;->updateDate(III)V

    .line 130
    return-void
.end method
