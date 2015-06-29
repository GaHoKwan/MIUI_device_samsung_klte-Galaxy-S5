.class public Lmiui/app/TimePickerDialog;
.super Landroid/app/AlertDialog;
.source "TimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/TimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "miui:hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "miui:is24hour"

.field private static final MINUTE:Ljava/lang/String; = "miui:minute"


# instance fields
.field private final mCallback:Lmiui/app/TimePickerDialog$OnTimeSetListener;

.field mInitialHourOfDay:I

.field mInitialMinute:I

.field mIs24HourView:Z

.field private final mTimePicker:Lmiui/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILmiui/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lmiui/app/TimePickerDialog$OnTimeSetListener;
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "is24HourView"    # Z

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 72
    iput-object p3, p0, Lmiui/app/TimePickerDialog;->mCallback:Lmiui/app/TimePickerDialog$OnTimeSetListener;

    .line 73
    iput p4, p0, Lmiui/app/TimePickerDialog;->mInitialHourOfDay:I

    .line 74
    iput p5, p0, Lmiui/app/TimePickerDialog;->mInitialMinute:I

    .line 75
    iput-boolean p6, p0, Lmiui/app/TimePickerDialog;->mIs24HourView:Z

    .line 77
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lmiui/app/TimePickerDialog;->setIcon(I)V

    .line 78
    sget v3, Lcom/miui/internal/R$string;->time_picker_dialog_title:I

    invoke-virtual {p0, v3}, Lmiui/app/TimePickerDialog;->setTitle(I)V

    .line 80
    invoke-virtual {p0}, Lmiui/app/TimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 81
    .local v1, "themeContext":Landroid/content/Context;
    const/4 v3, -0x1

    const v5, 0x104000a

    invoke-virtual {v1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Lmiui/app/TimePickerDialog$1;

    invoke-direct {v6, p0}, Lmiui/app/TimePickerDialog$1;-><init>(Lmiui/app/TimePickerDialog;)V

    invoke-virtual {p0, v3, v5, v6}, Lmiui/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 87
    const/4 v5, -0x2

    invoke-virtual {p0}, Lmiui/app/TimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v6, 0x1040000

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v3, v4

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v6, v3}, Lmiui/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 90
    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 92
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/miui/internal/R$layout;->time_picker_dialog:I

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 93
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lmiui/app/TimePickerDialog;->setView(Landroid/view/View;)V

    .line 94
    sget v3, Lcom/miui/internal/R$id;->timePicker:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/widget/TimePicker;

    iput-object v3, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    .line 97
    iget-object v3, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    iget-boolean v5, p0, Lmiui/app/TimePickerDialog;->mIs24HourView:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lmiui/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 98
    iget-object v3, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    iget v5, p0, Lmiui/app/TimePickerDialog;->mInitialHourOfDay:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lmiui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 99
    iget-object v3, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    iget v5, p0, Lmiui/app/TimePickerDialog;->mInitialMinute:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lmiui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 100
    iget-object v3, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    invoke-virtual {v3, v4}, Lmiui/widget/TimePicker;->setOnTimeChangedListener(Lmiui/widget/TimePicker$OnTimeChangedListener;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lmiui/app/TimePickerDialog$OnTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "is24HourView"    # Z

    .prologue
    .line 56
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lmiui/app/TimePickerDialog;-><init>(Landroid/content/Context;ILmiui/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lmiui/app/TimePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/TimePickerDialog;

    .prologue
    .line 19
    invoke-direct {p0}, Lmiui/app/TimePickerDialog;->tryNotifyTimeSet()V

    return-void
.end method

.method private tryNotifyTimeSet()V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lmiui/app/TimePickerDialog;->mCallback:Lmiui/app/TimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    invoke-virtual {v0}, Lmiui/widget/TimePicker;->clearFocus()V

    .line 116
    iget-object v0, p0, Lmiui/app/TimePickerDialog;->mCallback:Lmiui/app/TimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    iget-object v2, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    invoke-virtual {v2}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    invoke-virtual {v3}, Lmiui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lmiui/app/TimePickerDialog$OnTimeSetListener;->onTimeSet(Lmiui/widget/TimePicker;II)V

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 133
    const-string v2, "miui:hour"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 134
    .local v0, "hour":I
    const-string v2, "miui:minute"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 135
    .local v1, "minute":I
    iget-object v2, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    const-string v3, "miui:is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 136
    iget-object v2, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 137
    iget-object v2, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 138
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 124
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "miui:hour"

    iget-object v2, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    invoke-virtual {v2}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    const-string v1, "miui:minute"

    iget-object v2, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    invoke-virtual {v2}, Lmiui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    const-string v1, "miui:is24hour"

    iget-object v2, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    invoke-virtual {v2}, Lmiui/widget/TimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    return-object v0
.end method

.method public updateTime(II)V
    .locals 2
    .param p1, "hourOfDay"    # I
    .param p2, "minutOfHour"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 110
    iget-object v0, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 111
    return-void
.end method
