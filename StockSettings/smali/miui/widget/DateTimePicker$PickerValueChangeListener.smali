.class Lmiui/widget/DateTimePicker$PickerValueChangeListener;
.super Ljava/lang/Object;
.source "DateTimePicker.java"

# interfaces
.implements Lmiui/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickerValueChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/DateTimePicker;


# direct methods
.method private constructor <init>(Lmiui/widget/DateTimePicker;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/DateTimePicker;Lmiui/widget/DateTimePicker$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/widget/DateTimePicker;
    .param p2, "x1"    # Lmiui/widget/DateTimePicker$1;

    .prologue
    .line 514
    invoke-direct {p0, p1}, Lmiui/widget/DateTimePicker$PickerValueChangeListener;-><init>(Lmiui/widget/DateTimePicker;)V

    return-void
.end method

.method private notifyTimeChanged(Lmiui/widget/DateTimePicker;)V
    .locals 4
    .param p1, "view"    # Lmiui/widget/DateTimePicker;

    .prologue
    .line 535
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # getter for: Lmiui/widget/DateTimePicker;->mListener:Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$1200(Lmiui/widget/DateTimePicker;)Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # getter for: Lmiui/widget/DateTimePicker;->mListener:Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$1200(Lmiui/widget/DateTimePicker;)Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    invoke-virtual {v1}, Lmiui/widget/DateTimePicker;->getTimeInMillis()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;->onDateTimeChanged(Lmiui/widget/DateTimePicker;J)V

    .line 538
    :cond_0
    return-void
.end method


# virtual methods
.method public onValueChange(Lmiui/widget/NumberPicker;II)V
    .locals 5
    .param p1, "picker"    # Lmiui/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/4 v0, 0x1

    .line 517
    iget-object v1, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # getter for: Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;
    invoke-static {v1}, Lmiui/widget/DateTimePicker;->access$200(Lmiui/widget/DateTimePicker;)Lmiui/widget/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 518
    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # getter for: Lmiui/widget/DateTimePicker;->mDayLastValue:I
    invoke-static {v2}, Lmiui/widget/DateTimePicker;->access$300(Lmiui/widget/DateTimePicker;)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x7

    rem-int/lit8 v1, v1, 0x7

    if-ne v1, v0, :cond_1

    .line 520
    .local v0, "increase":I
    :goto_0
    iget-object v1, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # getter for: Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;
    invoke-static {v1}, Lmiui/widget/DateTimePicker;->access$400(Lmiui/widget/DateTimePicker;)Lmiui/date/Calendar;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    .line 521
    iget-object v1, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v2

    # setter for: Lmiui/widget/DateTimePicker;->mDayLastValue:I
    invoke-static {v1, v2}, Lmiui/widget/DateTimePicker;->access$302(Lmiui/widget/DateTimePicker;I)I

    .line 527
    .end local v0    # "increase":I
    :cond_0
    :goto_1
    iget-object v1, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # invokes: Lmiui/widget/DateTimePicker;->checkCurrentTime()V
    invoke-static {v1}, Lmiui/widget/DateTimePicker;->access$800(Lmiui/widget/DateTimePicker;)V

    .line 528
    iget-object v1, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # invokes: Lmiui/widget/DateTimePicker;->updateDayPicker()V
    invoke-static {v1}, Lmiui/widget/DateTimePicker;->access$900(Lmiui/widget/DateTimePicker;)V

    .line 529
    iget-object v1, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # invokes: Lmiui/widget/DateTimePicker;->updateHourPicker()V
    invoke-static {v1}, Lmiui/widget/DateTimePicker;->access$1000(Lmiui/widget/DateTimePicker;)V

    .line 530
    iget-object v1, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # invokes: Lmiui/widget/DateTimePicker;->updateMinutePicker()V
    invoke-static {v1}, Lmiui/widget/DateTimePicker;->access$1100(Lmiui/widget/DateTimePicker;)V

    .line 531
    iget-object v1, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    invoke-direct {p0, v1}, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->notifyTimeChanged(Lmiui/widget/DateTimePicker;)V

    .line 532
    return-void

    .line 518
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 522
    :cond_2
    iget-object v1, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # getter for: Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;
    invoke-static {v1}, Lmiui/widget/DateTimePicker;->access$500(Lmiui/widget/DateTimePicker;)Lmiui/widget/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_3

    .line 523
    iget-object v1, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # getter for: Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;
    invoke-static {v1}, Lmiui/widget/DateTimePicker;->access$400(Lmiui/widget/DateTimePicker;)Lmiui/date/Calendar;

    move-result-object v1

    const/16 v2, 0x12

    iget-object v3, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # getter for: Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;
    invoke-static {v3}, Lmiui/widget/DateTimePicker;->access$500(Lmiui/widget/DateTimePicker;)Lmiui/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    goto :goto_1

    .line 524
    :cond_3
    iget-object v1, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # getter for: Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;
    invoke-static {v1}, Lmiui/widget/DateTimePicker;->access$600(Lmiui/widget/DateTimePicker;)Lmiui/widget/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 525
    iget-object v1, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # getter for: Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;
    invoke-static {v1}, Lmiui/widget/DateTimePicker;->access$400(Lmiui/widget/DateTimePicker;)Lmiui/date/Calendar;

    move-result-object v1

    const/16 v2, 0x14

    iget-object v3, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # getter for: Lmiui/widget/DateTimePicker;->mMinuteInterval:I
    invoke-static {v3}, Lmiui/widget/DateTimePicker;->access$700(Lmiui/widget/DateTimePicker;)I

    move-result v3

    iget-object v4, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # getter for: Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;
    invoke-static {v4}, Lmiui/widget/DateTimePicker;->access$600(Lmiui/widget/DateTimePicker;)Lmiui/widget/NumberPicker;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    goto :goto_1
.end method
