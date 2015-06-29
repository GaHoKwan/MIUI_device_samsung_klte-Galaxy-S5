.class Lcom/miui/internal/app/AlertControllerImpl$3;
.super Ljava/lang/Object;
.source "AlertControllerImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/app/AlertControllerImpl;->setupListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/AlertControllerImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/AlertControllerImpl;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl$3;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 628
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$3;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->access$600(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 629
    return-void
.end method
