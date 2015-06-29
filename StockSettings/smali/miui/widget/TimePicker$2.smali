.class Lmiui/widget/TimePicker$2;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Lmiui/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/TimePicker;


# direct methods
.method constructor <init>(Lmiui/widget/TimePicker;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lmiui/widget/TimePicker$2;->this$0:Lmiui/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lmiui/widget/NumberPicker;II)V
    .locals 3
    .param p1, "spinner"    # Lmiui/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/16 v2, 0xc

    const/16 v1, 0xb

    .line 110
    iget-object v0, p0, Lmiui/widget/TimePicker$2;->this$0:Lmiui/widget/TimePicker;

    invoke-virtual {v0}, Lmiui/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    if-ne p2, v1, :cond_0

    if-eq p3, v2, :cond_1

    :cond_0
    if-ne p2, v2, :cond_2

    if-ne p3, v1, :cond_2

    .line 113
    :cond_1
    iget-object v1, p0, Lmiui/widget/TimePicker$2;->this$0:Lmiui/widget/TimePicker;

    iget-object v0, p0, Lmiui/widget/TimePicker$2;->this$0:Lmiui/widget/TimePicker;

    # getter for: Lmiui/widget/TimePicker;->mIsAm:Z
    invoke-static {v0}, Lmiui/widget/TimePicker;->access$000(Lmiui/widget/TimePicker;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    # setter for: Lmiui/widget/TimePicker;->mIsAm:Z
    invoke-static {v1, v0}, Lmiui/widget/TimePicker;->access$002(Lmiui/widget/TimePicker;Z)Z

    .line 114
    iget-object v0, p0, Lmiui/widget/TimePicker$2;->this$0:Lmiui/widget/TimePicker;

    # invokes: Lmiui/widget/TimePicker;->updateAmPmControl()V
    invoke-static {v0}, Lmiui/widget/TimePicker;->access$100(Lmiui/widget/TimePicker;)V

    .line 117
    :cond_2
    iget-object v0, p0, Lmiui/widget/TimePicker$2;->this$0:Lmiui/widget/TimePicker;

    # invokes: Lmiui/widget/TimePicker;->onTimeChanged()V
    invoke-static {v0}, Lmiui/widget/TimePicker;->access$200(Lmiui/widget/TimePicker;)V

    .line 118
    return-void

    .line 113
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
