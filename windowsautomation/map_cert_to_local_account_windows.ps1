# Will prompt for the password of the user.
$credential = Get-Credential roshan

$cert = [System.Security.Cryptography.X509Certificates.X509Certificate2]::new("C:\Users\roshan\Desktop\Certs\cert.pem")
$certChain = [System.Security.Cryptography.X509Certificates.X509Chain]::new()
[void]$certChain.Build($cert)
$caThumbprint = $certChain.ChainElements.Certificate[-1].Thumbprint

$certMapping = @{
    Path       = 'WSMan:\localhost\ClientCertificate'
    Subject    = $cert.GetNameInfo('UpnName', $false)
    Issuer     = $caThumbprint
    Credential = $credential
    Force      = $true
}
New-Item @certMapping
