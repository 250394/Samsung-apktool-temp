.class public Lcom/android/systemui/statusbar/phone/StatusBarHelpView;
.super Landroid/widget/RelativeLayout;
.source "StatusBarHelpView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final ACTION_COLLAPSED:Ljava/lang/String; = "com.android.systemui.statusbar.phone.COLLAPSED"

.field private static final INTENT_ACTION_HELPHUB:Ljava/lang/String; = "com.samsung.helphub.HELP"

.field private static final STATUS_BAR_HELP_CHECKED:Ljava/lang/String; = "status_bar_help_checked"

.field private static final TAG:Ljava/lang/String; = "StatusBar.StatusBarHelpView"

.field private static checkBoxChecked:Z


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonHelpBubble:Landroid/view/View;

.field private mButtonHelpBubbleText:Landroid/widget/TextView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisableBubbleOkButton:Landroid/widget/Button;

.field private mDisableHelpCheckBox:Landroid/widget/CompoundButton;

.field private mDisableHelpText:Landroid/widget/TextView;

.field private mDisplay:Landroid/view/Display;

.field private mDoNotShowAgain:Z

.field mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mShowing:Z

.field useHelpHub:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->checkBoxChecked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->useHelpHub:Z

    .line 76
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHelpView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDisplay:Landroid/view/Display;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mContentResolver:Landroid/content/ContentResolver;

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "status_bar_help_checked"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDoNotShowAgain:Z

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->isHelpHubInstalled()V

    .line 101
    return-void

    :cond_0
    move v0, v2

    .line 99
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/StatusBarHelpView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mButtonHelpBubbleText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBarHelpView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDisableHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/StatusBarHelpView;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDisableBubbleOkButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/StatusBarHelpView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mShowing:Z

    return v0
.end method

.method private getStatusBarHelpViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 187
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e1

    const v4, 0x820100

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 194
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDisplay:Landroid/view/Display;

    invoke-static {v1}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 197
    :cond_0
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 198
    const-string v1, "StatusBarHelpView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 199
    const v1, 0x7f0d0008

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 200
    return-object v0
.end method

.method private isHelpHubInstalled()V
    .locals 4

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 251
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 254
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 255
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->useHelpHub:Z

    .line 256
    :cond_0
    return-void
.end method

.method private registerReceivers()V
    .locals 3

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 176
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    return-void
.end method

.method private unregisterReceivers()V
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 183
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 154
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDisableBubbleOkButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->onClick(Landroid/view/View;)V

    .line 160
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mShowing:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->registerReceivers()V

    .line 123
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "toggle"
    .parameter "checked"

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDisableHelpCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 166
    if-eqz p2, :cond_0

    .line 167
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->checkBoxChecked:Z

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    sput-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->checkBoxChecked:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 135
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->show(Z)V

    .line 136
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDisableHelpCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 137
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "status_bar_help_checked"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDoNotShowAgain:Z

    .line 139
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->useHelpHub:Z

    if-eqz v4, :cond_0

    .line 140
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 141
    .local v1, values:Landroid/content/ContentValues;
    const-string v4, "displayed"

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDoNotShowAgain:Z

    if-nez v5, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 143
    const-string v2, "content://com.samsung.helphub.provider/help_page_status/notifications_use"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 145
    .local v0, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #uri:Landroid/net/Uri;
    :cond_1
    move v2, v3

    .line 141
    goto :goto_1

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f00d6
        :pswitch_0
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->unregisterReceivers()V

    .line 129
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 107
    const v0, 0x7f0f00d2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mButtonHelpBubbleText:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f0f00d4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDisableHelpCheckBox:Landroid/widget/CompoundButton;

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDisableHelpCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDisableHelpCheckBox:Landroid/widget/CompoundButton;

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->checkBoxChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 113
    const v0, 0x7f0f00d5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDisableHelpText:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f0f00d6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDisableBubbleOkButton:Landroid/widget/Button;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDisableBubbleOkButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isUnsecureKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->pokeWakelock()V

    .line 246
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public show(Z)V
    .locals 10
    .parameter "visible"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 204
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->useHelpHub:Z

    if-eqz v0, :cond_1

    .line 205
    const/4 v6, 0x0

    .line 206
    .local v6, cursor:Landroid/database/Cursor;
    const-string v0, "content://com.samsung.helphub.provider/help_page_status/notifications_use"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 208
    .local v1, uri:Landroid/net/Uri;
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDoNotShowAgain:Z

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "displayed"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 213
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v8, :cond_3

    move v0, v8

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDoNotShowAgain:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :cond_0
    if-eqz v6, :cond_1

    .line 218
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 222
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->getStatusBarHelpViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 223
    .local v7, lp:Landroid/view/WindowManager$LayoutParams;
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDoNotShowAgain:Z

    if-nez v0, :cond_2

    .line 224
    if-eqz p1, :cond_5

    .line 225
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p0, v7}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mShowing:Z

    .line 232
    :cond_2
    :goto_1
    return-void

    .end local v7           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_3
    move v0, v9

    .line 214
    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 218
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 227
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    .restart local v7       #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 229
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mShowing:Z

    goto :goto_1
.end method
