.class Lmiui/accounts/ExtraAccountManager$4;
.super Landroid/content/BroadcastReceiver;
.source "ExtraAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/accounts/ExtraAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/accounts/ExtraAccountManager;


# direct methods
.method constructor <init>(Lmiui/accounts/ExtraAccountManager;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 228
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 229
    .local v8, "action":Ljava/lang/String;
    const-string v0, "android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 231
    :cond_0
    const-string v0, "extra_account"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 232
    .local v3, "account":Landroid/accounts/Account;
    const-string v0, "extra_bundle"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 233
    .local v5, "extra":Landroid/os/Bundle;
    const-string v0, "extra_update_type"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 234
    .local v4, "type":I
    if-eqz v3, :cond_2

    if-lez v4, :cond_2

    .line 235
    iget-object v0, p0, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    # getter for: Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;
    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->access$100(Lmiui/accounts/ExtraAccountManager;)Ljava/util/HashMap;

    move-result-object v11

    monitor-enter v11

    .line 237
    :try_start_0
    iget-object v0, p0, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    # getter for: Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;
    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->access$100(Lmiui/accounts/ExtraAccountManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 238
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lmiui/accounts/MiuiOnAccountsUpdateListener;Landroid/os/Handler;>;"
    iget-object v0, p0, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/accounts/MiuiOnAccountsUpdateListener;

    const-string v6, "android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    # invokes: Lmiui/accounts/ExtraAccountManager;->postToHandler(Landroid/os/Handler;Lmiui/accounts/MiuiOnAccountsUpdateListener;Landroid/accounts/Account;ILandroid/os/Bundle;Z)V
    invoke-static/range {v0 .. v6}, Lmiui/accounts/ExtraAccountManager;->access$200(Lmiui/accounts/ExtraAccountManager;Landroid/os/Handler;Lmiui/accounts/MiuiOnAccountsUpdateListener;Landroid/accounts/Account;ILandroid/os/Bundle;Z)V

    goto :goto_0

    .line 243
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lmiui/accounts/MiuiOnAccountsUpdateListener;Landroid/os/Handler;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    .end local v3    # "account":Landroid/accounts/Account;
    .end local v4    # "type":I
    .end local v5    # "extra":Landroid/os/Bundle;
    .end local v10    # "i$":Ljava/util/Iterator;
    :goto_1
    return-void

    .line 245
    .restart local v3    # "account":Landroid/accounts/Account;
    .restart local v4    # "type":I
    .restart local v5    # "extra":Landroid/os/Bundle;
    :cond_2
    const-string v0, "ExtraAccountManager"

    const-string v1, "account changed, but no account or type"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 248
    .end local v3    # "account":Landroid/accounts/Account;
    .end local v4    # "type":I
    .end local v5    # "extra":Landroid/os/Bundle;
    :cond_3
    iget-object v0, p0, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    # getter for: Lmiui/accounts/ExtraAccountManager;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->access$300(Lmiui/accounts/ExtraAccountManager;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v7

    .line 250
    .local v7, "accounts":[Landroid/accounts/Account;
    iget-object v0, p0, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    # getter for: Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;
    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->access$100(Lmiui/accounts/ExtraAccountManager;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 252
    :try_start_2
    iget-object v0, p0, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    # getter for: Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;
    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->access$100(Lmiui/accounts/ExtraAccountManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 253
    .restart local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lmiui/accounts/MiuiOnAccountsUpdateListener;Landroid/os/Handler;>;"
    iget-object v6, p0, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/accounts/MiuiOnAccountsUpdateListener;

    # invokes: Lmiui/accounts/ExtraAccountManager;->postToHandler(Landroid/os/Handler;Lmiui/accounts/MiuiOnAccountsUpdateListener;[Landroid/accounts/Account;)V
    invoke-static {v6, v0, v1, v7}, Lmiui/accounts/ExtraAccountManager;->access$400(Lmiui/accounts/ExtraAccountManager;Landroid/os/Handler;Lmiui/accounts/MiuiOnAccountsUpdateListener;[Landroid/accounts/Account;)V

    goto :goto_2

    .line 256
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lmiui/accounts/MiuiOnAccountsUpdateListener;Landroid/os/Handler;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method
