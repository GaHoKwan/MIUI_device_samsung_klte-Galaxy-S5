.class Lcom/miui/internal/widget/DropDownSingleChoiceMenu$2;
.super Ljava/lang/Object;
.source "DropDownSingleChoiceMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/DropDownSingleChoiceMenu;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/DropDownSingleChoiceMenu;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu$2;->this$0:Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu$2;->this$0:Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

    # setter for: Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mSelectedItem:I
    invoke-static {v0, p3}, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->access$202(Lcom/miui/internal/widget/DropDownSingleChoiceMenu;I)I

    .line 88
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu$2;->this$0:Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

    # getter for: Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mListener:Lcom/miui/internal/widget/DropDownSingleChoiceMenu$OnMenuListener;
    invoke-static {v0}, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->access$000(Lcom/miui/internal/widget/DropDownSingleChoiceMenu;)Lcom/miui/internal/widget/DropDownSingleChoiceMenu$OnMenuListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu$2;->this$0:Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

    # getter for: Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mListener:Lcom/miui/internal/widget/DropDownSingleChoiceMenu$OnMenuListener;
    invoke-static {v0}, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->access$000(Lcom/miui/internal/widget/DropDownSingleChoiceMenu;)Lcom/miui/internal/widget/DropDownSingleChoiceMenu$OnMenuListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu$2;->this$0:Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

    invoke-interface {v0, v1, p3}, Lcom/miui/internal/widget/DropDownSingleChoiceMenu$OnMenuListener;->onItemSelected(Lcom/miui/internal/widget/DropDownSingleChoiceMenu;I)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu$2;->this$0:Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

    invoke-virtual {v0}, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->dismiss()V

    .line 92
    return-void
.end method
