.class Lmiui/widget/TimePicker$3;
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
    .line 129
    iput-object p1, p0, Lmiui/widget/TimePicker$3;->this$0:Lmiui/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lmiui/widget/NumberPicker;II)V
    .locals 1
    .param p1, "spinner"    # Lmiui/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lmiui/widget/TimePicker$3;->this$0:Lmiui/widget/TimePicker;

    # invokes: Lmiui/widget/TimePicker;->onTimeChanged()V
    invoke-static {v0}, Lmiui/widget/TimePicker;->access$200(Lmiui/widget/TimePicker;)V

    .line 132
    return-void
.end method
