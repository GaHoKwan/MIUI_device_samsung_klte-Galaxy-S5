.class public Lmiui/app/DateTimePickerDialog;
.super Landroid/app/AlertDialog;
.source "DateTimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/DateTimePickerDialog$OnTimeSetListener;
    }
.end annotation


# instance fields
.field private mTimeListener:Lmiui/app/DateTimePickerDialog$OnTimeSetListener;

.field private mTimePicker:Lmiui/widget/DateTimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/app/DateTimePickerDialog$OnTimeSetListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lmiui/app/DateTimePickerDialog$OnTimeSetListener;

    .prologue
    .line 30
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lmiui/app/DateTimePickerDialog;-><init>(Landroid/content/Context;Lmiui/app/DateTimePickerDialog$OnTimeSetListener;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/app/DateTimePickerDialog$OnTimeSetListener;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lmiui/app/DateTimePickerDialog$OnTimeSetListener;
    .param p3, "minuteInterval"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lmiui/app/DateTimePickerDialog;->mTimeListener:Lmiui/app/DateTimePickerDialog$OnTimeSetListener;

    .line 36
    invoke-direct {p0, p3}, Lmiui/app/DateTimePickerDialog;->init(I)V

    .line 37
    sget v0, Lcom/miui/internal/R$string;->date_time_picker_dialog_title:I

    invoke-virtual {p0, v0}, Lmiui/app/DateTimePickerDialog;->setTitle(I)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lmiui/app/DateTimePickerDialog;)Lmiui/app/DateTimePickerDialog$OnTimeSetListener;
    .locals 1
    .param p0, "x0"    # Lmiui/app/DateTimePickerDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mTimeListener:Lmiui/app/DateTimePickerDialog$OnTimeSetListener;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/app/DateTimePickerDialog;)Lmiui/widget/DateTimePicker;
    .locals 1
    .param p0, "x0"    # Lmiui/app/DateTimePickerDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    return-object v0
.end method

.method private init(I)V
    .locals 6
    .param p1, "minuteInterval"    # I

    .prologue
    const/4 v3, 0x0

    .line 41
    const/4 v2, -0x1

    invoke-virtual {p0}, Lmiui/app/DateTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lmiui/app/DateTimePickerDialog$1;

    invoke-direct {v5, p0}, Lmiui/app/DateTimePickerDialog$1;-><init>(Lmiui/app/DateTimePickerDialog;)V

    invoke-virtual {p0, v2, v4, v5}, Lmiui/app/DateTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 50
    const/4 v4, -0x2

    invoke-virtual {p0}, Lmiui/app/DateTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v5, 0x1040000

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v2, v3

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v5, v2}, Lmiui/app/DateTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 53
    invoke-virtual {p0}, Lmiui/app/DateTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "layout_inflater"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 55
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/miui/internal/R$layout;->datetime_picker_dialog:I

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 56
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lmiui/app/DateTimePickerDialog;->setView(Landroid/view/View;)V

    .line 58
    sget v2, Lcom/miui/internal/R$id;->dateTimePicker:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/widget/DateTimePicker;

    iput-object v2, p0, Lmiui/app/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    .line 59
    iget-object v2, p0, Lmiui/app/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    invoke-virtual {v2, p1}, Lmiui/widget/DateTimePicker;->setMinuteInterval(I)V

    .line 60
    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 89
    return-void
.end method

.method public setMaxDateTime(J)V
    .locals 1
    .param p1, "millis"    # J

    .prologue
    .line 83
    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    invoke-virtual {v0, p1, p2}, Lmiui/widget/DateTimePicker;->setMaxDateTime(J)V

    .line 84
    return-void
.end method

.method public setMinDateTime(J)V
    .locals 1
    .param p1, "millis"    # J

    .prologue
    .line 75
    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    invoke-virtual {v0, p1, p2}, Lmiui/widget/DateTimePicker;->setMinDateTime(J)V

    .line 76
    return-void
.end method

.method public update(J)V
    .locals 1
    .param p1, "timeInMillis"    # J

    .prologue
    .line 67
    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    invoke-virtual {v0, p1, p2}, Lmiui/widget/DateTimePicker;->update(J)V

    .line 68
    return-void
.end method
