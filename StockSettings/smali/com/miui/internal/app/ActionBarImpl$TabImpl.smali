.class public Lcom/miui/internal/app/ActionBarImpl$TabImpl;
.super Landroid/app/ActionBar$Tab;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field private mCallback:Landroid/app/ActionBar$TabListener;

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mInternalCallback:Landroid/app/ActionBar$TabListener;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/miui/internal/app/ActionBarImpl;


# direct methods
.method public constructor <init>(Lcom/miui/internal/app/ActionBarImpl;)V
    .locals 1

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-direct {p0}, Landroid/app/ActionBar$Tab;-><init>()V

    .line 1129
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mInternalCallback:Landroid/app/ActionBar$TabListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;

    return-object v0
.end method


# virtual methods
.method public getCallback()Landroid/app/ActionBar$TabListener;
    .locals 1

    .prologue
    .line 1145
    # getter for: Lcom/miui/internal/app/ActionBarImpl;->sTabListenerWrapper:Landroid/app/ActionBar$TabListener;
    invoke-static {}, Lcom/miui/internal/app/ActionBarImpl;->access$200()Landroid/app/ActionBar$TabListener;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 1186
    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0, p0}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1229
    return-void
.end method

.method public setContentDescription(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    # getter for: Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl;->access$400(Lcom/miui/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .locals 2
    .param p1, "contentDesc"    # Ljava/lang/CharSequence;

    .prologue
    .line 1239
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    .line 1240
    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    # getter for: Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl;->access$300(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1243
    :cond_0
    return-object p0
.end method

.method public setCustomView(I)Landroid/app/ActionBar$Tab;
    .locals 2
    .param p1, "layoutResId"    # I

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mCustomView:Landroid/view/View;

    .line 1167
    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    # getter for: Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl;->access$300(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1170
    :cond_0
    return-object p0
.end method

.method public setIcon(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    # getter for: Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl;->access$400(Lcom/miui/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1200
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1201
    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    # getter for: Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl;->access$300(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1204
    :cond_0
    return-object p0
.end method

.method public setInternalTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;
    .locals 0
    .param p1, "callback"    # Landroid/app/ActionBar$TabListener;

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mInternalCallback:Landroid/app/ActionBar$TabListener;

    .line 1156
    return-object p0
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1190
    iput p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    .line 1191
    return-void
.end method

.method public setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;
    .locals 0
    .param p1, "callback"    # Landroid/app/ActionBar$TabListener;

    .prologue
    .line 1150
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;

    .line 1151
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mTag:Ljava/lang/Object;

    .line 1141
    return-object p0
.end method

.method public setText(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    # getter for: Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl;->access$400(Lcom/miui/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1214
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mText:Ljava/lang/CharSequence;

    .line 1215
    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    # getter for: Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl;->access$300(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1218
    :cond_0
    return-object p0
.end method
