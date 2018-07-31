.class public Lmiui/app/AlertDialog;
.super Landroid/app/Dialog;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/AlertDialog$Builder;
    }
.end annotation


# instance fields
.field private mAlert:Lmiui/app/AlertControllerWrapper;


# direct methods
.method static synthetic -get0(Lmiui/app/AlertDialog;)Lmiui/app/AlertControllerWrapper;
    .locals 1
    .param p0, "-this"    # Lmiui/app/AlertDialog;

    .prologue
    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lmiui/app/AlertControllerWrapper;

    return-object v0
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 94
    invoke-static {p1, p2}, Lmiui/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 95
    new-instance v0, Lmiui/app/AlertControllerWrapper;

    invoke-virtual {p0}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lmiui/app/AlertControllerWrapper;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lmiui/app/AlertControllerWrapper;

    .line 96
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    .line 115
    packed-switch p1, :pswitch_data_0

    .line 129
    const/high16 v2, 0x1000000

    if-lt p1, v2, :cond_0

    .line 130
    move v1, p1

    .line 140
    .local v1, "theme":I
    :goto_0
    return v1

    .line 117
    .end local v1    # "theme":I
    :pswitch_0
    const v1, 0x10303d4

    .line 118
    .restart local v1    # "theme":I
    goto :goto_0

    .line 121
    .end local v1    # "theme":I
    :pswitch_1
    const v1, 0x10303db

    .line 122
    .restart local v1    # "theme":I
    goto :goto_0

    .line 132
    .end local v1    # "theme":I
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 133
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010309

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 134
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    .restart local v1    # "theme":I
    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getMessageView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lmiui/app/AlertControllerWrapper;

    invoke-virtual {v0}, Lmiui/app/AlertControllerWrapper;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lmiui/app/AlertControllerWrapper;

    invoke-virtual {v0}, Lmiui/app/AlertControllerWrapper;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 101
    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lmiui/app/AlertControllerWrapper;

    invoke-virtual {v0}, Lmiui/app/AlertControllerWrapper;->installContent()V

    .line 102
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 277
    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lmiui/app/AlertControllerWrapper;

    invoke-virtual {v0, p1, p2}, Lmiui/app/AlertControllerWrapper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 272
    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lmiui/app/AlertControllerWrapper;

    invoke-virtual {v0, p1, p2}, Lmiui/app/AlertControllerWrapper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lmiui/app/AlertControllerWrapper;

    invoke-virtual {v0, p1}, Lmiui/app/AlertControllerWrapper;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method
