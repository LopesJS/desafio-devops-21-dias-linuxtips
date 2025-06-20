# Cria um certificado autoassinado
$cert = New-SelfSignedCertificate -Subject "CN=MeuScriptCert" -CertStoreLocation "Cert:\CurrentUser\My" -KeyUsage DigitalSignature -KeyLength 2048 -Provider "Microsoft Enhanced RSA and AES Cryptographic Provider"

# Define o caminho do script
$scriptPath = "C:\temp\criar-pastas.ps1"

# Assina o script
Set-AuthenticodeSignature -FilePath $scriptPath -Certificate $cert

# Adiciona o certificado aos editores confiáveis (opcional)
Import-Certificate -FilePath $cert.PSPath -CertStoreLocation Cert:\CurrentUser\Root

# Altera a política de execução para AllSigned (opcional)
Set-ExecutionPolicy AllSigned -Force

# Executa o script
& $scriptPath