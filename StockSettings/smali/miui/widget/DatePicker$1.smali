.class Lmiui/widget/DatePicker$1;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lmiui/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/DatePicker;


# direct methods
.method constructor <init>(Lmiui/widget/DatePicker;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lmiui/widget/NumberPicker;II)V
    .locals 6
    .param p1, "picker"    # Lmiui/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/16 v1, 0x9

    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 159
    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;
    invoke-static {v0}, Lmiui/widget/DatePicker;->access$100(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v0

    iget-object v4, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;
    invoke-static {v4}, Lmiui/widget/DatePicker;->access$000(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 161
    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;
    invoke-static {v0}, Lmiui/widget/DatePicker;->access$200(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 162
    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;
    invoke-static {v0}, Lmiui/widget/DatePicker;->access$100(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v4

    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mIsLunarMode:Z
    invoke-static {v0}, Lmiui/widget/DatePicker;->access$300(Lmiui/widget/DatePicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    :goto_0
    sub-int v5, p3, p2

    invoke-virtual {v4, v0, v5}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    .line 171
    :goto_1
    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    iget-object v4, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;
    invoke-static {v4}, Lmiui/widget/DatePicker;->access$100(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v4

    invoke-virtual {v4, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;
    invoke-static {v4}, Lmiui/widget/DatePicker;->access$100(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v4

    invoke-virtual {v4, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    iget-object v4, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;
    invoke-static {v4}, Lmiui/widget/DatePicker;->access$100(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v4

    invoke-virtual {v4, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    # invokes: Lmiui/widget/DatePicker;->setDate(III)V
    invoke-static {v0, v3, v2, v1}, Lmiui/widget/DatePicker;->access$600(Lmiui/widget/DatePicker;III)V

    .line 172
    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;
    invoke-static {v0}, Lmiui/widget/DatePicker;->access$500(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 173
    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # invokes: Lmiui/widget/DatePicker;->resetMonthsDisplayedValues()V
    invoke-static {v0}, Lmiui/widget/DatePicker;->access$700(Lmiui/widget/DatePicker;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # invokes: Lmiui/widget/DatePicker;->updateSpinners()V
    invoke-static {v0}, Lmiui/widget/DatePicker;->access$800(Lmiui/widget/DatePicker;)V

    .line 176
    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # invokes: Lmiui/widget/DatePicker;->notifyDateChanged()V
    invoke-static {v0}, Lmiui/widget/DatePicker;->access$900(Lmiui/widget/DatePicker;)V

    .line 177
    return-void

    :cond_1
    move v0, v1

    .line 162
    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;
    invoke-static {v0}, Lmiui/widget/DatePicker;->access$400(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 164
    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;
    invoke-static {v0}, Lmiui/widget/DatePicker;->access$100(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v4

    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mIsLunarMode:Z
    invoke-static {v0}, Lmiui/widget/DatePicker;->access$300(Lmiui/widget/DatePicker;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    :goto_2
    sub-int v5, p3, p2

    invoke-virtual {v4, v0, v5}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    .line 165
    :cond_4
    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;
    invoke-static {v0}, Lmiui/widget/DatePicker;->access$500(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 166
    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;
    invoke-static {v0}, Lmiui/widget/DatePicker;->access$100(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v4

    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mIsLunarMode:Z
    invoke-static {v0}, Lmiui/widget/DatePicker;->access$300(Lmiui/widget/DatePicker;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    :goto_3
    invoke-virtual {v4, v0, p3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_3

    .line 168
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
