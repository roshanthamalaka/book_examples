$cert = [System.Security.Cryptography.X509Certificates.X509Certificate2]::new("C:\Users\roshan\Desktop\Certs\cert.pem")

$store = Get-Item -LiteralPath Cert:\LocalMachine\Root
$store.Open('ReadWrite')
$store.Add($cert)
$store.Dispose()
