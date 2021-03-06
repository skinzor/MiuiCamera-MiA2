.class public Lcom/android/camera/ui/V6ModeExitView;
.super Landroid/widget/LinearLayout;
.source "V6ModeExitView.java"


# instance fields
.field private mCurrentKey:Ljava/lang/String;

.field private mExitButton:Lcom/android/camera/ui/ExitButton;

.field private mVisible:Z


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/V6ModeExitView;)Lcom/android/camera/ui/ExitButton;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/V6ModeExitView;

    .prologue
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    .line 25
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    .line 160
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModeExitView;->setVisibility(I)V

    .line 162
    :cond_0
    return-void
.end method

.method public isCurrentExitView(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string/jumbo v0, "VIEW_"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "V6ModeExitView isCurrent key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mCurrentKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6ModeExitView;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExitButtonShown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 92
    iget-object v1, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v1}, Lcom/android/camera/ui/ExitButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 30
    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModeExitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ExitButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    new-instance v1, Lcom/android/camera/ui/V6ModeExitView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/V6ModeExitView$1;-><init>(Lcom/android/camera/ui/V6ModeExitView;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ExitButton;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 42
    return-void
.end method

.method public setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnClickListener;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string/jumbo v0, "SETTING_"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "V6ModeExitView setOnClickListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iput-object p2, p0, Lcom/android/camera/ui/V6ModeExitView;->mCurrentKey:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ExitButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method

.method public setExitButtonVisible(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ExitButton;->setAlpha(F)V

    .line 134
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ExitButton;->setVisibility(I)V

    .line 136
    const/16 v0, 0x8

    if-ne v0, p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-static {v0}, Lcom/android/camera/Util;->expandViewTouchDelegate(Landroid/view/View;)V

    .line 140
    :cond_0
    return-void
.end method

.method public setExitContent(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 45
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6ModeExitView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ExitButton;->setText(Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModeExitView;->setVisibility(I)V

    .line 169
    :cond_0
    return-void
.end method

.method public updateExitButton(IZ)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 81
    const-string/jumbo v0, "SETTING_"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "V6ModeExitView updateExitButton = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6ModeExitView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ExitButton;->setText(Ljava/lang/String;)V

    .line 86
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/ExitButton;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 87
    const/4 v0, 0x0

    .line 86
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonVisible(I)V

    .line 89
    return-void

    .line 87
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
