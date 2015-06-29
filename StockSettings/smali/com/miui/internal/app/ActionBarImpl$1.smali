.class final Lcom/miui/internal/app/ActionBarImpl$1;
.super Ljava/lang/Object;
.source "ActionBarImpl.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 91
    move-object v0, p1

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    .line 93
    .local v0, "tabImpl":Lcom/miui/internal/app/ActionBarImpl$TabImpl;
    # getter for: Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mInternalCallback:Landroid/app/ActionBar$TabListener;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$000(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    # getter for: Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mInternalCallback:Landroid/app/ActionBar$TabListener;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$000(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 97
    :cond_0
    # getter for: Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$100(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 98
    # getter for: Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$100(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 100
    :cond_1
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 65
    move-object v0, p1

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    .line 67
    .local v0, "tabImpl":Lcom/miui/internal/app/ActionBarImpl$TabImpl;
    # getter for: Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mInternalCallback:Landroid/app/ActionBar$TabListener;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$000(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 68
    # getter for: Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mInternalCallback:Landroid/app/ActionBar$TabListener;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$000(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 71
    :cond_0
    # getter for: Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$100(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 72
    # getter for: Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$100(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 74
    :cond_1
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 78
    move-object v0, p1

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    .line 80
    .local v0, "tabImpl":Lcom/miui/internal/app/ActionBarImpl$TabImpl;
    # getter for: Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mInternalCallback:Landroid/app/ActionBar$TabListener;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$000(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    # getter for: Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mInternalCallback:Landroid/app/ActionBar$TabListener;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$000(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 84
    :cond_0
    # getter for: Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$100(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 85
    # getter for: Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$100(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 87
    :cond_1
    return-void
.end method
