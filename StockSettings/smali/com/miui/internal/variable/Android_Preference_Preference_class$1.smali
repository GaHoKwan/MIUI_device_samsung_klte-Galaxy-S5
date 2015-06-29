.class Lcom/miui/internal/variable/Android_Preference_Preference_class$1;
.super Ljava/lang/Object;
.source "Android_Preference_Preference_class.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/variable/Android_Preference_Preference_class;->onBindViewForCheckBoxPreference(Landroid/preference/CheckBoxPreference;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/variable/Android_Preference_Preference_class;

.field final synthetic val$preference:Landroid/preference/CheckBoxPreference;

.field final synthetic val$slidingButton:Lmiui/widget/SlidingButton;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/Android_Preference_Preference_class;Landroid/preference/CheckBoxPreference;Landroid/view/View;Lmiui/widget/SlidingButton;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->this$0:Lcom/miui/internal/variable/Android_Preference_Preference_class;

    iput-object p2, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->val$preference:Landroid/preference/CheckBoxPreference;

    iput-object p3, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->val$slidingButton:Lmiui/widget/SlidingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 147
    iget-object v2, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->this$0:Lcom/miui/internal/variable/Android_Preference_Preference_class;

    iget-object v3, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->val$preference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->getPreferenceScreen(Landroid/preference/Preference;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 148
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 150
    .local v6, "adapter":Landroid/widget/ListAdapter;
    const/4 v7, 0x0

    .local v7, "idx":I
    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v7, v2, :cond_0

    .line 151
    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->val$preference:Landroid/preference/CheckBoxPreference;

    if-ne v2, v3, :cond_2

    .line 152
    iget-object v2, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 153
    .local v1, "parent":Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 154
    iget-object v2, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v3, v7

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 162
    .end local v1    # "parent":Landroid/widget/ListView;
    .end local v6    # "adapter":Landroid/widget/ListAdapter;
    .end local v7    # "idx":I
    :cond_0
    iget-object v2, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->val$preference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eq p2, v2, :cond_1

    .line 163
    iget-object v3, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->val$slidingButton:Lmiui/widget/SlidingButton;

    if-nez p2, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 165
    :cond_1
    return-void

    .line 150
    .restart local v6    # "adapter":Landroid/widget/ListAdapter;
    .restart local v7    # "idx":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 163
    .end local v6    # "adapter":Landroid/widget/ListAdapter;
    .end local v7    # "idx":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method
