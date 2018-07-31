.class public Lmiui/app/AlertControllerWrapper$AlertParams;
.super Lcom/android/internal/app/AlertController$AlertParams;
.source "AlertControllerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/AlertControllerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation


# instance fields
.field public mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/AlertControllerWrapper$AlertParams$ActionItem;",
            ">;"
        }
    .end annotation
.end field

.field public mCheckBoxMessage:Ljava/lang/CharSequence;

.field public mEditMode:Z

.field public mIsChecked:Z

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnShowListener:Landroid/content/DialogInterface$OnShowListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 155
    return-void
.end method

.method private createListView(Lcom/android/internal/app/AlertController;)V
    .locals 0
    .param p1, "alertController"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 275
    return-void
.end method


# virtual methods
.method public apply(Lcom/android/internal/app/AlertController;)V
    .locals 4
    .param p1, "dialog"    # Lcom/android/internal/app/AlertController;

    .prologue
    const/4 v3, 0x0

    .line 159
    iget-object v0, p0, Lmiui/app/AlertControllerWrapper$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 160
    iget-object v0, p0, Lmiui/app/AlertControllerWrapper$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 167
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiui/app/AlertControllerWrapper$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lmiui/app/AlertControllerWrapper$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 171
    :cond_1
    iget v0, p0, Lmiui/app/AlertControllerWrapper$AlertParams;->mIconId:I

    if-eqz v0, :cond_2

    .line 172
    iget v0, p0, Lmiui/app/AlertControllerWrapper$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 175
    :cond_2
    iget-object v0, p0, Lmiui/app/AlertControllerWrapper$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 176
    iget-object v0, p0, Lmiui/app/AlertControllerWrapper$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 179
    :cond_3
    iget-object v0, p0, Lmiui/app/AlertControllerWrapper$AlertParams;->mCheckBoxMessage:Ljava/lang/CharSequence;

    .line 182
    iget-object v0, p0, Lmiui/app/AlertControllerWrapper$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 184
    iget-object v0, p0, Lmiui/app/AlertControllerWrapper$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 185
    iget-object v1, p0, Lmiui/app/AlertControllerWrapper$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 183
    const/4 v2, -0x1

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 188
    :cond_4
    iget-object v0, p0, Lmiui/app/AlertControllerWrapper$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 190
    iget-object v0, p0, Lmiui/app/AlertControllerWrapper$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 191
    iget-object v1, p0, Lmiui/app/AlertControllerWrapper$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 189
    const/4 v2, -0x2

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 194
    :cond_5
    iget-object v0, p0, Lmiui/app/AlertControllerWrapper$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 196
    iget-object v0, p0, Lmiui/app/AlertControllerWrapper$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 197
    iget-object v1, p0, Lmiui/app/AlertControllerWrapper$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 195
    const/4 v2, -0x3

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 200
    :cond_6
    iget-object v0, p0, Lmiui/app/AlertControllerWrapper$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_7

    iget-object v0, p0, Lmiui/app/AlertControllerWrapper$AlertParams;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 201
    :cond_7
    :goto_1
    invoke-direct {p0, p1}, Lmiui/app/AlertControllerWrapper$AlertParams;->createListView(Lcom/android/internal/app/AlertController;)V

    .line 204
    :cond_8
    iget-object v0, p0, Lmiui/app/AlertControllerWrapper$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 205
    iget-object v0, p0, Lmiui/app/AlertControllerWrapper$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;)V

    .line 208
    :cond_9
    iget-object v0, p0, Lmiui/app/AlertControllerWrapper$AlertParams;->mActionItems:Ljava/util/ArrayList;

    .line 210
    return-void

    .line 162
    :cond_a
    iget-object v0, p0, Lmiui/app/AlertControllerWrapper$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lmiui/app/AlertControllerWrapper$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 200
    :cond_b
    iget-object v0, p0, Lmiui/app/AlertControllerWrapper$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_8

    goto :goto_1
.end method
