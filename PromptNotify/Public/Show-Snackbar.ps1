function Show-Snackbar {
    param (
        [string]$Titulo,
        [string]$Mensagem
    )
    Process {
        Add-Type -AssemblyName System.Windows.Forms
        $Notificacao = New-Object System.Windows.Forms.NotifyIcon
        $Notificacao.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]::Info
        $Notificacao.BalloonTipText = $Mensagem
        $Notificacao.BalloonTipTitle = $Titulo
        $Notificacao.Icon = [System.Drawing.SystemIcons]::Information
        $Notificacao.Visible = $true
        $Notificacao.ShowBalloonTip(10000)
        $Notificacao.Dispose()
    }
}
