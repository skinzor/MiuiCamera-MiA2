.class public Lcom/android/camera/animation/type/AlphaInOnSubscribe;
.super Lcom/android/camera/animation/type/BaseOnSubScribe;
.source "AlphaInOnSubscribe.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "aniView"    # Landroid/view/View;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;-><init>(Landroid/view/View;)V

    .line 16
    return-void
.end method

.method public static directSetResult(Landroid/view/View;)V
    .locals 1
    .param p0, "aniView"    # Landroid/view/View;

    .prologue
    .line 31
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 32
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->setAnimateViewVisible(Landroid/view/View;I)V

    .line 33
    return-void
.end method


# virtual methods
.method protected getAnimation()Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->mAniView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->setAnimateViewVisible(Landroid/view/View;I)V

    .line 23
    iget-object v0, p0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->mAniView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 25
    iget-object v0, p0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->mAniView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 26
    const/high16 v1, 0x3f800000    # 1.0f

    .line 25
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    return-object v0
.end method
